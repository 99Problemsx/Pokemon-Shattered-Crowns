// =============================================================================
// RubyMarshal — Read/write Ruby Marshal v4.8 format (.rxdata files)
// =============================================================================
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Text;

namespace TiledConverter;

// ============================================================================
// Value types
// ============================================================================

public abstract class RubyValue { }

public sealed class RubyNil : RubyValue
{
    public static readonly RubyNil Instance = new();
}

public sealed class RubyBool : RubyValue
{
    public bool Value { get; }
    private RubyBool(bool v) => Value = v;
    public static readonly RubyBool True = new(true);
    public static readonly RubyBool False = new(false);
}

public sealed class RubyFixnum : RubyValue
{
    public int Value { get; }
    public RubyFixnum(int v) => Value = v;
}

public sealed class RubyFloat : RubyValue
{
    public double Value { get; }
    public RubyFloat(double v) => Value = v;
}

public sealed class RubyString : RubyValue
{
    public byte[] Data { get; set; }
    public List<(string Name, RubyValue Value)>? InstanceVars { get; set; }
    public RubyString(byte[] data) => Data = data;
    public RubyString(string text) : this(Encoding.UTF8.GetBytes(text)) { }
    public string Text => Encoding.UTF8.GetString(Data);
}

public sealed class RubySymbol : RubyValue
{
    public string Name { get; }
    public RubySymbol(string name) => Name = name;
}

public sealed class RubyArray : RubyValue
{
    public List<RubyValue> Items { get; } = new();
}

public sealed class RubyHash : RubyValue
{
    public List<(RubyValue Key, RubyValue Value)> Entries { get; } = new();
}

public sealed class RubyObject : RubyValue
{
    public string ClassName { get; }
    public List<(string Name, RubyValue Value)> Vars { get; } = new();

    public RubyObject(string className) => ClassName = className;

    public RubyValue? Get(string name)
    {
        foreach (var (n, v) in Vars)
            if (n == name) return v;
        return null;
    }

    public void Set(string name, RubyValue value)
    {
        for (int i = 0; i < Vars.Count; i++)
        {
            if (Vars[i].Name == name) { Vars[i] = (name, value); return; }
        }
        Vars.Add((name, value));
    }
}

/// <summary>Classes using <c>_dump</c>/<c>_load</c> (Table, Color, Tone).</summary>
public sealed class RubyUserDefined : RubyValue
{
    public string ClassName { get; }
    public byte[] Data { get; set; }
    public RubyUserDefined(string className, byte[] data) { ClassName = className; Data = data; }
}

/// <summary>Classes using <c>marshal_dump</c>/<c>marshal_load</c>.</summary>
public sealed class RubyUserMarshal : RubyValue
{
    public string ClassName { get; }
    public RubyValue Data { get; set; }
    public RubyUserMarshal(string className, RubyValue data) { ClassName = className; Data = data; }
}

// ============================================================================
// Marshal Reader
// ============================================================================

public sealed class MarshalReader
{
    private readonly BinaryReader _r;
    private readonly List<string> _symbols = new();
    private readonly List<RubyValue> _objects = new();

    public MarshalReader(Stream stream)
    {
        _r = new BinaryReader(stream, Encoding.UTF8, leaveOpen: true);
    }

    public RubyValue Read()
    {
        byte major = _r.ReadByte(), minor = _r.ReadByte();
        if (major != 4 || minor != 8)
            throw new InvalidDataException($"Unsupported Marshal version {major}.{minor}");
        return ReadValue();
    }

    private RubyValue ReadValue()
    {
        byte t = _r.ReadByte();
        return t switch
        {
            (byte)'0' => RubyNil.Instance,
            (byte)'T' => RubyBool.True,
            (byte)'F' => RubyBool.False,
            (byte)'i' => new RubyFixnum(ReadLong()),
            (byte)'f' => ReadFloat(),
            (byte)'"' => ReadString(),
            (byte)':' => ReadNewSymbol(),
            (byte)';' => new RubySymbol(_symbols[ReadLong()]),
            (byte)'[' => ReadArray(),
            (byte)'{' => ReadHash(),
            (byte)'o' => ReadObject(),
            (byte)'u' => ReadUserDefined(),
            (byte)'U' => ReadUserMarshal(),
            (byte)'I' => ReadInstanceVars(),
            (byte)'@' => _objects[ReadLong()],
            (byte)'l' => ReadBignum(),
            _ => throw new InvalidDataException(
                $"Unknown Marshal type 0x{t:X2} ('{(char)t}') at offset {_r.BaseStream.Position - 1}")
        };
    }

