#using script_19f3d8b7a687a3f1;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\system_shared;

#namespace zm_vote;

// Namespace zm_vote/zm_vote
// Params 0, eflags: 0x0
// Checksum 0xef2bebd8, Offset: 0x118
// Size: 0x154
function init()
{
    clientfield::register_clientuimodel( "sr_vote_prompt.numPlayersNeeded", #"sr_vote_prompt", #"numplayersneeded", 1, 2, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "sr_vote_prompt.show", #"sr_vote_prompt", #"show", 1, 3, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "sr_vote_prompt.starter", #"sr_vote_prompt", #"starter", 1, 7, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "sr_vote_prompt.status", #"sr_vote_prompt", #"status", 1, 2, "int", undefined, 0, 0 );
    namespace_52c8f34d::preinit();
}

