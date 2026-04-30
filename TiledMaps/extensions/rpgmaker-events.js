// =============================================================================
// RPG Maker XP Event Editor — Tiled JavaScript Extension
//
// Adds event editing capabilities to Tiled for Pokémon Shattered Crowns.
// Works with TiledConverter's event_data JSON format.
//
// Features:
//   - Create new events (Action → RPG Maker: New Event)
//   - Edit event commands via dialog
//   - Event templates (NPC, Door, Item, Script)
//   - Visual event info in Properties
//   - Automatic event_id assignment
// =============================================================================

// ============================================================================
// Constants
// ============================================================================

var TRIGGER_NAMES = ["Action Button", "Player Touch", "Event Touch", "Autorun", "Parallel Process"];
var MOVE_TYPE_NAMES = ["Fixed", "Random", "Approach", "Custom"];
var DIRECTION_MAP = { 2: "Down", 4: "Left", 6: "Right", 8: "Up" };

var COMMAND_NAMES = {
    0: "End",
    101: "Show Text",
    102: "Show Choices",
    103: "Input Number",
    104: "Change Text Options",
    106: "Wait",
    108: "Comment",
    111: "Conditional Branch",
    112: "Loop",
    113: "Break Loop",
    115: "Exit Event Processing",
    116: "Erase Event",
    117: "Call Common Event",
    118: "Label",
    119: "Jump to Label",
    121: "Control Switches",
    122: "Control Variables",
    123: "Control Self Switch",
    124: "Control Timer",
    125: "Change Gold",
    126: "Change Items",
    127: "Change Weapons",
    128: "Change Armor",
    129: "Change Party Member",
    131: "Change Windowskin",
    132: "Change Battle BGM",
    133: "Change Battle End ME",
    134: "Change Save Access",
    135: "Change Menu Access",
    136: "Change Encounter",
    201: "Transfer Player",
    202: "Set Event Location",
    203: "Scroll Map",
    204: "Change Map Settings",
    205: "Change Fog Settings",
    206: "Change Fog Color Tone",
    207: "Change Fog Opacity",
    208: "Show Animation",
    209: "Change Transparent Flag",
    210: "Move Event",
    221: "Prepare for Transition",
    222: "Execute Transition",
    223: "Change Screen Color Tone",
    224: "Screen Flash",
    225: "Screen Shake",
    231: "Show Picture",
    232: "Move Picture",
    233: "Rotate Picture",
    234: "Change Picture Color Tone",
    235: "Erase Picture",
    236: "Set Weather Effects",
    241: "Play BGM",
    242: "Fade Out BGM",
    245: "Play BGS",
    246: "Fade Out BGS",
    247: "Memorize BGM/BGS",
    248: "Restore BGM/BGS",
    249: "Play ME",
    250: "Play SE",
    251: "Stop SE",
    301: "Battle Processing",
    302: "Shop Processing",
    303: "Name Input Processing",
    311: "Change HP",
    312: "Change SP",
    313: "Change State",
    314: "Recover All",
    315: "Change EXP",
    316: "Change Level",
    317: "Change Parameters",
    318: "Change Skills",
    319: "Change Equipment",
    320: "Change Actor Name",
    321: "Change Actor Class",
    322: "Change Actor Graphic",
    331: "Change Enemy HP",
    332: "Change Enemy SP",
    333: "Change Enemy State",
    334: "Enemy Recover All",
    335: "Enemy Appearance",
    336: "Enemy Transform",
    337: "Show Battle Animation",
    338: "Deal Damage",
    339: "Force Action",
    340: "Abort Battle",
    351: "Call Menu Screen",
    352: "Call Save Screen",
    353: "Game Over",
    354: "Return to Title Screen",
    355: "Script",
    401: "Show Text (cont.)",
    402: "When [Choice]",
    403: "When Cancel",
    404: "End Choices",
    408: "Comment (cont.)",
    411: "Else",
    412: "End Branch",
    413: "End Loop",
    601: "If Win",
    602: "If Escape",
    603: "If Lose",
    604: "End Battle Results",
    655: "Script (cont.)"
};

// ============================================================================
// Helpers
// ============================================================================

