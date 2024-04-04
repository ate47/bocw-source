// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_perks.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_perk_quick_revive;

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x5
// Checksum 0x33ee9ceb, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_perk_quick_revive", &preinit, undefined, undefined, undefined);
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x6 linked
// Checksum 0x24762576, Offset: 0x140
// Size: 0x14
function private preinit() {
    enable_quick_revive_perk_for_level();
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0xb2f48387, Offset: 0x160
// Size: 0xb4
function enable_quick_revive_perk_for_level() {
    zm_perks::register_perk_clientfields(#"hash_7f98b3dd3cce95aa", &quick_revive_client_field_func, &quick_revive_callback_func);
    zm_perks::register_perk_effects(#"hash_7f98b3dd3cce95aa", "revive_light");
    zm_perks::register_perk_init_thread(#"hash_7f98b3dd3cce95aa", &init_quick_revive);
    zm_perks::function_f3c80d73("zombie_perk_bottle_revive");
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0x8bcc0b66, Offset: 0x220
// Size: 0x3c
function init_quick_revive() {
    if (is_true(level.enable_magic)) {
        level._effect[#"revive_light"] = "zombie/fx_perk_quickrevive_ndu";
    }
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function quick_revive_client_field_func() {
    
}

// Namespace zm_perk_quick_revive/zm_perk_quick_revive
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x278
// Size: 0x4
function quick_revive_callback_func() {
    
}

