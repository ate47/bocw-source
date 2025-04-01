#using script_6a72d858ff1942eb;
#using script_78825cbb1ab9f493;
#using scripts\core_common\armor_carrier;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\radiation;

#namespace namespace_2938acdc;

// Namespace namespace_2938acdc/namespace_2938acdc
// Params 0, eflags: 0x0
// Checksum 0x12c2586b, Offset: 0xd0
// Size: 0xa4
function init()
{
    level.var_db91e97c = 1;
    namespace_17baa64d::init();
    
    if ( is_true( getgametypesetting( #"hash_6eef7868c4f5ddbc" ) ) )
    {
        clientfield::register_clientuimodel( "squad_wipe_tokens.count", #"squad_wipe_tokens", #"count", 1, 4, "int", undefined, 0, 0 );
    }
}