function getCommandName(code) {
    return COMMAND_NAMES[code] || ("Command " + code);
}

function getNextEventId(map) {
    var maxId = 0;
    for (var gi = 0; gi < map.layerCount; gi++) {
        var layer = map.layerAt(gi);
        if (!layer.isObjectLayer) continue;
        var objLayer = layer;
        for (var oi = 0; oi < objLayer.objectCount; oi++) {
            var obj = objLayer.objectAt(oi);
            if (obj.className === "Event" || obj.type === "Event") {
                var idProp = obj.property("event_id");
                if (idProp !== undefined) {
                    var id = parseInt(idProp, 10);
                    if (id > maxId) maxId = id;
                }
            }
        }
    }
    return maxId + 1;
}

function findEventsLayer(map) {
    for (var i = 0; i < map.layerCount; i++) {
        var layer = map.layerAt(i);
        if (layer.isObjectLayer && layer.name === "Events") return layer;
    }
    return null;
}

function makeDefaultEventData(id, name, x, y) {
    return {
        id: id,
        name: name,
        x: x,
        y: y,
        pages: [{
            condition: {
                switch1_valid: false, switch1_id: 1,
                switch2_valid: false, switch2_id: 1,
                variable_valid: false, variable_id: 1, variable_value: 0,
                self_switch_valid: false, self_switch_ch: "A"
            },
            graphic: {
                character_name: "", character_hue: 0,
                pattern: 0, tile_id: 0,
                direction: 2, opacity: 255, blend_type: 0
            },
            move_type: 0, move_speed: 3, move_frequency: 3,
            move_route: { repeat: true, skippable: false, list: [{ code: 0, parameters: [] }] },
            walk_anime: true, step_anime: false,
            direction_fix: false, through: false,
            always_on_top: false, trigger: 0,
            list: [{ c: 0, i: 0, p: [] }]
        }]
    };
}

function makeEventObject(map, eventData) {
    var obj = new MapObject();
    obj.name = eventData.name;
    obj.className = "Event";
    obj.x = eventData.x * map.tileWidth;
    obj.y = eventData.y * map.tileHeight;
    obj.width = map.tileWidth;
    obj.height = map.tileHeight;
    obj.setProperty("event_id", eventData.id.toString());
    obj.setProperty("pages", eventData.pages.length.toString());
    obj.setProperty("event_data", JSON.stringify(eventData));
    return obj;
}

// ============================================================================
// Event Summary — human-readable overview of event commands
// ============================================================================

