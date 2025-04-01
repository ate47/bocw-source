#using scripts\core_common\callbacks_shared;
#using scripts\core_common\system_shared;
#using scripts\killstreaks\cp\killstreakrules;
#using scripts\killstreaks\killstreaks_shared;

#namespace killstreaks;

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x5
// Checksum 0x38df8766, Offset: 0xa0
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"killstreaks", &preinit, undefined, undefined, #"weapons" );
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x4
// Checksum 0x427e6b5, Offset: 0xf0
// Size: 0x34
function private preinit()
{
    init_shared();
    callback::on_start_gametype( &init );
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x0
// Checksum 0x451a461a, Offset: 0x130
// Size: 0xf4
function init()
{
    /#
        level.killstreak_init_start_time = getmillisecondsraw();
        thread debug_ricochet_protection();
    #/
    
    function_447e6858();
    callback::callback( #"hash_45f35669076bc317" );
    killstreakrules::init();
    
    /#
        level.killstreak_init_end_time = getmillisecondsraw();
        elapsed_time = level.killstreak_init_end_time - level.killstreak_init_start_time;
        println( "<dev string:x38>" + elapsed_time + "<dev string:x59>" );
        level thread killstreak_debug_think();
    #/
}