    internal int ReadLong()
    {
        int c = (sbyte)_r.ReadByte();
        if (c == 0) return 0;
        if (c > 4) return c - 5;
        if (c < -4) return c + 5;
        if (c > 0)
        {
            int x = 0;
            for (int i = 0; i < c; i++) x |= _r.ReadByte() << (i * 8);
            return x;
        }
        else
        {
            int n = -c, x = -1;
            for (int i = 0; i < n; i++)
            {
                x &= ~(0xFF << (i * 8));
                x |= _r.ReadByte() << (i * 8);
            }
            return x;
        }
    }

    private string ReadSymRef()
    {
        byte t = _r.ReadByte();
        if (t == (byte)':')
        {
            int len = ReadLong();
            string name = Encoding.UTF8.GetString(_r.ReadBytes(len));
            _symbols.Add(name);
            return name;
        }
        if (t == (byte)';')
            return _symbols[ReadLong()];
        throw new InvalidDataException($"Expected symbol at offset {_r.BaseStream.Position - 1}");
    }

    private RubyFloat ReadFloat()
    {
        int len = ReadLong();
        string s = Encoding.ASCII.GetString(_r.ReadBytes(len));
        double v = s switch
        {
            "inf" => double.PositiveInfinity,
            "-inf" => double.NegativeInfinity,
            "nan" => double.NaN,
            _ => double.Parse(s, CultureInfo.InvariantCulture)
        };
        var f = new RubyFloat(v);
        _objects.Add(f);
        return f;
    }

    private RubyString ReadString()
    {
        int len = ReadLong();
        var s = new RubyString(_r.ReadBytes(len));
        _objects.Add(s);
        return s;
    }

    private RubySymbol ReadNewSymbol()
    {
        int len = ReadLong();
        string name = Encoding.UTF8.GetString(_r.ReadBytes(len));
        _symbols.Add(name);
        return new RubySymbol(name);
    }

    private RubyArray ReadArray()
    {
        var a = new RubyArray();
        _objects.Add(a);
        int n = ReadLong();
        for (int i = 0; i < n; i++) a.Items.Add(ReadValue());
        return a;
    }

    private RubyHash ReadHash()
    {
        var h = new RubyHash();
        _objects.Add(h);
        int n = ReadLong();
        for (int i = 0; i < n; i++) h.Entries.Add((ReadValue(), ReadValue()));
        return h;
    }

    private RubyObject ReadObject()
    {
        string cls = ReadSymRef();
        var o = new RubyObject(cls);
        _objects.Add(o);
        int n = ReadLong();
        for (int i = 0; i < n; i++) o.Vars.Add((ReadSymRef(), ReadValue()));
        return o;
    }

    private RubyUserDefined ReadUserDefined()
    {
        string cls = ReadSymRef();
        int len = ReadLong();
        var ud = new RubyUserDefined(cls, _r.ReadBytes(len));
        _objects.Add(ud);
        return ud;
    }

    private RubyUserMarshal ReadUserMarshal()
    {
        string cls = ReadSymRef();
        var um = new RubyUserMarshal(cls, ReadValue());
        _objects.Add(um);
        return um;
    }

    private RubyValue ReadInstanceVars()
    {
        var val = ReadValue();
        int n = ReadLong();
        var vars = new List<(string, RubyValue)>(n);
        for (int i = 0; i < n; i++) vars.Add((ReadSymRef(), ReadValue()));
        if (val is RubyString s) { s.InstanceVars = vars; return s; }
        return val;
    }

    private RubyValue ReadBignum()
    {
        byte sign = _r.ReadByte();
        int shortCount = ReadLong();
        long v = 0;
        for (int i = 0; i < shortCount * 2 && i < 8; i++)
            v |= (long)_r.ReadByte() << (i * 8);
        for (int i = 8; i < shortCount * 2; i++) _r.ReadByte();
        if (sign == (byte)'-') v = -v;
        if (v >= int.MinValue && v <= int.MaxValue)
            return new RubyFixnum((int)v);
        return new RubyFloat(v);
    }
}

// ============================================================================
// Marshal Writer
// ============================================================================

public sealed class MarshalWriter
{
    private readonly BinaryWriter _w;
    private readonly Dictionary<string, int> _symTab = new();
    private readonly Dictionary<RubyValue, int> _objTab = new(ReferenceEqualityComparer.Instance);
    private int _objIdx;

    public MarshalWriter(Stream stream)
    {
        _w = new BinaryWriter(stream, Encoding.UTF8, leaveOpen: true);
    }

    public void Write(RubyValue value)
    {
        _w.Write((byte)4);
        _w.Write((byte)8);
        WriteValue(value);
    }

