// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_powerup_fire_sale;

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x5
// Checksum 0x3cc9412d, Offset: 0x1b8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_fire_sale", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x6 linked
// Checksum 0x96f98e09, Offset: 0x200
// Size: 0xa4
function private preinit() {
    zm_powerups::register_powerup("fire_sale", &grab_fire_sale);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("fire_sale", #"p7_zm_power_up_firesale", #"hash_2c7bc0fa0980f8f5", &func_should_drop_fire_sale, 0, 0, 0, undefined, "powerup_fire_sale", "zombie_powerup_fire_sale_time", "zombie_powerup_fire_sale_on");
    }
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 1, eflags: 0x2 linked
// Checksum 0xe0f14d2c, Offset: 0x2b0
// Size: 0x84
function grab_fire_sale(player) {
    if (zm_powerups::function_cfd04802("fire_sale")) {
        level thread function_3ceac0e1(self, player);
    } else {
        level thread start_fire_sale(self);
    }
    player thread zm_powerups::powerup_vo("firesale");
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 2, eflags: 0x2 linked
// Checksum 0x3f590d76, Offset: 0x340
// Size: 0x14c
function function_3ceac0e1(e_powerup, player) {
    self notify("4e8ac3aa35304135");
    self endon("4e8ac3aa35304135");
    player endon(#"disconnect");
    player thread zm_powerups::function_5091b029("fire_sale");
    if (isdefined(player) && isplayer(player) && isdefined(e_powerup.hint)) {
        player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", e_powerup.hint);
    }
    player zombie_utility::set_zombie_var_player(#"zombie_powerup_fire_sale_on", 1);
    player zombie_utility::set_zombie_var_player(#"zombie_powerup_fire_sale_time", 30);
    level waittilltimeout(30, #"end_game");
    player zombie_utility::set_zombie_var_player(#"zombie_powerup_fire_sale_on", 0);
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 1, eflags: 0x2 linked
// Checksum 0xf9cef0d2, Offset: 0x498
// Size: 0x3a8
function start_fire_sale(item) {
    if (is_true(level.custom_firesale_box_leave)) {
        while (firesale_chest_is_leaving()) {
            waitframe(1);
        }
    }
    if (zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_time") > 0 && is_true(zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_on"))) {
        zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_time", zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_time") + 30);
        return;
    }
    level notify(#"powerup_fire_sale");
    level endon(#"powerup_fire_sale");
    zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_on", 1);
    level.disable_firesale_drop = 1;
    level thread toggle_fire_sale_on();
    players = getplayers();
    foreach (e_player in players) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(item.hint)) {
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", item.hint);
        }
    }
    zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_time", 30);
    level notify(#"hash_7a941ba8e576862e");
    if (bgb::is_team_enabled(#"zm_bgb_temporal_gift")) {
        zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_time", zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_time") + 30);
    }
    while (zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_time") > 0) {
        waitframe(1);
        zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_time", zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_time") - 0.05);
    }
    level thread check_to_clear_fire_sale();
    zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_on", 0);
    level notify(#"fire_sale_off");
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0x12efd1a4, Offset: 0x848
// Size: 0x4a
function check_to_clear_fire_sale() {
    level endon(#"powerup_fire_sale");
    while (firesale_chest_is_leaving()) {
        waitframe(1);
    }
    wait(1);
    level.disable_firesale_drop = undefined;
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0x1377b93, Offset: 0x8a0
// Size: 0xfa
function firesale_chest_is_leaving() {
    for (i = 0; i < level.chests.size; i++) {
        if (i !== level.chest_index) {
            if (level.chests[i].zbarrier.state === "leaving" || level.chests[i].zbarrier.state === "open" || level.chests[i].zbarrier.state === "close" || level.chests[i].zbarrier.state === "closing") {
                return true;
            }
        }
    }
    return false;
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0x56c8c261, Offset: 0x9a8
// Size: 0x29a
function toggle_fire_sale_on() {
    level endon(#"powerup_fire_sale");
    if (!isdefined(zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_on"))) {
        return;
    }
    if (!isdefined(level.chest_index)) {
        level.chest_index = 0;
    }
    level thread sndfiresalemusic_start();
    for (i = 0; i < level.chests.size; i++) {
        show_firesale_box = level.chests[i] [[ level._zombiemode_check_firesale_loc_valid_func ]]();
        if (show_firesale_box) {
            level.chests[i].zombie_cost = 10;
            if (level.chest_index != i) {
                if (zm_custom::function_901b751c(#"zmmysteryboxstate") != 3) {
                    level.chests[i].was_temp = 1;
                }
                if (is_true(level.chests[i].hidden)) {
                    level.chests[i] thread apply_fire_sale_to_chest();
                }
            }
        }
    }
    level notify(#"fire_sale_on");
    level waittill(#"fire_sale_off");
    waittillframeend();
    level thread sndfiresalemusic_stop();
    for (i = 0; i < level.chests.size; i++) {
        show_firesale_box = level.chests[i] [[ level._zombiemode_check_firesale_loc_valid_func ]]();
        if (show_firesale_box) {
            if (level.chest_index != i && isdefined(level.chests[i].was_temp)) {
                level.chests[i].was_temp = undefined;
                level thread remove_temp_chest(i);
            }
            level.chests[i].zombie_cost = level.chests[i].old_cost;
        }
    }
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0xb5c9ad67, Offset: 0xc50
// Size: 0x74
function apply_fire_sale_to_chest() {
    level endon(#"fire_sale_off");
    if (self.zbarrier.state == "leaving") {
        self.zbarrier waittilltimeout(10, #"left");
    }
    wait(0.1);
    self thread zm_magicbox::show_chest();
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 1, eflags: 0x2 linked
// Checksum 0x7459907e, Offset: 0xcd0
// Size: 0x246
function remove_temp_chest(chest_index) {
    if (!isdefined(level.chests[chest_index])) {
        return;
    }
    level.chests[chest_index].being_removed = 1;
    while (isdefined(level.chests[chest_index]) && (isdefined(level.chests[chest_index].chest_user) || isdefined(level.chests[chest_index]._box_open) && level.chests[chest_index]._box_open == 1)) {
        util::wait_network_frame();
    }
    if (zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_on")) {
        level.chests[chest_index].was_temp = 1;
        level.chests[chest_index].zombie_cost = 10;
        level.chests[chest_index].being_removed = 0;
        return;
    }
    for (i = 0; i < chest_index; i++) {
        util::wait_network_frame();
    }
    playfx(level._effect[#"poltergeist"], level.chests[chest_index].orig_origin);
    util::wait_network_frame();
    if (is_true(level.custom_firesale_box_leave)) {
        level.chests[chest_index] zm_magicbox::hide_chest(1);
    } else {
        level.chests[chest_index] zm_magicbox::hide_chest();
    }
    level.chests[chest_index].being_removed = 0;
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0xada9d9b0, Offset: 0xf20
// Size: 0x90
function func_should_drop_fire_sale() {
    if (zm_custom::function_901b751c(#"zmmysteryboxstate") == 0 || zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_on") == 1 || level.chest_moves < 1 || is_true(level.disable_firesale_drop)) {
        return false;
    }
    return true;
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0xb16141db, Offset: 0xfb8
// Size: 0x148
function sndfiresalemusic_start() {
    array = level.chests;
    foreach (struct in array) {
        if (!isdefined(struct.sndent)) {
            struct.sndent = spawn("script_origin", struct.origin + (0, 0, 100));
        }
        if (is_true(level.player_4_vox_override)) {
            struct.sndent playloopsound(#"mus_fire_sale_rich", 1);
            continue;
        }
        struct.sndent playloopsound(#"mus_fire_sale", 1);
    }
}

// Namespace zm_powerup_fire_sale/zm_powerup_fire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0x3af2f604, Offset: 0x1108
// Size: 0xea
function sndfiresalemusic_stop() {
    array = level.chests;
    foreach (struct in array) {
        if (isdefined(struct.sndent)) {
            struct.sndent playsound(#"hash_332ced69176833bb");
            waitframe(1);
            struct.sndent delete();
            struct.sndent = undefined;
        }
    }
}

