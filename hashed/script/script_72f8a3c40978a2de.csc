#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\zm\powerup\zm_powerup_cranked_pause;

#namespace namespace_9be1ab53;

// Namespace namespace_9be1ab53/namespace_9be1ab53
// Params 0, eflags: 0x5
// Checksum 0x3f51e8aa, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"hash_5aa4949e75ab9d9c", &preinit, undefined, undefined, undefined );
}

// Namespace namespace_9be1ab53/namespace_9be1ab53
// Params 0, eflags: 0x4
// Checksum 0x61d8e51d, Offset: 0xf0
// Size: 0x38
function private preinit()
{
    if ( util::get_game_type() === #"hash_5aa4949e75ab9d9c" )
    {
        level.var_2d41db66 = 1;
    }
}

