// Atian COD Tools GSC CW decompiler test
#using script_355c6e84a79530cb;
#using script_6155d71e1c9a57eb;
#using script_215d7818c548cb51;
#using script_cf3d8fde2407bb1;
#using script_1287f54612f9bfce;
#using script_5fb26eef020f9958;
#using script_55b68e9c3e3a915b;
#using script_5a8a1aa32dea1a04;
#using scripts\killstreaks\zm\chopper_gunner.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_vote.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using script_3ddf84b7bb3bf47d;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using scripts\zm_common\zm_destination_manager.gsc;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\core_common\player\player_free_fall.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_dbb31ff3;

// Namespace namespace_dbb31ff3/level_init
// Params 1, eflags: 0x20
// Checksum 0xd0886c56, Offset: 0x308
// Size: 0xb4
function event_handler[level_init] main(*eventstruct) {
    level.var_8bef1f53 = sr_beacon_menu::register();
    clientfield::register("toplayer", "" + #"hash_5616eb8cc6b9c498", 1, 1, "counter");
    clientfield::register("toplayer", "" + #"hash_5752601fd90562e1", 1, 1, "counter");
    namespace_52c8f34d::preinit();
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0xcbad98f, Offset: 0x3c8
// Size: 0x3c
function function_67dce9cd(var_beee4994) {
    s_beacon = var_beee4994[0];
    if (isdefined(s_beacon)) {
        level thread function_e28ce6d9(s_beacon);
    }
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0x4b7a9dd7, Offset: 0x410
// Size: 0x34c
function function_e28ce6d9(struct) {
    mdl_beacon = content_manager::spawn_script_model(struct, #"hash_31be7c895b8fbf9b", 1);
    mdl_beacon thread scene::play(#"p9_fxanim_sv_tesla_tower_clean_bundle", mdl_beacon);
    mdl_beacon.var_c7f10fc1 = 1;
    mdl_beacon hidepart("screen_portal_jnt");
    mdl_beacon hidepart("screen_exfil_jnt");
    mdl_beacon hidepart("screen_respond_jnt");
    mdl_beacon hidepart("screen_calling_jnt");
    struct.objid = zm_utility::function_f5a222a8(#"hash_788f637c735eb34d", mdl_beacon);
    mdl_beacon clientfield::set("item_machine_spawn_rob", 1);
    mdl_beacon.objectiveid = struct.objid;
    if (zm_utility::is_survival()) {
        level thread zm_utility::clear_vehicles(mdl_beacon);
    }
    if (is_true(level.var_53bc31ad)) {
        mdl_beacon thread namespace_73df937d::function_67cbc98f();
        level thread destroy_beacon(mdl_beacon, 120, struct.parent);
        return;
    }
    v_trigger_offset = (0, 0, 32);
    trigger = content_manager::spawn_interact(struct, &function_1fab9ee0, #"hash_48951800c1051da7", undefined, 100, undefined, undefined, v_trigger_offset);
    trigger.var_9d7362a4 = #"hash_48951800c1051da7";
    trigger usetriggerrequirelookat(0);
    struct zm_utility::function_747180ea(struct.objid, undefined, trigger);
    trigger.scriptmodel = mdl_beacon;
    mdl_beacon.trigger = trigger;
    level.var_1ea1d494 = trigger;
    callback::callback(#"hash_4d2442503e03c0e8", {#mdl_beacon:mdl_beacon});
    s_result = level waittill(#"hash_3e765c26047c9f54", #"hash_345e9169ebba28fb");
    struct zm_utility::function_48d9a9c9();
    trigger delete();
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0x19b7b3d4, Offset: 0x768
// Size: 0x24a
function function_1fab9ee0(eventstruct) {
    player = eventstruct.activator;
    machine = self.scriptmodel;
    assert(isdefined(machine), "<unknown string>");
    if (isplayer(player) && !level flag::get(#"hash_23350b678001fece")) {
        if (is_true(getgametypesetting(#"hash_5cc58dfc6675a68e")) && level.var_b48509f9 >= 3) {
            player call_exfil(machine);
            return;
        }
        if (!level.var_8bef1f53 sr_beacon_menu::is_open(player) && !player clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
            player notify(#"hash_5f178db4550eeae9");
            level.var_8bef1f53 sr_beacon_menu::open(player, 0);
            player thread function_21ba74a1(machine, self);
            player namespace_553954de::function_14bada94();
            if (isdefined(level.var_85148da8)) {
                foreach (var_5d7b9f8 in level.var_85148da8) {
                    if (isfunctionptr(var_5d7b9f8)) {
                        self thread [[ var_5d7b9f8 ]](eventstruct);
                    }
                }
            }
        }
    }
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0xe6ca431a, Offset: 0x9c0
// Size: 0x88
function function_ef5e5f3(var_5d7b9f8) {
    if (!isdefined(level.var_85148da8)) {
        level.var_85148da8 = [];
    } else if (!isarray(level.var_85148da8)) {
        level.var_85148da8 = array(level.var_85148da8);
    }
    level.var_85148da8[level.var_85148da8.size] = var_5d7b9f8;
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0xe07f5139, Offset: 0xa50
// Size: 0x2c
function function_170982ca(var_5d7b9f8) {
    arrayremovevalue(level.var_85148da8, var_5d7b9f8);
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 3, eflags: 0x2 linked
// Checksum 0xd2343963, Offset: 0xa88
// Size: 0x18e
function function_6c71e778(machine, trigger, var_4bbc024b = 0) {
    if (!isplayer(self) || !isdefined(level.var_8bef1f53)) {
        return;
    }
    if (!is_true(var_4bbc024b)) {
        if (isdefined(machine) && isdefined(trigger)) {
            str_hint = #"hash_48951800c1051da7";
            trigger sethintstringforplayer(self, str_hint);
            if (isdefined(machine.objectiveid)) {
                objective_setvisibletoplayer(machine.objectiveid, self);
                zm_utility::function_e8f4d47b(self, machine.objectiveid, 0);
            }
        }
    }
    if (level.var_8bef1f53 sr_beacon_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        level.var_8bef1f53 sr_beacon_menu::close(self);
        self namespace_553954de::function_548f282();
    }
    self notify(#"hash_11ed79645f6768e1");
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 2, eflags: 0x2 linked
// Checksum 0x93a42239, Offset: 0xc20
// Size: 0x124
function function_755edc7e(machine, trigger) {
    self endon(#"disconnect", #"death", #"hash_11ed79645f6768e1");
    start_origin = self.origin;
    while (distance2d(self.origin, start_origin) < 32 && !self laststand::player_is_in_laststand() && !self isinvehicle()) {
        waitframe(1);
        if (!isdefined(machine)) {
            break;
        }
    }
    if (level.var_8bef1f53 sr_beacon_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        self function_6c71e778(machine, trigger);
    }
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 0, eflags: 0x2 linked
// Checksum 0x5e7ce678, Offset: 0xd50
// Size: 0xac
function function_8319d39() {
    self notify(#"hash_5f178db4550eeae9");
    level.var_2457162c sr_weapon_upgrade_menu::close(self);
    level.var_5df76d0 sr_perk_machine_choice::close(self);
    level.var_2a994cc0 sr_armor_menu::close(self);
    level.var_3ed9fd33 sr_crafting_table_menu::close(self);
    self namespace_553954de::function_548f282();
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0x1b67b8ec, Offset: 0xe08
// Size: 0x6c
function function_7b3dca17(s_spawn) {
    self function_8319d39();
    level.var_f3901984 = 5;
    self zm_fasttravel::function_66d020b0(undefined, undefined, undefined, "survival_next_dest", s_spawn, undefined, undefined, 1, 1, undefined, undefined, 1);
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0x62e4aa1c, Offset: 0xe80
// Size: 0x6c
function function_2f7447a7(mdl_beacon) {
    mdl_beacon thread function_22aada64();
    mdl_beacon scene::stop(#"p9_fxanim_sv_tesla_tower_clean_bundle");
    mdl_beacon scene::play(#"p9_fxanim_sv_tesla_tower_clean_bundle", "Shot 2", mdl_beacon);
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0xc5a37b1e, Offset: 0xef8
// Size: 0x768
function warp(mdl_beacon) {
    if (level flag::get(#"hash_23350b678001fece")) {
        return;
    }
    level flag::set(#"hash_23350b678001fece");
    if (getgametypesetting(#"hash_704e4a94667cfe72")) {
        b_passed = zm_vote::function_c65468ef(self, 2, #"hash_4ef08498325828d6");
        if (!b_passed) {
            level flag::clear(#"hash_23350b678001fece");
            self function_6c71e778(mdl_beacon, mdl_beacon.trigger);
            return;
        }
    }
    if (isdefined(level.var_fdcaf3a6)) {
        level flag::clear(#"hash_23350b678001fece");
        return;
    }
    mdl_beacon showpart("screen_portal_jnt");
    foreach (player in getplayers()) {
        player zm_stats::function_945c7ce2(#"hash_1a5bd2708defa02b", 1);
        player chopper_gunner::function_24fbd61e();
        player clientfield::increment_to_player("" + #"hash_5616eb8cc6b9c498", 1);
    }
    destination = level.contentmanager.var_d60029a6[level.contentmanager.var_46849b1b];
    level thread zm_destination_manager::function_ab94c270(destination);
    function_526a0df4(destination.targetname);
    level.var_fe6ca5e8 = 1;
    level notify(#"hash_29edd9425510b40d");
    level callback::callback(#"hash_29edd9425510b40d");
    level thread function_2f7447a7(mdl_beacon);
    zm_utility::function_bc5a54a8(mdl_beacon.objectiveid);
    mdl_beacon.objectiveid = undefined;
    if (zm_utility::is_survival()) {
        changeadvertisedstatus(0);
    }
    objective_manager::start_timer(10);
    objective_manager::function_a8ad6895(destination);
    var_b2e24cfc = zm_destination_manager::function_f3be07d7(destination);
    assert(var_b2e24cfc.size >= 4, "<unknown string>" + destination.targetname);
    level flag::clear(#"hash_23350b678001fece");
    level notify(#"hash_345e9169ebba28fb");
    level.var_fe6ca5e8 = undefined;
    namespace_9b972177::function_5a47adab("capsule_teleport");
    if (!isdefined(level.var_16fecec8)) {
        level.var_16fecec8 = 1;
    }
    foreach (player in getplayers()) {
        if (isalive(player)) {
            player player_free_fall::allow_player_basejumping(0);
            player val::set(#"hash_7bb41176a4b58056", "takedamage", 0);
            player thread function_e12efc1f();
            if (zm_utility::is_survival() && player laststand::player_is_in_laststand()) {
                player thread zm_laststand::auto_revive(self);
            }
            player thread function_7b3dca17(var_b2e24cfc[0]);
            if (var_b2e24cfc.size > 1) {
                arrayremoveindex(var_b2e24cfc, 0, 0);
            }
            player.var_5d80a93b = player getcurrentweapon();
        }
    }
    var_e8f53400 = 1;
    while (var_e8f53400) {
        var_e8f53400 = 0;
        foreach (player in getplayers()) {
            if (is_true(player.var_16735873)) {
                var_e8f53400 = 1;
                break;
            }
        }
        if (!var_e8f53400) {
            break;
        }
        wait(1);
    }
    wait(1);
    foreach (player in getplayers()) {
        player player_free_fall::allow_player_basejumping(1);
        player clientfield::increment_to_player("" + #"hash_5752601fd90562e1", 1);
    }
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 0, eflags: 0x2 linked
// Checksum 0x765f2d62, Offset: 0x1668
// Size: 0x64
function function_e12efc1f() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    wait(10);
    if (isdefined(self)) {
        self val::reset(#"hash_7bb41176a4b58056", "takedamage");
    }
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0xfaf13556, Offset: 0x16d8
// Size: 0x20c
function call_exfil(mdl_beacon) {
    if (level flag::get(#"hash_23350b678001fece")) {
        return;
    }
    level flag::set(#"hash_23350b678001fece");
    streamermodelhint(#"hash_397d38a359aae4e6", 45);
    streamermodelhint(#"hash_56de86439bdb98e2", 45);
    if (getgametypesetting(#"hash_704e4a94667cfe72")) {
        b_passed = zm_vote::function_c65468ef(self, 1, #"hash_37a354c147ec32f0");
        if (!b_passed) {
            level flag::clear(#"hash_23350b678001fece");
            self function_6c71e778(mdl_beacon, mdl_beacon.trigger);
            return;
        }
    }
    level notify(#"hash_66a72ae427cfc39a");
    if (isplayer(self)) {
        self thread zm_vo::function_d342796e(#"hash_7e50fb36129dc24b", 1.5);
    }
    mdl_beacon showpart("screen_exfil_jnt");
    zm_utility::function_bc5a54a8(mdl_beacon.objectiveid);
    mdl_beacon.objectiveid = undefined;
    self thread destroy_beacon(mdl_beacon);
    wait(2);
    level flag::set(#"hash_3e765c26047c9f54");
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 2, eflags: 0x2 linked
// Checksum 0x4098d3aa, Offset: 0x18f0
// Size: 0x2e6
function function_21ba74a1(machine, trigger) {
    self endon(#"hash_5f178db4550eeae9");
    trigger sethintstringforplayer(self, "");
    if (isdefined(machine.objectiveid)) {
        zm_utility::function_e8f4d47b(self, machine.objectiveid, 1);
        objective_setinvisibletoplayer(machine.objectiveid, self);
    }
    self endoncallback(&function_6c71e778, #"death");
    self thread function_755edc7e(machine, trigger);
    while (true) {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        if (menu == #"sr_beacon_menu") {
            switch (waitresult.response) {
            case #"hash_4d6bf94bcefe50c0":
                self notify(#"hash_11ed79645f6768e1");
                self function_6c71e778(machine, trigger, 1);
                self thread warp(machine);
                return;
            case #"hash_a1f795a11ddf7be":
                self notify(#"hash_11ed79645f6768e1");
                self function_6c71e778(machine, trigger, 1);
                self thread call_exfil(machine);
                return;
            case #"hash_383c519d3bdac984":
                self notify(#"hash_11ed79645f6768e1");
                self function_6c71e778(machine, trigger);
                return;
            default:
                var_3f5e47c5 = level.var_47926ab6[response];
                if (isfunctionptr(var_3f5e47c5)) {
                    self notify(#"hash_11ed79645f6768e1");
                    self function_6c71e778(machine, trigger);
                    self thread [[ var_3f5e47c5 ]](machine, trigger);
                    return;
                }
                break;
            }
        }
    }
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 2, eflags: 0x2 linked
// Checksum 0x14855a4, Offset: 0x1be0
// Size: 0x24
function function_bf90331e(var_25942430, var_3f5e47c5) {
    level.var_47926ab6[var_25942430] = var_3f5e47c5;
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 1, eflags: 0x2 linked
// Checksum 0xf6bd0d1c, Offset: 0x1c10
// Size: 0x1c
function function_b26aed81(var_25942430) {
    level.var_47926ab6[var_25942430] = undefined;
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 3, eflags: 0x2 linked
// Checksum 0xc035eaae, Offset: 0x1c38
// Size: 0x4bc
function destroy_beacon(mdl_beacon, var_fcfc4edd = 10, var_495727a3) {
    var_62157006 = "screen_exfil_jnt";
    var_f6aedcc6 = mdl_beacon gettagorigin(var_62157006);
    v_tag_angles = mdl_beacon gettagangles(var_62157006);
    var_668819de = axistoangles(anglestoright(v_tag_angles), anglestoforward(v_tag_angles));
    bomb = util::spawn_model(#"hash_397d38a359aae4e6", var_f6aedcc6, var_668819de);
    bomb linkto(mdl_beacon, var_62157006);
    level scene::function_27f5972e(#"p9_fxanim_sv_tesla_tower_dmg_bundle");
    timer = int(var_fcfc4edd);
    var_82edff1 = 0;
    while (timer) {
        if (!var_82edff1 && timer <= 10) {
            bomb playsound(#"hash_443ef0b39a1f5414");
            var_82edff1 = 1;
        }
        var_19719503 = 0;
        var_67c95546 = int(timer / 60);
        var_16782a41 = int(timer % 60 / 10);
        var_b30bc24e = timer % 60 % 10;
        bomb thread zm_blockers::function_e02a26f6();
        bomb showpart("tag_slot1_digi_" + var_19719503);
        bomb showpart("tag_slot2_digi_" + var_67c95546);
        bomb showpart("tag_slot3_digi_" + var_16782a41);
        bomb showpart("tag_slot4_digi_" + var_b30bc24e);
        bomb showpart("tag_sign");
        wait(0.5);
        bomb hidepart("tag_sign");
        wait(0.5);
        timer -= 1;
        /#
            iprintlnbold(timer);
        #/
    }
    bomb playsound(#"hash_6842dcc160b4c6de");
    bomb delete();
    mdl_beacon zm_blockers::function_c1342dc1();
    mdl_beacon setmodel(#"hash_56de86439bdb98e2");
    mdl_beacon scene::stop(#"p9_fxanim_sv_tesla_tower_clean_bundle");
    mdl_beacon thread scene::play(#"p9_fxanim_sv_tesla_tower_dmg_bundle", mdl_beacon);
    if (isdefined(var_495727a3)) {
        var_495727a3 notify(#"hash_5000b502c39b09a3", {#mdl_beacon:mdl_beacon});
    }
    if (is_true(level.var_53bc31ad) && isdefined(mdl_beacon.objectiveid)) {
        zm_utility::function_bc5a54a8(mdl_beacon.objectiveid);
        mdl_beacon.objectiveid = undefined;
    }
    level util::delay(2, "end_game", &scene::function_f81475ae, #"p9_fxanim_sv_tesla_tower_dmg_bundle");
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 0, eflags: 0x2 linked
// Checksum 0x6ac488df, Offset: 0x2100
// Size: 0x30c
function function_22aada64() {
    if (level.var_b48509f9 > 4 || isdefined(level.var_fdcaf3a6)) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_5bbfb03d6f36d3c3"))) {
        return;
    }
    self endon(#"death");
    self val::set(#"beacon", "takedamage", 1);
    self val::set(#"beacon", "allowdeath", 0);
    n_damage = 0;
    n_threshold = 1000 * getplayers().size * level.var_b48509f9;
    while (true) {
        s_result = self waittill(#"damage");
        n_damage += s_result.amount;
        if (n_damage > n_threshold && isdefined(self)) {
            self scene::stop(#"p9_fxanim_sv_tesla_tower_clean_bundle");
            self thread scene::play(#"p9_fxanim_sv_tesla_tower_dmg_bundle", self);
            playsoundatposition(#"hash_5b0e17f7fb286ba9", self.origin);
            playfxontag(#"hash_56a294b510faabf7", self, "tag_origin");
            playfxontag(#"hash_15925475df9c7da7", self, "ball_jnt");
            self val::reset_all(#"beacon");
            foreach (player in function_a1ef346b()) {
                player playsoundtoplayer(#"hash_681fc440ba53b31f", player);
            }
            level waittill(#"hash_345e9169ebba28fb");
            namespace_553954de::function_7c97e961(level.var_b48509f9 + 1);
            break;
        }
    }
}