function getEventSummary(eventData) {
    if (!eventData || !eventData.pages) return "No event data";

    var lines = [];
    lines.push("Event #" + eventData.id + ": " + eventData.name);
    lines.push("Position: (" + eventData.x + ", " + eventData.y + ")");
    lines.push("Pages: " + eventData.pages.length);

    for (var p = 0; p < eventData.pages.length; p++) {
        var page = eventData.pages[p];
        lines.push("");
        lines.push("--- Page " + (p + 1) + " ---");
        lines.push("Trigger: " + (TRIGGER_NAMES[page.trigger] || page.trigger));
        lines.push("Move: " + (MOVE_TYPE_NAMES[page.move_type] || page.move_type));

        if (page.graphic && page.graphic.character_name)
            lines.push("Graphic: " + page.graphic.character_name);

        // Show conditions
        var cond = page.condition;
        if (cond) {
            var condParts = [];
            if (cond.switch1_valid) condParts.push("Switch " + cond.switch1_id);
            if (cond.switch2_valid) condParts.push("Switch " + cond.switch2_id);
            if (cond.variable_valid) condParts.push("Var " + cond.variable_id + " >= " + cond.variable_value);
            if (cond.self_switch_valid) condParts.push("Self-Switch " + cond.self_switch_ch);
            if (condParts.length > 0) lines.push("Conditions: " + condParts.join(", "));
        }

        // Show command summary
        if (page.list) {
            lines.push("Commands: " + page.list.length);
            var shown = 0;
            for (var ci = 0; ci < page.list.length && shown < 15; ci++) {
                var cmd = page.list[ci];
                if (cmd.c === 0) continue; // skip End
                var indent = "";
                for (var ii = 0; ii < cmd.i; ii++) indent += "  ";
                var cmdLine = indent + getCommandName(cmd.c);

                // Add parameter summary for common commands
                if (cmd.c === 101 || cmd.c === 401) { // Show Text
                    if (cmd.p && cmd.p.length > 0) cmdLine += ": \"" + cmd.p[0] + "\"";
                } else if (cmd.c === 355 || cmd.c === 655) { // Script
                    if (cmd.p && cmd.p.length > 0) cmdLine += ": " + cmd.p[0];
                } else if (cmd.c === 108 || cmd.c === 408) { // Comment
                    if (cmd.p && cmd.p.length > 0) cmdLine += ": " + cmd.p[0];
                } else if (cmd.c === 201) { // Transfer Player
                    if (cmd.p && cmd.p.length >= 4)
                        cmdLine += ": Map " + cmd.p[1] + " (" + cmd.p[2] + "," + cmd.p[3] + ")";
                } else if (cmd.c === 102) { // Show Choices
                    if (cmd.p && cmd.p.length > 0 && Array.isArray(cmd.p[0]))
                        cmdLine += ": [" + cmd.p[0].join(", ") + "]";
                } else if (cmd.c === 402) { // When [Choice]
                    if (cmd.p && cmd.p.length > 1) cmdLine += ": \"" + cmd.p[1] + "\"";
                }

                lines.push("  " + cmdLine);
                shown++;
            }
            if (page.list.length - shown > 1)
                lines.push("  ... (" + (page.list.length - shown - 1) + " more commands)");
        }
    }

    return lines.join("\n");
}

// ============================================================================
// Actions
// ============================================================================

// --- New Event ---
var newEventAction = tiled.registerAction("RPGMaker_NewEvent", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) {
        tiled.alert("No map is open.");
        return;
    }

    var eventsLayer = findEventsLayer(map);
    if (!eventsLayer) {
        tiled.alert("No 'Events' object layer found.\nCreate an Object Layer named 'Events' first.");
        return;
    }

    var newId = getNextEventId(map);
    var name = "Event " + newId;

    // Place at center of current view or (0,0)
    var x = Math.floor(map.width / 2);
    var y = Math.floor(map.height / 2);

    var eventData = makeDefaultEventData(newId, name, x, y);
    var obj = makeEventObject(map, eventData);

    eventsLayer.addObject(obj);
    tiled.log("Created new event: " + name + " (ID " + newId + ") at (" + x + ", " + y + ")");
});
newEventAction.text = "RPG Maker: New Event";
newEventAction.shortcut = "Ctrl+Shift+E";

// --- New NPC Event ---
var newNpcAction = tiled.registerAction("RPGMaker_NewNPC", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) { tiled.alert("No map is open."); return; }

    var eventsLayer = findEventsLayer(map);
    if (!eventsLayer) { tiled.alert("No 'Events' object layer found."); return; }

    var newId = getNextEventId(map);
    var x = Math.floor(map.width / 2);
    var y = Math.floor(map.height / 2);

    var eventData = makeDefaultEventData(newId, "NPC " + newId, x, y);
    eventData.pages[0].trigger = 0; // Action Button
    eventData.pages[0].list = [
        { c: 101, i: 0, p: ["Hello! I'm an NPC."] },
        { c: 0, i: 0, p: [] }
    ];

    var obj = makeEventObject(map, eventData);
    eventsLayer.addObject(obj);
    tiled.log("Created NPC event at (" + x + ", " + y + ")");
});
newNpcAction.text = "RPG Maker: New NPC";

