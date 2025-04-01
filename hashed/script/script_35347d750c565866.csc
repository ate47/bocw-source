#using scripts\core_common\audio_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\zm_common\zm_utility;

#namespace world_event_orb_follow;

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 0, eflags: 0x5
// Checksum 0x9bfa97eb, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"hash_1c2f845f6ae4ceb2", &preinit, undefined, undefined, undefined );
}

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xe8
// Size: 0x4
function preinit()
{
    
}

