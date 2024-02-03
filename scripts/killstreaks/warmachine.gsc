// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace warmachine;

// Namespace warmachine/warmachine
// Params 0, eflags: 0x5
// Checksum 0x2269e50f, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"warmachine", &__init__, undefined, undefined, #"killstreaks");
}

// Namespace warmachine/warmachine
// Params 0, eflags: 0x2 linked
// Checksum 0x1ec06adb, Offset: 0x100
// Size: 0x3c
function __init__() {
    if (!sessionmodeiscampaigngame()) {
        killstreaks::register_killstreak("killstreak_warmachine", &killstreaks::function_fc82c544);
    }
}

