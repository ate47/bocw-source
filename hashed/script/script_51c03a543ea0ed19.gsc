// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\exploder_shared.gsc;
#using script_31e9b35aaacbbd93;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\cp_common\dialogue.gsc;
#using script_70b6424f429d140;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\objectives.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\skipto.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\vehicleriders_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_29b42773;

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 1, eflags: 0x0
// Checksum 0xf182eda1, Offset: 0x788
// Size: 0x28
function starting(*var_d3440450) {
    level.var_aece851d = [];
    level.var_33621ea7 = 1;
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 2, eflags: 0x0
// Checksum 0xdf5e5bbd, Offset: 0x7b8
// Size: 0x144
function main(var_d3440450, *var_50cc0d4f) {
    level.var_33621ea7 = 1;
    if (is_true(level.var_33621ea7)) {
        thread function_27c66141();
        thread bustout_house_guys();
        thread function_e78650d8();
        thread function_f9d1756b();
        level.var_7c11765c = 0;
        level.last_player_attacker = level;
        callback::on_player_damage(&function_aa3c5fab);
        level flag::wait_till("heli_target_complete");
        callback::remove_on_player_damage(&function_aa3c5fab);
    } else {
        iprintlnbold("Hit 1 Ending being reworked.");
    }
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 1, eflags: 0x2 linked
// Checksum 0x4c6678d5, Offset: 0x908
// Size: 0x114
function function_aa3c5fab(params) {
    if (!isdefined(level.var_9a3944f4)) {
        return;
    }
    level.var_9a3944f4.var_71664ae5 = 1;
    attacker = params.eattacker;
    if (attacker == level.last_player_attacker) {
        level.var_9a3944f4 thread tkdn_heli_intro::function_cbe25a41(attacker, "tag_glass_front_left_lower_d0", 1);
        level.var_7c11765c = gettime();
        return;
    }
    if (level.var_7c11765c < gettime() - 3000 || !isalive(level.last_player_attacker)) {
        level.var_7c11765c = gettime();
        level.last_player_attacker = attacker;
        level.var_9a3944f4 thread tkdn_heli_intro::function_cbe25a41(attacker, "tag_glass_front_left_lower_d0", 1);
    }
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 1, eflags: 0x0
// Checksum 0x3b5ae7e0, Offset: 0xa28
// Size: 0xc
function function_cfc3fd5f(*var_d3440450) {
    
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 2, eflags: 0x0
// Checksum 0xf842c180, Offset: 0xa40
// Size: 0x23c
function bustout(var_d3440450, var_50cc0d4f) {
    if (var_50cc0d4f) {
        wait(0.5);
        spawners = getspawnerarray("intro_bustout_truck_ally_woods", "script_noteworthy");
        level.var_664fd741 = spawners[0] spawner::spawn(1);
        level thread util::magic_bullet_shield(level.var_664fd741);
        if (!isdefined(level.var_40b02b72)) {
            level.var_40b02b72 = vehicle::simple_spawn_and_drive("intro_heli_bustout_truck");
            level.var_9a3944f4 = level.var_40b02b72[0];
            level.var_9a3944f4 setmodel("veh_t8_mil_helicopter_uh1d_cp_takedown");
            level.var_9a3944f4 thread tkdn_heli_intro::function_fbb0d73f();
            thread tkdn_heli_intro::heli_light(level.var_9a3944f4, "ally_heli_spot_light_bustout", "tag_glass_front_left_lower_d0", (-20, 12, 0), level.var_9a3944f4, 0, 1);
            level.var_9a3944f4 util::delay_notify(0.2, "lights_on");
            thread function_f9d1756b();
        }
        thread function_e78650d8();
        thread function_a76cb757(level.var_664fd741);
        thread function_c000638d();
    }
    level flag::wait_till("heli_target_complete");
    level lui::play_movie(#"hash_61b3a08db9dd71b0", "fullscreen", 1, 0, 0);
    if (isdefined(var_d3440450)) {
        skipto::function_4e3ab877(var_d3440450);
    }
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x64ebc219, Offset: 0xc88
// Size: 0xfa
function function_f9d1756b() {
    level flag::wait_till("bustout_pre_player_start");
    level.var_9a3944f4.var_71664ae5 = 1;
    level.var_9a3944f4 util::delay(0.4, undefined, &tkdn_heli_intro::function_cbe25a41, level.var_664fd741, "tag_glass_front_left_lower_d0");
    level.var_9a3944f4 util::delay(2.4, "move_light_to_garage", &tkdn_heli_intro::function_cbe25a41, getent("truck_bustout_heli_target", "targetname"), "tag_glass_front_left_lower_d0");
    wait(0.5);
    level.var_9a3944f4.var_71664ae5 = 1;
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 1, eflags: 0x2 linked
// Checksum 0x62e82c96, Offset: 0xd90
// Size: 0x14c
function function_aed2b350(woods) {
    level flag::wait_till("bustout_start_shooting_house_vo");
    woods dialogue::queue("vox_cp_tdwn_01300_wood_cleanhouseforus_c4");
    thread dialogue::radio("vox_cp_tdwn_01300_chp1_rogerthat_fe");
    level flag::set("bustout_start_shooting_house");
    wait(4);
    dialogue::radio("vox_cp_tdwn_01300_chp1_ifanyonesalivei_5c");
    thread namespace_a052577e::function_ec4a61d9();
    level flag::wait_till("bustout_house_shotup");
    level.var_664fd741 ai::set_behavior_attribute("demeanor", "cqb");
    level flag::wait_till("bustout_movement_mid_house");
    dialogue::radio("vox_cp_tdwn_01500_chp1_wegotmovementin_7c");
    function_a76cb757(woods);
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 1, eflags: 0x2 linked
// Checksum 0xcbe56672, Offset: 0xee8
// Size: 0x4c
function function_a76cb757(woods) {
    level flag::wait_till("bustout_player_start");
    wait(1);
    woods dialogue::queue("vox_cp_tdwn_01600_wood_takeoutthedrive_2b");
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0xcc3cc92e, Offset: 0xf40
// Size: 0x158
function function_e78650d8() {
    wait(3);
    player = getplayers()[0];
    player endon(#"death");
    for (slowed = 0; !level flag::get("bustout_player_start"); slowed = 1) {
        ret = level waittill(#"bustout_player_start", #"bustout_player_entered_house");
        if (level flag::get("bustout_player_start") || !level flag::get("bustout_player_entered_house")) {
            player setmovespeedscale(1);
            slowed = 0;
            continue;
        }
        if (!slowed && level flag::get("bustout_player_entered_house")) {
            player setmovespeedscale(0.65);
        }
    }
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x8004a8c3, Offset: 0x10a0
// Size: 0x8c
function bustout_house_guys() {
    guys = getentarray("bustout_house_guys", "script_noteworthy", 1);
    if (isdefined(guys) && guys.size > 0) {
        ai::waittill_dead_or_dying(guys, guys.size);
    }
    level flag::set("woods_wait_house_enemies");
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x5dded411, Offset: 0x1138
// Size: 0x19c
function function_27c66141() {
    flag::set("intro_waittill_bustout_heli");
    player = getplayers()[0];
    if (!isdefined(level.var_664fd741)) {
        wait(3);
        spawners = getspawnerarray("intro_bustout_ally_woods", "script_noteworthy");
        level.var_664fd741 = spawners[0] spawner::spawn(1);
        level thread util::magic_bullet_shield(level.var_664fd741);
        thread function_b4a74554(level.var_664fd741);
        objectives::follow("woods_hit1", level.var_664fd741);
        level.var_95a74232 = 1;
    } else {
        thread function_b4a74554(getent("hit1_truck_house", "script_noteworthy", 1));
    }
    thread function_aed2b350(level.var_664fd741);
    level flag::wait_till("bustout_player_entered_house");
    function_17162917();
    function_c000638d();
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x3722a7f3, Offset: 0x12e0
// Size: 0x47c
function function_c000638d() {
    player = getplayers()[0];
    level flag::wait_till("bustout_pre_player_start");
    level.var_664fd741 notify(#"hash_26d0e9e370348b6a");
    waitframe(1);
    level.var_664fd741 clearforcedgoal();
    waitframe(1);
    level.var_664fd741 val::set(#"hash_7a39ed2821b68c00", "ignoreall", 1);
    level.var_664fd741.target = "woods_bustout_backyard";
    level.var_664fd741 thread spawner::go_to_node();
    level flag::wait_till("bustout_player_start");
    door = getent("bustout_garage_door", "script_noteworthy");
    door hide();
    door notsolid();
    level.var_97dd00f8 = vehicle::simple_spawn_and_drive("intro_garage_bustout");
    for (bustout_driver = undefined; !isdefined(bustout_driver); bustout_driver = getent("bustout_driver", "targetname", 1)) {
        waitframe(1);
    }
    waitframe(2);
    level.var_97dd00f8[0] vehicle::lights_on();
    if (isdefined(level.var_9a3944f4)) {
        level.var_9a3944f4.var_71664ae5 = 100;
        level.var_9a3944f4 thread tkdn_heli_intro::function_cbe25a41(level.var_97dd00f8[0], "tag_origin", 0, 0, 0, 1);
    }
    player thread namespace_a052577e::function_6b5c2a3(bustout_driver, level.var_97dd00f8);
    level flag::wait_till("bustout_start_slomo");
    level flag::wait_till("bustout_veeroff");
    level.var_664fd741 val::reset(#"hash_7a39ed2821b68c00", "ignoreall");
    wait(0.5);
    if (isalive(bustout_driver)) {
        bustout_driver ai::bloody_death(0.2);
    }
    if (isdefined(level.var_9a3944f4)) {
        level.var_9a3944f4.var_71664ae5 = 60;
        level.var_9a3944f4 thread tkdn_heli_intro::function_cbe25a41(level.var_664fd741, "tag_glass_front_left_lower_d0");
    }
    wait(2);
    level flag::set("woods_goto_crash");
    level flag::wait_till_timeout(4, "woods_at_crash");
    level flag::set("woods_at_crash");
    level.var_664fd741 dialogue::queue("vox_cp_tdwn_01700_wood_targetidentifie_ca");
    wait(1);
    if (is_true(level.var_95a74232)) {
        objectives::complete("woods_hit1");
    }
    objectives::complete("hit1");
    level.var_664fd741 dialogue::queue("vox_cp_tdwn_01700_wood_adlerhamidisdow_d0");
    wait(3);
    level flag::set("heli_target_complete");
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 1, eflags: 0x2 linked
// Checksum 0x93945dd9, Offset: 0x1768
// Size: 0x1bc
function function_b4a74554(var_dd0a1cc3) {
    aim = struct::get("bustout_shoot_house_aim");
    if (!isdefined(level.var_40b02b72)) {
        level.var_40b02b72 = vehicle::simple_spawn_and_drive("intro_heli_bustout");
        level.var_9a3944f4 = level.var_40b02b72[0];
        level.var_9a3944f4 setmodel("veh_t8_mil_helicopter_uh1d_cp_takedown");
        level.var_9a3944f4 thread tkdn_heli_intro::function_fbb0d73f();
        level.var_9a3944f4 thread tkdn_heli_intro::function_3cebcd1b();
        thread tkdn_heli_intro::heli_light(level.var_9a3944f4, "ally_heli_spot_light_bustout", "tag_glass_front_left_lower_d0", (-20, 12, 0), level.var_9a3944f4, 0, 1);
        level.var_9a3944f4 util::delay_notify(0.2, "lights_on");
    } else {
        level.var_9a3944f4 thread tkdn_heli_intro::function_cbe25a41(var_dd0a1cc3, "tag_glass_front_left_lower_d0");
    }
    thread function_69da7d8e(level.var_9a3944f4);
    level flag::set("intro_heli_lights_on");
    wait(0.3);
    level.var_9a3944f4 vehicle::toggle_tread_fx(0);
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 1, eflags: 0x2 linked
// Checksum 0xbca38897, Offset: 0x1930
// Size: 0x314
function function_69da7d8e(heli) {
    heli endon(#"death");
    level flag::wait_till("bustout_start_shooting_house");
    aim = struct::get("bustout_shoot_house_aim");
    var_ade9681a = struct::get("bustout_shoot_house_spotlight");
    move_start = getent("bustout_shoot_house_mover", "targetname");
    mover = util::spawn_model("tag_origin", move_start.origin, move_start.angles);
    level.var_9a3944f4.var_71664ae5 = 1;
    heli thread tkdn_heli_intro::function_cbe25a41(var_ade9681a, "tag_glass_front_left_lower_d0");
    thread function_ba2c935e(mover, aim);
    var_8132076f = 1;
    heli turretsettarget(var_8132076f, mover);
    level flag::delay_set(11, "bustout_house_shotup");
    thread function_ea5db7ae();
    var_af2a1727 = [(0, 0, 128), (-128, -128, -128)];
    while (!level flag::get("bustout_house_shotup")) {
        heli fireweapon(var_8132076f);
        waitframe(1);
        heli fireweapon(var_8132076f, undefined, var_af2a1727[randomint(var_af2a1727.size)]);
        waitframe(1);
    }
    heli stopfireweapon();
    heli turretcleartarget(var_8132076f);
    waitframe(2);
    heli stopfireweapon();
    door = getent("bustout_house_door", "script_noteworthy");
    door hide();
    door notsolid();
    level.var_9a3944f4 thread tkdn_heli_intro::function_cbe25a41(struct::get("heli_spotlight_house_aim"), "tag_glass_front_left_lower_d0");
    thread function_76ce7c85();
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0xe93dc434, Offset: 0x1c50
// Size: 0x1ec
function function_76ce7c85() {
    level.var_664fd741 notify(#"hash_26d0e9e370348b6a");
    level thread scene::play("scene_tkd_hit1_bullethouse", "init", [level.var_664fd741]);
    level flag::wait_till("bustout_woods_enter_house");
    level.var_664fd741 thread dialogue::queue("vox_cp_tdwn_01400_wood_breaching_a4");
    level thread scene::play("scene_tkd_hit1_bullethouse", "walk01", [level.var_664fd741]);
    level.var_664fd741 waittill(#"hash_278a01b961e328f0");
    level flag::wait_till("bustout_movement_mid_house");
    level thread scene::play("scene_tkd_hit1_bullethouse", "walk02", [level.var_664fd741]);
    level.var_664fd741 waittill(#"hash_278a01b961e328f0");
    level flag::wait_till("bustout_movement_rear_house");
    level thread scene::play("scene_tkd_hit1_bullethouse", "walk03", [level.var_664fd741]);
    level flag::wait_till("bustout_pre_player_start");
    level thread scene::stop("scene_tkd_hit1_bullethouse");
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x5f1f78e, Offset: 0x1e48
// Size: 0xe0
function function_ea5db7ae() {
    wait(4);
    guys = getentarray("bustout_house_guys", "script_noteworthy", 1);
    foreach (guy in guys) {
        if (isalive(guy)) {
            guy thread ai::bloody_death(randomfloat(2));
        }
    }
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x9159daa1, Offset: 0x1f30
// Size: 0x74
function function_17162917() {
    level.var_9a3944f4.var_71664ae5 = 180;
    level.var_9a3944f4.var_113b6995 = 1;
    self.var_19a7fb91 = 32;
    level.var_9a3944f4 thread tkdn_heli_intro::function_cbe25a41(getplayers()[0], "tag_glass_front_left_lower_d0");
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 2, eflags: 0x2 linked
// Checksum 0x6ef241d3, Offset: 0x1fb0
// Size: 0xaa
function function_ba2c935e(mover, next_target) {
    level endon(#"bustout_house_shotup");
    while (true) {
        mover moveto(next_target.origin, 1.5, 1.5 * 0.33, 1.5 * 0.33);
        wait(1.5);
        next_target = struct::get(next_target.target, "targetname");
    }
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 4, eflags: 0x0
// Checksum 0x533b7b51, Offset: 0x2068
// Size: 0x24
function cleanup(*name, *starting, *direct, *player) {
    
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 4, eflags: 0x0
// Checksum 0xfdd91cc9, Offset: 0x2098
// Size: 0x2b4
function function_768f9ea9(*name, *starting, *direct, *player) {
    level thread scene::stop("scene_tkd_hit1_intro_fly_in_trucks");
    wait(1);
    if (isdefined(level.var_eaf95d92)) {
        keys = getarraykeys(level.var_eaf95d92);
        for (i = 0; i < keys.size; i++) {
            if (isdefined(level.var_eaf95d92[keys[i]])) {
                level.var_eaf95d92[keys[i]] unlink();
                level.var_eaf95d92[keys[i]] delete();
            }
        }
    }
    if (isdefined(level.var_40b02b72)) {
        foreach (veh in level.var_40b02b72) {
            if (isalive(veh)) {
                veh.delete_on_death = 1;
                veh delete();
            }
        }
    }
    if (isdefined(level.var_abaa6487)) {
        foreach (veh in level.var_abaa6487) {
            if (isalive(veh)) {
                veh delete();
            }
        }
    }
    if (isdefined(level.var_664fd741)) {
        util::stop_magic_bullet_shield(level.var_664fd741);
        level.var_664fd741 delete();
    }
    if (isdefined(level.var_97dd00f8)) {
    }
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x5b35dba1, Offset: 0x2358
// Size: 0x24
function init_flags() {
    level flag::init("heli_target_complete");
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x2388
// Size: 0x4
function init_clientfields() {
    
}

// Namespace namespace_29b42773/namespace_d92ad9f3
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x2398
// Size: 0x4
function function_22b7fffd() {
    
}

