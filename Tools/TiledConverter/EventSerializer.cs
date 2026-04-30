// =============================================================================
// EventSerializer — Bidirectional JSON ↔ RubyValue conversion for RPG Maker
// event data. Enables full round-trip event editing in Tiled.
//
// Known types (structured serialization):
//   RPG::Event, RPG::Event::Page, RPG::Event::Page::Condition,
//   RPG::Event::Page::Graphic, RPG::EventCommand, RPG::MoveRoute,
//   RPG::MoveCommand
//
// Unknown/parameter types (generic serialization with type tags):
//   null, bool, int, float, string → JSON primitives
//   Symbol → {"_sym":"name"}
//   Hash   → {"_hash":[[k,v],...]}
//   Object → {"_class":"Name","@var":value,...}
//   UserDefined → {"_userdef":"Name","data":"base64"}
//   UserMarshal → {"_usermarshal":"Name","data":value}
// =============================================================================
using System;
using System.Collections.Generic;
using System.Text.Json;
using System.Text.Json.Nodes;

namespace TiledConverter;

public static class EventSerializer
{
    // ========================================================================
    // Serialize: RubyObject (RPG::Event) → JSON string
    // ========================================================================

    public static string Serialize(RubyObject ev)
    {
        var json = SerializeEvent(ev);
        return json.ToJsonString(new JsonSerializerOptions { WriteIndented = false });
    }

    static JsonObject SerializeEvent(RubyObject ev)
    {
        var json = new JsonObject();
        json["id"] = GetInt(ev, "@id");
        json["name"] = GetStr(ev, "@name");
        json["x"] = GetInt(ev, "@x");
        json["y"] = GetInt(ev, "@y");

        var pages = ev.Get("@pages") as RubyArray;
        if (pages != null)
        {
            var arr = new JsonArray();
            foreach (var item in pages.Items)
                if (item is RubyObject page)
                    arr.Add(SerializePage(page));
            json["pages"] = arr;
        }
        return json;
    }

    static JsonObject SerializePage(RubyObject page)
    {
        var json = new JsonObject();

        if (page.Get("@condition") is RubyObject cond)
            json["condition"] = SerializeCondition(cond);
        if (page.Get("@graphic") is RubyObject gfx)
            json["graphic"] = SerializeGraphic(gfx);

        json["move_type"] = GetInt(page, "@move_type");
        json["move_speed"] = GetInt(page, "@move_speed");
        json["move_frequency"] = GetInt(page, "@move_frequency");

        if (page.Get("@move_route") is RubyObject route)
            json["move_route"] = SerializeMoveRoute(route);

        json["walk_anime"] = GetBool(page, "@walk_anime");
        json["step_anime"] = GetBool(page, "@step_anime");
        json["direction_fix"] = GetBool(page, "@direction_fix");
        json["through"] = GetBool(page, "@through");
        json["always_on_top"] = GetBool(page, "@always_on_top");
        json["trigger"] = GetInt(page, "@trigger");

        if (page.Get("@list") is RubyArray list)
        {
            var cmds = new JsonArray();
            foreach (var item in list.Items)
                if (item is RubyObject cmd)
                    cmds.Add(SerializeCommand(cmd));
            json["list"] = cmds;
        }

        return json;
    }

    static JsonObject SerializeCondition(RubyObject c)
    {
        var json = new JsonObject();
        json["switch1_valid"] = GetBool(c, "@switch1_valid");
        json["switch1_id"] = GetInt(c, "@switch1_id");
        json["switch2_valid"] = GetBool(c, "@switch2_valid");
        json["switch2_id"] = GetInt(c, "@switch2_id");
        json["variable_valid"] = GetBool(c, "@variable_valid");
        json["variable_id"] = GetInt(c, "@variable_id");
        json["variable_value"] = GetInt(c, "@variable_value");
        json["self_switch_valid"] = GetBool(c, "@self_switch_valid");
        json["self_switch_ch"] = GetStr(c, "@self_switch_ch");
        return json;
    }

