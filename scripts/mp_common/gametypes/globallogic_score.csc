#using scripts\core_common\clientfield_shared;

#namespace globallogic_score;

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x1
// Checksum 0x3f4e1a58, Offset: 0x118
// Size: 0x1a4
function autoexec __init__() {
    clientfield::register_clientuimodel("hudItems.scoreProtected", #"hud_items", #"scoreprotected", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.minorActions.action0", #"hud_items", [#"minoractions", #"action0"], 1, 1, "counter", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.minorActions.action1", #"hud_items", [#"minoractions", #"action1"], 1, 1, "counter", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.hotStreak.level", #"hud_items", [#"hotstreak", #"level"], 1, 3, "int", undefined, 0, 0);
}

