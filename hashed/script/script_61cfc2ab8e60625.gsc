// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\hms_util.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\snd.gsc;
#using scripts\cp_common\objectives.gsc;
#using script_4ccd0c3512b52a10;
#using script_7cf3e180e994d17f;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_b100dd86;

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0x4e2fc6b5, Offset: 0x438
// Size: 0x64
function init_clientfields() {
    clientfield::register("toplayer", "lerp_fov", 1, 3, "int");
    clientfield::register("toplayer", "force_stream_weapons", 1, 2, "int");
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0xb5637ccd, Offset: 0x4a8
// Size: 0xd2
function function_9109a1fe() {
    level.adler = self;
    self function_854b5376(1);
    self.radius = 32;
    level thread util::magic_bullet_shield(self);
    a_ar = getweapon(#"ar_accurate_t9", "steadyaim", "reflex");
    self hms_util::function_65d14a19(a_ar);
    self ai::set_behavior_attribute("useGrenades", 0);
    self.script_forcecolor = "o";
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0xaa28c4e2, Offset: 0x588
// Size: 0xd2
function function_87d56d50() {
    level.woods = self;
    self function_854b5376(1);
    self.radius = 32;
    self ai::set_behavior_attribute("useGrenades", 0);
    level thread util::magic_bullet_shield(self);
    a_ar = getweapon(#"ar_standard_t9", "steadyaim", "reflex");
    self hms_util::function_65d14a19(a_ar);
    self.script_forcecolor = "c";
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x0
// Checksum 0xf1a3e7a5, Offset: 0x668
// Size: 0xfc
function function_b61ea696() {
    self.radius = 32;
    self.ignoresuppression = 1;
    self.forcesprint = 1;
    self val::set("sprinter_guy", "ignoreme", 1);
    self val::set("sprinter_guy", "ignoreall", 1);
    self ai::set_behavior_attribute("sprint", 1);
    self waittill(#"goal");
    self val::reset("sprinter_guy", "ignoreme");
    self val::reset("sprinter_guy", "ignoreall");
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x0
// Checksum 0x226fb145, Offset: 0x770
// Size: 0x44
function function_ea49bc9() {
    level.wife = self;
    self.radius = 32;
    self.ignoreall = 1;
    level thread util::magic_bullet_shield(self);
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0xb3b09d3e, Offset: 0x7c0
// Size: 0x2a
function function_c3eb1449() {
    level.var_2e5999de = self;
    self.ignoreall = 1;
    self.ignoreme = 1;
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x0
// Checksum 0x36dd180c, Offset: 0x7f8
// Size: 0x10
function function_170c5fef() {
    level.var_cb7eb1d8 = self;
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 2, eflags: 0x2 linked
// Checksum 0x89b88d1e, Offset: 0x810
// Size: 0x44
function function_f82142f8(notify_str, body_model) {
    if (isdefined(notify_str)) {
        level waittill(notify_str);
    }
    self setmodel(body_model);
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 2, eflags: 0x2 linked
// Checksum 0xb34159bb, Offset: 0x860
// Size: 0xa2
function swap_head(notify_str, head_model) {
    if (isdefined(notify_str)) {
        level waittill(notify_str);
    }
    if (isdefined(self.hatmodel)) {
        self detach(self.hatmodel);
    }
    if (isdefined(self.head)) {
        self detach(self.head);
    }
    self attach(head_model);
    self.head = head_model;
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0xae4ce096, Offset: 0x910
// Size: 0x21c
function function_6578b894() {
    self endon(#"death");
    level notify(#"hash_530a04ce72c2c9");
    self thread function_a0f1fa27();
    objectives::follow("obj_takedown_qasim", self, undefined, undefined, 0, #"hash_29f1e9a2d045faaf");
    self val::set(#"qasim", "ignoreall", 1);
    self val::set(#"qasim", "ignoreme", 1);
    self.var_c681e4c1 = 1;
    self.forcesprint = 1;
    self disableaimassist();
    self function_854b5376(1);
    self setdesiredspeed(260);
    lmg = getweapon(#"lmg_light_t9");
    self setweapon(lmg);
    self thread set_ignoreall();
    self thread function_b1518d0e();
    self waittill(#"reached_path_end");
    objectives::remove("obj_takedown_qasim");
    level thread function_c212022b(180);
    self notify(#"hash_637416a1c8f37fe3");
    self deletedelay();
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 1, eflags: 0x2 linked
// Checksum 0xc71542be, Offset: 0xb38
// Size: 0x4c
function function_c212022b(seconds) {
    level endon(#"hash_530a04ce72c2c9");
    wait(seconds);
    util::missionfailedwrapper(#"hash_556f31329ba0db54");
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0x36b287a4, Offset: 0xb90
// Size: 0x154
function function_a66feb27() {
    self thread function_a0f1fa27();
    level notify(#"hash_530a04ce72c2c9");
    objectives::follow("obj_takedown_qasim", self, undefined, undefined, 0, #"hash_29f1e9a2d045faaf");
    self.ignoreall = 1;
    self.ignoreme = 1;
    self.forcesprint = 1;
    self disableaimassist();
    self ai::set_behavior_attribute("sprint", 1);
    level thread scene::play("scene_tkd_hit2_qasim_vault", "Vault", self);
    self waittill(#"end_vault");
    objectives::hide("obj_takedown_qasim");
    self notify(#"hash_637416a1c8f37fe3");
    self deletedelay();
    level thread function_a3c6d04c();
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0xf0ceabcd, Offset: 0xcf0
// Size: 0xc4
function function_a3c6d04c() {
    objloc = struct::get("obj_jump", "targetname");
    objectives::complete("follow_adler", level.adler);
    objectives::follow("obj_rooftop_jump", objloc.origin, undefined, undefined, 0, #"hash_579ea815337d21d3");
    level flag::wait_till("flag_start_roof_slide");
    objectives::remove("obj_rooftop_jump");
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0x665d411, Offset: 0xdc0
// Size: 0x5c
function function_b1518d0e() {
    self endon(#"death");
    self flag::wait_till("ignoreall_false");
    self val::reset(#"qasim", "ignoreall");
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0xf7a6ec3e, Offset: 0xe28
// Size: 0x64
function set_ignoreall() {
    self endon(#"death");
    self flag::wait_till("ignoreall_true");
    self val::set(#"qasim", "ignoreall", 1);
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0x8403cfc1, Offset: 0xe98
// Size: 0x4c
function function_a0f1fa27() {
    self endon(#"hash_637416a1c8f37fe3");
    self waittill(#"death");
    util::missionfailedwrapper(#"hash_acfc290b8145de6");
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 1, eflags: 0x0
// Checksum 0x22cc62b4, Offset: 0xef0
// Size: 0x13a
function function_3e6a0d68(str_aigroup) {
    var_523ed269 = getspawnerarray(str_aigroup, "script_aigroup");
    aiarray = array();
    foreach (spawner in var_523ed269) {
        guy = spawner spawner::spawn(1);
        if (!isdefined(aiarray)) {
            aiarray = [];
        } else if (!isarray(aiarray)) {
            aiarray = array(aiarray);
        }
        aiarray[aiarray.size] = guy;
    }
    return aiarray;
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 2, eflags: 0x2 linked
// Checksum 0xe9f5456, Offset: 0x1038
// Size: 0x142
function array_spawn(name, key) {
    var_523ed269 = getspawnerarray(name, key);
    aiarray = array();
    foreach (spawner in var_523ed269) {
        guy = spawner spawnfromspawner(spawner.targetname, 1);
        if (!isdefined(aiarray)) {
            aiarray = [];
        } else if (!isarray(aiarray)) {
            aiarray = array(aiarray);
        }
        aiarray[aiarray.size] = guy;
    }
    return aiarray;
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 2, eflags: 0x2 linked
// Checksum 0x1ffbc354, Offset: 0x1188
// Size: 0x7c
function function_53531f27(key, val = "targetname") {
    trig = getent(key, val);
    if (isdefined(trig) && trig istriggerenabled()) {
        trig trigger::use();
    }
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0x779e741c, Offset: 0x1210
// Size: 0x2d8
function function_5431431d() {
    plane = getent("cargo_plane", "targetname");
    plane notsolid();
    var_853687bd = getentarray("af_plane_triggers", "targetname");
    var_853687bd = arraycombine(var_853687bd, getentarray("plane_floor_clip", "targetname"));
    var_853687bd = arraycombine(var_853687bd, getentarray("plane_cargo", "targetname"));
    foreach (thing in var_853687bd) {
        thing enablelinkto();
        thing linkto(plane, "tag_body_animate");
    }
    snd::function_b23661d5(plane, "cargo_plane");
    plane namespace_db2381c4::function_8e4c996d();
    plane namespace_db2381c4::function_b6cccb8();
    scene::add_scene_func("scene_tkd_hit3_chase_plane", &function_d804fc99, "init");
    plane thread scene::init("scene_tkd_hit3_chase_plane");
    thread function_d60a1c78(plane);
    level.af_plane = plane;
    thread scene::init("scene_tkd_hit3_intro_overlook_arash", [level.af_plane]);
    level.var_c7b3a621 = util::spawn_model("tag_origin", plane.origin - (200, 0, 175), plane.angles);
    level.var_c7b3a621 linkto(plane);
    return plane;
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 1, eflags: 0x2 linked
// Checksum 0x2f0a6dd4, Offset: 0x14f0
// Size: 0x148
function function_d804fc99(a_ents) {
    var_936fb5e7 = ["Prop 1", "Prop 2", "Prop 3", "Prop 4"];
    foreach (prop in var_936fb5e7) {
        if (isdefined(a_ents[prop]) && !isdefined(a_ents[prop].clip)) {
            clip = getent(prop, "script_noteworthy");
            a_ents[prop].clip = clip;
            clip linkto(a_ents[prop], undefined, (0, 0, 0), (0, 0, 0));
        }
    }
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 2, eflags: 0x2 linked
// Checksum 0x966462cf, Offset: 0x1640
// Size: 0x2e4
function function_c8381339(plane, var_857b0901) {
    probe = getent("cargo_probe_1", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-24, 0, 24), (0, 0, 0));
    }
    probe = getent("cargo_probe_2", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-152, 0, 24), (0, 0, 0));
    }
    probe = getent("cargo_probe_3", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-288, 0, 24), (0, 0, 0));
    }
    probe = getent("cargo_probe_4", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-408, 0, -40), (0, 0, 0));
    }
    if (var_857b0901) {
        probe = getent("cargo_probe_5", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (-72, 0, -88), (0, 0, 0));
        }
        probe = getent("cargo_probe_6", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (72, 280, -48), (0, 0, 0));
        }
        probe = getent("cargo_probe_7", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (72, -280, -48), (0, 0, 0));
        }
        probe = getent("cargo_probe_8", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (-664, 0, -40), (0, 0, 0));
        }
    }
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 1, eflags: 0x2 linked
// Checksum 0xa33dd53b, Offset: 0x1930
// Size: 0x64
function function_1c77193b(plane) {
    level waittill(#"hash_1e1d8f91cb3b7e82");
    plane namespace_db2381c4::function_675a8b8c();
    self waittill(#"hash_3678fbfcec341cb5");
    plane namespace_db2381c4::function_ee23b003();
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 1, eflags: 0x2 linked
// Checksum 0x7c77f258, Offset: 0x19a0
// Size: 0x6c
function function_d60a1c78(plane) {
    wait(0.2);
    level.plane_mover = util::spawn_model("tag_origin", plane.origin, plane.angles);
    plane linkto(level.plane_mover, undefined, (0, 0, 0), (0, 0, 0));
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0x2261ab7d, Offset: 0x1a18
// Size: 0xb8
function function_19919872() {
    level.var_2e151cca = spawner::simple_spawn("af_plane_guy");
    foreach (guy in level.var_2e151cca) {
        guy linkto(level.af_plane, "tag_body_animate");
    }
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 1, eflags: 0x2 linked
// Checksum 0xab55fe9f, Offset: 0x1ad8
// Size: 0x32
function setup_objectives(var_567f1ddd) {
    switch (var_567f1ddd) {
    default:
        break;
    }
}

// Namespace namespace_b100dd86/namespace_5713a15b
// Params 0, eflags: 0x2 linked
// Checksum 0xa732fbb2, Offset: 0x1b18
// Size: 0x44
function function_5aabc3fb() {
    ents = getentarray("intro_runway_lights", "targetname");
    array::delete_all(ents);
}

