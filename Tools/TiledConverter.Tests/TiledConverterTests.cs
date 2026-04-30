using System;
using System.IO;
using System.Linq;
using Xunit;

namespace TiledConverter.Tests;

public class RubyMarshalTests
{
    /// <summary>Round-trip: write a value, read it back, compare.</summary>
    private static RubyValue RoundTrip(RubyValue value)
    {
        using var ms = new MemoryStream();
        new MarshalWriter(ms).Write(value);
        ms.Position = 0;
        return new MarshalReader(ms).Read();
    }

    [Fact]
    public void RoundTrip_Nil()
    {
        var result = RoundTrip(RubyNil.Instance);
        Assert.IsType<RubyNil>(result);
    }

    [Theory]
    [InlineData(true)]
    [InlineData(false)]
    public void RoundTrip_Bool(bool value)
    {
        var result = RoundTrip(value ? RubyBool.True : RubyBool.False);
        Assert.Equal(value, ((RubyBool)result).Value);
    }

    [Theory]
    [InlineData(0)]
    [InlineData(1)]
    [InlineData(122)]
    [InlineData(123)]
    [InlineData(255)]
    [InlineData(256)]
    [InlineData(65535)]
    [InlineData(65536)]
    [InlineData(16777215)]
    [InlineData(16777216)]
    [InlineData(-1)]
    [InlineData(-123)]
    [InlineData(-124)]
    [InlineData(-256)]
    [InlineData(-65536)]
    public void RoundTrip_Fixnum(int value)
    {
        var result = RoundTrip(new RubyFixnum(value));
        Assert.Equal(value, ((RubyFixnum)result).Value);
    }

    [Theory]
    [InlineData(3.14)]
    [InlineData(0.0)]
    [InlineData(-1.5)]
    [InlineData(double.PositiveInfinity)]
    [InlineData(double.NegativeInfinity)]
    [InlineData(double.NaN)]
    public void RoundTrip_Float(double value)
    {
        var result = RoundTrip(new RubyFloat(value));
        var f = Assert.IsType<RubyFloat>(result);
        if (double.IsNaN(value))
            Assert.True(double.IsNaN(f.Value));
        else
            Assert.Equal(value, f.Value);
    }

    [Fact]
    public void RoundTrip_String()
    {
        var result = RoundTrip(new RubyString("hello world"));
        var s = Assert.IsType<RubyString>(result);
        Assert.Equal("hello world", s.Text);
    }

    [Fact]
    public void RoundTrip_StringWithEncoding()
    {
        var str = new RubyString("test");
        str.InstanceVars = new() { ("E", RubyBool.True) };
        var result = RoundTrip(str);
        var s = Assert.IsType<RubyString>(result);
        Assert.Equal("test", s.Text);
        Assert.NotNull(s.InstanceVars);
        Assert.Single(s.InstanceVars);
        Assert.Equal("E", s.InstanceVars[0].Name);
    }

    [Fact]
    public void RoundTrip_Symbol()
    {
        var result = RoundTrip(new RubySymbol("test_sym"));
        Assert.Equal("test_sym", ((RubySymbol)result).Name);
    }

    [Fact]
    public void RoundTrip_Array()
    {
        var arr = new RubyArray();
        arr.Items.Add(new RubyFixnum(1));
        arr.Items.Add(new RubyString("two"));
        arr.Items.Add(RubyNil.Instance);

        var result = (RubyArray)RoundTrip(arr);
        Assert.Equal(3, result.Items.Count);
        Assert.Equal(1, ((RubyFixnum)result.Items[0]).Value);
        Assert.Equal("two", ((RubyString)result.Items[1]).Text);
        Assert.IsType<RubyNil>(result.Items[2]);
    }

    [Fact]
    public void RoundTrip_Hash()
    {
        var hash = new RubyHash();
        hash.Entries.Add((new RubyFixnum(1), new RubyString("one")));
        hash.Entries.Add((new RubyFixnum(2), new RubyString("two")));

        var result = (RubyHash)RoundTrip(hash);
        Assert.Equal(2, result.Entries.Count);
        Assert.Equal(1, ((RubyFixnum)result.Entries[0].Key).Value);
        Assert.Equal("one", ((RubyString)result.Entries[0].Value).Text);
    }