    static JsonObject SerializeGraphic(RubyObject g)
    {
        var json = new JsonObject();
        json["character_name"] = GetStr(g, "@character_name");
        json["character_hue"] = GetInt(g, "@character_hue");
        json["pattern"] = GetInt(g, "@pattern");
        json["tile_id"] = GetInt(g, "@tile_id");
        json["direction"] = GetInt(g, "@direction");
        json["opacity"] = GetInt(g, "@opacity");
        json["blend_type"] = GetInt(g, "@blend_type");
        return json;
    }

    static JsonObject SerializeMoveRoute(RubyObject route)
    {
        var json = new JsonObject();
        json["repeat"] = GetBool(route, "@repeat");
        json["skippable"] = GetBool(route, "@skippable");

        if (route.Get("@list") is RubyArray list)
        {
            var cmds = new JsonArray();
            foreach (var item in list.Items)
            {
                if (item is RubyObject mc)
                {
                    var mcJson = new JsonObject();
                    mcJson["code"] = GetInt(mc, "@code");
                    mcJson["parameters"] = mc.Get("@parameters") is RubyArray pars
                        ? SerializeValueArray(pars) : new JsonArray();
                    cmds.Add(mcJson);
                }
            }
            json["list"] = cmds;
        }
        return json;
    }

    static JsonObject SerializeCommand(RubyObject cmd)
    {
        var json = new JsonObject();
        json["c"] = GetInt(cmd, "@code");
        json["i"] = GetInt(cmd, "@indent");
        json["p"] = cmd.Get("@parameters") is RubyArray pars
            ? SerializeValueArray(pars) : new JsonArray();
        return json;
    }

    // ========================================================================
    // Generic RubyValue → JSON (for parameters and unknown types)
    // ========================================================================

    static JsonArray SerializeValueArray(RubyArray arr)
    {
        var result = new JsonArray();
        foreach (var item in arr.Items)
            result.Add(SerializeValue(item));
        return result;
    }

    static JsonNode? SerializeValue(RubyValue val)
    {
        switch (val)
        {
            case RubyNil:
                return null;
            case RubyBool b:
                return JsonValue.Create(b.Value);
            case RubyFixnum f:
                return JsonValue.Create(f.Value);
            case RubyFloat fl:
                return JsonValue.Create(fl.Value);
            case RubyString s:
                return JsonValue.Create(s.Text);
            case RubySymbol sym:
                return new JsonObject { ["_sym"] = sym.Name };
            case RubyArray a:
                return SerializeValueArray(a);
            case RubyHash h:
                var hArr = new JsonArray();
                foreach (var (k, v) in h.Entries)
                    hArr.Add(new JsonArray { SerializeValue(k), SerializeValue(v) });
                return new JsonObject { ["_hash"] = hArr };
            case RubyObject o:
                var obj = new JsonObject { ["_class"] = o.ClassName };
                foreach (var (name, v) in o.Vars)
                    obj[name] = SerializeValue(v);
                return obj;
            case RubyUserDefined ud:
                return new JsonObject
                {
                    ["_userdef"] = ud.ClassName,
                    ["data"] = Convert.ToBase64String(ud.Data)
                };
            case RubyUserMarshal um:
                return new JsonObject
                {
                    ["_usermarshal"] = um.ClassName,
                    ["data"] = SerializeValue(um.Data)
                };
            default:
                return null;
        }
    }

    // ========================================================================
    // Deserialize: JSON string → RubyObject (RPG::Event)
    // ========================================================================

    public static RubyObject Deserialize(string json)
    {
        var node = JsonNode.Parse(json)!.AsObject();
        return DeserializeEvent(node);
    }

