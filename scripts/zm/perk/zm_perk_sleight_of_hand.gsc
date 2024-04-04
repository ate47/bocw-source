// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_fd3f1217;

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x5
// Checksum 0x6cdf6727, Offset: 0x1e0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_439842ab3085be64", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x6 linked
// Checksum 0xbfc60a05, Offset: 0x228
// Size: 0x14
function private preinit() {
    function_a8fdd433();
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x2 linked
// Checksum 0x9481818b, Offset: 0x248
// Size: 0x144
function function_a8fdd433() {
    zm_perks::register_perk_basic_info(#"hash_5930cf0eb070e35a", #"hash_25deb7e01a125cbc", 3000, #"hash_1fe685096c4f7bd2", getweapon("zombie_perk_bottle_sleight"), undefined, #"zmperksspeed");
    zm_perks::register_perk_precache_func(#"hash_5930cf0eb070e35a", &function_2ae165ac);
    zm_perks::register_perk_clientfields(#"hash_5930cf0eb070e35a", &function_dbaed146, &function_c6ce3670);
    zm_perks::register_perk_machine(#"hash_5930cf0eb070e35a", &function_e5c86da9, undefined, "p9_fxanim_zm_gp_speed_cola_bundle");
    zm_perks::register_perk_host_migration_params(#"hash_5930cf0eb070e35a", "vending_sleight", "sleight_light");
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x2 linked
// Checksum 0x1b60cb3, Offset: 0x398
// Size: 0xf6
function function_2ae165ac() {
    if (isdefined(level.var_f3775b53)) {
        [[ level.var_f3775b53 ]]();
        return;
    }
    level._effect[#"sleight_light"] = "zombie/fx_perk_speedcola_ndu";
    level.machine_assets[#"hash_5930cf0eb070e35a"] = spawnstruct();
    level.machine_assets[#"hash_5930cf0eb070e35a"].weapon = getweapon("zombie_perk_bottle_sleight");
    level.machine_assets[#"hash_5930cf0eb070e35a"].off_model = "p9_sur_machine_speed_cola_off";
    level.machine_assets[#"hash_5930cf0eb070e35a"].on_model = "p9_sur_machine_speed_cola";
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x498
// Size: 0x4
function function_dbaed146() {
    
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 1, eflags: 0x2 linked
// Checksum 0x66d4a086, Offset: 0x4a8
// Size: 0xc
function function_c6ce3670(*state) {
    
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 4, eflags: 0x2 linked
// Checksum 0xc2e62ca0, Offset: 0x4c0
// Size: 0x9a
function function_e5c86da9(use_trigger, perk_machine, bump_trigger, *collision) {
    perk_machine.script_sound = "mus_perks_speed_jingle";
    perk_machine.script_string = "speedcola_perk";
    perk_machine.script_label = "mus_perks_speed_sting";
    perk_machine.target = "vending_sleight";
    bump_trigger.script_string = "speedcola_perk";
    bump_trigger.targetname = "vending_sleight";
    if (isdefined(collision)) {
        collision.script_string = "speedcola_perk";
    }
}

