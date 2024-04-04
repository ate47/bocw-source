// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_perks.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_7461932d;

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x5
// Checksum 0xf6de867, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_6f1ab109254f7a8e", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x6 linked
// Checksum 0xd35e14de, Offset: 0x140
// Size: 0xb4
function private preinit() {
    zm_perks::register_perk_clientfields(#"hash_47d7a8105237c88", &function_2d2b95b0, &function_6c832af6);
    zm_perks::register_perk_effects(#"hash_47d7a8105237c88", "jugger_light");
    zm_perks::register_perk_init_thread(#"hash_47d7a8105237c88", &init_juggernaut);
    zm_perks::function_f3c80d73("zombie_perk_bottle_jugg");
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x5edff159, Offset: 0x200
// Size: 0x3c
function init_juggernaut() {
    if (is_true(level.enable_magic)) {
        level._effect[#"jugger_light"] = "zombie/fx_perk_juggernaut_ndu";
    }
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x248
// Size: 0x4
function function_2d2b95b0() {
    
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x258
// Size: 0x4
function function_6c832af6() {
    
}

