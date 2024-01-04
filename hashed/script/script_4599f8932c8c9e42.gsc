// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace ray_gun;

// Namespace ray_gun/namespace_b7964db5
// Params 0, eflags: 0x5
// Checksum 0xc845cb81, Offset: 0xa8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"ray_gun", &__init__, undefined, undefined, #"killstreaks");
}

// Namespace ray_gun/namespace_b7964db5
// Params 0, eflags: 0x0
// Checksum 0x46018879, Offset: 0xf8
// Size: 0x5c
function __init__() {
    if (!sessionmodeiscampaigngame() && !sessionmodeiszombiesgame()) {
        killstreaks::register_killstreak("killstreak_ray_gun", &killstreaks::function_fc82c544);
    }
}