    [Fact]
    public void RoundTrip_Object()
    {
        var obj = new RubyObject("RPG::AudioFile");
        obj.Vars.Add(("@name", new RubyString("bgm01")));
        obj.Vars.Add(("@volume", new RubyFixnum(80)));
        obj.Vars.Add(("@pitch", new RubyFixnum(100)));

        var result = (RubyObject)RoundTrip(obj);
        Assert.Equal("RPG::AudioFile", result.ClassName);
        Assert.Equal("bgm01", ((RubyString)result.Get("@name")!).Text);
        Assert.Equal(80, ((RubyFixnum)result.Get("@volume")!).Value);
        Assert.Equal(100, ((RubyFixnum)result.Get("@pitch")!).Value);
    }

    [Fact]
    public void RoundTrip_UserDefined_Table()
    {
        // Create a 2x3x1 Table
        var table = new MapConverter.RpgTable(3, 2, 3, 1);
        table.Set(0, 0, 0, 384);
        table.Set(1, 0, 0, 385);
        table.Set(0, 1, 0, 48);
        table.Set(1, 2, 0, 0);

        var ud = new RubyUserDefined("Table", table.Serialize());
        var result = (RubyUserDefined)RoundTrip(ud);

        Assert.Equal("Table", result.ClassName);
        var parsed = MapConverter.ParseTable(result.Data);
        Assert.Equal(2, parsed.XSize);
        Assert.Equal(3, parsed.YSize);
        Assert.Equal(1, parsed.ZSize);
        Assert.Equal(384, parsed.Get(0, 0, 0));
        Assert.Equal(385, parsed.Get(1, 0, 0));
        Assert.Equal(48, parsed.Get(0, 1, 0));
        Assert.Equal(0, parsed.Get(1, 2, 0));
    }
}

public class TableTests
{
    [Fact]
    public void ParseAndSerialize_RoundTrip()
    {
        var original = new MapConverter.RpgTable(3, 4, 5, 3);
        for (int z = 0; z < 3; z++)
            for (int y = 0; y < 5; y++)
                for (int x = 0; x < 4; x++)
                    original.Set(x, y, z, (short)(x + y * 10 + z * 100));

        byte[] bytes = original.Serialize();
        var parsed = MapConverter.ParseTable(bytes);

        Assert.Equal(original.Dim, parsed.Dim);
        Assert.Equal(original.XSize, parsed.XSize);
        Assert.Equal(original.YSize, parsed.YSize);
        Assert.Equal(original.ZSize, parsed.ZSize);

        for (int z = 0; z < 3; z++)
            for (int y = 0; y < 5; y++)
                for (int x = 0; x < 4; x++)
                    Assert.Equal(original.Get(x, y, z), parsed.Get(x, y, z));
    }
}

public class TmxFormatTests
{
    [Fact]
    public void WriteAndRead_RoundTrip()
    {
        var map = new TmxMap { Width = 3, Height = 2 };
        map.Properties["tileset_id"] = "1";

        map.Tilesets.Add(new TmxTileset
        {
            FirstGid = 1, Name = "autotiles", TileCount = 383,
            Columns = 8, ImageSource = "auto.png", ImageWidth = 256, ImageHeight = 1536
        });
        map.Tilesets.Add(new TmxTileset
        {
            FirstGid = 384, Name = "tileset", TileCount = 64,
            Columns = 8, ImageSource = "ts.png", ImageWidth = 256, ImageHeight = 256
        });

        map.Layers.Add(new TmxLayer
        {
            Id = 1, Name = "Layer 1", Width = 3, Height = 2,
            Data = new[] { 384, 385, 386, 0, 48, 384 }
        });

        string path = Path.GetTempFileName() + ".tmx";
        try
        {
            TmxWriter.Write(map, path);
            var loaded = TmxReader.Read(path);

            Assert.Equal(3, loaded.Width);
            Assert.Equal(2, loaded.Height);
            Assert.Equal("1", loaded.Properties["tileset_id"]);
            Assert.Equal(2, loaded.Tilesets.Count);
            Assert.Equal(384, loaded.Tilesets[1].FirstGid);
            Assert.Single(loaded.Layers);

            var layer = loaded.Layers[0];
            Assert.Equal(new[] { 384, 385, 386, 0, 48, 384 }, layer.Data);
        }
        finally
        {
            File.Delete(path);
        }
    }
}

