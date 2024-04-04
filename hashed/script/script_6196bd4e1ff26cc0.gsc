// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_65320816;

// Namespace namespace_65320816/namespace_65320816
// Params 0, eflags: 0x5
// Checksum 0xde1a89ba, Offset: 0x138
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2209575d9ead0b63", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_65320816/namespace_65320816
// Params 0, eflags: 0x4
// Checksum 0xc8c00db1, Offset: 0x180
// Size: 0x164
function private preinit() {
    zombie_utility::set_zombie_var(#"zombie_powerup_cranked_pause_on", 0, 0, 1);
    zombie_utility::set_zombie_var(#"zombie_powerup_cranked_pause_time", 10, 0, 1);
    zm_powerups::register_powerup("cranked_pause", &function_1202eaf8);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("cranked_pause", #"hash_2162e3666ea2485c", #"hash_4beb7d0e9dfb41f4", &zm_powerups::func_should_always_drop, 0, 0, 0, undefined, "powerup_cranked_pause", "zombie_powerup_cranked_pause_time", "zombie_powerup_cranked_pause_on");
        zm_vo::function_2cf4b07f(#"cranked_pause", #"hash_6f3de1197858ca4b");
        /#
            adddebugcommand("<unknown string>");
        #/
        /#
            adddebugcommand("<unknown string>");
        #/
    }
}

// Namespace namespace_65320816/namespace_65320816
// Params 1, eflags: 0x0
// Checksum 0x66e19832, Offset: 0x2f0
// Size: 0x44
function function_1202eaf8(player) {
    if (!isplayer(player)) {
        return;
    }
    level thread function_4ee6dbc3(self, player);
}

// Namespace namespace_65320816/namespace_65320816
// Params 2, eflags: 0x4
// Checksum 0xf4a33e31, Offset: 0x340
// Size: 0x1ec
function private function_4ee6dbc3(drop_item, player) {
    self notify("72f8f7c4edceaa36");
    self endon("72f8f7c4edceaa36");
    level endon(#"end_game");
    team = player.team;
    level thread zm_powerups::show_on_hud(team, "cranked_pause", 10);
    players = getplayers();
    foreach (e_player in players) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(drop_item.hint)) {
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", drop_item.hint);
        }
    }
    level flag::set("cranked_pause");
    playsoundatposition(#"hash_6add4f54cc6f196a", (0, 0, 0));
    wait(10);
    level flag::clear("cranked_pause");
    playsoundatposition(#"hash_54a9a9f2c8be8a9d", (0, 0, 0));
}