    private void WriteValue(RubyValue value)
    {
        if (value is not (RubyNil or RubyBool or RubyFixnum or RubySymbol))
        {
            if (_objTab.TryGetValue(value, out int idx))
            {
                _w.Write((byte)'@');
                WriteLong(idx);
                return;
            }
        }

        switch (value)
        {
            case RubyNil:              _w.Write((byte)'0'); break;
            case RubyBool b:           _w.Write(b.Value ? (byte)'T' : (byte)'F'); break;
            case RubyFixnum f:         _w.Write((byte)'i'); WriteLong(f.Value); break;
            case RubyFloat f:          WriteFloat(f); break;
            case RubyString s:         WriteString(s); break;
            case RubySymbol s:         WriteSym(s.Name); break;
            case RubyArray a:          WriteArray(a); break;
            case RubyHash h:           WriteHash(h); break;
            case RubyObject o:         WriteObject(o); break;
            case RubyUserDefined u:    WriteUserDefined(u); break;
            case RubyUserMarshal u:    WriteUserMarshal(u); break;
            default:
                throw new InvalidOperationException($"Cannot serialize {value.GetType().Name}");
        }
    }

    private void Reg(RubyValue v) => _objTab[v] = _objIdx++;

    internal void WriteLong(int n)
    {
        if (n == 0) { _w.Write((byte)0); return; }
        if (n > 0 && n < 123) { _w.Write((byte)(n + 5)); return; }
        if (n < 0 && n > -124) { _w.Write(unchecked((byte)(sbyte)(n - 5))); return; }

        var buf = new List<byte>(4);
        int t = n;
        while (true)
        {
            buf.Add((byte)(t & 0xFF));
            t >>= 8;
            if (t == 0 || t == -1) break;
        }
        _w.Write(n > 0 ? (byte)buf.Count : unchecked((byte)(sbyte)(-buf.Count)));
        foreach (byte b in buf) _w.Write(b);
    }

    private void WriteSym(string name)
    {
        if (_symTab.TryGetValue(name, out int idx))
        {
            _w.Write((byte)';');
            WriteLong(idx);
        }
        else
        {
            _w.Write((byte)':');
            byte[] b = Encoding.UTF8.GetBytes(name);
            WriteLong(b.Length);
            _w.Write(b);
            _symTab[name] = _symTab.Count;
        }
    }

    private void WriteFloat(RubyFloat f)
    {
        Reg(f);
        string s = double.IsPositiveInfinity(f.Value) ? "inf" :
                   double.IsNegativeInfinity(f.Value) ? "-inf" :
                   double.IsNaN(f.Value) ? "nan" :
                   f.Value.ToString("R", CultureInfo.InvariantCulture);
        _w.Write((byte)'f');
        byte[] b = Encoding.ASCII.GetBytes(s);
        WriteLong(b.Length);
        _w.Write(b);
    }

    private void WriteString(RubyString s)
    {
        bool hasIv = s.InstanceVars is { Count: > 0 };
        if (hasIv) _w.Write((byte)'I');
        Reg(s);
        _w.Write((byte)'"');
        WriteLong(s.Data.Length);
        _w.Write(s.Data);
        if (hasIv)
        {
            WriteLong(s.InstanceVars!.Count);
            foreach (var (n, v) in s.InstanceVars) { WriteSym(n); WriteValue(v); }
        }
    }

    private void WriteArray(RubyArray a)
    {
        Reg(a);
        _w.Write((byte)'[');
        WriteLong(a.Items.Count);
        foreach (var item in a.Items) WriteValue(item);
    }

    private void WriteHash(RubyHash h)
    {
        Reg(h);
        _w.Write((byte)'{');
        WriteLong(h.Entries.Count);
        foreach (var (k, v) in h.Entries) { WriteValue(k); WriteValue(v); }
    }

    private void WriteObject(RubyObject o)
    {
        Reg(o);
        _w.Write((byte)'o');
        WriteSym(o.ClassName);
        WriteLong(o.Vars.Count);
        foreach (var (n, v) in o.Vars) { WriteSym(n); WriteValue(v); }
    }

    private void WriteUserDefined(RubyUserDefined u)
    {
        Reg(u);
        _w.Write((byte)'u');
        WriteSym(u.ClassName);
        WriteLong(u.Data.Length);
        _w.Write(u.Data);
    }

    private void WriteUserMarshal(RubyUserMarshal u)
    {
        Reg(u);
        _w.Write((byte)'U');
        WriteSym(u.ClassName);
        WriteValue(u.Data);
    }
}
