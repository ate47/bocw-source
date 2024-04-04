// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_perks.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_fd3f1217;

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x5
// Checksum 0x91c624c9, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_439842ab3085be64", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x6 linked
// Checksum 0x656ec3ca, Offset: 0x140
// Size: 0x14
function private preinit() {
    function_a8fdd433();
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x2 linked
// Checksum 0xe609e24c, Offset: 0x160
// Size: 0xb4
function function_a8fdd433() {
    zm_perks::register_perk_clientfields(#"hash_5930cf0eb070e35a", &function_38dda839, &function_3bdb96bc);
    zm_perks::register_perk_effects(#"hash_5930cf0eb070e35a", "sleight_light");
    zm_perks::register_perk_init_thread(#"hash_5930cf0eb070e35a", &function_7d2154f5);
    zm_perks::function_f3c80d73("zombie_perk_bottle_sleight");
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x2 linked
// Checksum 0x58e1fa1c, Offset: 0x220
// Size: 0x3c
function function_7d2154f5() {
    if (is_true(level.enable_magic)) {
        level._effect[#"sleight_light"] = "zombie/fx_perk_speedcola_ndu";
    }
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function function_38dda839() {
    
}

// Namespace namespace_fd3f1217/namespace_fd3f1217
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x278
// Size: 0x4
function function_3bdb96bc() {
    
}