public class MapConverterTests
{
    /// <summary>Build a minimal RPG::Map rxdata in memory.</summary>
    private static byte[] CreateTestRxdata(int width, int height, short fillTile)
    {
        var map = new RubyObject("RPG::Map");
        map.Vars.Add(("@tileset_id", new RubyFixnum(1)));
        map.Vars.Add(("@width", new RubyFixnum(width)));
        map.Vars.Add(("@height", new RubyFixnum(height)));
        map.Vars.Add(("@autoplay_bgm", RubyBool.False));

        var bgm = new RubyObject("RPG::AudioFile");
        bgm.Vars.Add(("@name", new RubyString("")));
        bgm.Vars.Add(("@volume", new RubyFixnum(100)));
        bgm.Vars.Add(("@pitch", new RubyFixnum(100)));
        map.Vars.Add(("@bgm", bgm));

        map.Vars.Add(("@autoplay_bgs", RubyBool.False));
        var bgs = new RubyObject("RPG::AudioFile");
        bgs.Vars.Add(("@name", new RubyString("")));
        bgs.Vars.Add(("@volume", new RubyFixnum(80)));
        bgs.Vars.Add(("@pitch", new RubyFixnum(100)));
        map.Vars.Add(("@bgs", bgs));

        map.Vars.Add(("@encounter_list", new RubyArray()));
        map.Vars.Add(("@encounter_step", new RubyFixnum(30)));

        var table = new MapConverter.RpgTable(3, width, height, 3);
        for (int z = 0; z < 3; z++)
            for (int y = 0; y < height; y++)
                for (int x = 0; x < width; x++)
                    table.Set(x, y, z, fillTile);
        map.Vars.Add(("@data", new RubyUserDefined("Table", table.Serialize())));
        map.Vars.Add(("@events", new RubyHash()));

        using var ms = new MemoryStream();
        new MarshalWriter(ms).Write(map);
        return ms.ToArray();
    }

    [Fact]
    public void ExportImport_RoundTrip()
    {
        string rxPath  = Path.GetTempFileName();
        string tmxPath = Path.GetTempFileName() + ".tmx";
        string outPath = Path.GetTempFileName();

        try
        {
            File.WriteAllBytes(rxPath, CreateTestRxdata(4, 3, 384));

            // Export
            MapConverter.ExportToTmx(rxPath, tmxPath, "test_tileset");

            // Verify TMX
            var tmx = TmxReader.Read(tmxPath);
            Assert.Equal(4, tmx.Width);
            Assert.Equal(3, tmx.Height);
            Assert.Equal(3, tmx.Layers.Count);
            Assert.All(tmx.Layers[0].Data, gid => Assert.Equal(384, gid));

            // Import back
            MapConverter.ImportFromTmx(tmxPath, rxPath, outPath);

            // Verify the output rxdata
            using var fs = File.OpenRead(outPath);
            var root = new MarshalReader(fs).Read();
            var map = Assert.IsType<RubyObject>(root);
            Assert.Equal("RPG::Map", map.ClassName);
            Assert.Equal(4, ((RubyFixnum)map.Get("@width")!).Value);
            Assert.Equal(3, ((RubyFixnum)map.Get("@height")!).Value);

            var tableData = (RubyUserDefined)map.Get("@data")!;
            var table = MapConverter.ParseTable(tableData.Data);
            Assert.Equal(4, table.XSize);
            Assert.Equal(3, table.YSize);
            Assert.Equal(3, table.ZSize);
            Assert.All(Enumerable.Range(0, table.Data.Length), i => Assert.Equal(384, table.Data[i]));
        }
        finally
        {
            File.Delete(rxPath);
            File.Delete(tmxPath);
            File.Delete(outPath);
        }
    }

