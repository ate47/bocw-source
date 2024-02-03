// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace flamethrower;

// Namespace flamethrower/flamethrower
// Params 0, eflags: 0x5
// Checksum 0xd07f3019, Offset: 0xf8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"flamethrower", &__init__, undefined, undefined, #"killstreaks");
}

// Namespace flamethrower/flamethrower
// Params 0, eflags: 0x2 linked
// Checksum 0x86fe5802, Offset: 0x148
// Size: 0x9c
function __init__() {
    if (!sessionmodeiscampaigngame()) {
        killstreaks::register_killstreak("killstreak_flamethrower", &killstreaks::function_fc82c544);
    }
    status_effect::function_30e7d622(getweapon("hero_flamethrower"), "flakjacket");
    status_effect::function_30e7d622(getweapon("inventory_hero_flamethrower"), "flakjacket");
}

