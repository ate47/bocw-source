// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\aat_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_e7b06f1b;

// Namespace namespace_e7b06f1b/namespace_e7b06f1b
// Params 0, eflags: 0x5
// Checksum 0xf02d6aa, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_6119ea2d427fdf8a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_e7b06f1b/namespace_e7b06f1b
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x130
// Size: 0x4
function private preinit() {
    
}

// Namespace namespace_e7b06f1b/namespace_e7b06f1b
// Params 1, eflags: 0x0
// Checksum 0x4cfe9013, Offset: 0x140
// Size: 0x24
function function_f1d9de41(player) {
    level thread function_386c20ef(player);
}

// Namespace namespace_e7b06f1b/namespace_e7b06f1b
// Params 1, eflags: 0x2 linked
// Checksum 0x9c15fcf0, Offset: 0x170
// Size: 0x6c
function function_386c20ef(player) {
    if (isdefined(player.lives) && player.lives < 5) {
        player.lives++;
        return;
    }
    if (player zm_laststand::function_618fd37e() < 5) {
        player zm_laststand::function_3a00302e();
    }
}