    [Fact]
    public void Import_PreservesEvents()
    {
        string rxPath  = Path.GetTempFileName();
        string tmxPath = Path.GetTempFileName() + ".tmx";
        string outPath = Path.GetTempFileName();

        try
        {
            // Create rxdata with an event in the hash
            var rxdata = CreateTestRxdata(2, 2, 0);

            // Manually add a dummy event entry to the events hash
            using var msRead = new MemoryStream(rxdata);
            var root = new MarshalReader(msRead).Read();
            var map = (RubyObject)root;
            var events = (RubyHash)map.Get("@events")!;
            var dummyEvent = new RubyObject("RPG::Event");
            dummyEvent.Vars.Add(("@id", new RubyFixnum(1)));
            dummyEvent.Vars.Add(("@name", new RubyString("TestEvent")));
            dummyEvent.Vars.Add(("@x", new RubyFixnum(0)));
            dummyEvent.Vars.Add(("@y", new RubyFixnum(0)));
            dummyEvent.Vars.Add(("@pages", new RubyArray()));
            events.Entries.Add((new RubyFixnum(1), dummyEvent));

            using (var msWrite = File.Create(rxPath))
                new MarshalWriter(msWrite).Write(root);

            // Export then import
            MapConverter.ExportToTmx(rxPath, tmxPath, null);
            MapConverter.ImportFromTmx(tmxPath, rxPath, outPath);

            // Check event survived
            using var fs = File.OpenRead(outPath);
            var result = (RubyObject)new MarshalReader(fs).Read();
            var outEvents = (RubyHash)result.Get("@events")!;
            Assert.Single(outEvents.Entries);
            var evt = (RubyObject)outEvents.Entries[0].Value;
            Assert.Equal("TestEvent", ((RubyString)evt.Get("@name")!).Text);
        }
        finally
        {
            File.Delete(rxPath);
            File.Delete(tmxPath);
            File.Delete(outPath);
        }
    }

    private static System.Collections.Generic.IEnumerable<int> Enumerable_Range(int start, int count)
        => System.Linq.Enumerable.Range(start, count);
}

public class EventSerializerTests
{
    [Fact]
    public void RoundTrip_SimpleEvent()
    {
        var ev = new RubyObject("RPG::Event");
        ev.Set("@id", new RubyFixnum(1));
        ev.Set("@name", new RubyString("TestDoor"));
        ev.Set("@x", new RubyFixnum(5));
        ev.Set("@y", new RubyFixnum(10));

        var page = CreateDefaultPage();
        var cmd = new RubyObject("RPG::EventCommand");
        cmd.Set("@code", new RubyFixnum(201));
        cmd.Set("@indent", new RubyFixnum(0));
        var pars = new RubyArray();
        pars.Items.Add(new RubyFixnum(0));
        pars.Items.Add(new RubyFixnum(1));
        pars.Items.Add(new RubyFixnum(5));
        pars.Items.Add(new RubyFixnum(10));
        pars.Items.Add(new RubyFixnum(0));
        pars.Items.Add(new RubyFixnum(1));
        cmd.Set("@parameters", pars);

        var list = (RubyArray)page.Get("@list")!;
        list.Items.Insert(0, cmd);

        var pages = new RubyArray();
        pages.Items.Add(page);
        ev.Set("@pages", pages);

        string json = EventSerializer.Serialize(ev);
        var result = EventSerializer.Deserialize(json);

        Assert.Equal("RPG::Event", result.ClassName);
        Assert.Equal(1, ((RubyFixnum)result.Get("@id")!).Value);
        Assert.Equal("TestDoor", ((RubyString)result.Get("@name")!).Text);
        Assert.Equal(5, ((RubyFixnum)result.Get("@x")!).Value);
        Assert.Equal(10, ((RubyFixnum)result.Get("@y")!).Value);

        var resultPages = (RubyArray)result.Get("@pages")!;
        Assert.Single(resultPages.Items);
        var resultPage = (RubyObject)resultPages.Items[0];
        var resultList = (RubyArray)resultPage.Get("@list")!;
        Assert.Equal(2, resultList.Items.Count); // transfer + end

        var resultCmd = (RubyObject)resultList.Items[0];
        Assert.Equal(201, ((RubyFixnum)resultCmd.Get("@code")!).Value);
        var resultPars = (RubyArray)resultCmd.Get("@parameters")!;
        Assert.Equal(6, resultPars.Items.Count);
        Assert.Equal(1, ((RubyFixnum)resultPars.Items[1]).Value);
    }

