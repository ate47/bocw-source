// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace zm_powerup_shield_charge;

// Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
// Params 0, eflags: 0x5
// Checksum 0x8b350de1, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_shield_charge", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
// Params 0, eflags: 0x4
// Checksum 0xc2a1e7ef, Offset: 0x118
// Size: 0xfc
function private preinit() {
    zm_powerups::register_powerup("shield_charge", &grab_shield_charge);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("shield_charge", "p8_wz_armor_scrap", #"hash_3f5e4aa38f9aeba5", &func_drop_when_players_own, 1, 0, 0);
        zm_powerups::function_59f7f2c6("shield_charge", #"hash_6c72c13078ae03d7", #"hash_3d58d22b97f9c9b4", #"hash_53f81d6d588b9984");
        zm_powerups::powerup_set_statless_powerup("shield_charge");
    }
    /#
        thread shield_devgui();
    #/
}

// Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
// Params 0, eflags: 0x0
// Checksum 0x8cb56b5c, Offset: 0x220
// Size: 0xb6
function func_drop_when_players_own() {
    players = getplayers();
    foreach (player in players) {
        if ((isdefined(player.armortier) ? player.armortier : 0) > 0) {
            return true;
        }
    }
    return false;
}

// Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
// Params 1, eflags: 0x0
// Checksum 0x7fd0e3ee, Offset: 0x2e0
// Size: 0x24
function grab_shield_charge(player) {
    level thread shield_charge_powerup(self, player);
}

// Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
// Params 2, eflags: 0x0
// Checksum 0x39aa1187, Offset: 0x310
// Size: 0xce
function shield_charge_powerup(*item, player) {
    var_2cacdde7 = 50;
    inventoryitem = player.inventory.items[6];
    if (isdefined(inventoryitem)) {
        var_2cacdde7 = isdefined(inventoryitem.itementry.var_a3aa1ca2) ? inventoryitem.itementry.var_a3aa1ca2 : 50;
        if (var_2cacdde7 == 0) {
            var_2cacdde7 = 50;
        }
    }
    player.armor += math::clamp(var_2cacdde7, 0, player.maxarmor);
}

/#

    // Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
    // Params 0, eflags: 0x0
    // Checksum 0x8f1cf069, Offset: 0x3e8
    // Size: 0x7c
    function shield_devgui() {
        level flag::wait_till("<unknown string>");
        wait(1);
        zm_devgui::add_custom_devgui_callback(&shield_devgui_callback);
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    }

    // Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
    // Params 1, eflags: 0x0
    // Checksum 0x5ba61bd0, Offset: 0x470
    // Size: 0xc8
    function shield_devgui_callback(cmd) {
        players = getplayers();
        retval = 0;
        switch (cmd) {
        case #"shield_charge":
            zm_devgui::zombie_devgui_give_powerup(cmd, 1);
            break;
        case #"next_shield_charge":
            zm_devgui::zombie_devgui_give_powerup(getsubstr(cmd, 5), 0);
            break;
        }
        return retval;
    }

#/
