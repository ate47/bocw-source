#using scripts\core_common\rat_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace rat;

/#

    // Namespace rat/rat
    // Params 0, eflags: 0x5
    // Checksum 0xd5463d36, Offset: 0xa0
    // Size: 0x3c, Type: dev
    function private autoexec __init__system__()
    {
        system::register( #"rat", &preinit, undefined, undefined, undefined );
    }

    // Namespace rat/rat
    // Params 0, eflags: 0x4
    // Checksum 0x4b218a57, Offset: 0xe8
    // Size: 0x42, Type: dev
    function private preinit()
    {
        init();
        level.rat.common.gethostplayer = &util::gethostplayer;
    }

#/