    [Fact]
    public void RoundTrip_EventWithConditions()
    {
        var ev = new RubyObject("RPG::Event");
        ev.Set("@id", new RubyFixnum(2));
        ev.Set("@name", new RubyString("NPC"));
        ev.Set("@x", new RubyFixnum(3));
        ev.Set("@y", new RubyFixnum(7));

        var page = CreateDefaultPage();
        var cond = (RubyObject)page.Get("@condition")!;
        cond.Set("@switch1_valid", RubyBool.True);
        cond.Set("@switch1_id", new RubyFixnum(42));
        cond.Set("@self_switch_valid", RubyBool.True);
        cond.Set("@self_switch_ch", new RubyString("B"));

        var gfx = (RubyObject)page.Get("@graphic")!;
        gfx.Set("@character_name", new RubyString("NPC 18"));
        gfx.Set("@direction", new RubyFixnum(4));

        var pages = new RubyArray();
        pages.Items.Add(page);
        ev.Set("@pages", pages);

        string json = EventSerializer.Serialize(ev);
        var result = EventSerializer.Deserialize(json);

        var resultPage = (RubyObject)((RubyArray)result.Get("@pages")!).Items[0];
        var resultCond = (RubyObject)resultPage.Get("@condition")!;
        Assert.True(((RubyBool)resultCond.Get("@switch1_valid")!).Value);
        Assert.Equal(42, ((RubyFixnum)resultCond.Get("@switch1_id")!).Value);
        Assert.True(((RubyBool)resultCond.Get("@self_switch_valid")!).Value);
        Assert.Equal("B", ((RubyString)resultCond.Get("@self_switch_ch")!).Text);

        var resultGfx = (RubyObject)resultPage.Get("@graphic")!;
        Assert.Equal("NPC 18", ((RubyString)resultGfx.Get("@character_name")!).Text);
        Assert.Equal(4, ((RubyFixnum)resultGfx.Get("@direction")!).Value);
    }

    [Fact]
    public void RoundTrip_ParameterTypes()
    {
        // Test various parameter types: string, int, bool, nil, symbol, object, hash
        var ev = new RubyObject("RPG::Event");
        ev.Set("@id", new RubyFixnum(1));
        ev.Set("@name", new RubyString("Complex"));
        ev.Set("@x", new RubyFixnum(0));
        ev.Set("@y", new RubyFixnum(0));

        var page = CreateDefaultPage();
        var list = (RubyArray)page.Get("@list")!;

        // Command with AudioFile parameter (nested RubyObject)
        var audioCmd = new RubyObject("RPG::EventCommand");
        audioCmd.Set("@code", new RubyFixnum(250));
        audioCmd.Set("@indent", new RubyFixnum(0));
        var audioPars = new RubyArray();
        var audioFile = new RubyObject("RPG::AudioFile");
        audioFile.Set("@name", new RubyString("Door"));
        audioFile.Set("@volume", new RubyFixnum(80));
        audioFile.Set("@pitch", new RubyFixnum(100));
        audioPars.Items.Add(audioFile);
        audioCmd.Set("@parameters", audioPars);
        list.Items.Insert(0, audioCmd);

        // Command with nil and bool parameters
        var mixedCmd = new RubyObject("RPG::EventCommand");
        mixedCmd.Set("@code", new RubyFixnum(111));
        mixedCmd.Set("@indent", new RubyFixnum(0));
        var mixedPars = new RubyArray();
        mixedPars.Items.Add(new RubyFixnum(12));
        mixedPars.Items.Add(new RubyString("pbGetPokemon(1).egg?"));
        mixedPars.Items.Add(RubyNil.Instance);
        mixedPars.Items.Add(RubyBool.True);
        mixedCmd.Set("@parameters", mixedPars);
        list.Items.Insert(1, mixedCmd);

        var pages = new RubyArray();
        pages.Items.Add(page);
        ev.Set("@pages", pages);

        string json = EventSerializer.Serialize(ev);
        var result = EventSerializer.Deserialize(json);

        var resultList = (RubyArray)((RubyObject)((RubyArray)result.Get("@pages")!).Items[0]).Get("@list")!;

        // Verify AudioFile parameter
        var rAudioCmd = (RubyObject)resultList.Items[0];
        Assert.Equal(250, ((RubyFixnum)rAudioCmd.Get("@code")!).Value);
        var rAudioPars = (RubyArray)rAudioCmd.Get("@parameters")!;
        var rAudioFile = (RubyObject)rAudioPars.Items[0];
        Assert.Equal("RPG::AudioFile", rAudioFile.ClassName);
        Assert.Equal("Door", ((RubyString)rAudioFile.Get("@name")!).Text);
        Assert.Equal(80, ((RubyFixnum)rAudioFile.Get("@volume")!).Value);

        // Verify mixed parameters
        var rMixedCmd = (RubyObject)resultList.Items[1];
        var rMixedPars = (RubyArray)rMixedCmd.Get("@parameters")!;
        Assert.Equal(12, ((RubyFixnum)rMixedPars.Items[0]).Value);
        Assert.Equal("pbGetPokemon(1).egg?", ((RubyString)rMixedPars.Items[1]).Text);
        Assert.IsType<RubyNil>(rMixedPars.Items[2]);
        Assert.True(((RubyBool)rMixedPars.Items[3]).Value);
    }

