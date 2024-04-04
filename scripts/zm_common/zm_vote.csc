// Atian COD Tools GSC CW decompiler test
#using script_19f3d8b7a687a3f1;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_vote;

// Namespace zm_vote/zm_vote
// Params 0, eflags: 0x2 linked
// Checksum 0xef2bebd8, Offset: 0x118
// Size: 0x154
function init() {
    clientfield::register_clientuimodel("sr_vote_prompt.numPlayersNeeded", #"hash_469205ac2d4fe20c", #"hash_2f2580a3787aa336", 1, 2, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("sr_vote_prompt.show", #"hash_469205ac2d4fe20c", #"show", 1, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("sr_vote_prompt.starter", #"hash_469205ac2d4fe20c", #"starter", 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("sr_vote_prompt.status", #"hash_469205ac2d4fe20c", #"status", 1, 2, "int", undefined, 0, 0);
    namespace_52c8f34d::preinit();
}

