#using scripts\core_common\system_shared;

#namespace zm_gold_ffotd;

// Namespace zm_gold_ffotd/zm_gold_ffotd
// Params 0, eflags: 0x5
// Checksum 0xf9b48d51, Offset: 0x88
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"zm_gold_ffotd", &preinit, undefined, undefined, undefined );
}

// Namespace zm_gold_ffotd/zm_gold_ffotd
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0xd0
// Size: 0x4
function private preinit()
{
    
}

