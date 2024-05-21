// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_powerup_bonfire_sale;

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 0, eflags: 0x5
// Checksum 0x8195c132, Offset: 0x1c8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_bonfire_sale", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 0, eflags: 0x6 linked
// Checksum 0x868cbb46, Offset: 0x220
// Size: 0x9c
function private preinit() {
    zm_powerups::register_powerup("bonfire_sale", &grab_bonfire_sale);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("bonfire_sale", "p8_zm_power_up_bonfire_sale", #"hash_35f38d29d068c30d", &zm_powerups::func_should_never_drop, 0, 0, 0, undefined, "powerup_bon_fire", "zombie_powerup_bonfire_sale_time", "zombie_powerup_bonfire_sale_on");
    }
}

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x2c8
// Size: 0x4
function private postinit() {
    
}

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 1, eflags: 0x2 linked
// Checksum 0x51ee1dcb, Offset: 0x2d8
// Size: 0x124
function grab_bonfire_sale(player) {
    players = getplayers();
    foreach (e_player in players) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(self.hint)) {
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", self.hint);
        }
    }
    level thread start_bonfire_sale(self);
    player thread zm_powerups::powerup_vo("bonfiresale");
}

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 1, eflags: 0x2 linked
// Checksum 0xe0ee7f97, Offset: 0x408
// Size: 0x26c
function start_bonfire_sale(*item) {
    level notify(#"powerup bonfire sale");
    level endon(#"powerup bonfire sale");
    temp_ent = spawn("script_origin", (0, 0, 0));
    temp_ent playloopsound(#"zmb_double_point_loop");
    zombie_utility::set_zombie_var(#"zombie_powerup_bonfire_sale_on", 1);
    level thread toggle_bonfire_sale_on();
    zombie_utility::set_zombie_var(#"zombie_powerup_bonfire_sale_time", 30);
    if (bgb::is_team_enabled("zm_bgb_temporal_gift")) {
        zombie_utility::set_zombie_var(#"zombie_powerup_bonfire_sale_time", zombie_utility::get_zombie_var(#"zombie_powerup_bonfire_sale_time") + 30);
    }
    while (zombie_utility::get_zombie_var(#"zombie_powerup_bonfire_sale_time") > 0) {
        waitframe(1);
        zombie_utility::set_zombie_var(#"zombie_powerup_bonfire_sale_time", zombie_utility::get_zombie_var(#"zombie_powerup_bonfire_sale_time") - 0.05);
    }
    zombie_utility::set_zombie_var(#"zombie_powerup_bonfire_sale_on", 0);
    level notify(#"bonfire_sale_off");
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        players[i] playsound(#"zmb_points_loop_off");
    }
    temp_ent delete();
}

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0x2dcb01f8, Offset: 0x680
// Size: 0x9c
function toggle_bonfire_sale_on() {
    level endon(#"powerup bonfire sale");
    if (!isdefined(zombie_utility::get_zombie_var(#"zombie_powerup_bonfire_sale_on"))) {
        return;
    }
    if (zombie_utility::get_zombie_var(#"zombie_powerup_bonfire_sale_on")) {
        if (isdefined(level.bonfire_init_func)) {
            level thread [[ level.bonfire_init_func ]]();
        }
        level waittill(#"bonfire_sale_off");
    }
}

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 0, eflags: 0x0
// Checksum 0xba56e2, Offset: 0x728
// Size: 0xfc
function setup_bonfiresale_audio() {
    wait(2);
    intercom = getentarray("intercom", "targetname");
    while (true) {
        while (zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_on") == 0) {
            wait(0.2);
        }
        for (i = 0; i < intercom.size; i++) {
            intercom[i] thread play_bonfiresale_audio();
        }
        while (zombie_utility::get_zombie_var(#"zombie_powerup_fire_sale_on") == 1) {
            wait(0.1);
        }
        level notify(#"firesale_over");
    }
}

// Namespace zm_powerup_bonfire_sale/zm_powerup_bonfire_sale
// Params 0, eflags: 0x2 linked
// Checksum 0x4bcd3f59, Offset: 0x830
// Size: 0xb4
function play_bonfiresale_audio() {
    if (is_true(level.sndfiresalemusoff)) {
        return;
    }
    if (is_true(level.sndannouncerisrich)) {
        self playloopsound(#"mus_fire_sale_rich");
    } else {
        self playloopsound(#"mus_fire_sale");
    }
    level waittill(#"firesale_over");
    self stoploopsound();
}

