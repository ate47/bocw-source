#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace dynent_use;

// Namespace dynent_use/dynent_use
// Params 0, eflags: 0x5
// Checksum 0x8819e156, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"dynent_use", &preinit, undefined, undefined, undefined );
}

// Namespace dynent_use/dynent_use
// Params 0, eflags: 0x4
// Checksum 0x660fb8bc, Offset: 0x110
// Size: 0xbc
function private preinit()
{
    if ( util::is_frontend_map() || !( isdefined( getgametypesetting( #"usabledynents" ) ) ? getgametypesetting( #"usabledynents" ) : 0 ) )
    {
        return;
    }
    
    clientfield::register_clientuimodel( "hudItems.dynentUseHoldProgress", #"hud_items", #"dynentuseholdprogress", 13000, 5, "float", undefined, 0, 0 );
}