    static RubyObject DeserializeEvent(JsonObject node)
    {
        var ev = new RubyObject("RPG::Event");
        ev.Set("@id", new RubyFixnum(node["id"]?.GetValue<int>() ?? 0));
        ev.Set("@name", new RubyString(node["name"]?.GetValue<string>() ?? ""));
        ev.Set("@x", new RubyFixnum(node["x"]?.GetValue<int>() ?? 0));
        ev.Set("@y", new RubyFixnum(node["y"]?.GetValue<int>() ?? 0));

        var pagesNode = node["pages"]?.AsArray();
        if (pagesNode != null)
        {
            var pages = new RubyArray();
            foreach (var p in pagesNode)
                if (p is JsonObject po)
                    pages.Items.Add(DeserializePage(po));
            ev.Set("@pages", pages);
        }
        else
        {
            ev.Set("@pages", new RubyArray());
        }
        return ev;
    }

    static RubyObject DeserializePage(JsonObject node)
    {
        var page = new RubyObject("RPG::Event::Page");

        page.Set("@condition", node["condition"] is JsonObject cn
            ? DeserializeCondition(cn) : DefaultCondition());
        page.Set("@graphic", node["graphic"] is JsonObject gn
            ? DeserializeGraphic(gn) : DefaultGraphic());

        page.Set("@move_type", new RubyFixnum(node["move_type"]?.GetValue<int>() ?? 0));
        page.Set("@move_speed", new RubyFixnum(node["move_speed"]?.GetValue<int>() ?? 3));
        page.Set("@move_frequency", new RubyFixnum(node["move_frequency"]?.GetValue<int>() ?? 3));

        page.Set("@move_route", node["move_route"] is JsonObject rn
            ? DeserializeMoveRoute(rn) : DefaultMoveRoute());

        page.Set("@walk_anime", BoolNode(node, "walk_anime", true) ? RubyBool.True : RubyBool.False);
        page.Set("@step_anime", BoolNode(node, "step_anime", false) ? RubyBool.True : RubyBool.False);
        page.Set("@direction_fix", BoolNode(node, "direction_fix", false) ? RubyBool.True : RubyBool.False);
        page.Set("@through", BoolNode(node, "through", false) ? RubyBool.True : RubyBool.False);
        page.Set("@always_on_top", BoolNode(node, "always_on_top", false) ? RubyBool.True : RubyBool.False);
        page.Set("@trigger", new RubyFixnum(node["trigger"]?.GetValue<int>() ?? 0));

        if (node["list"] is JsonArray listArr)
        {
            var list = new RubyArray();
            foreach (var c in listArr)
                if (c is JsonObject co)
                    list.Items.Add(DeserializeCommand(co));
            page.Set("@list", list);
        }
        else
        {
            // Default: single end command
            var list = new RubyArray();
            list.Items.Add(MakeEndCommand());
            page.Set("@list", list);
        }

        return page;
    }

    static RubyObject DeserializeCondition(JsonObject node)
    {
        var c = new RubyObject("RPG::Event::Page::Condition");
        c.Set("@switch1_valid", BoolNode(node, "switch1_valid", false) ? RubyBool.True : RubyBool.False);
        c.Set("@switch1_id", new RubyFixnum(node["switch1_id"]?.GetValue<int>() ?? 1));
        c.Set("@switch2_valid", BoolNode(node, "switch2_valid", false) ? RubyBool.True : RubyBool.False);
        c.Set("@switch2_id", new RubyFixnum(node["switch2_id"]?.GetValue<int>() ?? 1));
        c.Set("@variable_valid", BoolNode(node, "variable_valid", false) ? RubyBool.True : RubyBool.False);
        c.Set("@variable_id", new RubyFixnum(node["variable_id"]?.GetValue<int>() ?? 1));
        c.Set("@variable_value", new RubyFixnum(node["variable_value"]?.GetValue<int>() ?? 0));
        c.Set("@self_switch_valid", BoolNode(node, "self_switch_valid", false) ? RubyBool.True : RubyBool.False);
        c.Set("@self_switch_ch", new RubyString(node["self_switch_ch"]?.GetValue<string>() ?? "A"));
        return c;
    }

