#using scripts\core_common\flag_shared;
#using scripts\core_common\struct;

#namespace ztcm;

// Namespace ztcm/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xd6fbc781, Offset: 0x90
// Size: 0xa4
function event_handler[gametype_init] main( *eventstruct )
{
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
    
    if ( !level flag::exists( #"ztcm" ) )
    {
        level flag::init( #"ztcm", 1 );
    }
    
    println( "<dev string:x38>" );
}

// Namespace ztcm/ztcm
// Params 0, eflags: 0x0
// Checksum 0x529def6e, Offset: 0x140
// Size: 0x24
function onprecachegametype()
{
    println( "<dev string:x53>" );
}

// Namespace ztcm/ztcm
// Params 0, eflags: 0x0
// Checksum 0x469421ee, Offset: 0x170
// Size: 0x24
function onstartgametype()
{
    println( "<dev string:x72>" );
}