// --- New Door Event ---
var newDoorAction = tiled.registerAction("RPGMaker_NewDoor", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) { tiled.alert("No map is open."); return; }

    var eventsLayer = findEventsLayer(map);
    if (!eventsLayer) { tiled.alert("No 'Events' object layer found."); return; }

    var newId = getNextEventId(map);
    var x = Math.floor(map.width / 2);
    var y = Math.floor(map.height / 2);

    var eventData = makeDefaultEventData(newId, "Door " + newId, x, y);
    eventData.pages[0].trigger = 1; // Player Touch
    eventData.pages[0].list = [
        { c: 250, i: 0, p: [{ _class: "RPG::AudioFile", "@name": "Exit Door", "@volume": 80, "@pitch": 100 }] },
        { c: 223, i: 0, p: [{ _userdef: "Tone", data: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAYAAAAAA=" }, 6] },
        { c: 106, i: 0, p: [8] },
        { c: 201, i: 0, p: [0, 1, 0, 0, 0, 1] },
        { c: 223, i: 0, p: [{ _userdef: "Tone", data: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=" }, 6] },
        { c: 0, i: 0, p: [] }
    ];

    var obj = makeEventObject(map, eventData);
    eventsLayer.addObject(obj);
    tiled.log("Created door event at (" + x + ", " + y + ") — Edit transfer target in event_data!");
});
newDoorAction.text = "RPG Maker: New Door";

// --- New Script Event ---
var newScriptAction = tiled.registerAction("RPGMaker_NewScript", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) { tiled.alert("No map is open."); return; }

    var eventsLayer = findEventsLayer(map);
    if (!eventsLayer) { tiled.alert("No 'Events' object layer found."); return; }

    var newId = getNextEventId(map);
    var x = Math.floor(map.width / 2);
    var y = Math.floor(map.height / 2);

    var eventData = makeDefaultEventData(newId, "Script " + newId, x, y);
    eventData.pages[0].trigger = 0;
    eventData.pages[0].list = [
        { c: 355, i: 0, p: ["# Write your script here"] },
        { c: 0, i: 0, p: [] }
    ];

    var obj = makeEventObject(map, eventData);
    eventsLayer.addObject(obj);
    tiled.log("Created script event at (" + x + ", " + y + ")");
});
newScriptAction.text = "RPG Maker: New Script Event";

// --- Show Event Info ---
var showEventInfoAction = tiled.registerAction("RPGMaker_ShowEventInfo", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) { tiled.alert("No map is open."); return; }

    var selected = map.selectedObjects;
    if (!selected || selected.length === 0) {
        tiled.alert("Select an event object first.");
        return;
    }

    var obj = selected[0];
    var jsonStr = obj.property("event_data");
    if (!jsonStr) {
        tiled.alert("Selected object has no event_data property.\nOnly events exported by TiledConverter have full data.");
        return;
    }

    try {
        var eventData = JSON.parse(jsonStr);
        var summary = getEventSummary(eventData);
        tiled.alert(summary);
    } catch (e) {
        tiled.alert("Error parsing event_data: " + e.message);
    }
});
showEventInfoAction.text = "RPG Maker: Show Event Info";
showEventInfoAction.shortcut = "Ctrl+Shift+I";

// --- Add Script Command to Selected Event ---
var addScriptCmdAction = tiled.registerAction("RPGMaker_AddScriptCmd", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) { tiled.alert("No map is open."); return; }

    var selected = map.selectedObjects;
    if (!selected || selected.length === 0) {
        tiled.alert("Select an event object first.");
        return;
    }

    var obj = selected[0];
    var jsonStr = obj.property("event_data");
    if (!jsonStr) { tiled.alert("No event_data on selected object."); return; }

    var scriptCode = tiled.prompt("Enter Ruby script code:");
    if (!scriptCode) return;

    try {
        var eventData = JSON.parse(jsonStr);
        // Add script command before the end command on page 0
        var page = eventData.pages[0];
        if (!page.list) page.list = [];

        // Find the end command (code 0) and insert before it
        var insertIdx = page.list.length;
        for (var i = 0; i < page.list.length; i++) {
            if (page.list[i].c === 0) { insertIdx = i; break; }
        }

        // Split multi-line scripts: first line = 355, rest = 655
        var lines = scriptCode.split("\n");
        var newCmds = [];
        for (var li = 0; li < lines.length; li++) {
            newCmds.push({ c: li === 0 ? 355 : 655, i: 0, p: [lines[li]] });
        }
        Array.prototype.splice.apply(page.list, [insertIdx, 0].concat(newCmds));

        obj.setProperty("event_data", JSON.stringify(eventData));
        tiled.log("Added script command: " + scriptCode.substring(0, 50));
    } catch (e) {
        tiled.alert("Error: " + e.message);
    }
});
addScriptCmdAction.text = "RPG Maker: Add Script Command";