    static RubyObject DeserializeGraphic(JsonObject node)
    {
        var g = new RubyObject("RPG::Event::Page::Graphic");
        g.Set("@character_name", new RubyString(node["character_name"]?.GetValue<string>() ?? ""));
        g.Set("@character_hue", new RubyFixnum(node["character_hue"]?.GetValue<int>() ?? 0));
        g.Set("@pattern", new RubyFixnum(node["pattern"]?.GetValue<int>() ?? 0));
        g.Set("@tile_id", new RubyFixnum(node["tile_id"]?.GetValue<int>() ?? 0));
        g.Set("@direction", new RubyFixnum(node["direction"]?.GetValue<int>() ?? 2));
        g.Set("@opacity", new RubyFixnum(node["opacity"]?.GetValue<int>() ?? 255));
        g.Set("@blend_type", new RubyFixnum(node["blend_type"]?.GetValue<int>() ?? 0));
        return g;
    }

    static RubyObject DeserializeMoveRoute(JsonObject node)
    {
        var route = new RubyObject("RPG::MoveRoute");
        route.Set("@repeat", BoolNode(node, "repeat", true) ? RubyBool.True : RubyBool.False);
        route.Set("@skippable", BoolNode(node, "skippable", false) ? RubyBool.True : RubyBool.False);

        if (node["list"] is JsonArray listArr)
        {
            var list = new RubyArray();
            foreach (var item in listArr)
            {
                if (item is JsonObject mcObj)
                {
                    var mc = new RubyObject("RPG::MoveCommand");
                    mc.Set("@code", new RubyFixnum(mcObj["code"]?.GetValue<int>() ?? 0));
                    mc.Set("@parameters", mcObj["parameters"] is JsonArray pa
                        ? DeserializeValueArray(pa) : new RubyArray());
                    list.Items.Add(mc);
                }
            }
            route.Set("@list", list);
        }
        else
        {
            var list = new RubyArray();
            var endMc = new RubyObject("RPG::MoveCommand");
            endMc.Set("@code", new RubyFixnum(0));
            endMc.Set("@parameters", new RubyArray());
            list.Items.Add(endMc);
            route.Set("@list", list);
        }
        return route;
    }

    static RubyObject DeserializeCommand(JsonObject node)
    {
        var cmd = new RubyObject("RPG::EventCommand");
        cmd.Set("@code", new RubyFixnum(node["c"]?.GetValue<int>() ?? 0));
        cmd.Set("@indent", new RubyFixnum(node["i"]?.GetValue<int>() ?? 0));
        cmd.Set("@parameters", node["p"] is JsonArray pa
            ? DeserializeValueArray(pa) : new RubyArray());
        return cmd;
    }

    // ========================================================================
    // Generic JSON → RubyValue (for parameters and unknown types)
    // ========================================================================

    static RubyArray DeserializeValueArray(JsonArray arr)
    {
        var result = new RubyArray();
        foreach (var item in arr)
            result.Items.Add(DeserializeValue(item));
        return result;
    }

