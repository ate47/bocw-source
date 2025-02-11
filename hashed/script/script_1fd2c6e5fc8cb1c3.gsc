#using script_1478fbd17fe393cf;
#using script_2b063a830b337a1d;
#using script_2d443451ce681a;
#using script_32399001bdb550da;
#using script_35ae72be7b4fec10;
#using script_3626f1b2cf51a99c;
#using script_3b82b8c68189025e;
#using script_3d18e87594285298;
#using script_44aef2868ad2e317;
#using script_4ab78e327b76395f;
#using script_4ae261b2785dda9f;
#using script_4ccd0c3512b52a10;
#using script_4ec222619bffcfd1;
#using script_52da18c20f45c56a;
#using script_5dcd6dc4b2161186;
#using script_68d08b784c92da95;
#using script_6ccf730929917b01;
#using script_71eb6874a6fab829;
#using script_7d0013bbc05623b9;
#using script_9bfd3d8a6a89e5e;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\damagefeedback_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\gameobjects_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\collectibles;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\objectives;
#using scripts\cp_common\util;

#namespace namespace_e77bf565;

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x1663df3b, Offset: 0x11e8
// Size: 0x1ec
function init_clientfields() {
    level.var_c1ef80d2 = spawnstruct();
    level.var_c1ef80d2.var_4bf20be4 = evidence_board_mission_preview::register();
    clientfield::register("toplayer", "set_fov", 1, 3, "int");
    clientfield::register("toplayer", "set_dof", 1, 3, "int");
    clientfield::register("toplayer", "gasmask_clf", 1, 1, "int");
    clientfield::register("toplayer", "exfilmask_clf", 1, 1, "int");
    clientfield::register("toplayer", "stream_belikov_rv_assets", 1, 1, "int");
    clientfield::register("toplayer", "stream_elevator_exfil_assets", 1, 1, "int");
    clientfield::register("toplayer", "stream_deploy_gas_assets", 1, 1, "int");
    clientfield::register("toplayer", "stream_adler_assault_assets", 1, 1, "int");
    clientfield::register("scriptmover", "slide_projector_anim", 1, 1, "int");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x17928ed1, Offset: 0x13e0
// Size: 0xcc
function function_22b7fffd() {
    animation::add_notetrack_func("kgb_util::show_hit_marker_on_damage_from_player", &function_249a18d5);
    animation::add_notetrack_func("kgb_util::inside_man_head_swap_gasmask_to_injured", &function_6f6eae4);
    animation::add_notetrack_func("kgb_util::inside_man_head_swap_injured_to_gasmask", &function_89dd500);
    animation::add_notetrack_func("kgb_util::play_rumble", &function_af5c4ca3);
    animation::add_notetrack_func("kgb_util::high_detail_off", &function_f1a3033);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x9ccd5496, Offset: 0x14b8
// Size: 0x21c
function function_26312171() {
    spawner::add_spawn_function_group("adler", "targetname", &function_38dbfbad);
    spawner::add_spawn_function_group("adler_shotgun", "targetname", &function_38dbfbad);
    spawner::add_spawn_function_group("adler_casual_killer", "targetname", &function_38dbfbad, "casual_killer");
    spawner::add_spawn_function_group("inside_man", "targetname", &function_7c790364);
    spawner::add_spawn_function_group("inside_man_shotgun", "targetname", &function_7c790364);
    spawner::add_spawn_function_group("inside_man_casual_killer", "targetname", &function_7c790364);
    spawner::add_spawn_function_group("ignoreall_until_damage", "script_noteworthy", &ignoreall_until_damage);
    spawner::add_spawn_function_group("ignoreall_until_goal", "script_noteworthy", &ignoreall_until_goal);
    spawner::add_spawn_function_group("ignoreall_until_damage_or_goal", "script_noteworthy", &ignoreall_until_damage_or_goal);
    spawner::add_spawn_function_group("player_seek", "script_noteworthy", &player_seek);
    spawner::add_spawn_function_group("player_seek_flashlight", "script_noteworthy", &player_seek_flashlight);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0x332857e5, Offset: 0x16e0
// Size: 0xb0
function function_52fe0eb3(var_d3440450, spawner = "adler") {
    adler = spawner::simple_spawn_single(spawner);
    if (isdefined(var_d3440450)) {
        loc = struct::get(var_d3440450 + "_adler_start", "targetname");
        if (isdefined(loc)) {
            adler forceteleport(loc.origin, loc.angles);
        }
    }
    return adler;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0x87ceef50, Offset: 0x1798
// Size: 0xb0
function function_e4660071(var_d3440450, spawner = "inside_man") {
    inside_man = spawner::simple_spawn_single(spawner);
    if (isdefined(var_d3440450)) {
        loc = struct::get(var_d3440450 + "_inside_man_start", "targetname");
        if (isdefined(loc)) {
            inside_man forceteleport(loc.origin, loc.angles);
        }
    }
    return inside_man;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x178de16f, Offset: 0x1850
// Size: 0x5c
function function_38dbfbad(*type) {
    self.enableterrainik = 1;
    self util::magic_bullet_shield();
    self.var_7a450023 = 1;
    self ai::set_behavior_attribute("disablereload", 1);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x79635ba2, Offset: 0x18b8
// Size: 0x54
function function_7c790364() {
    self.enableterrainik = 1;
    self util::magic_bullet_shield();
    self.var_7a450023 = 1;
    self ai::set_behavior_attribute("disablereload", 1);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xa834ca51, Offset: 0x1918
// Size: 0x46
function ignoreall_until_damage() {
    self endon(#"death");
    self.ignoreall = 1;
    self waittill(#"damage");
    self.ignoreall = 0;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xf00a739c, Offset: 0x1968
// Size: 0x46
function ignoreall_until_goal() {
    self endon(#"death");
    self.ignoreall = 1;
    self waittill(#"goal");
    self.ignoreall = 0;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x15874d0c, Offset: 0x19b8
// Size: 0x56
function ignoreall_until_damage_or_goal() {
    self endon(#"death");
    self.ignoreall = 1;
    self waittill(#"damage", #"goal");
    self.ignoreall = 0;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xe0bc00d5, Offset: 0x1a18
// Size: 0x64
function player_seek() {
    self.ignoresuppression = 1;
    self.goalradius = 350;
    self setgoal(level.players[0]);
    self ai::set_behavior_attribute("demeanor", "cqb");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x2834cc75, Offset: 0x1a88
// Size: 0x34
function player_seek_flashlight() {
    self player_seek();
    self flashlight::function_7c2f623b();
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 3, eflags: 0x0
// Checksum 0x5ca7fca0, Offset: 0x1ac8
// Size: 0x4c
function function_23705b46(aigroup, count, flag) {
    spawner::waittill_ai_group_count(aigroup, count);
    level flag::set(flag);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0xcb32db13, Offset: 0x1b20
// Size: 0x74
function function_acd27ffb(var_678713c9, var_6b443e8c) {
    assert(isarray(var_678713c9), "<dev string:x38>");
    flag::wait_till_any(var_678713c9);
    flag::set(var_6b443e8c);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0x393285cc, Offset: 0x1ba0
// Size: 0x74
function function_ae7c9137(var_ec216292, var_6b443e8c) {
    assert(isarray(var_ec216292), "<dev string:x38>");
    flag::wait_till_all(var_ec216292);
    flag::set(var_6b443e8c);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xf80b90d7, Offset: 0x1c20
// Size: 0x64
function function_85d3a678() {
    function_5dfd7fb1("adler_exfil_nodes", "script_noteworthy", 0);
    function_5dfd7fb1("exfil_escape_nodes", "script_noteworthy", 0);
    function_5dfd7fb1("vault_retreat_used_nodes", "script_noteworthy", 0);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 3, eflags: 0x0
// Checksum 0x5da2a794, Offset: 0x1c90
// Size: 0xc8
function function_5dfd7fb1(nodename, nodekey, benabled) {
    nodes = getnodearray(nodename, nodekey);
    if (isdefined(nodes)) {
        foreach (node in nodes) {
            setenablenode(node, benabled);
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xbd426b8c, Offset: 0x1d60
// Size: 0x2bc
function function_95feac9c() {
    level.elevator = getent("elevator", "targetname");
    level thread function_c0dcd012();
    level.elevator_body_clip = getent("elevator_body_clip", "targetname");
    level.elevator_body_clip linkto(level.elevator);
    level.elevator_left_door_clip = getent("elevator_left_door_clip", "targetname");
    level.elevator_left_door_clip linkto(level.elevator);
    level.elevator_right_door_clip = getent("elevator_right_door_clip", "targetname");
    level.elevator_right_door_clip linkto(level.elevator);
    level.elevator_doorway_player_clip = getent("elevator_doorway_player_clip", "targetname");
    level.elevator_doorway_player_clip linkto(level.elevator);
    level.var_5ab0d50c = getentarray("elevator_light", "targetname");
    if (isdefined(level.var_5ab0d50c) && level.var_5ab0d50c.size > 0) {
        foreach (light in level.var_5ab0d50c) {
            light linkto(level.elevator);
        }
    }
    level flag::set("elevator_clips_ready");
    level thread function_c6e1b306();
    level.elevator_probe = getent("elevator_probe", "targetname");
    level.elevator_probe linkto(level.elevator);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xb0e9b80f, Offset: 0x2028
// Size: 0xb4
function function_c0dcd012() {
    exfil_escape_alarm_light_elevator = getent("exfil_escape_alarm_light_elevator", "targetname");
    if (isdefined(exfil_escape_alarm_light_elevator)) {
        exfil_escape_alarm_light_elevator linkto(level.elevator, "tag_origin", (0, 46, 85), (0, 90, -90));
        level flag::wait_till("turn_on_elevator_alarm_light");
        exfil_escape_alarm_light_elevator setlightintensity(12000000);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x6502cedb, Offset: 0x20e8
// Size: 0xc0
function function_c6e1b306() {
    while (true) {
        msg = level waittill(#"hash_33452e25c7f8048c", #"hash_75603f5b1241ba55");
        if (msg._notify == #"hash_33452e25c7f8048c") {
            level.elevator_doorway_player_clip solid();
            continue;
        }
        if (msg._notify == #"hash_75603f5b1241ba55") {
            level.elevator_doorway_player_clip notsolid();
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0xd82a91b9, Offset: 0x21b0
// Size: 0xc4
function function_725acd42(tname, var_b1e77977) {
    light = getent(tname, "targetname");
    if (isdefined(light)) {
        if (is_true(var_b1e77977)) {
            if (isdefined(light.var_2151803f)) {
                light setlightintensity(light.var_2151803f);
            }
            return;
        }
        light.var_2151803f = light getlightintensity();
        light setlightintensity(0);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0xd9d4ed6b, Offset: 0x2280
// Size: 0x1b8
function function_1067ebf5(var_cbf02f45, var_f59d130a) {
    var_70364cf6 = struct::get_array(var_cbf02f45, "targetname");
    foreach (struct in var_70364cf6) {
        if (!isdefined(struct.var_444013dc)) {
            struct.var_444013dc = util::spawn_model(struct.model, struct.origin, struct.angles);
            struct.var_444013dc.parent_struct = struct;
            if (isdefined(struct.var_48aca2c0)) {
                struct.var_444013dc setscale(struct.var_48aca2c0);
            }
            if (isdefined(struct.var_a1a5e6bc)) {
                struct.var_444013dc.var_a1a5e6bc = struct.var_a1a5e6bc;
            }
            if (isdefined(struct.var_b1c6f60c)) {
                struct.var_444013dc.var_b1c6f60c = struct.var_b1c6f60c;
            }
            struct.var_444013dc thread rotating_object();
            struct.var_444013dc thread function_4f1982fb(var_f59d130a);
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x8806fc96, Offset: 0x2440
// Size: 0x6c
function function_4f1982fb(var_f59d130a) {
    level flag::wait_till(var_f59d130a);
    if (isdefined(self.parent_struct) && isdefined(self.parent_struct.var_444013dc)) {
        self.parent_struct.var_444013dc = undefined;
    }
    self delete();
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xbc97372f, Offset: 0x24b8
// Size: 0xde
function rotating_object() {
    self endon(#"death");
    while (true) {
        if (self.var_a1a5e6bc == "yaw") {
            self rotateyaw(360, self.var_b1c6f60c);
        } else if (self.var_a1a5e6bc == "roll") {
            self rotateroll(360, self.var_b1c6f60c);
        } else if (self.var_a1a5e6bc == "pitch") {
            self rotatepitch(360, self.var_b1c6f60c);
        }
        self waittill(#"rotatedone");
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0x6d6bcc14, Offset: 0x25a0
// Size: 0x54a
function function_7feb07bb(var_d3440450, *var_50cc0d4f) {
    if (var_50cc0d4f == "kgb_aslt_bunker") {
        level flag::wait_till("aslt_bunker_begin");
    }
    id = objectives::function_285e460("obj_retrieve_intel");
    if (!isdefined(id)) {
        objectives::scripted("obj_retrieve_intel", undefined, #"hash_2f94fe6c683f39ef");
    }
    switch (var_50cc0d4f) {
    case #"kgb_aslt_bunker":
        level flag::wait_till("bunker_intro_security_cleared");
        objectives::follow("follow_adler", level.adler);
        level flag::wait_till("aslt_bunker_complete");
        objectives::complete("follow_adler", level.adler);
        return;
    case #"hash_7cde686699ca5464":
        assault_plant_gas_org = struct::get("assault_plant_gas_org", "targetname");
        objectives::goto("obj_goto", assault_plant_gas_org.origin);
        level flag::set("assault_plant_gas_org_obj_created");
        level flag::wait_till("player_plant_gas_started");
        objectives::complete("obj_goto");
        level flag::wait_till("player_planted_gas");
        objectives::follow("follow_adler", level.adler);
        return;
    case #"hash_162b16415a255dd5":
        while (!isdefined(level.adler)) {
            wait 0.05;
        }
        id = objectives::function_285e460("follow_adler", level.adler);
        if (!isdefined(id)) {
            objectives::follow("follow_adler", level.adler);
        }
        level flag::wait_till("update_objective_position_on_vault_door");
        objectives::complete("follow_adler", level.adler);
        vault_breach_obj_org = struct::get("vault_breach_obj_org", "targetname");
        objectives::goto("obj_goto", vault_breach_obj_org.origin);
        level flag::set("vault_breach_obj_org_obj_created");
        level flag::wait_till("vault_breach_started");
        objectives::complete("obj_goto");
        return;
    case #"hash_1c5015138adaab97":
        macguffin_org = struct::get("macguffin_org", "targetname");
        objectives::goto("obj_goto", macguffin_org.origin);
        level flag::set("macguffin_org_obj_created");
        level flag::wait_till("macguffin_download_started");
        objectives::complete("obj_goto");
        level flag::wait_till("player_exited_computer");
        objectives::follow("support_adler", level.adler);
        objectives::function_67f87f80("support_adler", [level.adler], #"hash_51de8bc6710f2a2e");
        level flag::wait_till("aslt_vault_complete");
        objectives::complete("support_adler", level.adler);
        objectives::complete("obj_retrieve_intel");
        player_decision::function_8c0836dd(1);
        return;
    default:
        break;
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0xa508ce01, Offset: 0x2af8
// Size: 0x6ea
function escape_objective(var_d3440450, *var_50cc0d4f) {
    id = objectives::function_285e460("obj_escape");
    if (!isdefined(id)) {
        objectives::scripted("obj_escape", undefined, #"hash_3c61b0f317a4032c");
    }
    switch (var_50cc0d4f) {
    case #"hash_376543ff2ea5996":
        while (!isdefined(level.adler)) {
            wait 0.05;
        }
        id = objectives::function_285e460("follow_adler", level.adler);
        if (!isdefined(id)) {
            objectives::follow("follow_adler", level.adler);
        }
        return;
    case #"hash_320aa934bbc7d931":
        while (!isdefined(level.adler)) {
            wait 0.05;
        }
        id = objectives::function_285e460("follow_adler", level.adler);
        if (!isdefined(id)) {
            objectives::follow("follow_adler", level.adler);
        }
        level flag::wait_till("lights_out_done");
        objectives::complete("follow_adler", level.adler);
        lights_out_obj_org = struct::get("lights_out_obj_org", "targetname");
        objectives::goto("obj_goto", lights_out_obj_org.origin);
        level flag::wait_till("aslt_bunker_escape_lights_out_complete");
        objectives::complete("obj_goto");
        return;
    case #"hash_74f9d3807b0ac192":
        while (!isdefined(level.adler)) {
            wait 0.05;
        }
        id = objectives::function_285e460("follow_adler", level.adler);
        if (!isdefined(id)) {
            objectives::follow("follow_adler", level.adler);
        }
        level flag::wait_till("enable_inside_man_rescue_objective");
        objectives::complete("follow_adler", level.adler);
        objectives::function_4eb5c04a("obj_goto", level.var_a910b1a);
        level flag::set("inside_man_use_tag_obj_created");
        level flag::wait_till("inside_man_rescued");
        objectives::complete("obj_goto", level.var_a910b1a);
        objectives::follow("follow_adler", level.adler);
        level flag::set("inside_man_rescue_objective_cleaned_up");
        return;
    case #"hash_1af1cb6ba35bac17":
        while (!isdefined(level.adler)) {
            wait 0.05;
        }
        id = objectives::function_285e460("follow_adler", level.adler);
        if (!isdefined(id)) {
            objectives::follow("follow_adler", level.adler);
        }
        level flag::wait_till("enable_gas_mask_interact");
        objectives::complete("follow_adler", level.adler);
        exfil_player_grab_armor_org = struct::get("exfil_player_grab_armor_org", "targetname");
        objectives::function_4eb5c04a("obj_goto", exfil_player_grab_armor_org.origin);
        level flag::set("exfil_player_grab_armor_org_obj_created");
        level flag::wait_till("player_grabbed_armor");
        objectives::complete("obj_goto");
        return;
    case #"hash_5d3f72329516e0fb":
        level flag::wait_till("escape_follow_adler");
        exfil_escape_door_obj_org = struct::get("exfil_escape_door_obj_org", "targetname");
        objectives::goto("obj_goto", exfil_escape_door_obj_org.origin, undefined, undefined, 0);
        level flag::wait_till_any(["player_opened_exfil_tunnel_door", "scene_kgb_exfil_door_kick_played"]);
        objectives::complete("obj_goto");
        level flag::wait_till("escape_enable_car_interact_waypoint");
        objectives::goto("obj_goto", level.var_ea185900, undefined, undefined, 0);
        level flag::set("escape_car_interact_tag_obj_created");
        level flag::wait_till("player_started_car_escape");
        objectives::complete("obj_goto", level.var_ea185900);
        level flag::wait_till("aslt_exfil_escape_complete");
        objectives::complete("obj_escape");
        return;
    default:
        break;
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 3, eflags: 0x0
// Checksum 0x49e46e7f, Offset: 0x31f0
// Size: 0x180
function function_7d2d1987(distsquared = 640000, fov = cos(45), var_e6208e62 = 0) {
    self notify("6e792802e6394839");
    self endon("6e792802e6394839");
    self endon(#"death");
    level.player endon(#"death");
    if (is_false(var_e6208e62)) {
        self waittill(#"reached_path_end");
    }
    while (true) {
        wait 0.1;
        if (distancesquared(level.player.origin, self.origin) < distsquared) {
            continue;
        }
        if (!util::within_fov(level.player geteye(), level.player getplayerangles(), self geteye(), fov)) {
            self delete();
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x5c5e12ba, Offset: 0x3378
// Size: 0x8c
function function_bf9d2fd0(node) {
    self notify("348ee3feed9f89a4");
    self endon("348ee3feed9f89a4");
    self endon(#"death");
    if (is_true(self.var_e1176e19)) {
        return;
    }
    self.var_e1176e19 = 1;
    self.delete_on_path_end = 1;
    self spawner::go_to_node(node);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x29833e48, Offset: 0x3410
// Size: 0x22c
function function_5770c74(var_d5783b32 = "kgb") {
    if (var_d5783b32 == "civ") {
        self setmodel("c_t9_usa_hero_adler_civ_amsterdam_body");
        if (self isattached("c_t9_cp_usa_hero_adler_head1_kgb_officer")) {
            self detach("c_t9_cp_usa_hero_adler_head1_kgb_officer");
        }
        if (!self isattached("c_t9_cp_usa_hero_adler_head1")) {
            self attach("c_t9_cp_usa_hero_adler_head1");
        }
    }
    if (var_d5783b32 == "kgb") {
        self setmodel("c_t9_rus_kgb_hq_officer_body1");
        if (self isattached("c_t9_cp_usa_hero_adler_head1")) {
            self detach("c_t9_cp_usa_hero_adler_head1");
        }
        if (!self isattached("c_t9_cp_usa_hero_adler_head1_kgb_officer")) {
            self attach("c_t9_cp_usa_hero_adler_head1_kgb_officer");
        }
    }
    if (var_d5783b32 == "assault") {
        self setmodel("c_t9_cp_usa_hero_adler_kgb_exfil_body");
        if (self isattached("c_t9_cp_usa_hero_adler_head1_kgb_officer")) {
            self detach("c_t9_cp_usa_hero_adler_head1_kgb_officer");
        }
        if (!self isattached("c_t9_cp_usa_hero_adler_head1")) {
            self attach("c_t9_cp_usa_hero_adler_head1");
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xa2baad3c, Offset: 0x3648
// Size: 0xe0
function function_363ebd5a(tname) {
    lights = getentarray(tname, "targetname");
    if (!isdefined(lights)) {
        return;
    }
    foreach (light in lights) {
        light.var_2151803f = light getlightintensity();
        light setlightintensity(0);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0x8b10cdc, Offset: 0x3730
// Size: 0x158
function function_2fa39d6d(tname, var_50cc0d4f) {
    lights = getentarray(tname, "targetname");
    if (!isdefined(lights)) {
        return;
    }
    foreach (light in lights) {
        if (isdefined(light.var_2151803f)) {
            if (isdefined(light.script_noteworthy) && light.script_noteworthy == "flicker_on") {
                if (is_true(var_50cc0d4f)) {
                    light setlightintensity(light.var_2151803f);
                } else {
                    light thread function_7c64b9aa();
                }
                continue;
            }
            light setlightintensity(light.var_2151803f);
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xf59c4a5d, Offset: 0x3890
// Size: 0x25c
function function_7c64b9aa() {
    var_371b4a6d = self.var_2151803f * 0.1;
    self setlightintensity(var_371b4a6d);
    wait randomfloatrange(0.1, 0.3);
    self setlightintensity(0);
    wait randomfloatrange(0.1, 0.3);
    var_371b4a6d = self.var_2151803f * 0.3;
    self setlightintensity(var_371b4a6d);
    wait randomfloatrange(0.1, 0.3);
    self setlightintensity(self.var_2151803f * 0.1);
    wait randomfloatrange(0.1, 0.3);
    var_371b4a6d = self.var_2151803f * 0.6;
    self setlightintensity(var_371b4a6d);
    wait randomfloatrange(0.1, 0.3);
    self setlightintensity(self.var_2151803f * 0.3);
    wait randomfloatrange(0.1, 0.3);
    var_371b4a6d = self.var_2151803f * 0.8;
    self setlightintensity(var_371b4a6d);
    wait randomfloatrange(0.1, 0.3);
    self setlightintensity(self.var_2151803f * 0.6);
    wait randomfloatrange(0.1, 0.3);
    var_371b4a6d = self.var_2151803f;
    self setlightintensity(var_371b4a6d);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xf5d032ee, Offset: 0x3af8
// Size: 0xf0
function function_7264e049(*params) {
    self endon(#"death");
    self endon(#"hash_67c64045f0256f7b");
    while (true) {
        startpos = self gettagorigin("tag_flash");
        angles = self gettagangles("tag_flash");
        forward = anglestoforward(angles);
        endpos = startpos + vectorscale(forward, 1000);
        magicbullet(self.weapon, startpos, endpos, self);
        wait 0.09;
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x38f45331, Offset: 0x3bf0
// Size: 0x648
function function_27006ab9() {
    lockers = getentarray("kgb_locker_model", "script_noteworthy");
    var_a19acf63 = getent("camera_locker_vol", "targetname");
    foreach (item in lockers) {
        if (item istouching(var_a19acf63)) {
            continue;
        }
        item delete();
    }
    var_299f6389 = getentarray("trig_locked_room", "targetname");
    foreach (trig in var_299f6389) {
        trig delete();
    }
    mental_map_poi = getentarray("mental_map_poi", "targetname");
    foreach (poi in mental_map_poi) {
        poi delete();
    }
    props = getentarray("ins_anim_prop", "script_noteworthy");
    foreach (thing in props) {
        thing delete();
    }
    ai_spawners = getentarray("civs", "targetname");
    foreach (thing in ai_spawners) {
        thing delete();
    }
    ai_spawners = getentarray("kgb_hq_guard", "targetname");
    foreach (thing in ai_spawners) {
        thing delete();
    }
    sounds = getentarray("snd tmp_sfx_kgb_computer_camera_idle_lp", "targetname");
    foreach (thing in sounds) {
        thing delete();
    }
    var_c58553f4 = getentarray("bodybag_scenes_collision", "targetname");
    foreach (thing in var_c58553f4) {
        thing delete();
    }
    var_7247a717 = getentarray("vol_body_hide", "targetname");
    foreach (vol in var_7247a717) {
        vol delete();
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xa88d4b57, Offset: 0x4240
// Size: 0x2a4
function function_46606f13() {
    level flag::wait_till("level_is_go");
    counter = 0;
    var_1d96ee7e = doors::get_doors(undefined, undefined, 0);
    for (i = 0; i < var_1d96ee7e.size; i++) {
        if (isdefined(var_1d96ee7e[i]) && isdefined(var_1d96ee7e[i].script_noteworthy) && issubstr(var_1d96ee7e[i].script_noteworthy, "%")) {
            placement = getsubstr(var_1d96ee7e[i].script_noteworthy, 0, 1);
            var_66f1f59b = getsubstr(var_1d96ee7e[i].script_noteworthy, 2);
            var_52a1179e = var_1d96ee7e[i] doors::function_73f09315();
            if (var_66f1f59b == "surveillance" || var_66f1f59b == "armory" || var_66f1f59b == "interrogation") {
                var_52a1179e attach("p9_rus_door_placard_plastic_01", "door_plate_" + placement);
            } else {
                var_52a1179e attach("p9_rus_door_placard_gold_01", "door_plate_" + placement);
            }
            counter++;
            waitframe(1);
            if (var_66f1f59b == "janitor") {
                var_52a1179e attach("p9_rus_door_placard_text_01_" + "lavatory", "door_plate_" + placement);
            } else {
                var_52a1179e attach("p9_rus_door_placard_text_01_" + var_66f1f59b, "door_plate_" + placement);
            }
            waitframe(1);
            var_52a1179e function_aa042bc7(var_66f1f59b, "door_plate_" + placement, i);
        }
        waitframe(1);
    }
    level flag::set("door_placards_done");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x101a0cd0, Offset: 0x44f0
// Size: 0x5c
function function_ada6d016() {
    videostart("cp_rus_kgb_screen_ambient_grid", 1);
    level flag::wait_till("flag_cleanup_kgb_hq");
    videostop("cp_rus_kgb_screen_ambient_grid");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xde87e4c7, Offset: 0x4558
// Size: 0x100
function function_249a18d5(*params) {
    self endon(#"death");
    level endon(#"game_ended");
    while (true) {
        waitresult = self waittill(#"damage");
        if (isdefined(waitresult.attacker) && isplayer(waitresult.attacker)) {
            if (waitresult.amount > 0 && damagefeedback::dodamagefeedback(waitresult.weapon, waitresult.attacker)) {
                waitresult.attacker damagefeedback::update(waitresult.mod, waitresult.inflictor, undefined, waitresult.weapon, self);
            }
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xdf151d58, Offset: 0x4660
// Size: 0x5c
function function_8191bcdc(var_50cc0d4f = 0) {
    if (var_50cc0d4f) {
        level flag::wait_till("level_is_go");
    }
    doors::close_all();
    doors::function_f35467ac();
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xd78d9ccd, Offset: 0x46c8
// Size: 0x6c
function function_277bceaa(var_56da0848 = 0) {
    if (var_56da0848) {
        level flag::set("flag_allow_translate");
    }
    level thread function_c2c71c9f();
    level thread function_46606f13();
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x29c49342, Offset: 0x4740
// Size: 0x1a2
function function_c2c71c9f() {
    if (!level flag::get("flag_allow_translate")) {
        return;
    }
    level flag::wait_till("level_is_go");
    level.var_31c52203 = getentarray("translate_trig", "targetname");
    for (i = 0; i < level.var_31c52203.size; i++) {
        string = "poi_trig" + string(i);
        data = function_50de5cd0(level.var_31c52203[i]);
        if (!isdefined(data)) {
            data = [];
        } else if (!isarray(data)) {
            data = array(data);
        }
        namespace_93648050::function_eb5d0a02(hash(string), level.var_31c52203[i], data[0], 256, data.size < 1 ? undefined : data[1], data.size < 2 ? undefined : data[2]);
        waitframe(1);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x8e8c7223, Offset: 0x48f0
// Size: 0x412
function function_50de5cd0(poi) {
    var_a706170a = #"hash_49fdce58155f91e3";
    switch (poi.script_noteworthy) {
    case #"hash_18d800872b06dc78":
        return [#"hash_bf89fcd37dbdd7e", var_a706170a];
    case #"hash_69474b7b1e2c98d1":
        return [#"hash_5ec53fb034c31e3", var_a706170a, 2];
    case #"hash_687373550dc300ce":
        return [#"hash_3029a65b4a3023cc", var_a706170a, 2];
    case #"hash_589ccf1c22b789d9":
        return [#"hash_1a19a8fc42fd1e5b", var_a706170a, 2];
    case #"hash_37631412a3176b69":
        return [#"hash_662c750fc4498163", var_a706170a, 2];
    case #"hash_33d0a3692293faf5":
        return [#"hash_14a60afd57606417", var_a706170a, 2];
    case #"hash_6f8388bf8f055655":
        return [#"hash_6a7f700f0af3ee03", var_a706170a, 2];
    case #"checkpoint":
        return function_9ce18e97(#"hash_4fbba325ec087684");
    case #"checkin":
        return function_9ce18e97(#"hash_2b60ed399e083c9d");
    case #"hash_17390f0a263e69c3":
        return function_9ce18e97(#"hash_6000a9624bf59e7a");
    case #"prison":
        return function_9ce18e97(#"hash_359608e302c57fbd");
    case #"hash_3843b248a5c4cbd5":
        return [#"hash_3fc4aa3e5250d4d0", #"hash_4f172ac25c442ef1", 2];
    case #"hash_7cee291436aab70b":
        return function_9ce18e97(#"hash_70ab4a44d4c451f6");
    case #"hash_2f1f3dc2c2b06f6a":
        return function_9ce18e97(#"hash_7b2a4429e4988509");
    case #"hash_2f1f3cc2c2b06db7":
        return function_9ce18e97(#"hash_7b2a4129e4987ff0");
    }
    return #"hash_bf89fcd37dbdd7e";
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 4, eflags: 0x0
// Checksum 0x5fd4c2e2, Offset: 0x4d10
// Size: 0x5bc
function function_aa042bc7(var_66f1f59b, tag, count, struct) {
    if (!level flag::get("flag_allow_translate")) {
        return;
    }
    door = self;
    var_4843b044 = [#"hash_1052bba5d3331092", undefined, 3];
    var_a706170a = var_4843b044[0];
    switch (var_66f1f59b) {
    case #"hash_4ca6bf66d3ba35":
        var_4843b044 = function_9ce18e97(#"hash_3cd9dc4c98f6c1b7");
        break;
    case #"hash_42499d06b5b2c6f":
        var_4843b044 = function_9ce18e97(#"hash_4a19f90f2c521912");
        break;
    case #"armory":
        var_4843b044 = function_9ce18e97(#"hash_80aa6423a7c88a1");
        break;
    case #"hash_5e8c99d8893a0b21":
        var_4843b044 = [#"hash_37ff45ed9912fbb9", var_a706170a, 2];
        break;
    case #"interrogation":
        var_4843b044 = function_9ce18e97(#"hash_87f830cf1e9423b");
        break;
    case #"hash_1f5964a2ce98072e":
        var_4843b044 = function_9ce18e97(#"hash_253552a0d5afc38c");
        break;
    case #"hash_36cbe57b5bdfd2fd":
        var_4843b044 = function_9ce18e97(#"hash_f5589b0a07b3af3");
        break;
    case #"hash_6d1c730af8cdb957":
        var_4843b044 = function_9ce18e97(#"hash_544de4095edc91a5");
        break;
    case #"hash_4c9bb3622c7037":
        var_4843b044 = function_9ce18e97(#"hash_13ac61f9b529bc8e");
        break;
    case #"surveillance":
        var_4843b044 = function_9ce18e97(#"hash_5cfbfb53294091e7");
        break;
    case #"hash_1ca67e40febfcfba":
        var_4843b044 = function_9ce18e97(#"hash_70ab4a44d4c451f6");
        break;
    case #"conference_room":
        var_4843b044 = function_9ce18e97(#"hash_9cd6829ef3f06bd");
        break;
    case #"hash_7384a5c9db2004f6":
        var_4843b044 = [#"hash_b6c6b6537e726cb", var_a706170a, 2];
        break;
    case #"lavatory":
        var_4843b044 = function_9ce18e97(#"hash_1049106f475a8ac1");
        break;
    case #"hash_7a5dd5c637b247f7":
        var_4843b044 = function_9ce18e97(#"hash_1052bba5d3331092");
        break;
    case #"hash_5c01bc99ac3b0c85":
        var_4843b044 = [#"hash_34ef3274188fa633", var_a706170a, 2];
        break;
    case #"hash_3b7a96dbdf48c1a9":
        var_4843b044 = function_9ce18e97(#"hash_453644f696c82723");
        break;
    case #"janitor":
        var_4843b044 = function_9ce18e97(#"hash_1c1d5d19a9da134c");
        break;
    }
    if (!isdefined(struct)) {
        struct = spawnstruct();
        struct.origin = door gettagorigin(tag);
        angles = door gettagangles(tag);
        struct.angles = (angles[0], angles[1] - 90, 0);
    }
    namespace_93648050::function_23e7a30a(hash(var_66f1f59b + string(count)), struct.origin, struct.angles, 40, 40, var_4843b044[0], 128, door, var_4843b044[1], var_4843b044[2]);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x4
// Checksum 0xb1d2fdbe, Offset: 0x52d8
// Size: 0x34
function private function_9ce18e97(str) {
    return [str, undefined, 3];
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x3208c0f4, Offset: 0x5318
// Size: 0x194
function function_3f2f4ef1() {
    level.player endon(#"death");
    self endon(#"death");
    if (!isdefined(self.stealth)) {
        return;
    }
    blend_time = 1;
    wait_time = 1;
    var_e608a1 = 65536;
    level flag::wait_till("flag_start_finding_ways");
    wait randomfloatrange(3.5, 7);
    while (isalive(self)) {
        if (distance2dsquared(self.origin, level.player.origin) < var_e608a1) {
            self ai::look_at(level.player, 0, undefined, 5, 0, undefined, 1);
            wait 5;
            while (distance2dsquared(self.origin, level.player.origin) < var_e608a1) {
                wait 1;
            }
            self ai::function_603b970a();
            wait wait_time;
        }
        wait 1;
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x4246f39a, Offset: 0x54b8
// Size: 0x114
function gasmask_on(var_f6c2c3e8 = 0) {
    self endon(#"death");
    if (is_true(self.gasmask_on)) {
        return;
    }
    if (is_true(var_f6c2c3e8)) {
        self lui::screen_fade_out(0.3, "black");
    }
    self function_123fe6d1();
    self.gasmask_on = 1;
    self clientfield::set_to_player("gasmask_clf", 1);
    if (is_true(var_f6c2c3e8)) {
        wait 0.1;
        self thread lui::screen_fade_in(0.3);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x258c4e64, Offset: 0x55d8
// Size: 0x4c
function function_eeb18216() {
    if (is_false(self.gasmask_on)) {
        return;
    }
    self.gasmask_on = undefined;
    self clientfield::set_to_player("gasmask_clf", 0);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xdbf1cd37, Offset: 0x5630
// Size: 0x4c
function function_622fd34b() {
    if (is_true(self.var_622fd34b)) {
        return;
    }
    self.var_622fd34b = 1;
    self clientfield::set_to_player("exfilmask_clf", 1);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xd9ffa640, Offset: 0x5688
// Size: 0x4c
function function_123fe6d1() {
    if (is_false(self.var_622fd34b)) {
        return;
    }
    self.var_622fd34b = undefined;
    self clientfield::set_to_player("exfilmask_clf", 0);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x39285bdc, Offset: 0x56e0
// Size: 0x8c
function function_6f6eae4(*params) {
    if (self isattached("c_t9_cp_rus_kgb_hq_vip_belikov_head_gasmask")) {
        self detach("c_t9_cp_rus_kgb_hq_vip_belikov_head_gasmask");
    }
    if (!self isattached("c_t9_cp_rus_kgb_hq_vip_belikov_head_injured")) {
        self attach("c_t9_cp_rus_kgb_hq_vip_belikov_head_injured");
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xb7eaa661, Offset: 0x5778
// Size: 0x8c
function function_89dd500(*params) {
    if (self isattached("c_t9_cp_rus_kgb_hq_vip_belikov_head_injured")) {
        self detach("c_t9_cp_rus_kgb_hq_vip_belikov_head_injured");
    }
    if (!self isattached("c_t9_cp_rus_kgb_hq_vip_belikov_head_gasmask")) {
        self attach("c_t9_cp_rus_kgb_hq_vip_belikov_head_gasmask");
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xe309734c, Offset: 0x5810
// Size: 0x1ac
function function_23f254a8() {
    level endon(#"flag_keycard_acquired");
    level.player endon(#"death");
    level flag::wait_till("level_is_go");
    level.var_74226976 = 0;
    level.var_7247a717 = getentarray("vol_body_hide", "targetname");
    for (i = 0; i < level.var_7247a717.size; i++) {
        level.var_7247a717[i] thread function_8017ace8(i);
    }
    while (!level flag::get("flag_player_swap")) {
        corpses = getcorpsearray();
        if (isdefined(corpses) && corpses.size && !level.player namespace_5f6e61d9::function_cad84e26()) {
            for (i = 0; i < corpses.size; i++) {
                if (!isdefined(corpses[i].var_da8f250b)) {
                    corpses[i] thread function_9faff133();
                }
                waitframe(1);
            }
            corpses = [];
        }
        wait 0.5;
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x7426adec, Offset: 0x59c8
// Size: 0x33e
function function_9faff133() {
    level.player endon(#"death");
    level endon(#"flag_player_swap");
    if (!isdefined(self)) {
        return;
    }
    level.var_74226976 += 1;
    count = 0;
    var_115f509b = hash("dead_body" + string(count));
    for (result = objectives::function_285e460(var_115f509b); isdefined(result); result = objectives::function_285e460(var_115f509b)) {
        count += 1;
        var_115f509b = hash("dead_body" + string(count));
    }
    self.var_da8f250b = 1;
    self.var_da8f250b = self function_127e0d08();
    if (!self function_127e0d08()) {
        objectives::function_4eb5c04a(var_115f509b, self.origin, undefined, 0);
        objectives_ui::function_49dec5b(var_115f509b, undefined, #"hash_5388b954d3f585fd");
        while (!self function_127e0d08() && !level flag::get("flag_keycard_acquired")) {
            if (level.player namespace_5f6e61d9::function_cad84e26() || function_749b1301(self)) {
                objectives::hide(var_115f509b);
                while (level.player namespace_5f6e61d9::function_cad84e26() || function_749b1301(self)) {
                    waitframe(1);
                }
                objectives::show(var_115f509b);
                if (self function_127e0d08()) {
                    break;
                }
            }
            if (self function_127e0d08()) {
                break;
            } else if (isdefined(self getcorpsephysicsorigin())) {
                objectives::update_position(var_115f509b, self getcorpsephysicsorigin() + (0, 0, 4));
            }
            waitframe(1);
        }
        waitframe(1);
        objectives::remove(var_115f509b);
    }
    if (isdefined(self)) {
        self.var_da8f250b = undefined;
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x9cc41339, Offset: 0x5d10
// Size: 0x138
function function_749b1301(body) {
    if (!isdefined(body)) {
        return true;
    }
    level.player endon(#"death");
    var_b1231a26 = body getcorpsephysicsorigin();
    if (!isdefined(body)) {
        return true;
    }
    var_1ba06d7d = getdvarint(#"hash_4b04afdbb8712861", 2048);
    z_max = 128;
    var_1f7b35d3 = z_max > abs(level.player.origin[2] - var_b1231a26[2]);
    dist_to_check = distance2dsquared(var_b1231a26, level.player.origin);
    var_b31cc77f = var_1ba06d7d * var_1ba06d7d;
    if (var_b31cc77f < dist_to_check) {
        return true;
    }
    return false;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xe78f7a58, Offset: 0x5e50
// Size: 0x34c
function function_8017ace8(count) {
    level.player endon(#"death");
    level endon(#"flag_player_swap");
    vol = self;
    if (isdefined(vol.target)) {
        scene = "bodystash_locker_a_locker";
        struct = struct::get(vol.target, "targetname");
        if (isdefined(struct.script_noteworthy) && issubstr(struct.script_noteworthy, "cabinet")) {
            scene = "bodystash_cabinet_a_cabinet";
        }
        vol.locker = getent(struct.target, "targetname");
        vol.locker useanimtree("generic");
        vol.locker animation::first_frame(scene, struct.origin, struct.angles);
    }
    while (!level.player function_21a15560()) {
        wait 0.1;
    }
    obj_string = hash("dead_body_closet" + string(count));
    objectives::function_4eb5c04a(obj_string, self.origin + (0, 0, 16), undefined, 0);
    objectives_ui::function_49dec5b(obj_string, undefined, #"hash_558176fc056a712d");
    objectives::hide(obj_string);
    vol.door = function_3203f263();
    vol.occupied = 0;
    if (isdefined(vol.target)) {
        vol thread function_90df6efd();
    }
    while (!level flag::get("flag_player_swap") && !self.occupied) {
        waitframe(1);
        if (!self.occupied && level.player function_21a15560() && function_9dc3052d(self)) {
            objectives::show(obj_string);
            level.player function_152a4ed7(self);
            objectives::hide(obj_string);
        }
        waitframe(1);
    }
    objectives::hide(obj_string);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xb680ed36, Offset: 0x61a8
// Size: 0x92
function function_152a4ed7(vol) {
    level.player endon(#"death");
    level.player endon(#"hash_4dff86580406a1af");
    level endon(#"hash_7158dbd72a2043b0");
    while (level.player function_21a15560() && function_9dc3052d(vol)) {
        waitframe(1);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xb678b7ec, Offset: 0x6248
// Size: 0x5e
function function_21a15560() {
    level.player endon(#"death");
    return level.player namespace_5f6e61d9::function_cad84e26() && !level.player flag::get("flag_player_stashing");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x9c156b32, Offset: 0x62b0
// Size: 0xec
function function_90df6efd() {
    locker = struct::get(self.target, "targetname");
    struct = struct::get(locker.target, "targetname");
    struct.vol = self;
    struct util::create_cursor_hint(undefined, (0, 0, 0), #"hash_2ad0d508321e892a", 40, undefined, &function_4b6604fa, undefined, 128, undefined, 0, 1, 1, &function_fd36eef2);
    struct prompts::function_3171730f(#"use", #"body_carry");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x1970943d, Offset: 0x63a8
// Size: 0x44
function function_4b6604fa(*prompt) {
    level.player endon(#"death");
    level.player function_4afadee4(self);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xea0803, Offset: 0x63f8
// Size: 0x1e4
function function_4afadee4(prompt) {
    level.player endon(#"death");
    vol = prompt.vol;
    scene = "scene_kgb_stash_body_locker";
    struct = struct::get(vol.target, "targetname");
    if (isdefined(struct.script_noteworthy)) {
        scene = struct.script_noteworthy;
    }
    vol.locker.targetname = "stash_locker";
    level flag::set("flag_player_stashing");
    level.player namespace_5f6e61d9::function_d0cb2574(scene, struct);
    level.player.var_9ebbaa46.var_7e5a6cf9 = 1;
    level.player notify(#"hash_4dff86580406a1af");
    vol.occupied = 1;
    level.player waittill(#"hash_51c6ae96a7e40432");
    level.player.var_9ebbaa46.var_7e5a6cf9 = undefined;
    level.player namespace_5f6e61d9::function_b5b485f1();
    vol.locker.targetname = "used_locker";
    level notify(#"hash_7158dbd72a2043b0");
    level thread function_2d0e02f7();
    wait 0.5;
    level flag::clear("flag_player_stashing");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x2620f8e6, Offset: 0x65e8
// Size: 0x5a
function function_fd36eef2(*prompt) {
    level.player endon(#"death");
    return level.player function_21a15560() && !self.vol.occupied;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x64d04fb8, Offset: 0x6650
// Size: 0x1a6
function function_9dc3052d(vol) {
    level.player endon(#"death");
    var_c1fbe4bf = getdvarint(#"hash_a794df2c802865c", 650);
    z_max = 128;
    var_1f7b35d3 = z_max > abs(level.player.origin[2] - vol.origin[2]);
    if (var_c1fbe4bf * var_c1fbe4bf > distance2dsquared(vol.origin, level.player.origin) && var_1f7b35d3) {
        return true;
    }
    var_5d7caad2 = [];
    for (i = 0; i < level.var_7247a717.size; i++) {
        if (!level.var_7247a717[i].occupied) {
            var_5d7caad2[var_5d7caad2.size] = level.var_7247a717[i];
        }
    }
    areas = array::quick_sort(var_5d7caad2, &function_e20ca101);
    if (areas[0] == vol) {
        return true;
    }
    return false;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0x36f17065, Offset: 0x6800
// Size: 0xa4
function function_e20ca101(left, right) {
    level.player endon(#"death");
    var_a7e7fc15 = distance2dsquared(level.player.origin, left.origin);
    var_a0e7d4aa = distance2dsquared(level.player.origin, right.origin);
    return var_a7e7fc15 < var_a0e7d4aa;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x6b764f5, Offset: 0x68b0
// Size: 0x110
function function_127e0d08() {
    if (!isdefined(self)) {
        return true;
    }
    for (i = 0; i < level.var_7247a717.size; i++) {
        if (isdefined(self) && istouching(self getcorpsephysicsorigin(), level.var_7247a717[i]) && !level.var_7247a717[i] function_cb587437() && !isdefined(level.var_7247a717[i].target)) {
            return true;
        }
    }
    if (!ispointonnavmesh(self getcorpsephysicsorigin())) {
        level notify(#"hash_2e50440663441b0a");
        return true;
    }
    return false;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x43cd741a, Offset: 0x69c8
// Size: 0xc8
function function_3203f263() {
    vol = self;
    doors = doors::get_doors();
    foreach (door in doors) {
        if (door.c_door.m_e_door istouching(vol)) {
            return door;
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xd4cc94c8, Offset: 0x6a98
// Size: 0x3a
function function_cb587437() {
    vol = self;
    if (!isdefined(vol.door)) {
        return 0;
    }
    return vol.door doors::is_open();
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xfd4803eb, Offset: 0x6ae0
// Size: 0xb0
function function_6921f511() {
    player = self;
    for (i = 0; i < level.var_7247a717.size; i++) {
        if (player istouching(level.var_7247a717[i]) && isdefined(level.var_7247a717[i].target) && !level.var_7247a717[i].occupied) {
            return level.var_7247a717[i];
        }
    }
    return undefined;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x7f578d6, Offset: 0x6b98
// Size: 0xe2
function function_131346ae() {
    player = self;
    for (i = 0; i < level.var_7247a717.size; i++) {
        if (player istouching(level.var_7247a717[i]) && !level.var_7247a717[i].occupied) {
            if (isdefined(level.var_7247a717[i].target)) {
                return struct::get(level.var_7247a717[i].target, "targetname");
            }
            return level.var_7247a717[i];
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xf0c7dfdf, Offset: 0x6c88
// Size: 0x32
function function_b1a085b4() {
    player = self;
    while (isdefined(player function_6921f511())) {
        waitframe(1);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xe87ce9c2, Offset: 0x6cc8
// Size: 0xaa
function function_c4de67de() {
    a_enemies = getaiarray("axis");
    foreach (ai in a_enemies) {
        if (isdefined(ai.propername)) {
            ai.propername = undefined;
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 3, eflags: 0x0
// Checksum 0x4dd6b806, Offset: 0x6d80
// Size: 0xf0
function function_378ac0da(targetname, n_rate = 1, str_anim = undefined) {
    var_cf034495 = getentarray(targetname, "targetname");
    if (isdefined(var_cf034495)) {
        foreach (e_model in var_cf034495) {
            if (isdefined(str_anim)) {
                e_model thread animation::play_siege(str_anim, n_rate);
            }
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xc956d41c, Offset: 0x6e78
// Size: 0x128
function placed_suspended_weapons() {
    placed_suspended_weapons_linker_org = struct::get("placed_suspended_weapons_linker_org", "targetname");
    var_e777609 = util::spawn_model("tag_origin", placed_suspended_weapons_linker_org.origin, placed_suspended_weapons_linker_org.angles);
    var_e777609 hide();
    placed_suspended_weapons = getentarray("placed_suspended_weapons", "targetname");
    foreach (weapon in placed_suspended_weapons) {
        weapon linkto(var_e777609);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xcce24d9c, Offset: 0x6fa8
// Size: 0x54
function function_f6eb250d(state = "cinematicmotion_kgb") {
    level.player endon(#"death");
    level.player setcinematicmotionoverride(state);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xcf2baa20, Offset: 0x7008
// Size: 0xc8
function function_47775bba() {
    level thread function_a8ed7e73();
    level.var_cba78c0a = struct::get_array("kgb_collectible", "targetname");
    foreach (item in level.var_cba78c0a) {
        item thread function_1d9e64af();
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xa72e2d29, Offset: 0x70d8
// Size: 0x1a4
function function_1d9e64af() {
    struct = self;
    model = struct::get(struct.target, "targetname");
    if (collectibles::function_ab921f3d(6)) {
        return;
    }
    spawned_model = spawn("script_model", model.origin);
    spawned_model setmodel("p9_sr_evidence_op_red_circus_calculator_watch_02");
    spawned_model.angles = model.angles;
    spawned_model util::create_cursor_hint("tag_origin", (0, 0, 0), #"hash_681addf148e5303", 48, undefined, &function_f7a8f495, undefined, 128, undefined, 0, 1, 1, &function_184b4f5a);
    spawned_model collectibles::function_d06c5a39();
    level flag::wait_till_any(["flag_collectible_gathered", "flag_player_swap", "flag_restore_remove"]);
    spawned_model util::remove_cursor_hint();
    spawned_model delete();
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x4
// Checksum 0x9190ff08, Offset: 0x7288
// Size: 0x88
function private function_a8ed7e73() {
    self notify("2aba2978182be3f7");
    self endon("2aba2978182be3f7");
    while (true) {
        level waittill(#"save_restore");
        if (collectibles::function_ab921f3d(2)) {
            level notify(#"hash_15f38e5fcbed6c0b");
            level flag::set("flag_restore_remove");
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x5a4e4efd, Offset: 0x7318
// Size: 0x7c
function function_f7a8f495(*prompt) {
    level.player endon(#"death");
    level flag::set("flag_collectible_gathered");
    level.player playgestureviewmodel("ges_kgb_intel_inspect_calculator_watch");
    collectibles::function_6cd091d2(6);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xeebe8d51, Offset: 0x73a0
// Size: 0x24
function function_184b4f5a(*prompt) {
    return !collectibles::function_ab921f3d(6);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x27c45f7, Offset: 0x73d0
// Size: 0x84
function function_7ad4f5cb() {
    level thread arcade_work_order();
    level flag::wait_till("all_players_connected");
    a_s_interacts = struct::get_array(#"hash_3dd86258529972ca");
    array::thread_all(a_s_interacts, &function_f78628e6);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x4
// Checksum 0x8344de6d, Offset: 0x7460
// Size: 0x234
function private function_f78628e6() {
    level.player endon(#"death");
    level endon(#"hash_1b8a2b74e81cfe2a");
    e_interact = util::spawn_model(#"tag_origin", self.origin, self.angles);
    while (true) {
        var_307a43ae = self.script_noteworthy;
        var_ae865aeb = getscriptbundle(var_307a43ae);
        var_3b88de0c = #"hash_6ffbe136c9ac4c4e";
        if (isdefined(var_ae865aeb) && isdefined(var_ae865aeb.var_303ce84a) && var_ae865aeb.var_303ce84a != "") {
            var_3b88de0c = var_ae865aeb.var_303ce84a;
        }
        e_interact util::create_cursor_hint("tag_origin", (0, 0, 0), var_3b88de0c, 40, undefined, undefined, undefined, 150);
        e_interact thread arcade_machine::function_bafc791c();
        e_interact waittill(#"trigger");
        e_interact util::delay(0.2, undefined, &util::remove_cursor_hint);
        level thread namespace_5f58ebe5::function_c9965ab9(1);
        wait 0.5;
        self arcade_machine::play();
        self arcade_machine::function_71510186();
        self arcade_machine::exit();
        level thread namespace_5f58ebe5::function_c9965ab9(0);
    }
    e_interact util::remove_cursor_hint();
    e_interact delete();
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x7f34e3e3, Offset: 0x76a0
// Size: 0x74
function arcade_work_order() {
    paper = getent("arcade_work_order", "targetname");
    paper util::create_cursor_hint(undefined, (0, 0, 0), undefined, 40, undefined, &function_18b8373e, undefined, 150, undefined, undefined, undefined, 0, &function_2a64654d);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x8ed5aa5e, Offset: 0x7720
// Size: 0x204
function function_18b8373e(*prompt) {
    level.player endon(#"death");
    function_f6eb250d("cinematicmotion_static");
    level.player val::set(#"hash_2463ab97c65a943c", "freezecontrols", 1);
    level flag::set("work_order_open");
    level.player note_display::function_97c69304(#"hash_636ab7d9cde83617");
    level.player notifyonplayercommandremove("show_itin", "+actionslot 4");
    level.player notifyonplayercommandremove("show_itin", "+map");
    namespace_353d803e::function_28897188();
    level.player namespace_61e6d095::function_b0bad5ff(undefined, undefined, 1);
    level.player notifyonplayercommand("show_itin", "+actionslot 4");
    level.player notifyonplayercommand("show_itin", "+map");
    level.player val::reset(#"hash_2463ab97c65a943c", "freezecontrols");
    function_f6eb250d();
    level flag::clear("work_order_open");
    namespace_353d803e::music("4.3_tension_stingers");
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x3ce559e8, Offset: 0x7930
// Size: 0x58
function function_2a64654d(*prompt) {
    if (level.player flag::get("encumbered") || level flag::get("work_order_open")) {
        return false;
    }
    return true;
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 2, eflags: 0x0
// Checksum 0x62c399e6, Offset: 0x7990
// Size: 0x3f8
function function_e2e72d4(b_open = 1, b_delete = 0) {
    clip = getent("kgb_briefing_clip", "targetname");
    var_15a8ac74 = getentarray("kgb_briefing_open", "targetname");
    var_e663923e = getentarray("kgb_briefing_closed", "targetname");
    if (b_delete) {
        if (isdefined(clip)) {
            clip delete();
        }
        foreach (prop in var_15a8ac74) {
            prop delete();
        }
        foreach (prop in var_e663923e) {
            prop delete();
        }
    }
    if (b_delete) {
        return;
    }
    if (b_open) {
        clip notsolid();
        foreach (prop in var_15a8ac74) {
            prop show();
        }
        foreach (prop in var_e663923e) {
            prop hide();
        }
        return;
    }
    clip solid();
    foreach (prop in var_15a8ac74) {
        prop hide();
    }
    foreach (prop in var_e663923e) {
        prop show();
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x49027fdd, Offset: 0x7d90
// Size: 0x44
function function_c1a88e8b() {
    if (isdefined(level.player)) {
        level.player stats::function_dad108fa(#"hash_10c5fdaff9918dbb", 1);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x7027fe7b, Offset: 0x7de0
// Size: 0x8c
function function_2d0e02f7() {
    if (!isdefined(level.var_ad31341f)) {
        level.var_ad31341f = 0;
    }
    level.var_ad31341f += 1;
    if (level.var_ad31341f >= 5) {
        if (isdefined(level.player)) {
            level.player stats::function_dad108fa(#"hash_207bfcb27d3d2ac5", 1);
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xf222a653, Offset: 0x7e78
// Size: 0x44
function function_e90c279f() {
    if (isdefined(level.player)) {
        level.player stats::function_dad108fa(#"hash_e4a452d4c328555", 1);
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xa3b2bd7d, Offset: 0x7ec8
// Size: 0x54
function function_7cc03716() {
    if (isdefined(level.player)) {
        if (!isdefined(level.var_ced714b3)) {
            level.player stats::function_dad108fa(#"hash_516959939015770b", 1);
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xadd75391, Offset: 0x7f28
// Size: 0xec
function function_efb66186(*s_params) {
    if (is_true(self.in_melee_death)) {
        if (!self flag::get("nonlethal_death")) {
            if (!isdefined(level.var_ced714b3)) {
                level.var_ced714b3 = 0;
            }
            level.var_ced714b3 += 1;
            if (isdefined(self.var_1c8901bf)) {
                if (!isdefined(level.var_594e55d7)) {
                    level.var_594e55d7 = [];
                }
                if (!isinarray(level.var_594e55d7, self.var_1c8901bf)) {
                    array::add(level.var_594e55d7, self.var_1c8901bf, 0);
                }
            }
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0xd3f5fe87, Offset: 0x8020
// Size: 0x24c
function function_f954feae(method) {
    var_28f7a84d = [#"hash_1bcbed68b6504458", #"hash_11484ae12865f8c9", #"hash_165afba597307403", #"hash_7a524b2fff5dad2c", #"hash_2423208923ced64e"];
    var_a5ebae6c = level.player savegame::function_2ee66e93(#"hash_4a0240a3dc714e1b", []);
    for (i = 0; i < var_28f7a84d.size; i++) {
        entry = var_28f7a84d[i];
        if (level.player stats::function_e3eb9a8b(#"hash_3c02989079cbd05c", entry)) {
            if (!isdefined(var_a5ebae6c)) {
                var_a5ebae6c = [];
            } else if (!isarray(var_a5ebae6c)) {
                var_a5ebae6c = array(var_a5ebae6c);
            }
            if (!isinarray(var_a5ebae6c, entry)) {
                var_a5ebae6c[var_a5ebae6c.size] = entry;
            }
        }
    }
    if (!isinarray(var_a5ebae6c, method)) {
        var_a5ebae6c[var_a5ebae6c.size] = method;
        level.player savegame::set_player_data(#"hash_4a0240a3dc714e1b", var_a5ebae6c);
        level.player stats::function_505387a6(#"hash_3c02989079cbd05c", method, 1);
        if (var_a5ebae6c.size >= var_28f7a84d.size) {
            level.player stats::function_dad108fa(#"hash_348c77b0d1f60503", 1);
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0xde87855b, Offset: 0x8278
// Size: 0xb0
function function_a43c15af() {
    ai_array = getaiarray("delete_early", "script_noteworthy");
    foreach (guy in ai_array) {
        guy delete();
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x9711e10b, Offset: 0x8330
// Size: 0x2c
function function_af5c4ca3(params) {
    level.player playrumbleonentity(params);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 1, eflags: 0x0
// Checksum 0x4bed1caa, Offset: 0x8368
// Size: 0x24
function function_f1a3033(*params) {
    self sethighdetail(0);
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 0, eflags: 0x0
// Checksum 0x142560ed, Offset: 0x8398
// Size: 0xa8
function cleanup_corpses() {
    var_73a23c23 = getcorpsearray();
    foreach (corpse in var_73a23c23) {
        if (isdefined(corpse)) {
            corpse delete();
        }
    }
}

// Namespace namespace_e77bf565/namespace_1b5c93f4
// Params 11, eflags: 0x0
// Checksum 0x1881d998, Offset: 0x8448
// Size: 0x1cc
function function_9090d0cb(minyaw = 45, maxyaw = 45, minpitch = 45, maxpitch = 45, ai_actor = undefined, anim_struct = undefined, timer = undefined, activator = undefined, var_5bab29d8 = undefined, var_cf6d95c9 = undefined, var_5738c83e = undefined) {
    level.player endon(#"death");
    if (!level.player gamepadusedlast()) {
        level.player setviewclamp(0, 0, 0, 0, 0, 1, 2);
    }
    self dialog_tree::run(ai_actor, anim_struct, timer, activator, var_5bab29d8, var_cf6d95c9, var_5738c83e);
    if (!level.player gamepadusedlast()) {
        level.player setviewclamp(minyaw, maxyaw, minpitch, maxpitch, 0, 0, 1);
    }
}

