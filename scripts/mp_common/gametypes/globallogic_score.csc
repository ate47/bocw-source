// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;

#namespace globallogic_score;

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x1
// Checksum 0x3f4e1a58, Offset: 0x118
// Size: 0x1a4
function autoexec __init__() {
    clientfield::register_clientuimodel("hudItems.scoreProtected", #"hash_6f4b11a0bee9b73d", #"scoreprotected", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.minorActions.action0", #"hash_6f4b11a0bee9b73d", [#"minoractions", #"action0"], 1, 1, "counter", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.minorActions.action1", #"hash_6f4b11a0bee9b73d", [#"minoractions", #"action1"], 1, 1, "counter", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.hotStreak.level", #"hash_6f4b11a0bee9b73d", [#"hotstreak", #"level"], 1, 3, "int", undefined, 0, 0);
}

