#using scripts\core_common\compass;
#using scripts\core_common\load_shared;

#namespace mp_sm_amsterdam;

// Namespace mp_sm_amsterdam/level_init
// Params 1, eflags: 0x20
// Checksum 0xc8e2964b, Offset: 0x98
// Size: 0x68
function event_handler[level_init] main( *eventstruct )
{
    load::main();
    compass::setupminimap( "" );
    
    if ( getdvarint( #"hash_3c861ebd76fd24eb", 0 ) != 0 )
    {
        level.var_a0b75cfd = 1;
    }
}