    [Fact]
    public void RoundTrip_UserDefinedParameter()
    {
        var ev = new RubyObject("RPG::Event");
        ev.Set("@id", new RubyFixnum(1));
        ev.Set("@name", new RubyString("Tone"));
        ev.Set("@x", new RubyFixnum(0));
        ev.Set("@y", new RubyFixnum(0));

        var page = CreateDefaultPage();
        var list = (RubyArray)page.Get("@list")!;

        // Tone parameter (UserDefined binary data)
        var toneCmd = new RubyObject("RPG::EventCommand");
        toneCmd.Set("@code", new RubyFixnum(223));
        toneCmd.Set("@indent", new RubyFixnum(0));
        var tonePars = new RubyArray();
        byte[] toneData = { 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
        tonePars.Items.Add(new RubyUserDefined("Tone", toneData));
        tonePars.Items.Add(new RubyFixnum(6));
        toneCmd.Set("@parameters", tonePars);
        list.Items.Insert(0, toneCmd);

        var pages = new RubyArray();
        pages.Items.Add(page);
        ev.Set("@pages", pages);

        string json = EventSerializer.Serialize(ev);
        var result = EventSerializer.Deserialize(json);

        var resultList = (RubyArray)((RubyObject)((RubyArray)result.Get("@pages")!).Items[0]).Get("@list")!;
        var rToneCmd = (RubyObject)resultList.Items[0];
        var rTonePars = (RubyArray)rToneCmd.Get("@parameters")!;
        var rTone = (RubyUserDefined)rTonePars.Items[0];
        Assert.Equal("Tone", rTone.ClassName);
        Assert.Equal(toneData, rTone.Data);
        Assert.Equal(6, ((RubyFixnum)rTonePars.Items[1]).Value);
    }

    [Fact]
    public void RoundTrip_MoveRoute()
    {
        var ev = new RubyObject("RPG::Event");
        ev.Set("@id", new RubyFixnum(1));
        ev.Set("@name", new RubyString("Walker"));
        ev.Set("@x", new RubyFixnum(0));
        ev.Set("@y", new RubyFixnum(0));

        var page = CreateDefaultPage();
        page.Set("@move_type", new RubyFixnum(2)); // Custom

        var route = (RubyObject)page.Get("@move_route")!;
        route.Set("@repeat", RubyBool.True);
        route.Set("@skippable", RubyBool.True);
        var moveList = (RubyArray)route.Get("@list")!;
        // Move Down
        var moveDown = new RubyObject("RPG::MoveCommand");
        moveDown.Set("@code", new RubyFixnum(1));
        moveDown.Set("@parameters", new RubyArray());
        moveList.Items.Insert(0, moveDown);
        // Move Right
        var moveRight = new RubyObject("RPG::MoveCommand");
        moveRight.Set("@code", new RubyFixnum(3));
        moveRight.Set("@parameters", new RubyArray());
        moveList.Items.Insert(1, moveRight);

        var pages = new RubyArray();
        pages.Items.Add(page);
        ev.Set("@pages", pages);

        string json = EventSerializer.Serialize(ev);
        var result = EventSerializer.Deserialize(json);

        var resultPage = (RubyObject)((RubyArray)result.Get("@pages")!).Items[0];
        Assert.Equal(2, ((RubyFixnum)resultPage.Get("@move_type")!).Value);
        var resultRoute = (RubyObject)resultPage.Get("@move_route")!;
        Assert.True(((RubyBool)resultRoute.Get("@repeat")!).Value);
        Assert.True(((RubyBool)resultRoute.Get("@skippable")!).Value);
        var resultMoveList = (RubyArray)resultRoute.Get("@list")!;
        Assert.Equal(3, resultMoveList.Items.Count); // down + right + end
        Assert.Equal(1, ((RubyFixnum)((RubyObject)resultMoveList.Items[0]).Get("@code")!).Value);
        Assert.Equal(3, ((RubyFixnum)((RubyObject)resultMoveList.Items[1]).Get("@code")!).Value);
        Assert.Equal(0, ((RubyFixnum)((RubyObject)resultMoveList.Items[2]).Get("@code")!).Value);
    }

    [Fact]
    public void Deserialize_DefaultsForMissingFields()
    {
        // Minimal JSON should produce a valid event with defaults
        string json = @"{""id"":1,""name"":""Test"",""x"":0,""y"":0,""pages"":[{}]}";
        var result = EventSerializer.Deserialize(json);

        Assert.Equal("RPG::Event", result.ClassName);
        var pages = (RubyArray)result.Get("@pages")!;
        Assert.Single(pages.Items);

        var page = (RubyObject)pages.Items[0];
        Assert.Equal(0, ((RubyFixnum)page.Get("@trigger")!).Value);
        Assert.Equal(3, ((RubyFixnum)page.Get("@move_speed")!).Value);
        Assert.True(((RubyBool)page.Get("@walk_anime")!).Value);

        // Default condition
        var cond = (RubyObject)page.Get("@condition")!;
        Assert.False(((RubyBool)cond.Get("@switch1_valid")!).Value);
        Assert.Equal(1, ((RubyFixnum)cond.Get("@switch1_id")!).Value);

        // Default graphic
        var gfx = (RubyObject)page.Get("@graphic")!;
        Assert.Equal("", ((RubyString)gfx.Get("@character_name")!).Text);
        Assert.Equal(2, ((RubyFixnum)gfx.Get("@direction")!).Value);
        Assert.Equal(255, ((RubyFixnum)gfx.Get("@opacity")!).Value);

        // Default command list (end command)
        var list = (RubyArray)page.Get("@list")!;
        Assert.Single(list.Items);
        Assert.Equal(0, ((RubyFixnum)((RubyObject)list.Items[0]).Get("@code")!).Value);
    }

    private static RubyObject CreateDefaultPage()
    {
        var page = new RubyObject("RPG::Event::Page");

        var cond = new RubyObject("RPG::Event::Page::Condition");
        cond.Set("@switch1_valid", RubyBool.False);
        cond.Set("@switch1_id", new RubyFixnum(1));
        cond.Set("@switch2_valid", RubyBool.False);
        cond.Set("@switch2_id", new RubyFixnum(1));
        cond.Set("@variable_valid", RubyBool.False);
        cond.Set("@variable_id", new RubyFixnum(1));
        cond.Set("@variable_value", new RubyFixnum(0));
        cond.Set("@self_switch_valid", RubyBool.False);
        cond.Set("@self_switch_ch", new RubyString("A"));
        page.Set("@condition", cond);

        var gfx = new RubyObject("RPG::Event::Page::Graphic");
        gfx.Set("@character_name", new RubyString(""));
        gfx.Set("@character_hue", new RubyFixnum(0));
        gfx.Set("@pattern", new RubyFixnum(0));
        gfx.Set("@tile_id", new RubyFixnum(0));
        gfx.Set("@direction", new RubyFixnum(2));
        gfx.Set("@opacity", new RubyFixnum(255));
        gfx.Set("@blend_type", new RubyFixnum(0));
        page.Set("@graphic", gfx);

        page.Set("@move_type", new RubyFixnum(0));
        page.Set("@move_speed", new RubyFixnum(3));
        page.Set("@move_frequency", new RubyFixnum(3));

        var route = new RubyObject("RPG::MoveRoute");
        route.Set("@repeat", RubyBool.True);
        route.Set("@skippable", RubyBool.False);
        var endMc = new RubyObject("RPG::MoveCommand");
        endMc.Set("@code", new RubyFixnum(0));
        endMc.Set("@parameters", new RubyArray());
        var moveList = new RubyArray();
        moveList.Items.Add(endMc);
        route.Set("@list", moveList);
        page.Set("@move_route", route);

        page.Set("@walk_anime", RubyBool.True);
        page.Set("@step_anime", RubyBool.False);
        page.Set("@direction_fix", RubyBool.False);
        page.Set("@through", RubyBool.False);
        page.Set("@always_on_top", RubyBool.False);
        page.Set("@trigger", new RubyFixnum(0));

        var list = new RubyArray();
        var endCmd = new RubyObject("RPG::EventCommand");
        endCmd.Set("@code", new RubyFixnum(0));
        endCmd.Set("@indent", new RubyFixnum(0));
        endCmd.Set("@parameters", new RubyArray());
        list.Items.Add(endCmd);
        page.Set("@list", list);

        return page;
    }
}
