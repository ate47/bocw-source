#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\visionset_mgr_shared;
#using scripts\zm_common\zm_perks;

#namespace zm_perk_staminup;

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x5
// Checksum 0xb23efce0, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_perk_staminup", &preinit, undefined, undefined, undefined);
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x4
// Checksum 0xc569b62d, Offset: 0x140
// Size: 0x14
function private preinit() {
    enable_staminup_perk_for_level();
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x0
// Checksum 0x5013ce18, Offset: 0x160
// Size: 0xb4
function enable_staminup_perk_for_level() {
    zm_perks::register_perk_clientfields(#"talent_staminup", &staminup_client_field_func, &staminup_callback_func);
    zm_perks::register_perk_effects(#"talent_staminup", "marathon_light");
    zm_perks::register_perk_init_thread(#"talent_staminup", &init_staminup);
    zm_perks::function_f3c80d73("zombie_perk_bottle_marathon");
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x0
// Checksum 0xad825aa5, Offset: 0x220
// Size: 0x3c
function init_staminup() {
    if (is_true(level.enable_magic)) {
        level._effect[#"marathon_light"] = "zombie/fx_perk_staminup_ndu";
    }
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function staminup_client_field_func() {
    
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x278
// Size: 0x4
function staminup_callback_func() {
    
}

