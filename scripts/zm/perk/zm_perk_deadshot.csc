// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_perks.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_perk_deadshot;

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x5
// Checksum 0xd68230bc, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_perk_deadshot", &preinit, undefined, undefined, undefined);
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x6 linked
// Checksum 0xc1c52156, Offset: 0x170
// Size: 0x14
function private preinit() {
    enable_deadshot_perk_for_level();
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0xd6c4d441, Offset: 0x190
// Size: 0xb4
function enable_deadshot_perk_for_level() {
    zm_perks::register_perk_clientfields(#"hash_210097a75bb6c49a", &deadshot_client_field_func, &deadshot_code_callback_func);
    zm_perks::register_perk_effects(#"hash_210097a75bb6c49a", "deadshot_light");
    zm_perks::register_perk_init_thread(#"hash_210097a75bb6c49a", &init_deadshot);
    zm_perks::function_f3c80d73("zombie_perk_bottle_deadshot");
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0x6f83cef9, Offset: 0x250
// Size: 0x3c
function init_deadshot() {
    if (is_true(level.enable_magic)) {
        level._effect[#"deadshot_light"] = "zombie/fx_perk_deadshot_ndu";
    }
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0x2b887075, Offset: 0x298
// Size: 0x4c
function deadshot_client_field_func() {
    clientfield::register("toplayer", "deadshot_perk", 1, 1, "int", &player_deadshot_perk_handler, 0, 1);
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x2f0
// Size: 0x4
function deadshot_code_callback_func() {
    
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 7, eflags: 0x2 linked
// Checksum 0xc9d2f1b3, Offset: 0x300
// Size: 0xcc
function player_deadshot_perk_handler(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!is_local_player(self)) {
        return;
    }
    self endon(#"death");
    if (self util::function_50ed1561(fieldname)) {
        if (is_local_player(self)) {
            if (bwastimejump) {
                self usealternateaimparams();
                return;
            }
            self clearalternateaimparams();
        }
    }
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 1, eflags: 0x6 linked
// Checksum 0x728bf44e, Offset: 0x3d8
// Size: 0x6a
function private is_local_player(player) {
    if (!isdefined(player) || !isplayer(player)) {
        return 0;
    }
    a_players = getlocalplayers();
    return isinarray(a_players, player);
}