// --- Add Show Text Command ---
var addTextCmdAction = tiled.registerAction("RPGMaker_AddTextCmd", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) { tiled.alert("No map is open."); return; }

    var selected = map.selectedObjects;
    if (!selected || selected.length === 0) {
        tiled.alert("Select an event object first.");
        return;
    }

    var obj = selected[0];
    var jsonStr = obj.property("event_data");
    if (!jsonStr) { tiled.alert("No event_data on selected object."); return; }

    var text = tiled.prompt("Enter dialog text:");
    if (!text) return;

    try {
        var eventData = JSON.parse(jsonStr);
        var page = eventData.pages[0];
        if (!page.list) page.list = [];

        var insertIdx = page.list.length;
        for (var i = 0; i < page.list.length; i++) {
            if (page.list[i].c === 0) { insertIdx = i; break; }
        }

        // Split text at line breaks — first line = 101, rest = 401
        var lines = text.split("\\n");
        var newCmds = [];
        for (var li = 0; li < lines.length; li++) {
            newCmds.push({ c: li === 0 ? 101 : 401, i: 0, p: [lines[li]] });
        }
        Array.prototype.splice.apply(page.list, [insertIdx, 0].concat(newCmds));

        obj.setProperty("event_data", JSON.stringify(eventData));
        tiled.log("Added text command: " + text.substring(0, 50));
    } catch (e) {
        tiled.alert("Error: " + e.message);
    }
});
addTextCmdAction.text = "RPG Maker: Add Text Command";

// --- Sync Event Position ---
// Updates event_data x/y when the object is moved in Tiled
var syncPositionAction = tiled.registerAction("RPGMaker_SyncPositions", function() {
    var map = tiled.activeAsset;
    if (!map || !map.isTileMap) { tiled.alert("No map is open."); return; }

    var synced = 0;
    for (var gi = 0; gi < map.layerCount; gi++) {
        var layer = map.layerAt(gi);
        if (!layer.isObjectLayer) continue;
        var objLayer = layer;
        for (var oi = 0; oi < objLayer.objectCount; oi++) {
            var obj = objLayer.objectAt(oi);
            if (obj.className !== "Event" && obj.type !== "Event") continue;

            var jsonStr = obj.property("event_data");
            if (!jsonStr) continue;

            try {
                var eventData = JSON.parse(jsonStr);
                var newX = Math.floor(obj.x / map.tileWidth);
                var newY = Math.floor(obj.y / map.tileHeight);

                if (eventData.x !== newX || eventData.y !== newY) {
                    eventData.x = newX;
                    eventData.y = newY;
                    obj.setProperty("event_data", JSON.stringify(eventData));
                    synced++;
                }

                // Also sync name
                if (obj.name && obj.name !== eventData.name) {
                    eventData.name = obj.name;
                    obj.setProperty("event_data", JSON.stringify(eventData));
                }
            } catch (e) {
                tiled.warn("Error syncing event " + obj.name + ": " + e.message);
            }
        }
    }
    tiled.log("Synced " + synced + " event positions.");
});
syncPositionAction.text = "RPG Maker: Sync Event Positions";

// ============================================================================
// Menus
// ============================================================================

tiled.extendMenu("Map", [
    { separator: true },
    { action: "RPGMaker_NewEvent" },
    { action: "RPGMaker_NewNPC" },
    { action: "RPGMaker_NewDoor" },
    { action: "RPGMaker_NewScript" },
    { separator: true },
    { action: "RPGMaker_ShowEventInfo" },
    { action: "RPGMaker_AddScriptCmd" },
    { action: "RPGMaker_AddTextCmd" },
    { separator: true },
    { action: "RPGMaker_SyncPositions" }
]);

// ============================================================================
// Log startup
// ============================================================================

tiled.log("RPG Maker XP Event Editor loaded — Pokémon Shattered Crowns");
tiled.log("Use Map menu or Ctrl+Shift+E to create events.");
