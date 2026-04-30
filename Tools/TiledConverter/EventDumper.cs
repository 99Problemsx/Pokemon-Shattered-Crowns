// Temporary tool to dump event structure from rxdata files
using System;
using System.IO;
using System.Text;

namespace TiledConverter;

public static class EventDumper
{
    public static void Dump(string rxdataPath)
    {
        DumpInternal(rxdataPath, 6);
    }

    public static void DumpCommands(string rxdataPath, int eventId)
    {
        using var fs = File.OpenRead(rxdataPath);
        var root = new MarshalReader(fs).Read();
        var map = (RubyObject)root;
        var events = map.Get("@events") as RubyHash;
        if (events == null) { Console.WriteLine("No events"); return; }

        foreach (var (key, value) in events.Entries)
        {
            var eid = ((RubyFixnum)key).Value;
            if (eid != eventId) continue;
            var ev = (RubyObject)value;
            var pages = ev.Get("@pages") as RubyArray;
            if (pages == null) continue;
            for (int p = 0; p < pages.Items.Count; p++)
            {
                Console.WriteLine($"--- Page {p} ---");
                var page = (RubyObject)pages.Items[p];
                var list = page.Get("@list") as RubyArray;
                if (list == null) continue;
                foreach (var item in list.Items)
                {
                    var cmd = (RubyObject)item;
                    var code = ((RubyFixnum)cmd.Get("@code")!).Value;
                    var indent2 = ((RubyFixnum)cmd.Get("@indent")!).Value;
                    var pars = cmd.Get("@parameters") as RubyArray;
                    string pad = new string(' ', indent2 * 2);
                    Console.Write($"{pad}[{code}] ");
                    if (pars != null)
                    {
                        foreach (var par in pars.Items)
                        {
                            switch (par)
                            {
                                case RubyString s: Console.Write($"\"{s.Text}\" "); break;
                                case RubyFixnum f: Console.Write($"{f.Value} "); break;
                                case RubyBool b: Console.Write($"{b.Value} "); break;
                                case RubyArray a: Console.Write($"[{a.Items.Count}] "); break;
                                case RubyNil: Console.Write("nil "); break;
                                default: Console.Write($"({par.GetType().Name}) "); break;
                            }
                        }
                    }
                    Console.WriteLine();
                }
            }
            return;
        }
        Console.WriteLine($"Event {eventId} not found");
    }

    static void DumpInternal(string rxdataPath, int maxDepth)
    {
        using var fs = File.OpenRead(rxdataPath);
        var root = new MarshalReader(fs).Read();
        var map = (RubyObject)root;
        var events = map.Get("@events") as RubyHash;
        if (events == null) { Console.WriteLine("No events"); return; }

        foreach (var (key, value) in events.Entries)
        {
            var evId = ((RubyFixnum)key).Value;
            var ev = (RubyObject)value;
            Console.WriteLine($"=== Event {evId}: class={ev.ClassName} ===");
            DumpObject(ev, 1, maxDepth);
        }
    }

    static void DumpObject(RubyObject obj, int depth, int maxDepth = 4)
    {
        string indent = new string(' ', depth * 2);
        foreach (var (name, val) in obj.Vars)
        {
            Console.Write($"{indent}{name}: ");
            DumpValue(val, depth, maxDepth);
        }
    }

    static void DumpValue(RubyValue val, int depth, int maxDepth)
    {
        switch (val)
        {
            case RubyNil: Console.WriteLine("nil"); break;
            case RubyBool b: Console.WriteLine(b.Value); break;
            case RubyFixnum f: Console.WriteLine(f.Value); break;
            case RubyFloat fl: Console.WriteLine(fl.Value); break;
            case RubyString s: Console.WriteLine($"\"{s.Text}\""); break;
            case RubySymbol sym: Console.WriteLine($":{sym.Name}"); break;
            case RubyArray arr:
                Console.WriteLine($"Array[{arr.Items.Count}]");
                if (depth < maxDepth)
                {
                    string indent = new string(' ', (depth + 1) * 2);
                    for (int i = 0; i < Math.Min(arr.Items.Count, 5); i++)
                    {
                        Console.Write($"{indent}[{i}]: ");
                        DumpValue(arr.Items[i], depth + 1, maxDepth);
                    }
                    if (arr.Items.Count > 5)
                        Console.WriteLine($"{indent}... ({arr.Items.Count - 5} more)");
                }
                break;
            case RubyHash h:
                Console.WriteLine($"Hash[{h.Entries.Count}]");
                break;
            case RubyObject o:
                Console.WriteLine($"<{o.ClassName}>");
                if (depth < maxDepth) DumpObject(o, depth + 1, maxDepth);
                break;
            case RubyUserDefined ud:
                Console.WriteLine($"UserDefined<{ud.ClassName}>[{ud.Data.Length} bytes]");
                break;
            default:
                Console.WriteLine(val.GetType().Name);
                break;
        }
    }
}