    static RubyValue DeserializeValue(JsonNode? node)
    {
        if (node == null) return RubyNil.Instance;

        switch (node)
        {
            case JsonValue jv:
                if (jv.TryGetValue<bool>(out var b)) return b ? RubyBool.True : RubyBool.False;
                if (jv.TryGetValue<int>(out var i)) return new RubyFixnum(i);
                if (jv.TryGetValue<long>(out var l)) return new RubyFixnum((int)l);
                if (jv.TryGetValue<double>(out var d))
                {
                    // If value is a whole number, treat as Fixnum
                    if (d == Math.Floor(d) && d >= int.MinValue && d <= int.MaxValue)
                        return new RubyFixnum((int)d);
                    return new RubyFloat(d);
                }
                if (jv.TryGetValue<string>(out var s)) return new RubyString(s);
                return RubyNil.Instance;

            case JsonArray ja:
                return DeserializeValueArray(ja);

            case JsonObject jo:
                if (jo.ContainsKey("_sym"))
                    return new RubySymbol(jo["_sym"]!.GetValue<string>());
                if (jo.ContainsKey("_hash"))
                {
                    var hash = new RubyHash();
                    foreach (var entry in jo["_hash"]!.AsArray())
                    {
                        var pair = entry!.AsArray();
                        hash.Entries.Add((DeserializeValue(pair[0]), DeserializeValue(pair[1])));
                    }
                    return hash;
                }
                if (jo.ContainsKey("_userdef"))
                {
                    return new RubyUserDefined(
                        jo["_userdef"]!.GetValue<string>(),
                        Convert.FromBase64String(jo["data"]!.GetValue<string>()));
                }
                if (jo.ContainsKey("_usermarshal"))
                {
                    return new RubyUserMarshal(
                        jo["_usermarshal"]!.GetValue<string>(),
                        DeserializeValue(jo["data"]));
                }
                if (jo.ContainsKey("_class"))
                {
                    var obj = new RubyObject(jo["_class"]!.GetValue<string>());
                    foreach (var (key, val) in jo)
                    {
                        if (key == "_class") continue;
                        obj.Set(key, DeserializeValue(val));
                    }
                    return obj;
                }
                // Fallback: treat as hash with string keys
                var fallback = new RubyHash();
                foreach (var (key, val) in jo)
                    fallback.Entries.Add((new RubyString(key), DeserializeValue(val)));
                return fallback;
        }

        return RubyNil.Instance;
    }

    // ========================================================================
    // Defaults — used when creating new events or missing optional data
    // ========================================================================

    static RubyObject DefaultCondition()
    {
        var c = new RubyObject("RPG::Event::Page::Condition");
        c.Set("@switch1_valid", RubyBool.False);
        c.Set("@switch1_id", new RubyFixnum(1));
        c.Set("@switch2_valid", RubyBool.False);
        c.Set("@switch2_id", new RubyFixnum(1));
        c.Set("@variable_valid", RubyBool.False);
        c.Set("@variable_id", new RubyFixnum(1));
        c.Set("@variable_value", new RubyFixnum(0));
        c.Set("@self_switch_valid", RubyBool.False);
        c.Set("@self_switch_ch", new RubyString("A"));
        return c;
    }

    static RubyObject DefaultGraphic()
    {
        var g = new RubyObject("RPG::Event::Page::Graphic");
        g.Set("@character_name", new RubyString(""));
        g.Set("@character_hue", new RubyFixnum(0));
        g.Set("@pattern", new RubyFixnum(0));
        g.Set("@tile_id", new RubyFixnum(0));
        g.Set("@direction", new RubyFixnum(2));
        g.Set("@opacity", new RubyFixnum(255));
        g.Set("@blend_type", new RubyFixnum(0));
        return g;
    }

    static RubyObject DefaultMoveRoute()
    {
        var route = new RubyObject("RPG::MoveRoute");
        route.Set("@repeat", RubyBool.True);
        route.Set("@skippable", RubyBool.False);
        var list = new RubyArray();
        var endMc = new RubyObject("RPG::MoveCommand");
        endMc.Set("@code", new RubyFixnum(0));
        endMc.Set("@parameters", new RubyArray());
        list.Items.Add(endMc);
        route.Set("@list", list);
        return route;
    }

    static RubyObject MakeEndCommand()
    {
        var cmd = new RubyObject("RPG::EventCommand");
        cmd.Set("@code", new RubyFixnum(0));
        cmd.Set("@indent", new RubyFixnum(0));
        cmd.Set("@parameters", new RubyArray());
        return cmd;
    }

    // ========================================================================
    // Helpers
    // ========================================================================

    static int GetInt(RubyObject obj, string name)
        => obj.Get(name) is RubyFixnum f ? f.Value : 0;

    static string GetStr(RubyObject obj, string name)
        => obj.Get(name) is RubyString s ? s.Text : "";

    static bool GetBool(RubyObject obj, string name)
        => obj.Get(name) is RubyBool b && b.Value;

    static bool BoolNode(JsonObject node, string name, bool def)
        => node[name]?.GetValue<bool>() ?? def;
}
