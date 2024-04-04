// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_placeable_mine.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_powerup_full_ammo;

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 0, eflags: 0x5
// Checksum 0xd3a6066e, Offset: 0x120
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_full_ammo", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 0, eflags: 0x6 linked
// Checksum 0x2ec1ee35, Offset: 0x168
// Size: 0x8c
function private preinit() {
    zm_powerups::register_powerup("full_ammo", &grab_full_ammo);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("full_ammo", #"p7_zm_power_up_max_ammo", #"zombie/powerup_max_ammo", &zm_powerups::func_should_always_drop, 0, 0, 0);
    }
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 1, eflags: 0x2 linked
// Checksum 0x4787895a, Offset: 0x200
// Size: 0x8c
function grab_full_ammo(player) {
    if (zm_powerups::function_cfd04802(#"full_ammo")) {
        level thread function_dae1df4d(self, player);
    } else {
        level thread full_ammo_powerup(self, player);
    }
    player thread zm_powerups::powerup_vo("full_ammo");
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 2, eflags: 0x2 linked
// Checksum 0xdb989ee2, Offset: 0x298
// Size: 0x1c4
function function_dae1df4d(e_powerup, player) {
    if (isdefined(level.check_player_is_ready_for_ammo)) {
        if ([[ level.check_player_is_ready_for_ammo ]](player) == 0) {
            return;
        }
    }
    if (isdefined(player) && isplayer(player) && isdefined(e_powerup.hint)) {
        player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", e_powerup.hint);
    }
    player.var_655c0753 = undefined;
    player notify(#"zmb_max_ammo");
    player zm_placeable_mine::disable_all_prompts_for_player();
    foreach (slotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
        player zm_weapons::function_51aa5813(slotid);
    }
    player playsoundtoplayer(#"zmb_full_ammo", player);
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 2, eflags: 0x2 linked
// Checksum 0x67bbeefd, Offset: 0x468
// Size: 0x29c
function full_ammo_powerup(drop_item, player) {
    players = getplayers(player.team);
    if (isdefined(level.var_73345bfd)) {
        players = [[ level.var_73345bfd ]](player);
    }
    level notify(#"zmb_max_ammo_level");
    foreach (player in players) {
        if (isdefined(level.check_player_is_ready_for_ammo)) {
            if ([[ level.check_player_is_ready_for_ammo ]](player) == 0) {
                continue;
            }
        }
        if (player util::is_spectating()) {
            continue;
        }
        if (isdefined(player) && isplayer(player) && isdefined(drop_item.hint)) {
            player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", drop_item.hint);
        }
        player.var_655c0753 = undefined;
        player notify(#"zmb_max_ammo");
        player zm_placeable_mine::disable_all_prompts_for_player();
        foreach (slotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
            player zm_weapons::function_51aa5813(slotid);
        }
    }
    level thread full_ammo_on_hud(drop_item, player.team);
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 1, eflags: 0x0
// Checksum 0xb97a4145, Offset: 0x710
// Size: 0x10c
function function_3ecbd9d(w_weapon) {
    self endon(#"disconnect");
    n_slot = self gadgetgetslot(w_weapon);
    if (w_weapon == getweapon(#"tomahawk_t8") || w_weapon == getweapon(#"tomahawk_t8_upgraded")) {
        while (self function_36dfc05f(n_slot)) {
            waitframe(1);
        }
        self notify(#"hash_3d73720d4588203c");
        self gadgetpowerset(n_slot, 100);
        return;
    }
    self gadgetpowerset(n_slot, 100);
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 2, eflags: 0x2 linked
// Checksum 0xb8079f6, Offset: 0x828
// Size: 0x5c
function full_ammo_on_hud(*drop_item, player_team) {
    players = getplayers(player_team);
    players[0] playsoundtoteam("zmb_full_ammo", player_team);
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 0, eflags: 0x0
// Checksum 0x38335429, Offset: 0x890
// Size: 0x12
function function_b695b971() {
    return level.zm_genesis_robot_pay_towardsreactswordstart == 0;
}

