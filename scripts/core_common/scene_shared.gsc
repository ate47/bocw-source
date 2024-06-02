// Atian COD Tools GSC CW decompiler test
#using script_24c15fbbb838c794;
#using script_439e9618e516580f;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\teleport_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_debug_shared.gsc;
#using scripts\core_common\scene_objects_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace scene_shared;

// Namespace scene_shared/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0x39d72a81, Offset: 0x6e8
// Size: 0x23c
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_2f758e99, k in ["scriptgroup_initscenes", "scriptgroup_playscenes"]) {
        if (!isdefined(level.var_41204f29)) {
            level.var_41204f29 = [];
        } else if (!isarray(level.var_41204f29)) {
            level.var_41204f29 = array(level.var_41204f29);
        }
        if (!isinarray(level.var_41204f29, tolower(k))) {
            level.var_41204f29[level.var_41204f29.size] = tolower(k);
        }
    }
    level.var_5e990e96 = arraycopy(level.var_41204f29);
    if (isdefined(level.struct)) {
        temp = arraycopy(level.struct);
        level.struct = [];
        foreach (struct in temp) {
            struct::init(struct);
        }
    }
    function_6c07201b("CreateStruct", &function_e0a8e4ba);
}

#namespace scene;

// Namespace scene/scene_shared
// Params 0, eflags: 0x5
// Checksum 0x4d97a6bf, Offset: 0x930
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"scene", &preinit, &postinit, undefined, undefined);
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x7f79e331, Offset: 0x988
// Size: 0x564
function private preinit() {
    if (!isdefined(level.scene_streamer_ignore)) {
        level.scene_streamer_ignore = [];
    }
    level.scenedefs = getscriptbundlenames("scene");
    level.scene_sequence_names = getscriptbundlenames("scenesequence");
    level.active_scenes = [];
    level.inactive_scenes = [];
    level.active_scenes = [];
    level.sceneskippedcount = 0;
    lui::add_luimenu("cp_skip_scene_menu", &cp_skip_scene_menu::register);
    streamerrequest("clear");
    function_17fbdc5c("gamedata/weapons/common/scene_weapon_blacklist.csv");
    foreach (s_scenedef in getscriptbundles("scene")) {
        var_50477704 = s_scenedef.name + "_scene_done";
        level flag::init(var_50477704);
        if (s_scenedef.vmtype === "client") {
            continue;
        }
        if (s_scenedef.vmtype === "both" && !s_scenedef is_igc()) {
            n_clientbits = 3;
            clientfield::register("world", s_scenedef.name, 1, n_clientbits, "int");
        }
    }
    switch (currentsessionmode()) {
    case 2:
        var_a093876d = 1;
        break;
    case 1:
        var_a093876d = 24;
        break;
    case 0:
        var_a093876d = 4;
        break;
    case 3:
        var_a093876d = 40;
        break;
    default:
        var_a093876d = 24;
        break;
    }
    if (util::is_frontend_map()) {
        var_a093876d = 24;
    }
    var_a093876d = int(min(32, var_a093876d));
    clientfield::register("toplayer", "postfx_igc", 1, 2, "counter");
    clientfield::register("world", "in_igc", 1, var_a093876d, "int");
    clientfield::register("toplayer", "postfx_cateye", 1, 1, "int");
    clientfield::register("toplayer", "player_scene_skip_completed", 1, 2, "counter");
    clientfield::register("toplayer", "player_pbg_bank_scene_system", 1, getminbitcountfornum(3), "int");
    clientfield::register("allplayers", "player_scene_animation_skip", 1, 2, "counter");
    clientfield::register("actor", "player_scene_animation_skip", 1, 2, "counter");
    clientfield::register("vehicle", "player_scene_animation_skip", 1, 2, "counter");
    clientfield::register("scriptmover", "player_scene_animation_skip", 1, 2, "counter");
    if (sessionmodeiscampaigngame()) {
        level.interactive_shot = interactive_shot::register();
    }
    callback::on_disconnect(&on_player_disconnect);
    callback::function_5fb139ea(&function_5fb139ea);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x50c01517, Offset: 0xef8
// Size: 0x132
function function_17fbdc5c(table) {
    index = 0;
    for (row = tablelookuprow(table, index); isdefined(row); row = tablelookuprow(table, index)) {
        str_weapon_name = row[0];
        if (isdefined(str_weapon_name) && str_weapon_name != "") {
            if (!isdefined(level.var_b6405fbf)) {
                level.var_b6405fbf = [];
            } else if (!isarray(level.var_b6405fbf)) {
                level.var_b6405fbf = array(level.var_b6405fbf);
            }
            if (!isinarray(level.var_b6405fbf, str_weapon_name)) {
                level.var_b6405fbf[level.var_b6405fbf.size] = str_weapon_name;
            }
        }
        index++;
    }
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x17564091, Offset: 0x1038
// Size: 0x1fc
function function_585fb738() {
    if (function_7aa3d2c6(self.name)) {
        self.igc = 1;
        return;
    }
    foreach (s_object in self.objects) {
        if (!is_true(s_object.disabled) && !is_true(s_object.showhud)) {
            if (isdefined(s_object.shots)) {
                foreach (s_shot in s_object.shots) {
                    if (isdefined(s_shot.entry)) {
                        foreach (s_entry in s_shot.entry) {
                            if (isdefined(s_entry.cameraswitcher)) {
                                self.igc = 1;
                                return;
                            }
                        }
                    }
                }
            }
        }
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6ed3e395, Offset: 0x1240
// Size: 0x250
function get_all_shot_names(str_scenedef, var_8c4d2266 = 0) {
    s_scenedef = get_scenedef(str_scenedef);
    if (isdefined(s_scenedef.a_str_shot_names)) {
        a_shots = arraycopy(s_scenedef.a_str_shot_names);
        if (var_8c4d2266) {
            arrayremovevalue(a_shots, "init");
        }
        return a_shots;
    }
    a_shots = [];
    foreach (s_object in s_scenedef.objects) {
        if (!is_true(s_object.disabled)) {
            foreach (s_shot in s_object.shots) {
                if (!isdefined(a_shots)) {
                    a_shots = [];
                } else if (!isarray(a_shots)) {
                    a_shots = array(a_shots);
                }
                if (!isinarray(a_shots, s_shot.name)) {
                    a_shots[a_shots.size] = s_shot.name;
                }
            }
        }
    }
    s_scenedef.a_str_shot_names = a_shots;
    if (var_8c4d2266) {
        arrayremovevalue(a_shots, "init");
    }
    return a_shots;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5205de94, Offset: 0x1498
// Size: 0x62
function function_c3a1b36a(str_scenedef) {
    a_shots = arraycopy(get_all_shot_names(str_scenedef));
    arrayremovevalue(a_shots, "init");
    return a_shots[0];
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9fd5b407, Offset: 0x1508
// Size: 0x96
function function_c9770402(str_scenedef) {
    s_scenedef = get_scenedef(str_scenedef);
    if (isdefined(s_scenedef.str_final_bundle)) {
        return s_scenedef.str_final_bundle;
    }
    if (isdefined(s_scenedef.var_418c40ac)) {
        return s_scenedef.var_418c40ac;
    }
    a_shots = get_all_shot_names(str_scenedef);
    return a_shots[a_shots.size - 1];
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x0
// Checksum 0xb2ebb0cc, Offset: 0x15a8
// Size: 0x84
function function_24f8cfb5(str_scenedef, str_shot) {
    a_shots = get_all_shot_names(str_scenedef);
    if (str_shot == "init") {
        return false;
    }
    arrayremovevalue(a_shots, "init");
    if (a_shots[0] === str_shot) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x84ec87cd, Offset: 0x1638
// Size: 0x7c
function function_b260bdcc(str_scenedef, str_shot) {
    var_418c40ac = function_c9770402(str_scenedef);
    s_scenedef = get_scenedef(str_scenedef);
    if (str_shot !== "init" && str_shot === var_418c40ac) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc5e1ac05, Offset: 0x16c0
// Size: 0x70
function function_9503138e(object = self) {
    if (object.classname === "scriptbundle_scene") {
        return true;
    }
    if (object.classname === "scriptbundle_fxanim") {
        return true;
    }
    if (object.variantname === "smart_object") {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9d3ed4cb, Offset: 0x1738
// Size: 0x38
function function_bf1f4951(s_instance = self) {
    if (s_instance.classname === "scriptbundle_scenesequence") {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2fc38889, Offset: 0x1778
// Size: 0x36
function function_6a0b0afe(str_mode) {
    if (issubstr(str_mode, "single")) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x3041262b, Offset: 0x17b8
// Size: 0x4e4
function private postinit() {
    a_instances = arraycombine(struct::get_array("scriptbundle_scene", "classname"), struct::get_array("scriptbundle_fxanim", "classname"), 0, 0);
    a_instances = arraycombine(a_instances, struct::get_array("smart_object", "variantname"), 0, 0);
    function_d4c74ab3();
    foreach (s_instance in a_instances) {
        s_scenedef = getscriptbundle(s_instance.scriptbundlename);
        assert(isdefined(s_scenedef), "script_noteworthy" + function_9e72a96(s_instance.scriptbundlename) + "play_from_time_normalized");
        if (s_scenedef.vmtype === "client") {
            continue;
        }
        if (isdefined(s_instance.linkto)) {
            s_instance thread _scene_link();
        }
        if (isdefined(s_instance.script_flag_set)) {
            level flag::init(s_instance.script_flag_set);
        }
        if (isdefined(s_instance.scriptgroup_initscenes)) {
            foreach (trig in getentarray(s_instance.scriptgroup_initscenes, "scriptgroup_initscenes")) {
                s_instance thread _trigger_init(trig);
            }
        }
        if (isdefined(s_instance.scriptgroup_playscenes)) {
            foreach (trig in getentarray(s_instance.scriptgroup_playscenes, "scriptgroup_playscenes")) {
                s_instance thread _trigger_play(trig);
            }
        }
        if (isdefined(s_instance.scriptgroup_stopscenes)) {
            foreach (trig in getentarray(s_instance.scriptgroup_stopscenes, "scriptgroup_stopscenes")) {
                s_instance thread _trigger_stop(trig);
            }
        }
        s_instance function_846ffeda();
        /#
            if (!isdefined(level.scene_roots)) {
                level.scene_roots = [];
            } else if (!isarray(level.scene_roots)) {
                level.scene_roots = array(level.scene_roots);
            }
            if (!isinarray(level.scene_roots, s_instance)) {
                level.scene_roots[level.scene_roots.size] = s_instance;
            }
        #/
    }
    level thread on_load_wait();
    level thread run_instances();
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x99dcac55, Offset: 0x1ca8
// Size: 0xc8
function function_6f9a9e07() {
    if (isdefined(self.script_scene_nodes)) {
        self.var_bf4dc147 = getnodearray(self.script_scene_nodes, "script_scene_nodes");
        foreach (node in self.var_bf4dc147) {
            setenablenode(node, 1);
        }
    }
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x494eeaea, Offset: 0x1d78
// Size: 0xc0
function function_846ffeda() {
    if (isdefined(self.script_scene_nodes)) {
        self.var_bf4dc147 = getnodearray(self.script_scene_nodes, "script_scene_nodes");
        foreach (node in self.var_bf4dc147) {
            setenablenode(node, 0);
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfee32486, Offset: 0x1e40
// Size: 0x23e
function function_7cda7776(var_faa74cb) {
    if ((self function_9503138e() || self function_bf1f4951()) && isdefined(self.script_scene_entities) && !isdefined(self get_active_scene(self.scriptbundlename))) {
        if (!isdefined(var_faa74cb)) {
            var_faa74cb = [];
        } else if (!isarray(var_faa74cb)) {
            var_faa74cb = array(var_faa74cb);
        }
        var_d3e0f43e = [];
        if (!isdefined(self.scene_ents)) {
            var_d3e0f43e = getentarray(self.script_scene_entities, "script_scene_entities");
            arrayremovevalue(var_d3e0f43e, undefined);
            foreach (ent in arraycopy(var_d3e0f43e)) {
                if (isspawner(ent) && ent.count === 0 || isactor(ent) || isvehicle(ent)) {
                    ent.script_scene_entities = undefined;
                    arrayremovevalue(var_d3e0f43e, ent, 1);
                }
            }
        }
        a_ents = arraycombine(var_faa74cb, var_d3e0f43e, 0, 0);
    } else {
        a_ents = var_faa74cb;
    }
    return a_ents;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x54d1984a, Offset: 0x2088
// Size: 0x248
function function_d4c74ab3() {
    /#
        a_triggers = trigger::get_all();
        foreach (trig in a_triggers) {
            if (isdefined(trig.targetname)) {
                str_trig_name = "<unknown string>" + trig.targetname + "<unknown string>";
            } else {
                str_trig_name = "<unknown string>" + trig getentitynumber() + "<unknown string>";
            }
            if (isdefined(trig.scriptgroup_initscenes)) {
                a_instances = struct::get_array(trig.scriptgroup_initscenes, "<unknown string>");
                assert(a_instances.size, "<unknown string>" + str_trig_name + "<unknown string>" + trig.scriptgroup_initscenes);
            }
            if (isdefined(trig.scriptgroup_playscenes)) {
                a_instances = struct::get_array(trig.scriptgroup_playscenes, "<unknown string>");
                assert(a_instances.size, "<unknown string>" + str_trig_name + "<unknown string>" + trig.scriptgroup_playscenes);
            }
            if (isdefined(trig.scriptgroup_stopscenes)) {
                a_instances = struct::get_array(trig.scriptgroup_stopscenes, "<unknown string>");
                assert(a_instances.size, "<unknown string>" + str_trig_name + "<unknown string>" + trig.scriptgroup_stopscenes);
            }
        }
    #/
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x86d4640f, Offset: 0x22d8
// Size: 0xbc
function _scene_link() {
    self.e_scene_link = util::spawn_model("tag_origin", self.origin, self.angles);
    e_linkto = getent(self.linkto, "linkname");
    self.e_scene_link linkto(e_linkto);
    util::waittill_any_ents_two(self, "death", e_linkto, "death");
    self.e_scene_link delete();
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x79f805f0, Offset: 0x23a0
// Size: 0x44
function on_load_wait() {
    util::wait_network_frame();
    util::wait_network_frame();
    level flag::set(#"scene_on_load_wait");
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1cbe9494, Offset: 0x23f0
// Size: 0x210
function run_instances() {
    foreach (s_instance in struct::get_script_bundle_instances("scene")) {
        if (getscriptbundle(s_instance.scriptbundlename).vmtype === "client") {
            s_instance struct::delete();
            continue;
        }
        if (isdefined(s_instance.spawnflags) && (s_instance.spawnflags & 2) == 2) {
            s_instance thread play();
            continue;
        }
        if (isdefined(s_instance.spawnflags) && (s_instance.spawnflags & 1) == 1) {
            s_instance thread init();
        }
    }
    foreach (s_instance in struct::get_script_bundle_instances("scenesequence")) {
        if (isdefined(s_instance.spawnflags) && (s_instance.spawnflags & 2) == 2) {
            s_instance thread play();
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf7b1a42, Offset: 0x2608
// Size: 0xa4
function _trigger_init(trig) {
    trig endon(#"death");
    trig trigger::wait_till();
    a_ents = [];
    if (get_player_count(self.scriptbundlename) > 0) {
        if (isplayer(trig.who)) {
            a_ents[0] = trig.who;
        }
    }
    self thread init(a_ents);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3b2b7bdf, Offset: 0x26b8
// Size: 0xd6
function _trigger_play(trig) {
    trig endon(#"death");
    do {
        trig trigger::wait_till();
        a_ents = [];
        if (get_player_count(self.scriptbundlename) > 0) {
            if (isplayer(trig.who)) {
                a_ents[0] = trig.who;
            }
        }
        self thread play(a_ents);
    } while (is_true(getscriptbundle(self.scriptbundlename).looping));
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd297c16f, Offset: 0x2798
// Size: 0x4c
function _trigger_stop(trig) {
    trig endon(#"death");
    trig trigger::wait_till();
    self thread stop();
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x42 linked
// Checksum 0x61c9825, Offset: 0x27f0
// Size: 0x1d4
function add_scene_func(str_scenedef, func, var_e21c4c4c = "play", ...) {
    assert(isdefined(getscriptbundle(str_scenedef)), "<unknown string>" + function_9e72a96(str_scenedef) + "<unknown string>");
    if (!isdefined(level.scene_funcs)) {
        level.scene_funcs = [];
    }
    if (!isdefined(level.scene_funcs[str_scenedef])) {
        level.scene_funcs[str_scenedef] = [];
    }
    var_e21c4c4c = tolower(var_e21c4c4c);
    str_shot = function_c776e5bd(str_scenedef, var_e21c4c4c);
    if (!isdefined(level.scene_funcs[str_scenedef][str_shot])) {
        level.scene_funcs[str_scenedef][str_shot] = [];
    }
    if (var_e21c4c4c === "play" && str_shot !== "play") {
        array::add(level.scene_funcs[str_scenedef][str_shot], array(func, vararg, 1), 0);
        return;
    }
    array::add(level.scene_funcs[str_scenedef][str_shot], array(func, vararg), 0);
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x0
// Checksum 0xbacc6b46, Offset: 0x29d0
// Size: 0xc0
function function_d0d7d9f7(str_scenedef, func) {
    a_str_shots = get_all_shot_names(str_scenedef, 0);
    foreach (str_shot in a_str_shots) {
        add_scene_func(str_scenedef, func, str_shot, str_shot);
    }
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x42 linked
// Checksum 0x74f5e4d0, Offset: 0x2a98
// Size: 0x1d4
function function_d8a83a50(str_scenedef, func, var_e21c4c4c = "play", ...) {
    assert(isdefined(getscriptbundle(str_scenedef)), "<unknown string>" + function_9e72a96(str_scenedef) + "<unknown string>");
    if (!isdefined(level.var_4247a0d6)) {
        level.var_4247a0d6 = [];
    }
    if (!isdefined(level.var_4247a0d6[str_scenedef])) {
        level.var_4247a0d6[str_scenedef] = [];
    }
    var_e21c4c4c = tolower(var_e21c4c4c);
    str_shot = function_c776e5bd(str_scenedef, var_e21c4c4c);
    if (!isdefined(level.var_4247a0d6[str_scenedef][str_shot])) {
        level.var_4247a0d6[str_scenedef][str_shot] = [];
    }
    if (var_e21c4c4c === "play" && str_shot !== "play") {
        array::add(level.var_4247a0d6[str_scenedef][str_shot], array(func, vararg, 1), 0);
        return;
    }
    array::add(level.var_4247a0d6[str_scenedef][str_shot], array(func, vararg), 0);
}

// Namespace scene/scene_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x5d7ea69, Offset: 0x2c78
// Size: 0x6c
function function_497689f6(str_scenedef, var_4ebc26aa, var_822d3bf5, var_7e21e745, var_e21c4c4c = "play") {
    add_scene_func(str_scenedef, &function_f61e64e8, var_e21c4c4c, var_4ebc26aa, var_822d3bf5, var_7e21e745);
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x6 linked
// Checksum 0x2f32deb6, Offset: 0x2cf0
// Size: 0x164
function private function_f61e64e8(a_ents, var_4ebc26aa, var_822d3bf5, var_7e21e745) {
    var_ebf8b537 = getentarray(var_7e21e745, "targetname");
    if (isdefined(a_ents[var_4ebc26aa]) && var_ebf8b537.size) {
        foreach (ent in var_ebf8b537) {
            ent linkto(a_ents[var_4ebc26aa], var_822d3bf5, (0, 0, 0), (0, 0, 0));
        }
        /#
            if (var_ebf8b537.size) {
                level thread function_41dc295(a_ents[var_4ebc26aa], var_822d3bf5, self.scriptbundlename);
            }
        #/
        return;
    }
    println("<unknown string>" + var_4ebc26aa + "<unknown string>" + var_7e21e745);
}

/#

    // Namespace scene/scene_shared
    // Params 3, eflags: 0x4
    // Checksum 0x6c382964, Offset: 0x2e60
    // Size: 0x1e6
    function private function_41dc295(var_9cef00e4, var_822d3bf5, str_scene_name) {
        var_9cef00e4 endon(#"death");
        if (isdefined(str_scene_name)) {
            level endon(str_scene_name + "<unknown string>");
        }
        if (!isdefined(var_822d3bf5)) {
            var_822d3bf5 = "<unknown string>";
        }
        while (true) {
            if (getdvarint(#"hash_3a787cfe7207f59", 0)) {
                org = var_9cef00e4 gettagorigin(var_822d3bf5);
                angles = var_9cef00e4 gettagangles(var_822d3bf5);
                print3d(org, toupper(var_822d3bf5), (0, 1, 0), undefined, 0.25);
                originendpoint = org + vectorscale(anglestoforward(angles), 6);
                originrightpoint = org + vectorscale(anglestoright(angles), -1 * 6);
                originuppoint = org + vectorscale(anglestoup(angles), 6);
                line(org, originendpoint, (1, 0, 0));
                line(org, originrightpoint, (0, 1, 0));
                line(org, originuppoint, (0, 0, 1));
            }
            waitframe(1);
        }
    }

#/

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x5d412ebe, Offset: 0x3050
// Size: 0x23c
function remove_scene_func(str_scenedef, func, var_e21c4c4c = "play") {
    assert(isdefined(getscriptbundle(str_scenedef)), "<unknown string>" + str_scenedef + "<unknown string>");
    if (!isdefined(level.scene_funcs)) {
        level.scene_funcs = [];
    }
    if (!isdefined(level.var_4247a0d6)) {
        level.var_4247a0d6 = [];
    }
    var_e21c4c4c = tolower(var_e21c4c4c);
    str_shot = function_c776e5bd(str_scenedef, var_e21c4c4c);
    if (isdefined(level.scene_funcs[str_scenedef]) && isdefined(level.scene_funcs[str_scenedef][str_shot])) {
        for (i = level.scene_funcs[str_scenedef][str_shot].size - 1; i >= 0; i--) {
            if (level.scene_funcs[str_scenedef][str_shot][i][0] == func) {
                arrayremoveindex(level.scene_funcs[str_scenedef][str_shot], i);
            }
        }
    }
    if (isdefined(level.var_4247a0d6[str_scenedef]) && isdefined(level.var_4247a0d6[str_scenedef][str_shot])) {
        for (i = level.var_4247a0d6[str_scenedef][str_shot].size - 1; i >= 0; i--) {
            if (level.var_4247a0d6[str_scenedef][str_shot][i][0] == func) {
                arrayremoveindex(level.var_4247a0d6[str_scenedef][str_shot], i);
            }
        }
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xf63c6970, Offset: 0x3298
// Size: 0x92
function private function_c776e5bd(str_scenedef, str_state) {
    str_shot = str_state;
    if (str_state == "init") {
        str_shot = function_de6a7579(str_scenedef, "init");
    } else if (str_state == "play") {
        str_shot = function_de6a7579(str_scenedef, "play");
    }
    return str_shot;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x664edc4c, Offset: 0x3338
// Size: 0xc8
function get_scenedef(str_scenedef) {
    s_scriptbundle = getscriptbundle(str_scenedef);
    assert(isdefined(s_scriptbundle), "script_noteworthy" + function_9e72a96(str_scenedef) + "<unknown string>");
    assert(isdefined(s_scriptbundle.objects), "script_noteworthy" + function_9e72a96(str_scenedef) + "<unknown string>");
    return s_scriptbundle;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0xd0a29214, Offset: 0x3408
// Size: 0x12a
function get_scenedefs(str_type = "scene") {
    a_scenedefs = [];
    foreach (s_scenedef in getscriptbundles("scene")) {
        if (s_scenedef.scenetype === str_type && s_scenedef.vmtype !== "client") {
            if (!isdefined(a_scenedefs)) {
                a_scenedefs = [];
            } else if (!isarray(a_scenedefs)) {
                a_scenedefs = array(a_scenedefs);
            }
            a_scenedefs[a_scenedefs.size] = s_scenedef;
        }
    }
    return a_scenedefs;
}

// Namespace scene/scene_shared
// Params 5, eflags: 0x0
// Checksum 0x46661851, Offset: 0x3540
// Size: 0x168
function spawn(arg1, arg2, arg3, arg4, b_test_run) {
    str_scenedef = arg1;
    assert(isdefined(str_scenedef), "<unknown string>");
    if (isvec(arg2)) {
        v_origin = arg2;
        v_angles = arg3;
        a_ents = arg4;
    } else {
        a_ents = arg2;
        v_origin = arg3;
        v_angles = arg4;
    }
    s_instance = spawnstruct();
    s_instance.origin = isdefined(v_origin) ? v_origin : (0, 0, 0);
    s_instance.angles = isdefined(v_angles) ? v_angles : (0, 0, 0);
    s_instance.classname = "scriptbundle_scene";
    s_instance.scriptbundlename = str_scenedef;
    struct::init(s_instance);
    s_instance init(str_scenedef, a_ents, undefined, b_test_run);
    return s_instance;
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x41cf08fc, Offset: 0x36b0
// Size: 0x2c4
function init(arg1, arg2, arg3, b_test_run) {
    self flag::clear("scene_ents_ready");
    self thread play(arg1, arg2, arg3, b_test_run, "init");
    if (self == level) {
        if (isstring(arg1) && issubstr(arg1, ",")) {
            a_toks = strtok(arg1, ",");
            str_value = a_toks[0];
            str_key = a_toks[1];
            if (isstring(arg2)) {
                str_shot = tolower(arg2);
                a_ents = arg3;
            } else {
                a_ents = arg2;
            }
        } else if (isinarray(level.scenedefs, hash(arg1))) {
            str_scenedef = arg1;
            var_583db6f0 = 1;
        } else {
            str_value = arg1;
            str_key = "targetname";
        }
        a_instances = _get_scene_instances(str_value, str_key, str_scenedef);
        if (a_instances.size) {
            foreach (s_instance in a_instances) {
                s_instance flag::wait_till_timeout(2, "scene_ents_ready");
            }
        } else {
            self flag::wait_till_timeout(2, "scene_ents_ready");
        }
        return;
    }
    self flag::wait_till_timeout(2, "scene_ents_ready");
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x0
// Checksum 0xfe338fbc, Offset: 0x3980
// Size: 0xf8
function function_27f5972e(str_scenedef, var_a068ac72, var_cdab6c2c) {
    if (self == level) {
        array::run_all(level.players, &forcestreambundle, str_scenedef, var_a068ac72, var_cdab6c2c);
    } else {
        self forcestreambundle(str_scenedef, var_a068ac72, var_cdab6c2c);
    }
    if (!isdefined(self.var_cb8ed5f0)) {
        self.var_cb8ed5f0 = [];
    } else if (!isarray(self.var_cb8ed5f0)) {
        self.var_cb8ed5f0 = array(self.var_cb8ed5f0);
    }
    if (!isinarray(self.var_cb8ed5f0, str_scenedef)) {
        self.var_cb8ed5f0[self.var_cb8ed5f0.size] = str_scenedef;
    }
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x273634b2, Offset: 0x3a80
// Size: 0x9c
function function_f81475ae(str_scenedef, *var_a068ac72, *var_cdab6c2c) {
    if (!isdefined(self.var_cb8ed5f0)) {
        self.var_cb8ed5f0 = [];
    }
    if (self == level) {
        array::run_all(level.players, &function_66b6e720, var_cdab6c2c);
    } else {
        self function_66b6e720(var_cdab6c2c);
    }
    arrayremovevalue(self.var_cb8ed5f0, var_cdab6c2c);
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0xc1e59a77, Offset: 0x3b28
// Size: 0xa0
function function_cef06dcb() {
    if (!isdefined(self.var_cb8ed5f0)) {
        self.var_cb8ed5f0 = [];
    }
    foreach (str_scenedef in self.var_cb8ed5f0) {
        level function_f81475ae(str_scenedef);
    }
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xc55e27d0, Offset: 0x3bd0
// Size: 0x6e4
function init_streamer(str_scenedef, var_1b38cf1d, var_b6213032 = 0, b_invulnerable = 1) {
    s_scenedef = get_scenedef(str_scenedef);
    var_2924e369 = util::get_team_mapping("sidea");
    var_3b6e87fc = util::get_team_mapping("sideb");
    if (isstring(var_1b38cf1d) || ishash(var_1b38cf1d)) {
        var_1b38cf1d = util::get_team_mapping(var_1b38cf1d);
    }
    if (sessionmodeiscampaigngame()) {
        level flag::wait_till("all_players_connected");
    }
    a_players = [];
    if (isarray(var_1b38cf1d)) {
        if (!var_1b38cf1d.size) {
            return;
        }
        foreach (player in var_1b38cf1d) {
            if (!isplayer(player)) {
                continue;
            }
            if (player.team === var_2924e369 && isdefined(s_scenedef.var_a6da2039)) {
                player thread function_1f9e783e(s_scenedef.var_a6da2039, str_scenedef);
                if (!isdefined(a_players)) {
                    a_players = [];
                } else if (!isarray(a_players)) {
                    a_players = array(a_players);
                }
                a_players[a_players.size] = player;
                continue;
            }
            if (player.team === var_3b6e87fc && isdefined(s_scenedef.var_991a84ba)) {
                player thread function_1f9e783e(s_scenedef.var_991a84ba, str_scenedef);
                if (!isdefined(a_players)) {
                    a_players = [];
                } else if (!isarray(a_players)) {
                    a_players = array(a_players);
                }
                a_players[a_players.size] = player;
                continue;
            }
            if (player.team !== var_2924e369 && player.team !== var_3b6e87fc && isdefined(s_scenedef.var_a6da2039)) {
                player thread function_1f9e783e(s_scenedef.var_a6da2039, str_scenedef);
                if (!isdefined(a_players)) {
                    a_players = [];
                } else if (!isarray(a_players)) {
                    a_players = array(a_players);
                }
                a_players[a_players.size] = player;
            }
        }
    } else if (var_1b38cf1d == var_2924e369 && isdefined(s_scenedef.var_a6da2039)) {
        a_players = getplayers(var_2924e369);
        array::thread_all(a_players, &function_1f9e783e, s_scenedef.var_a6da2039, str_scenedef);
    } else if (var_1b38cf1d == var_3b6e87fc && isdefined(s_scenedef.var_991a84ba)) {
        a_players = getplayers(var_3b6e87fc);
        array::thread_all(a_players, &function_1f9e783e, s_scenedef.var_991a84ba, str_scenedef);
    } else if ((isstring(var_1b38cf1d) || ishash(var_1b38cf1d)) && isdefined(s_scenedef.var_a6da2039)) {
        a_players = getplayers(var_1b38cf1d);
        array::thread_all(a_players, &function_1f9e783e, s_scenedef.var_a6da2039, str_scenedef);
    } else {
        return;
    }
    /#
        iprintln("<unknown string>" + function_9e72a96(str_scenedef));
    #/
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
        var_b6213032 = 0;
        b_invulnerable = 0;
    }
    if (var_b6213032) {
        array::thread_all(a_players, &val::set, "init_streamer", "freezecontrols", 1);
        array::thread_all(a_players, &lui::screen_fade_out, 0, undefined, "init_streamer");
    }
    if (b_invulnerable) {
        array::thread_all(a_players, &val::set, "init_streamer", "takedamage", 0);
    }
    array::wait_till(a_players, "init_streamer_done", 10);
    if (var_b6213032) {
        array::thread_all(a_players, &val::reset, "init_streamer", "freezecontrols");
        array::thread_all(a_players, &util::delay, 0.2, "disconnect", &lui::screen_fade_in, 1, undefined, "init_streamer");
    }
    if (b_invulnerable) {
        array::thread_all(a_players, &val::reset, "init_streamer", "takedamage");
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xdc4e6578, Offset: 0x42c0
// Size: 0x10e
function private function_1f9e783e(var_5c8c4fbc, str_scenedef) {
    self endon(#"disconnect");
    self flag::set(#"player_streamer_loading");
    if (!isdefined(self.var_231881b1)) {
        self.var_231881b1 = [];
    }
    if (!isdefined(self.var_16672042)) {
        self.var_16672042 = [];
    }
    self.var_231881b1[str_scenedef] = var_5c8c4fbc;
    self.var_16672042[str_scenedef] = self playerstreamerrequest("set", var_5c8c4fbc);
    self util::streamer_wait(self.var_16672042[str_scenedef], undefined, 30, undefined, str_scenedef);
    self flag::clear(#"player_streamer_loading");
    self notify(#"init_streamer_done");
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xfe5ff5ff, Offset: 0x43d8
// Size: 0x47c
function function_15be7db9(str_scenedef, str_shot, var_aed95ca8) {
    assert(isstruct(self));
    assert(isstring(str_scenedef) || ishash(str_scenedef));
    if (isdefined(var_aed95ca8)) {
        var_aed95ca8 = tolower(var_aed95ca8);
    }
    if (isdefined(str_shot)) {
        str_shot = tolower(str_shot);
    }
    key = str_scenedef + "_" + (isdefined(str_shot) ? str_shot : "_") + "_" + (isdefined(var_aed95ca8) ? var_aed95ca8 : "_");
    if (!isdefined(self.scene_reach)) {
        self.scene_reach = [];
    }
    if (isdefined(self.scene_reach[key])) {
        return self.scene_reach[key];
    }
    self.scene_reach[key] = self;
    o_scene = _init_instance(str_scenedef);
    if (isdefined(o_scene._a_objects)) {
        o_object = undefined;
        foreach (obj in o_scene._a_objects) {
            if (!isdefined(var_aed95ca8) || tolower(obj._str_name) == var_aed95ca8) {
                o_object = obj;
                break;
            }
        }
        if (isdefined(o_object._s.shots)) {
            foreach (s_shot in o_object._s.shots) {
                if (isdefined(s_shot.entry) && s_shot.entry.size > 0 && (!isdefined(str_shot) || tolower(s_shot.name) == str_shot)) {
                    o_object.var_55b4f21e = s_shot;
                    [[ o_object ]]->update_alignment();
                    assert(isdefined(o_object.m_align));
                    animation = s_shot.entry[0].anim;
                    if (isdefined(animation)) {
                        result = spawnstruct();
                        result.origin = getstartorigin(o_object.m_align.origin, o_object.m_align.angles, animation);
                        result.angles = getstartangles(o_object.m_align.origin, o_object.m_align.angles, animation);
                        /#
                            result.var_93d6832 = result.origin;
                        #/
                        result.origin = getclosestpointonnavmesh(result.origin);
                        self.scene_reach[key] = result;
                    }
                    break;
                }
            }
        }
    }
    return self.scene_reach[key];
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x17db8acd, Offset: 0x4860
// Size: 0x21c
function _init_instance(str_scenedef, a_ents, b_test_run = 0) {
    level flag::wait_till("scene_on_load_wait");
    if (!isdefined(str_scenedef)) {
        str_scenedef = self.scriptbundlename;
    }
    /#
        if (array().size && !isinarray(array(), str_scenedef)) {
            return;
        }
    #/
    s_bundle = get_scenedef(isdefined(self.var_e87a94f3) ? self.var_e87a94f3 : str_scenedef);
    if (!function_6f382548(s_bundle, str_scenedef)) {
        return;
    }
    /#
        assert(isdefined(str_scenedef), "<unknown string>" + (isdefined(self.origin) ? self.origin : "<unknown string>") + "<unknown string>");
        assert(isdefined(s_bundle), "<unknown string>" + (isdefined(self.origin) ? self.origin : "<unknown string>") + "<unknown string>" + str_scenedef + "<unknown string>");
    #/
    if (!is_true(self.script_ignore_active_scene_check)) {
        o_scene = get_active_scene(str_scenedef);
    }
    if (!isdefined(o_scene)) {
        o_scene = new cscene();
        [[ o_scene ]]->init(str_scenedef, s_bundle, self, a_ents, b_test_run);
    }
    return o_scene;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4786bdd1, Offset: 0x4a88
// Size: 0x1cc
function function_6f382548(struct, str_scene_name) {
    if (!isdefined(struct.disableinsplitscreen) || !(getdvarint(#"splitscreen_playercount", 1) > 1)) {
        return true;
    }
    if (struct.disableinsplitscreen == 2 && getdvarint(#"splitscreen_playercount", 1) > 1 || struct.disableinsplitscreen == 3 && getdvarint(#"splitscreen_playercount", 1) > 2 || struct.disableinsplitscreen == 4 && getdvarint(#"splitscreen_playercount", 1) > 3) {
        /#
            if (struct.type === "<unknown string>") {
                str_debug = "<unknown string>" + function_9e72a96(str_scene_name) + "<unknown string>";
            } else {
                str_debug = "<unknown string>" + function_9e72a96(struct.name) + "<unknown string>" + str_scene_name + "<unknown string>";
            }
            println(str_debug);
        #/
        return false;
    }
    return true;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x0
// Checksum 0x7e482f9c, Offset: 0x4c60
// Size: 0x250
function _load_female_scene(s_bundle, a_ents) {
    b_has_player = 0;
    foreach (s_object in s_bundle.objects) {
        if (!isdefined(s_object)) {
            continue;
        }
        if (s_object.type === "player") {
            b_has_player = 1;
            break;
        }
    }
    if (b_has_player) {
        e_player = undefined;
        if (isplayer(a_ents)) {
            e_player = a_ents;
        } else if (isarray(a_ents)) {
            foreach (ent in a_ents) {
                if (isplayer(ent)) {
                    e_player = ent;
                    break;
                }
            }
        }
        if (!isdefined(e_player) && isdefined(function_a1ef346b())) {
            e_player = function_a1ef346b()[0];
        }
        if (isplayer(e_player) && e_player util::is_female()) {
            if (isdefined(s_bundle.femalebundle)) {
                s_female_bundle = getscriptbundle(s_bundle.femalebundle);
                if (isdefined(s_female_bundle)) {
                    return s_female_bundle;
                }
            }
        }
    }
    return s_bundle;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x3850525c, Offset: 0x4eb8
// Size: 0x106
function function_de6a7579(str_scenedef, str_mode) {
    a_shots = get_all_shot_names(str_scenedef);
    if (a_shots.size == 0) {
        return "play";
    } else if (str_mode !== "init") {
        if (a_shots[0] !== "init") {
            str_shot = a_shots[0];
        } else if (a_shots.size > 1) {
            str_shot = a_shots[1];
        }
    } else if (str_mode === "init") {
        if (isinarray(a_shots, "init")) {
            str_shot = "init";
        } else {
            str_shot = a_shots[0];
        }
    }
    if (!isdefined(str_shot)) {
        str_shot = "play";
    }
    return str_shot;
}

// Namespace scene/scene_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xb51c9b5e, Offset: 0x4fc8
// Size: 0x8b4
function play(arg1, arg2, arg3, b_test_run = 0, str_mode = "", n_time, var_f7d56e76) {
    /#
        if (getdvarint(#"debug_scene", 0) > 0) {
            if (isdefined(arg1) && (isstring(arg1) || ishash(arg1))) {
                printtoprightln("<unknown string>" + function_9e72a96(arg1));
            } else {
                printtoprightln("<unknown string>");
            }
        }
    #/
    s_tracker = spawnstruct();
    s_tracker.n_scene_count = 0;
    if (self == level) {
        a_instances = [];
        if (isstring(arg1) || ishash(arg1)) {
            if (isstring(arg1) && issubstr(arg1, ",")) {
                a_toks = strtok(arg1, ",");
                str_value = a_toks[0];
                str_key = a_toks[1];
                if (isstring(arg2)) {
                    str_shot = tolower(arg2);
                    a_ents = arg3;
                } else {
                    a_ents = arg2;
                }
            } else if (isinarray(level.scenedefs, hash(arg1))) {
                str_scenedef = arg1;
                var_583db6f0 = 1;
            } else if (isinarray(level.scene_sequence_names, hash(arg1))) {
                str_scenedef = arg1;
                var_db1c5518 = 1;
            } else {
                str_value = arg1;
                str_key = "targetname";
            }
            if (isstring(arg2)) {
                if (isinarray(array("targetname", "script_noteworthy"), arg2)) {
                    str_key = arg2;
                } else {
                    str_shot = tolower(arg2);
                    var_5b51581a = 1;
                }
                a_ents = arg3;
            } else {
                a_ents = arg2;
            }
            a_instances = _get_scene_instances(str_value, str_key, str_scenedef);
            if (a_instances.size) {
                s_tracker.n_scene_count = a_instances.size;
                foreach (s_instance in a_instances) {
                    if (isdefined(s_instance)) {
                        if (str_mode !== "init" && s_instance function_c8dd0fee()) {
                            s_instance.var_538fcf13 = 1;
                            s_instance function_845e67f0(isdefined(s_instance.script_notify) ? s_instance.script_notify : s_instance.script_wait, isdefined(s_instance.script_waittill) ? s_instance.script_waittill : s_instance.script_timer, var_f7d56e76);
                            return;
                        }
                        if (!is_true(var_583db6f0) && !is_true(var_db1c5518)) {
                            str_scenedef = s_instance.scriptbundlename;
                            if (s_instance function_bf1f4951()) {
                                var_db1c5518 = 1;
                            }
                        }
                        if (!is_true(var_5b51581a) && !is_true(var_db1c5518)) {
                            str_shot = function_de6a7579(str_scenedef, str_mode);
                        } else if (is_true(var_5b51581a)) {
                            /#
                                if (str_mode === "<unknown string>") {
                                    iprintlnbold("<unknown string>");
                                    println("<unknown string>");
                                }
                            #/
                            if (str_mode === "loop") {
                                str_mode = "single_loop";
                            } else if (str_mode !== "init" && !issubstr(str_mode, "play_from_time") && !strstartswith(str_mode, "capture")) {
                                str_mode = "single";
                            }
                        }
                        var_a810addd = s_instance function_7cda7776(a_ents);
                        if (is_true(var_db1c5518)) {
                            s_instance thread function_2fd8d9a3(s_tracker, str_scenedef, a_ents);
                            continue;
                        }
                        s_instance thread _play_instance(s_tracker, str_scenedef, var_a810addd, b_test_run, str_shot, str_mode, n_time, var_5b51581a);
                    }
                }
            } else if (str_mode !== "init" && self function_c8dd0fee()) {
                self.var_538fcf13 = 1;
                self function_845e67f0(isdefined(self.script_notify) ? self.script_notify : self.script_wait, isdefined(self.script_waittill) ? self.script_waittill : self.script_timer, var_f7d56e76);
                return;
            } else {
                _play_on_self(s_tracker, arg1, arg2, arg3, b_test_run, str_mode, n_time);
            }
        }
    } else if (str_mode !== "init" && self function_c8dd0fee()) {
        self.var_538fcf13 = 1;
        self function_845e67f0(isdefined(self.script_notify) ? self.script_notify : self.script_wait, isdefined(self.script_waittill) ? self.script_waittill : self.script_timer, var_f7d56e76);
        return;
    } else {
        _play_on_self(s_tracker, arg1, arg2, arg3, b_test_run, str_mode, n_time);
    }
    if (s_tracker.n_scene_count > 0) {
        s_tracker waittill(#"scenes_done", #"death", #"hash_694043bb3252702");
    }
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xf284a719, Offset: 0x5888
// Size: 0x380
function function_7c6c9843(str_scene, str_shot, a_ents, n_rate = 1) {
    if (self == level) {
        var_de0ccf29 = (0, 0, 0);
        var_514ca983 = (0, 0, 0);
    } else {
        var_de0ccf29 = self.origin;
        var_514ca983 = self.angles;
    }
    if (isdefined(str_shot)) {
        s_bundle = getscriptbundle(str_scene);
        if (!isdefined(a_ents)) {
            a_ents = [];
        } else if (!isarray(a_ents)) {
            a_ents = array(a_ents);
        }
        var_773f6e2a = 0;
        foreach (index, obj in s_bundle.objects) {
            foreach (s_shot in obj.shots) {
                if (s_shot.name === str_shot) {
                    str_anim = s_shot.entry[0].anim;
                    break;
                }
            }
            if (isdefined(str_anim)) {
                a_ents[index] animscripted(str_anim, var_de0ccf29, var_514ca983, str_anim, "normal", "root", n_rate, 0);
                n_anim_length = getanimlength(str_anim);
                if (n_anim_length > var_773f6e2a) {
                    var_773f6e2a = n_anim_length;
                    var_7758510f = a_ents[index];
                    var_89e93728 = str_anim;
                }
            }
        }
        s_bundle = undefined;
        s_waitresult = var_7758510f waittillmatchtimeout(var_773f6e2a, {#notetrack:"end"}, var_89e93728);
        return;
    }
    a_str_shot_names = get_all_shot_names(str_scene, 1);
    foreach (str_shot in a_str_shot_names) {
        if (isdefined(self)) {
            self function_7c6c9843(str_scene, str_shot, a_ents, n_rate);
        }
    }
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa1454359, Offset: 0x5c10
// Size: 0xc0
function function_c8dd0fee() {
    if (!isdefined(self)) {
        return false;
    }
    if (self function_bf1f4951()) {
        return false;
    }
    if (self function_9503138e() && isdefined(self.scriptbundlename)) {
        if (!is_true(self.var_538fcf13) && function_9730988a(self.scriptbundlename, "breach_init") && function_9730988a(self.scriptbundlename, "breach_play")) {
            return true;
        }
    }
    return false;
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x0
// Checksum 0x323b6c83, Offset: 0x5cd8
// Size: 0x4c
function function_1d2f3816(arg1, arg2, arg3, var_f7d56e76) {
    self play(arg1, arg2, arg3, undefined, undefined, undefined, var_f7d56e76);
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x57939029, Offset: 0x5d30
// Size: 0x276
function function_845e67f0(var_b93683c = 0, var_3667c53d = 4, var_f7d56e76 = array()) {
    self thread play("breach_init");
    if (isstring(var_b93683c) || ishash(var_b93683c)) {
        level waittill(var_b93683c);
    } else {
        wait(var_b93683c);
    }
    a_ai = [];
    foreach (ent in self.scene_ents) {
        if (isai(ent) && !ent util::is_on_side(#"allies")) {
            array::add(a_ai, ent, 0);
        }
    }
    a_ai = arraycombine(a_ai, var_f7d56e76, 0, 0);
    self thread function_9bf1aeb9(a_ai);
    self thread breach_slow_time(var_3667c53d);
    self play("breach_play");
    self waittill(#"breach_done");
    if (function_9730988a(self.scriptbundlename, "breach_end")) {
        self play("breach_end");
    }
    if (is_true(self.script_play_multiple)) {
        self.var_538fcf13 = undefined;
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc879e9ee, Offset: 0x5fb0
// Size: 0x21e
function breach_slow_time(var_3667c53d) {
    setslowmotion(1, 0.3, 0.3);
    foreach (e_player in getplayers()) {
        e_player setmovespeedscale(0.3);
    }
    wait(0.3);
    if (isstring(var_3667c53d) || ishash(var_3667c53d)) {
        util::waittill_any_ents(self, "breach_cleared", level, var_3667c53d);
    } else {
        var_a1288aec = var_3667c53d * 0.3;
        self waittilltimeout(var_a1288aec, #"breach_cleared");
    }
    setslowmotion(0.3, 1, 0.3);
    foreach (e_player in getplayers()) {
        e_player setmovespeedscale(1);
    }
    self notify(#"breach_done");
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd0c7e715, Offset: 0x61d8
// Size: 0x76
function function_9bf1aeb9(a_ai) {
    self endon(#"breach_done");
    function_1eaaceab(a_ai);
    if (a_ai.size > 0) {
        ai::waittill_dead(a_ai);
    } else {
        wait(0.5);
    }
    self notify(#"breach_cleared");
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x4a43ddf3, Offset: 0x6258
// Size: 0x4c8
function function_1e327c20(a_str_scenes, var_b6213032 = 0, var_d8b95786 = 0, var_964a6420 = 0) {
    a_flags = [];
    if (!isdefined(a_str_scenes)) {
        a_str_scenes = [];
    } else if (!isarray(a_str_scenes)) {
        a_str_scenes = array(a_str_scenes);
    }
    if (var_b6213032) {
        foreach (str_scene in a_str_scenes) {
            s_scenedef = getscriptbundle(str_scene);
            str_team = util::get_team_mapping(s_scenedef.team);
            function_d8a83a50(str_scene, &function_cae579da, "done", str_team);
            s_scenedef = undefined;
        }
        if (var_d8b95786) {
            level.var_7ddd2b02 = 0;
        }
    }
    foreach (str_scene in a_str_scenes) {
        s_scenedef = getscriptbundle(str_scene);
        str_team = util::get_team_mapping(s_scenedef.team);
        if (getplayers(str_team).size || var_964a6420) {
            self thread play(str_scene);
            if (!isdefined(a_flags)) {
                a_flags = [];
            } else if (!isarray(a_flags)) {
                a_flags = array(a_flags);
            }
            if (!isinarray(a_flags, str_scene + "_scene_done")) {
                a_flags[a_flags.size] = str_scene + "_scene_done";
            }
        }
        s_scenedef = undefined;
    }
    level flag::wait_till_all(a_flags);
    waittillframeend();
    if (var_b6213032) {
        util::wait_network_frame();
        foreach (str_scene in a_str_scenes) {
            remove_scene_func(str_scene, &function_cae579da, "done");
        }
        a_players = getplayers();
        foreach (player in a_players) {
            player val::reset(#"hash_65d8adb275cb2ece", "freezecontrols");
            if (!var_d8b95786) {
                player util::delay(0.1, "disconnect", &lui::screen_fade_in, 1, undefined, "scene_system");
            }
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2bf7f584, Offset: 0x6728
// Size: 0xe8
function function_cae579da(str_team) {
    a_players = getplayers(str_team);
    foreach (player in a_players) {
        player val::set(#"hash_65d8adb275cb2ece", "freezecontrols", 1);
        player thread lui::screen_fade_out(0, undefined, "scene_system");
    }
}

// Namespace scene/scene_shared
// Params 7, eflags: 0x6 linked
// Checksum 0xdd2922f6, Offset: 0x6818
// Size: 0x3ac
function private _play_on_self(s_tracker, arg1, arg2, arg3, b_test_run = 0, str_mode = "", n_time) {
    if (isstring(arg1) || ishash(arg1)) {
        if (isinarray(level.scenedefs, hash(arg1)) || isinarray(level.scene_sequence_names, hash(arg1))) {
            str_scenedef = arg1;
            if (isstring(arg2)) {
                str_shot = tolower(arg2);
                a_ents = arg3;
            } else {
                a_ents = arg2;
            }
        } else {
            str_shot = tolower(arg1);
            a_ents = arg2;
        }
    } else if (isarray(arg1) || isentity(arg1)) {
        str_scenedef = self.scriptbundlename;
        a_ents = arg1;
    } else {
        str_scenedef = self.scriptbundlename;
    }
    if (isdefined(str_scenedef) && isinarray(level.scene_sequence_names, hash(str_scenedef))) {
        var_db1c5518 = 1;
    }
    s_tracker.n_scene_count = 1;
    if (!isdefined(str_shot) && isdefined(str_scenedef) && !is_true(var_db1c5518)) {
        str_shot = function_de6a7579(str_scenedef, str_mode);
    } else if (isdefined(str_shot) && !is_true(var_db1c5518)) {
        /#
            if (str_mode === "<unknown string>") {
                iprintlnbold("<unknown string>");
                println("<unknown string>");
            }
        #/
        if (str_mode !== "init" && !issubstr(str_mode, "play_from_time")) {
            str_mode = "single";
        }
        var_5b51581a = 1;
    }
    var_a810addd = self function_7cda7776(a_ents);
    if (is_true(var_db1c5518)) {
        self thread function_2fd8d9a3(s_tracker, str_scenedef, var_a810addd);
        return;
    }
    self thread _play_instance(s_tracker, str_scenedef, var_a810addd, b_test_run, str_shot, str_mode, n_time, var_5b51581a);
}

// Namespace scene/scene_shared
// Params 8, eflags: 0x6 linked
// Checksum 0xe235a685, Offset: 0x6bd0
// Size: 0x6de
function private _play_instance(s_tracker, str_scenedef = self.scriptbundlename, a_ents, b_test_run = 0, str_shot = "play", str_mode, n_time, var_5b51581a) {
    if (isdefined(n_time) && issubstr(str_mode, "play_from_time")) {
        var_8b21886e = function_d1abba8b(str_scenedef, str_shot, str_mode, n_time, var_5b51581a);
        str_shot = var_8b21886e.var_ef711d04;
        var_dd2b75b = var_8b21886e.var_3486c904;
        str_mode += ":" + var_dd2b75b;
    }
    if (str_mode === "init") {
        str_shot = function_de6a7579(str_scenedef, str_mode);
    }
    /#
        if (array().size && !isinarray(array(), str_scenedef)) {
            return;
        }
    #/
    if (level flag::get(str_scenedef + "_scene_done")) {
        level flag::clear(str_scenedef + "_scene_done");
        var_d43c0257 = getscriptbundle(str_scenedef);
    }
    b_play = 1;
    if (str_mode !== "init" && !is_true(self.var_135bd649)) {
        util::function_35840de8(self.script_delay);
    }
    if (self.scriptbundlename === str_scenedef) {
        if (!is_true(self.script_play_multiple)) {
            if (!isdefined(self.scene_played)) {
                self.scene_played = [];
            }
            if (is_true(self.scene_played[str_shot]) && !b_test_run) {
                waittillframeend();
                while (is_playing(str_scenedef, str_shot)) {
                    waitframe(1);
                }
                b_play = 0;
                println("<unknown string>" + str_scenedef + "<unknown string>");
            }
        }
        if (str_mode == "init") {
            self.scene_played[str_shot] = 0;
        } else {
            self.scene_played[str_shot] = 1;
        }
    }
    if (b_play) {
        if (isdefined(self.script_teleport_location)) {
            self teleport::function_ff8a7a3();
        }
        o_scene = _init_instance(str_scenedef, a_ents, b_test_run);
        /#
            function_8ee42bf(o_scene);
        #/
        if (isdefined(o_scene)) {
            thread [[ o_scene ]]->play(str_shot, a_ents, b_test_run, str_mode);
            if (isdefined(o_scene._a_objects) && o_scene._a_objects.size) {
                o_scene waittill(str_shot, #"hash_27297a73bc597607", #"scene_stop");
            }
        }
        if (isdefined(self)) {
            if (isdefined(self.scriptbundlename) && is_true(getscriptbundle(self.scriptbundlename).looping)) {
                self.scene_played[str_shot] = 0;
            }
        }
    }
    var_f62e21cb = function_c9770402(str_scenedef);
    if (isdefined(var_f62e21cb) && str_shot != "init" && !function_6a0b0afe(str_mode) && str_mode != "init") {
        var_41c1a1b7 = getscriptbundle(str_scenedef);
        var_8701de52 = getscriptbundle(var_f62e21cb);
        if (isdefined(var_8701de52) && var_8701de52.type === "scene" && var_8701de52 !== var_41c1a1b7) {
            var_8c2eecb3 = var_41c1a1b7.name;
            level waittill(var_41c1a1b7.str_final_bundle + "_done");
            if (str_shot == "play") {
                level flag::set(var_8c2eecb3 + "_scene_done");
            }
        } else if (!function_b260bdcc(str_scenedef, str_shot)) {
            if (isdefined(o_scene) && !is_true(o_scene.scene_stopping)) {
                o_scene waittill(#"scene_done", #"scene_stop", #"scene_skip_completed");
            }
        }
    }
    s_tracker.n_scene_count--;
    if (s_tracker.n_scene_count == 0) {
        if (str_mode !== "init") {
            level flag::set(str_scenedef + "_scene_done");
            if (isdefined(self.script_flag_set)) {
                level flag::set(self.script_flag_set);
            }
        }
        /#
            function_8ee42bf(o_scene);
        #/
        s_tracker notify(#"scenes_done");
        if (isdefined(self)) {
            self notify(#"scenes_done");
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x3ac04597, Offset: 0x72b8
// Size: 0x23c
function delete_scene_spawned_ents(arg1) {
    if (self == level) {
        a_instances = [];
        if (isstring(arg1) || ishash(arg1)) {
            if (isstring(arg1) && issubstr(arg1, ",")) {
                a_toks = strtok(arg1, ",");
                str_value = a_toks[0];
                str_key = a_toks[1];
            } else if (isinarray(level.scenedefs, hash(arg1))) {
                str_scenedef = arg1;
            } else {
                str_value = arg1;
                str_key = "targetname";
            }
            a_instances = _get_scene_instances(str_value, str_key, str_scenedef, 1);
            if (a_instances.size) {
                foreach (instance in a_instances) {
                    instance _delete_scene_spawned_ents(str_scenedef);
                }
            }
        }
        return;
    }
    if (isstring(arg1) || ishash(arg1)) {
        str_scenedef = arg1;
    }
    self _delete_scene_spawned_ents(str_scenedef);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd655fcc0, Offset: 0x7500
// Size: 0xdc
function _delete_scene_spawned_ents(str_scene) {
    if (isdefined(self.scene_ents)) {
        foreach (ent in self.scene_ents) {
            if (isdefined(ent) && isdefined(ent.scene_spawned)) {
                ent delete();
            }
        }
        /#
            if (isdefined(str_scene)) {
                update_debug_state(str_scene, "<unknown string>");
            }
        #/
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x0
// Checksum 0x26056ecf, Offset: 0x75e8
// Size: 0x88
function update_debug_state(str_scene, str_state) {
    if (!strendswith(self.last_scene_state_instance[str_scene], str_state)) {
        level.last_scene_state[str_scene] = level.last_scene_state[str_scene] + "," + str_state;
        self.last_scene_state_instance[str_scene] = self.last_scene_state_instance[str_scene] + "," + str_state;
    }
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x1203a497, Offset: 0x7678
// Size: 0x1aa
function _get_scene_instances(str_value, str_key = "targetname", str_scenedef, b_include_inactive = 0) {
    a_instances = [];
    if (isdefined(str_value)) {
        a_instances = struct::get_array(str_value, str_key);
        assert(a_instances.size, "<unknown string>" + str_key + "<unknown string>" + function_9e72a96(str_value) + "<unknown string>");
    }
    if (isdefined(str_scenedef)) {
        a_instances_by_scenedef = struct::get_array(str_scenedef, "scriptbundlename");
        a_instances = arraycombine(a_instances_by_scenedef, a_instances, 0, 0);
        a_active_instances = get_active_scenes(str_scenedef);
        a_instances = arraycombine(a_active_instances, a_instances, 0, 0);
        if (b_include_inactive) {
            a_inactive_instances = get_inactive_scenes(str_scenedef);
            a_instances = arraycombine(a_inactive_instances, a_instances, 0, 0);
        }
    }
    return a_instances;
}

// Namespace scene/scene_shared
// Params 5, eflags: 0x0
// Checksum 0xa0873b78, Offset: 0x7830
// Size: 0x74
function skipto_end(arg1, arg2, arg3, n_time, b_include_players = 1) {
    n_time = isdefined(n_time) ? n_time : 1;
    play_from_time(arg1, arg2, arg3, n_time, 1, undefined, b_include_players);
}

// Namespace scene/scene_shared
// Params 8, eflags: 0x2 linked
// Checksum 0xcd641680, Offset: 0x78b0
// Size: 0x14c
function play_from_time(arg1, arg2, arg3, n_time, var_c9d6bbb = 1, var_20dda4d1 = 0, b_include_players = 1, var_2250555 = 1) {
    if (var_c9d6bbb) {
        str_mode = "play_from_time_normalized";
    } else {
        str_mode = "play_from_time_elapsed";
    }
    if ((function_d3e3e0c7(arg1) || function_d3e3e0c7(arg2)) && var_20dda4d1) {
        str_mode += "_single";
    }
    if (!b_include_players) {
        str_mode += "_noplayers";
    }
    if (!var_2250555) {
        str_mode += "_noai";
    }
    play(arg1, arg2, arg3, 0, str_mode, n_time);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2a01bc40, Offset: 0x7a08
// Size: 0x9a
function function_d3e3e0c7(arg) {
    if (isstring(arg) && !isinarray(level.scenedefs, hash(arg)) && !isinarray(array("targetname", "script_noteworthy"), arg)) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x250457c2, Offset: 0x7ab0
// Size: 0x19a
function function_d1abba8b(str_scenedef, str_shot, str_mode, n_time, var_5b51581a = 0) {
    var_8b21886e = spawnstruct();
    if (issubstr(str_mode, "play_from_time_normalized")) {
        if (var_5b51581a) {
            var_8b21886e.var_ef711d04 = str_shot;
            var_8b21886e.var_3486c904 = float(n_time);
            return var_8b21886e;
        } else {
            var_f3f679dd = float(n_time) * function_12479eba(str_scenedef);
        }
    } else if (issubstr(str_mode, "play_from_time_elapsed")) {
        if (var_5b51581a) {
            var_c74251a4 = function_8582657c(str_scenedef, str_shot);
            var_8b21886e.var_ef711d04 = str_shot;
            var_8b21886e.var_3486c904 = float(n_time) / var_c74251a4;
            return var_8b21886e;
        } else {
            var_f3f679dd = float(n_time);
        }
    }
    var_8b21886e = function_dde5f483(str_scenedef, var_f3f679dd);
    return var_8b21886e;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x19c1397d, Offset: 0x7c58
// Size: 0x222
function function_1eab8670(obj, str_shot) {
    var_5a162d58 = 0;
    n_anim_length = 0;
    if (isdefined(obj.shots)) {
        foreach (s_shot in obj.shots) {
            if (is_true(s_shot.disableshot)) {
                continue;
            }
            if (s_shot.name === tolower(str_shot) && isdefined(s_shot.entry)) {
                foreach (s_entry in s_shot.entry) {
                    if (isdefined(s_entry.cameraswitcher)) {
                        var_5a162d58 += float(getcamanimtime(s_entry.cameraswitcher)) / 1000;
                        continue;
                    }
                    if (isdefined(s_entry.anim)) {
                        n_anim_length += getanimlength(s_entry.anim);
                    }
                }
                break;
            }
        }
    }
    n_length = max(var_5a162d58, n_anim_length);
    return n_length;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x29b8f550, Offset: 0x7e88
// Size: 0x23a
function function_dde5f483(str_scenedef, n_elapsed_time) {
    s_scenedef = get_scenedef(str_scenedef);
    a_shots = get_all_shot_names(str_scenedef, 1);
    var_7a2504a = 0;
    var_8b21886e = spawnstruct();
    foreach (str_shot in a_shots) {
        var_958bccd3 = 0;
        foreach (obj in s_scenedef.objects) {
            var_657b76cc = function_1eab8670(obj, str_shot);
            if (var_657b76cc > var_958bccd3) {
                var_958bccd3 = var_657b76cc;
            }
        }
        var_219aac3f = var_7a2504a;
        var_68790830 = var_219aac3f + var_958bccd3;
        if (n_elapsed_time >= var_219aac3f && n_elapsed_time < var_68790830) {
            var_8b21886e.var_ef711d04 = str_shot;
            var_8b21886e.var_3486c904 = (n_elapsed_time - var_219aac3f) / var_958bccd3;
            return var_8b21886e;
        }
        var_7a2504a += var_958bccd3;
    }
    var_8b21886e.var_ef711d04 = a_shots[a_shots.size - 1];
    var_8b21886e.var_3486c904 = 0.99;
    return var_8b21886e;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb8bb8273, Offset: 0x80d0
// Size: 0x126
function function_8582657c(var_b9a72490, str_shot) {
    if (isstring(var_b9a72490) || ishash(var_b9a72490)) {
        s_scenedef = get_scenedef(var_b9a72490);
    } else {
        s_scenedef = var_b9a72490;
    }
    var_a0c66830 = 0;
    foreach (obj in s_scenedef.objects) {
        var_657b76cc = function_1eab8670(obj, str_shot);
        if (var_657b76cc > var_a0c66830) {
            var_a0c66830 = var_657b76cc;
        }
    }
    return var_a0c66830;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xef46b530, Offset: 0x8200
// Size: 0xf8
function function_12479eba(str_scenedef) {
    s_scenedef = get_scenedef(str_scenedef);
    a_shots = get_all_shot_names(str_scenedef, 1);
    var_9d90ef8b = 0;
    foreach (str_shot in a_shots) {
        var_9d90ef8b += function_8582657c(s_scenedef, str_shot);
    }
    return var_9d90ef8b;
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x0
// Checksum 0xbbdb7853, Offset: 0x8300
// Size: 0x5c
function skipto_end_noai(arg1, arg2, arg3, n_time) {
    n_time = isdefined(n_time) ? n_time : 1;
    play_from_time(arg1, arg2, arg3, n_time, 1, 0, 0);
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xbe0ceda1, Offset: 0x8368
// Size: 0x27c
function stop(arg1, arg2, arg3) {
    if (self == level) {
        if (isstring(arg1) || ishash(arg1)) {
            if (isstring(arg2)) {
                str_value = arg1;
                str_key = arg2;
                b_clear = arg3;
            } else {
                str_value = arg1;
                b_clear = arg2;
            }
            if (isdefined(str_key)) {
                a_instances = struct::get_array(str_value, str_key);
                assert(a_instances.size, "<unknown string>" + str_key + "<unknown string>" + str_value + "<unknown string>");
                str_value = undefined;
            } else {
                a_instances = struct::get_array(str_value, "targetname");
                if (!a_instances.size) {
                    a_instances = get_active_scenes(str_value);
                } else {
                    str_value = undefined;
                }
            }
            foreach (s_instance in arraycopy(a_instances)) {
                if (isdefined(s_instance)) {
                    s_instance _stop_instance(b_clear, str_value);
                }
            }
        }
        return;
    }
    if (isstring(arg1) || ishash(arg1)) {
        _stop_instance(arg2, arg1);
        return;
    }
    _stop_instance(arg1);
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x538d92ca, Offset: 0x85f0
// Size: 0xf0
function _stop_instance(b_clear = 0, str_scenedef) {
    if (isdefined(self.scenes)) {
        foreach (o_scene in arraycopy(self.scenes)) {
            str_scene_name = o_scene._str_name;
            if (!isdefined(str_scenedef) || str_scene_name == str_scenedef) {
                thread [[ o_scene ]]->stop(b_clear);
            }
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb82ddbf4, Offset: 0x86e8
// Size: 0x3a
function has_init_state(str_scenedef) {
    return isinarray(get_all_shot_names(str_scenedef), "init");
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe509373, Offset: 0x8730
// Size: 0x3a
function function_9730988a(str_scenedef, str_shotname) {
    return isinarray(get_all_shot_names(str_scenedef), str_shotname);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0xfc760f77, Offset: 0x8778
// Size: 0x22
function get_prop_count(str_scenedef) {
    return _get_type_count("prop", str_scenedef);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3132c331, Offset: 0x87a8
// Size: 0x22
function get_vehicle_count(str_scenedef) {
    return _get_type_count("vehicle", str_scenedef);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x43de18f0, Offset: 0x87d8
// Size: 0x22
function get_actor_count(str_scenedef) {
    return _get_type_count("actor", str_scenedef);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x16d35e21, Offset: 0x8808
// Size: 0x22
function function_7aa3d2c6(str_scenedef) {
    return _get_type_count("sharedplayer", str_scenedef);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x72f81f76, Offset: 0x8838
// Size: 0x22
function get_player_count(str_scenedef) {
    return _get_type_count("player", str_scenedef);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x5116c9e1, Offset: 0x8868
// Size: 0x22
function function_afb927e7(str_scenedef) {
    return _get_type_count(undefined, str_scenedef);
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6001886d, Offset: 0x8898
// Size: 0x12c
function _get_type_count(str_type, str_scenedef) {
    s_scenedef = isdefined(str_scenedef) ? getscriptbundle(str_scenedef) : getscriptbundle(self.scriptbundlename);
    if (!isdefined(str_type)) {
        return s_scenedef.objects.size;
    }
    n_count = 0;
    foreach (s_obj in s_scenedef.objects) {
        if (isdefined(s_obj.type)) {
            if (tolower(s_obj.type) == tolower(str_type)) {
                n_count++;
            }
        }
    }
    return n_count;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x1cb2eb68, Offset: 0x89d0
// Size: 0x126
function function_128f0294(var_37fa9b04) {
    if (!isdefined(self._scene_object) || !isdefined(self.var_5b7900ec)) {
        return true;
    }
    foreach (s_shot in self._scene_object._s.shots) {
        if (is_true(self.var_5b7900ec[s_shot.name])) {
            continue;
        }
        if (self._scene_object csceneobject::function_f12c5e67(s_shot) && !self._scene_object csceneobject::function_128f0294(s_shot, var_37fa9b04)) {
            return false;
        }
    }
    return true;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x5b5ae0c, Offset: 0x8b00
// Size: 0x4e
function is_active(str_scenedef) {
    if (self == level) {
        return (get_active_scenes(str_scenedef).size > 0);
    }
    return isdefined(get_active_scene(str_scenedef));
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4da9c78, Offset: 0x8b58
// Size: 0x8a
function is_playing(str_scenedef = self.scriptbundlename, str_shot = "play") {
    o_scene = get_active_scene(str_scenedef);
    if (isdefined(o_scene._str_shot)) {
        return (o_scene._str_shot === str_shot);
    } else if (isdefined(o_scene)) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0xfdaf9a96, Offset: 0x8bf0
// Size: 0x96
function is_ready(str_scenedef) {
    if (self == level) {
        return level flag::get(str_scenedef + "_ready");
    } else {
        if (!isdefined(str_scenedef)) {
            str_scenedef = self.scriptbundlename;
        }
        o_scene = get_active_scene(str_scenedef);
        if (isdefined(o_scene)) {
            return o_scene flag::get(#"ready");
        }
    }
    return 0;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb6e52e31, Offset: 0x8c90
// Size: 0xf0
function get_active_scenes(str_scenedef) {
    if (isdefined(str_scenedef)) {
        return (isdefined(level.active_scenes[str_scenedef]) ? level.active_scenes[str_scenedef] : []);
    }
    a_scenes = [];
    foreach (str_scenedef, _ in level.active_scenes) {
        a_scenes = arraycombine(a_scenes, level.active_scenes[str_scenedef], 0, 0);
    }
    return a_scenes;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4705078c, Offset: 0x8d88
// Size: 0x108
function get_inactive_scenes(str_scenedef) {
    if (!isdefined(level.inactive_scenes)) {
        level.inactive_scenes = [];
    }
    if (isdefined(str_scenedef)) {
        return (isdefined(level.inactive_scenes[str_scenedef]) ? level.inactive_scenes[str_scenedef] : []);
    }
    a_scenes = [];
    foreach (str_scenedef, _ in level.inactive_scenes) {
        a_scenes = arraycombine(a_scenes, level.inactive_scenes[str_scenedef], 0, 0);
    }
    return a_scenes;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xdc9e085, Offset: 0x8e98
// Size: 0xaa
function get_active_scene(str_scenedef) {
    if (isdefined(str_scenedef) && isdefined(self.scenes)) {
        foreach (o_scene in self.scenes) {
            if (o_scene._str_name == str_scenedef) {
                return o_scene;
            }
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x2273a27b, Offset: 0x8f50
// Size: 0xc
function delete_scene_data(*str_scenename) {
    
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb4561ecc, Offset: 0x8f68
// Size: 0x54
function is_igc() {
    return is_true(self.igc) || isstring(self.cameraswitcher) || ishash(self.cameraswitcher);
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa34493a9, Offset: 0x8fc8
// Size: 0x206
function scene_disable_player_stuff(*s_scenedef, s_objectdef) {
    self endon(#"disconnect");
    /#
        if (getdvarint(#"debug_scene", 0) > 0) {
            printtoprightln("<unknown string>");
        }
    #/
    if (!isplayer(self)) {
        return;
    }
    self notify(#"scene_disable_player_stuff");
    self notify(#"kill_hint_text");
    self val::set(#"scene_system", "disable_offhand_weapons", 1);
    self val::set(#"scene_system", "disable_offhand_special", 1);
    self val::set(#"scene_system", "disable_oob", 1);
    self val::set(#"scene_system", "freezecontrols", 1);
    self val::set(#"scene_system", "allow_jump", 0);
    if (isdefined(s_objectdef)) {
        if (!is_true(s_objectdef.showhud)) {
            self val::set(#"scene_system", "show_hud", 0);
            util::wait_network_frame();
            self notify(#"hash_5af33713e88a6df7");
        }
    }
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x5d2323bc, Offset: 0x91d8
// Size: 0x1dc
function scene_enable_player_stuff(s_scenedef, s_objectdef, e_scene_root) {
    /#
        if (getdvarint(#"debug_scene", 0) > 0) {
            printtoprightln("<unknown string>");
        }
    #/
    if (!isplayer(self)) {
        return;
    }
    self endon(#"scene_disable_player_stuff", #"disconnect");
    waitframe(0);
    if (isdefined(s_scenedef)) {
        self function_777f32c4(e_scene_root, s_scenedef);
    }
    waitframe(10);
    self val::reset(#"scene_system", "disable_offhand_weapons");
    self val::reset(#"scene_system", "disable_offhand_special");
    self val::reset(#"scene_system", "disable_oob");
    self val::reset(#"scene_system", "freezecontrols");
    self val::reset(#"scene_system", "allow_jump");
    if (isdefined(s_objectdef)) {
        if (!is_true(s_objectdef.showhud)) {
            self val::reset(#"scene_system", "show_hud");
        }
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa6f67488, Offset: 0x93c0
// Size: 0x5c
function function_777f32c4(e_scene_root, *s_scenedef) {
    self endon(#"disconnect");
    if (isdefined(s_scenedef) && isdefined(s_scenedef.script_teleport_location)) {
        s_scenedef teleport::player(self);
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x44862bc5, Offset: 0x9428
// Size: 0x54
function function_37592f67(e_scene_root, s_scenedef) {
    waitframe(0);
    if (isdefined(s_scenedef)) {
        if (isdefined(e_scene_root) && isdefined(e_scene_root.script_teleport_location)) {
            e_scene_root teleport::hero(self);
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xac5c59c6, Offset: 0x9488
// Size: 0x14a
function updateigcviewtime(b_in_igc) {
    if (b_in_igc && !isdefined(level.igcstarttime)) {
        level.igcstarttime = gettime();
        return;
    }
    if (!b_in_igc && isdefined(level.igcstarttime)) {
        igcviewtimesec = gettime() - level.igcstarttime;
        level.igcstarttime = undefined;
        foreach (player in getplayers()) {
            if (!isdefined(player.totaligcviewtime)) {
                player.totaligcviewtime = 0;
            }
            player.totaligcviewtime += int(float(igcviewtimesec) / 1000);
        }
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe56f5ea1, Offset: 0x95e0
// Size: 0xe8
function set_igc_active(b_in_igc) {
    n_ent_num = self getentitynumber();
    n_players_in_igc_field = level clientfield::get("in_igc");
    if (b_in_igc) {
        n_players_in_igc_field |= 1 << n_ent_num;
    } else {
        n_players_in_igc_field &= ~(1 << n_ent_num);
    }
    updateigcviewtime(b_in_igc);
    level clientfield::set("in_igc", n_players_in_igc_field);
    self flag::set_val("in_igc", b_in_igc);
    /#
    #/
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc2abb1ca, Offset: 0x96d0
// Size: 0x5e
function is_igc_active() {
    n_players_in_igc = level clientfield::get("in_igc");
    n_entnum = self getentitynumber();
    return n_players_in_igc & 1 << n_entnum;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0x519dceb3, Offset: 0x9738
// Size: 0x1a
function function_871087b6() {
    return is_true(self.var_7136e83);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0xaa76a4b7, Offset: 0x9760
// Size: 0xc4
function get_scene_shot(str_scene) {
    foreach (o_scene in self.scenes) {
        if (o_scene._str_name === str_scene) {
            return o_scene._str_shot;
        }
    }
    assert("<unknown string>" + str_scene + "<unknown string>");
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0xc3fe5e17, Offset: 0x9830
// Size: 0x80
function is_capture_mode(str_mode = getdvarstring(#"scene_menu_mode", "default")) {
    if (issubstr(str_mode, "capture") || function_a4dedc63(1)) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0x6b039c44, Offset: 0x98b8
// Size: 0x1a
function should_spectate_on_join() {
    return is_true(level.scene_should_spectate_on_hot_join);
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0xb7a00c9c, Offset: 0x98e0
// Size: 0x28
function wait_until_spectate_on_join_completes() {
    while (is_true(level.scene_should_spectate_on_hot_join)) {
        waitframe(1);
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xab53a72, Offset: 0x9910
// Size: 0xa8
function function_a4dedc63(var_2875c7e7 = 0) {
    if (var_2875c7e7) {
        if (getdvarint(#"hash_6a54249f0cc48945", 0)) {
            return true;
        }
    } else if (getdvarint(#"hash_1ac735c6e28a2f7a", 0) || getdvarint(#"hash_6a54249f0cc48945", 0)) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd0c8d9fc, Offset: 0x99c0
// Size: 0xae
function function_46546b5c(str_scenedef) {
    if (!sessionmodeiscampaigngame()) {
        return false;
    }
    if (function_a4dedc63()) {
        return false;
    }
    if (getdvarint(#"hash_862358d532e674c", 0) === 1) {
        var_41c1a1b7 = getscriptbundle(str_scenedef);
        if (is_true(var_41c1a1b7.var_2af733c9)) {
            return true;
        }
    }
    return false;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc2a203c4, Offset: 0x9a78
// Size: 0x96
function function_a63b9bca(str_scenedef) {
    if (!sessionmodeiscampaigngame()) {
        return false;
    }
    if (getdvarint(#"hash_862358d532e674c", 0) === 2) {
        var_41c1a1b7 = getscriptbundle(str_scenedef);
        if (is_true(var_41c1a1b7.var_2af733c9)) {
            return true;
        }
    }
    return false;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4f516730, Offset: 0x9b18
// Size: 0xa20
function function_a4ad0308(o_scene) {
    if ((getdvarint(#"hash_12bb279f3cc30d88", 1) == 0 || is_true(o_scene._s.disablesceneskipping)) && !function_46546b5c(o_scene._str_name)) {
        return;
    }
    self notify(#"hash_f7c1e0e8fb935d5");
    self endoncallback(&function_63033fc3, #"hash_f7c1e0e8fb935d5", #"disconnect");
    o_scene endoncallback(&function_63033fc3, #"scene_done", #"scene_stop", #"scene_skip_completed", #"hash_63783193d9ac5bfc");
    level endoncallback(&function_63033fc3, #"hash_7a8cd7f6a20dde3e");
    b_skip_scene = 0;
    self clear_scene_skipping_ui();
    waitframe(1);
    if (function_46546b5c(o_scene._str_name)) {
        var_6b859e8c = 1;
        var_d60120 = 0;
    } else {
        var_6b859e8c = 0;
        var_d60120 = 2500;
    }
    self.skip_scene_menu_handle = lui::get_luimenu("cp_skip_scene_menu");
    self.skip_scene_menu_handle cp_skip_scene_menu::open(self);
    self.skip_scene_menu_handle cp_skip_scene_menu::set_showskipbutton(self, 0);
    self.skip_scene_menu_handle cp_skip_scene_menu::set_hostisskipping(self, 0);
    self.skip_scene_menu_handle cp_skip_scene_menu::set_votedtoskip(self, 0);
    self.skip_scene_menu_handle cp_skip_scene_menu::set_sceneskipendtime(self, 0);
    while (true) {
        if (is_true(self.var_fc92900f) && isdefined(self.skip_scene_menu_handle)) {
            self.skip_scene_menu_handle cp_skip_scene_menu::set_votedtoskip(self, 1);
            self.skip_scene_menu_handle cp_skip_scene_menu::set_showskipbutton(self, 2);
            self.scene_skip_timer = undefined;
            p_host = util::gethostplayer();
            if (isdefined(p_host) && isdefined(p_host.skip_scene_menu_handle)) {
                p_host.skip_scene_menu_handle cp_skip_scene_menu::set_votedtoskip(p_host, 1);
            }
        } else if (self any_button_pressed() && function_1c87e68f()) {
            if (!isdefined(self.scene_skip_timer) && isdefined(self.skip_scene_menu_handle)) {
                self.skip_scene_menu_handle cp_skip_scene_menu::set_showskipbutton(self, 1);
            }
            self.scene_skip_timer = gettime();
        } else if (isdefined(self.scene_skip_timer) && isdefined(self.skip_scene_menu_handle)) {
            if (gettime() - self.scene_skip_timer > var_d60120) {
                self.skip_scene_menu_handle cp_skip_scene_menu::set_showskipbutton(self, 2);
                self.scene_skip_timer = undefined;
            }
        }
        var_8133fe2b = 0;
        if (var_6b859e8c || self primarybuttonpressedlocal() || (is_false(self gamepadusedlast()) ? self attackbuttonpressed() : self jumpbuttonpressed())) {
            var_8133fe2b = 1;
        }
        if (var_8133fe2b && function_1c87e68f()) {
            if (!isdefined(self.scene_skip_start_time) && isdefined(self.skip_scene_menu_handle)) {
                self.skip_scene_menu_handle cp_skip_scene_menu::set_sceneskipendtime(self, gettime() + var_d60120);
                self.scene_skip_start_time = gettime();
                if (self ishost()) {
                    foreach (player in getplayers()) {
                        if (isdefined(player.skip_scene_menu_handle) && !player ishost()) {
                            player.skip_scene_menu_handle cp_skip_scene_menu::set_hostisskipping(player, 1);
                        }
                    }
                }
            } else if (isdefined(self.scene_skip_start_time) && gettime() - self.scene_skip_start_time > var_d60120) {
                if (self ishost()) {
                    b_skip_scene = 1;
                    break;
                } else {
                    self.var_fc92900f = 1;
                    var_4ca048a2 = 0;
                    foreach (player in getplayers()) {
                        if (is_true(player.var_fc92900f)) {
                            var_4ca048a2++;
                        }
                    }
                    if (var_4ca048a2 > 1) {
                        b_skip_scene = 1;
                        break;
                    }
                }
            }
        } else if (isdefined(self.scene_skip_start_time) && isdefined(self.skip_scene_menu_handle)) {
            self.skip_scene_menu_handle cp_skip_scene_menu::set_sceneskipendtime(self, 0);
            self.scene_skip_start_time = undefined;
            if (self ishost()) {
                foreach (player in getplayers()) {
                    if (isdefined(player.skip_scene_menu_handle) && !player ishost()) {
                        player.skip_scene_menu_handle cp_skip_scene_menu::set_hostisskipping(player, 0);
                    }
                }
            }
        }
        if (is_true(level.chyron_text_active)) {
            while (is_true(level.chyron_text_active)) {
                waitframe(1);
            }
            wait(3);
        }
        waitframe(1);
    }
    if (b_skip_scene) {
        self clear_scene_skipping_ui();
        self playsound(#"uin_igc_skip");
        self notify(#"scene_being_skipped");
        music::setmusicstatebyteam("death", self.team);
        start_scene_skip(o_scene);
        foreach (player in getplayers()) {
            if (isdefined(player._scene_object) && isdefined(player._scene_object._o_scene) && player._scene_object._o_scene != o_scene) {
                var_bf6b1ad2 = player._scene_object._o_scene;
                if (var_bf6b1ad2._s is_igc()) {
                    start_scene_skip(var_bf6b1ad2);
                    break;
                }
            }
        }
        level notify(#"hash_7a8cd7f6a20dde3e");
    }
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1ef7b195, Offset: 0xa540
// Size: 0x38
function start_scene_skip(o_scene) {
    o_scene.skipping_scene = 1;
    o_scene.b_player_scene = 1;
    thread [[ o_scene ]]->skip_scene(0);
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2cfb859c, Offset: 0xa580
// Size: 0x8c
function function_1c87e68f() {
    if (is_true(level.chyron_text_active)) {
        return false;
    }
    if (is_true(level.var_d89799d7) && level flag::exists("switchmap_preload_finished") && !level flag::get("switchmap_preload_finished")) {
        return false;
    }
    return true;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2e5dee82, Offset: 0xa618
// Size: 0x6e
function clear_scene_skipping_ui() {
    if (isdefined(self.scene_skip_timer)) {
        self.scene_skip_timer = undefined;
    }
    if (isdefined(self.scene_skip_start_time)) {
        self.scene_skip_start_time = undefined;
    }
    if (isdefined(self.skip_scene_menu_handle)) {
        self.skip_scene_menu_handle cp_skip_scene_menu::close(self);
        self.skip_scene_menu_handle = undefined;
    }
    self.var_fc92900f = undefined;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x91ab4edb, Offset: 0xa690
// Size: 0x94
function function_63033fc3(*str_notify) {
    if (isclass(self) || self == level) {
        array::thread_all(getplayers(), &clear_scene_skipping_ui);
        return;
    }
    if (isplayer(self)) {
        self clear_scene_skipping_ui();
    }
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3557eb59, Offset: 0xa730
// Size: 0x1a6
function any_button_pressed() {
    if (self actionslotonebuttonpressed()) {
        return true;
    } else if (self actionslottwobuttonpressed()) {
        return true;
    } else if (self actionslotthreebuttonpressed()) {
        return true;
    } else if (self actionslotfourbuttonpressed()) {
        return true;
    } else if (self jumpbuttonpressed()) {
        return true;
    } else if (self stancebuttonpressed()) {
        return true;
    } else if (self weaponswitchbuttonpressed()) {
        return true;
    } else if (self reloadbuttonpressed()) {
        return true;
    } else if (self fragbuttonpressed()) {
        return true;
    } else if (self throwbuttonpressed()) {
        return true;
    } else if (self attackbuttonpressed()) {
        return true;
    } else if (self secondaryoffhandbuttonpressed()) {
        return true;
    } else if (self meleebuttonpressed()) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x53b71376, Offset: 0xa8e0
// Size: 0x34
function on_player_disconnect() {
    if (is_false(level.gameended)) {
        self set_igc_active(0);
    }
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7e1f7e85, Offset: 0xa920
// Size: 0x128
function function_5fb139ea() {
    foreach (s_instance in struct::get_script_bundle_instances("scene")) {
        s_instance thread stop();
    }
    foreach (s_instance in struct::get_script_bundle_instances("scenesequence")) {
        s_instance thread stop();
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x0
// Checksum 0xa6c1dd3a, Offset: 0xaa50
// Size: 0xc4
function add_scene_ordered_notetrack(group_name, str_note) {
    if (!isdefined(level.scene_ordered_notetracks)) {
        level.scene_ordered_notetracks = [];
    }
    group_obj = level.scene_ordered_notetracks[group_name];
    if (!isdefined(group_obj)) {
        group_obj = spawnstruct();
        group_obj.count = 0;
        group_obj.current_count = 0;
        level.scene_ordered_notetracks[group_name] = group_obj;
    }
    group_obj.count++;
    self thread _wait_for_ordered_notify(group_obj.count - 1, group_obj, group_name, str_note);
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x69faf644, Offset: 0xab20
// Size: 0x1e4
function _wait_for_ordered_notify(id, group_obj, group_name, str_note) {
    self waittill(str_note);
    if (group_obj.current_count == id) {
        group_obj.current_count++;
        self notify("scene_" + str_note);
        waitframe(1);
        if (group_obj.current_count == group_obj.count) {
            group_obj.pending_notifies = undefined;
            level.scene_ordered_notetracks[group_name] = undefined;
        } else if (isdefined(group_obj.pending_notifies) && group_obj.current_count + group_obj.pending_notifies.size == group_obj.count) {
            self thread _fire_ordered_notitifes(group_obj, group_name);
        }
        return;
    }
    if (!isdefined(group_obj.pending_notifies)) {
        group_obj.pending_notifies = [];
    }
    notetrack = spawnstruct();
    notetrack.id = id;
    notetrack.str_note = str_note;
    for (i = 0; i < group_obj.pending_notifies.size && group_obj.pending_notifies[i].id < id; i++) {
    }
    arrayinsert(group_obj.pending_notifies, notetrack, i);
    if (group_obj.current_count + group_obj.pending_notifies.size == group_obj.count) {
        self thread _fire_ordered_notitifes(group_obj, group_name);
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x21e1923a, Offset: 0xad10
// Size: 0x98
function _fire_ordered_notitifes(group_obj, group_name) {
    if (isdefined(group_obj.pending_notifies)) {
        while (group_obj.pending_notifies.size > 0) {
            self notify("scene_" + group_obj.pending_notifies[0].str_note);
            arrayremoveindex(group_obj.pending_notifies, 0);
            waitframe(1);
        }
    }
    group_obj.pending_notifies = undefined;
    level.scene_ordered_notetracks[group_name] = undefined;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0xade7c6db, Offset: 0xadb0
// Size: 0x44
function add_wait_for_streamer_hint_scene(str_scene_name) {
    if (!isdefined(level.wait_for_streamer_hint_scenes)) {
        level.wait_for_streamer_hint_scenes = [];
    }
    array::add(level.wait_for_streamer_hint_scenes, str_scene_name);
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x819c4830, Offset: 0xae00
// Size: 0x214
function get_existing_ent(str_name, b_spawner_only = 0, b_nodes_and_structs = 0, str_scene) {
    e = undefined;
    if (b_spawner_only) {
        e_array = getspawnerarray(str_name, "script_animname");
        if (e_array.size == 0) {
            e_array = getspawnerarray(str_name, "targetname");
        }
        assert(e_array.size <= 1, "<unknown string>");
        foreach (ent in e_array) {
            if (!isdefined(ent.isdying)) {
                e = ent;
                break;
            }
        }
    } else {
        e = get_existing_ent_by_targetname(str_name, str_scene);
        if (!is_valid_ent(e) && b_nodes_and_structs) {
            e = getnode(str_name, "targetname");
            if (!is_valid_ent(e)) {
                e = struct::get(str_name, "targetname");
            }
        }
    }
    if (is_valid_ent(e)) {
        return e;
    }
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xd298ad6a, Offset: 0xb020
// Size: 0x7a
function get_existing_ent_by_targetname(str_name, str_scene) {
    e = _get_existing_ent(str_name, "targetname", 1, str_scene);
    if (!is_valid_ent(e)) {
        e = _get_existing_ent(str_name, "targetname", undefined, str_scene);
    }
    return e;
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xf2820f24, Offset: 0xb0a8
// Size: 0xda
function _get_existing_ent(val, key, b_ignore_spawners = 0, str_scene) {
    a_ents = getentarray(val, key, b_ignore_spawners);
    /#
        if (!isdefined(str_scene)) {
            str_scene = "<unknown string>";
        }
        assert(a_ents.size <= 1, "<unknown string>" + function_9e72a96(val) + "<unknown string>" + function_9e72a96(str_scene) + "<unknown string>");
    #/
    return a_ents[0];
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x489e3939, Offset: 0xb190
// Size: 0x5c
function is_valid_ent(ent) {
    return isdefined(ent) && (!isdefined(ent.isdying) && !ent ai::is_dead_sentient() || self._s.ignorealivecheck === 1);
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x568c0f97, Offset: 0xb1f8
// Size: 0x1ac
function synced_delete(str_scene) {
    self endon(#"death");
    self.isdying = 1;
    self.var_a6ddd958 = str_scene;
    if (!isplayer(self)) {
        sethideonclientwhenscriptedanimcompleted(self);
        self animation::stop(0);
        waitframe(1);
        self val::set(#"synced_delete", "hide");
    } else {
        waitframe(1);
        self val::set(#"synced_delete", "hide", 2);
    }
    self notsolid();
    if (isalive(self)) {
        if (issentient(self)) {
            self val::set(#"synced_delete", "ignoreall", 1);
        }
        if (isactor(self)) {
            self pathmode("dont move");
        }
    }
    wait(1);
    self delete();
}

/#

    // Namespace scene/scene_shared
    // Params 1, eflags: 0x0
    // Checksum 0xf857cda9, Offset: 0xb3b0
    // Size: 0x11c
    function error_on_screen(str_msg) {
        str_msg = function_9e72a96(str_msg);
        if (str_msg != "<unknown string>") {
            if (!isdefined(level.scene_error_hud)) {
                level.scene_error_hud = newdebughudelem();
            }
            level.scene_error_hud.alignx = "<unknown string>";
            level.scene_error_hud.aligny = "<unknown string>";
            level.scene_error_hud.horzalign = "<unknown string>";
            level.scene_error_hud.y = 30;
            level.scene_error_hud.fontscale = 1;
            level.scene_error_hud.color = (1, 0, 0);
            level.scene_error_hud settext(str_msg);
            self thread _destroy_error_on_screen();
        }
    }

    // Namespace scene/scene_shared
    // Params 0, eflags: 0x0
    // Checksum 0x6ff2c3e6, Offset: 0xb4d8
    // Size: 0x86
    function _destroy_error_on_screen() {
        level notify(#"_destroy_error_on_screen");
        level endon(#"_destroy_error_on_screen");
        self waittilltimeout(5, #"scene_stop", #"scene_done");
        level.scene_error_hud destroy();
        level.scene_error_hud = undefined;
    }

    // Namespace scene/scene_shared
    // Params 1, eflags: 0x0
    // Checksum 0x1b6228d0, Offset: 0xb568
    // Size: 0x11c
    function warning_on_screen(str_msg) {
        str_msg = function_9e72a96(str_msg);
        if (str_msg != "<unknown string>") {
            if (!isdefined(level.scene_warning_hud)) {
                level.scene_warning_hud = newdebughudelem();
            }
            level.scene_warning_hud.alignx = "<unknown string>";
            level.scene_warning_hud.aligny = "<unknown string>";
            level.scene_warning_hud.horzalign = "<unknown string>";
            level.scene_warning_hud.y = 70;
            level.scene_warning_hud.fontscale = 1;
            level.scene_warning_hud.color = (1, 1, 0);
            level.scene_warning_hud settext(str_msg);
            self thread _destroy_warning_on_screen();
        }
    }

    // Namespace scene/scene_shared
    // Params 0, eflags: 0x0
    // Checksum 0x28a19a8a, Offset: 0xb690
    // Size: 0x86
    function _destroy_warning_on_screen() {
        level notify(#"_destroy_warning_on_screen");
        level endon(#"_destroy_warning_on_screen");
        self waittilltimeout(5, #"scene_stop", #"scene_done");
        level.scene_warning_hud destroy();
        level.scene_warning_hud = undefined;
    }

#/

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x846327ed, Offset: 0xb720
// Size: 0xc4
function wait_server_time(n_time, n_start_time = 0) {
    n_len = n_time - n_time * n_start_time;
    n_len /= float(function_60d95f53()) / 1000;
    n_len_int = int(n_len);
    if (n_len_int != n_len) {
        n_len = floor(n_len);
    }
    waitframe(int(n_len));
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x400ffe18, Offset: 0xb7f0
// Size: 0xb6
function check_team(str_team1 = #"any", str_team2 = #"any") {
    str_team1 = util::get_team_mapping(str_team1);
    str_team2 = util::get_team_mapping(str_team2);
    if (str_team1 == #"any" || str_team2 == #"any") {
        return true;
    }
    return str_team1 == str_team2;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xbb4bf65c, Offset: 0xb8b0
// Size: 0x18
function function_c935c42() {
    if (isdefined(self._scene_object)) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0x1d6442a1, Offset: 0xb8d0
// Size: 0x24
function function_787434e2() {
    self flag::clear(#"hash_2d4a7625f4fde7eb");
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0xb35308e9, Offset: 0xb900
// Size: 0x24
function function_4f5268c8() {
    self flag::set(#"hash_2d4a7625f4fde7eb");
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf2aeb16d, Offset: 0xb930
// Size: 0x2e
function function_268bfc72() {
    if (self flag::get(#"hash_2d4a7625f4fde7eb")) {
        return false;
    }
    return true;
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0xe0fb065d, Offset: 0xb968
// Size: 0x24
function function_e96379a5() {
    self flag::set(#"hash_960b6b7a9f62393");
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x0
// Checksum 0x7737bbc5, Offset: 0xb998
// Size: 0x24
function function_2987f9bd() {
    self flag::clear(#"hash_960b6b7a9f62393");
}

// Namespace scene/scene_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf974b7b6, Offset: 0xb9c8
// Size: 0x2e
function function_6d361d2d() {
    if (self flag::get(#"hash_960b6b7a9f62393")) {
        return true;
    }
    return false;
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x0
// Checksum 0x30f6a9d1, Offset: 0xba00
// Size: 0x38
function function_84b01fa4(var_9e9be14d, var_2bd02bb5) {
    if (!isdefined(self.var_9b882ef5)) {
        self.var_9b882ef5 = [];
    }
    self.var_9b882ef5[var_9e9be14d] = var_2bd02bb5;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0xc7340d2c, Offset: 0xba40
// Size: 0x72
function function_1a1f1be7(var_8826a030) {
    if (!isdefined(self.var_8826a030)) {
        self.var_8826a030 = [];
    }
    if (!isdefined(var_8826a030)) {
        var_8826a030 = [];
    } else if (!isarray(var_8826a030)) {
        var_8826a030 = array(var_8826a030);
    }
    self.var_8826a030 = var_8826a030;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x71c4052b, Offset: 0xbac0
// Size: 0x5c
function function_61635c87(b_enable) {
    if (b_enable) {
        self flag::set(#"hash_6ce14241f77af1e7");
        return;
    }
    self flag::clear(#"hash_6ce14241f77af1e7");
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6418e63e, Offset: 0xbb28
// Size: 0x16a
function function_3d35d3ca(str_team) {
    var_36db66e0 = [];
    a_players = getplayers(str_team);
    foreach (player in a_players) {
        if (isarray(player.registerlodscalerigid_init) && isdefined(self._o_scene) && isinarray(player.registerlodscalerigid_init, hash(self._o_scene._str_name))) {
            continue;
        }
        if (!isdefined(var_36db66e0)) {
            var_36db66e0 = [];
        } else if (!isarray(var_36db66e0)) {
            var_36db66e0 = array(var_36db66e0);
        }
        var_36db66e0[var_36db66e0.size] = player;
    }
    return var_36db66e0;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xae887d28, Offset: 0xbca0
// Size: 0x16a
function function_e941ea66(str_team) {
    var_36db66e0 = [];
    a_players = function_a1ef346b(str_team);
    foreach (player in a_players) {
        if (isarray(player.registerlodscalerigid_init) && isdefined(self._o_scene) && isinarray(player.registerlodscalerigid_init, hash(self._o_scene._str_name))) {
            continue;
        }
        if (!isdefined(var_36db66e0)) {
            var_36db66e0 = [];
        } else if (!isarray(var_36db66e0)) {
            var_36db66e0 = array(var_36db66e0);
        }
        var_36db66e0[var_36db66e0.size] = player;
    }
    return var_36db66e0;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x0
// Checksum 0x67367ab8, Offset: 0xbe18
// Size: 0x16c
function function_8b06792(var_18835bcc) {
    if (!isdefined(var_18835bcc)) {
        var_18835bcc = [];
    } else if (!isarray(var_18835bcc)) {
        var_18835bcc = array(var_18835bcc);
    }
    foreach (str_scene in var_18835bcc) {
        if (!isdefined(self.registerlodscalerigid_init)) {
            self.registerlodscalerigid_init = [];
        } else if (!isarray(self.registerlodscalerigid_init)) {
            self.registerlodscalerigid_init = array(self.registerlodscalerigid_init);
        }
        if (!isinarray(self.registerlodscalerigid_init, hash(str_scene))) {
            self.registerlodscalerigid_init[self.registerlodscalerigid_init.size] = hash(str_scene);
        }
    }
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x36f582a1, Offset: 0xbf90
// Size: 0xc8
function anim_reach(str_scene_name, str_shot, ai) {
    assert(isactor(ai));
    o_scene = _init_instance(str_scene_name);
    assert(isclass(o_scene._a_objects[0]));
    var_8d01ee50 = o_scene._a_objects[0];
    [[ var_8d01ee50 ]]->function_47bd9bac(ai, str_shot);
}

// Namespace scene/scene_shared
// Params 3, eflags: 0x6 linked
// Checksum 0xedc53762, Offset: 0xc060
// Size: 0x284
function private function_2fd8d9a3(s_tracker, var_cfeeef61, a_ents) {
    assert(isinarray(level.scene_sequence_names, hash(var_cfeeef61)), "<unknown string>" + var_cfeeef61 + "<unknown string>");
    if (!isdefined(level.var_25a8c888[var_cfeeef61])) {
        level.var_25a8c888[var_cfeeef61] = [];
        s_bundle = getscriptbundle(var_cfeeef61);
        foreach (var_15a51335 in s_bundle.sequencenodes) {
            level.var_25a8c888[var_cfeeef61][var_15a51335.name] = var_15a51335;
        }
    }
    var_c1a775f3 = arraycopy(level.var_25a8c888[var_cfeeef61]);
    foreach (var_ff90ecdb in var_c1a775f3) {
        if (is_true(var_ff90ecdb.var_6507df35)) {
            self function_a6fc0988(var_cfeeef61, var_c1a775f3, var_ff90ecdb, a_ents);
            s_tracker.n_scene_count--;
            if (s_tracker.n_scene_count == 0) {
                s_tracker notify(#"hash_694043bb3252702");
            }
            return;
        }
    }
    assertmsg("<unknown string>" + var_cfeeef61 + "<unknown string>");
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x6 linked
// Checksum 0x18ac85af, Offset: 0xc2f0
// Size: 0x1ae
function private function_a6fc0988(var_cfeeef61, var_c1a775f3, var_840fe719, a_ents) {
    var_2f3f4731 = var_840fe719;
    while (true) {
        s_waitresult = function_8fc96d1b(var_cfeeef61, var_2f3f4731, a_ents, var_2f3f4731.n_blend);
        if (isdefined(s_waitresult.var_cc000a39)) {
            var_e6336354 = s_waitresult.var_cc000a39[0].var_99a313b2;
            a_ents = [];
            if (isarray(s_waitresult.var_cc000a39[0].var_7698819c)) {
                foreach (var_9b685a51 in s_waitresult.var_cc000a39[0].var_7698819c) {
                    a_ents[var_9b685a51.var_db32441] = var_2f3f4731.a_ents[tolower(var_9b685a51.var_db32441)];
                }
            }
            var_2f3f4731 = var_c1a775f3[var_e6336354];
            a_ents = s_waitresult.a_ents;
            var_2f3f4731.n_blend = s_waitresult.var_cc000a39[0].blend;
            continue;
        }
        break;
    }
}

// Namespace scene/scene_shared
// Params 4, eflags: 0x6 linked
// Checksum 0xf9ee2e9, Offset: 0xc4a8
// Size: 0x50e
function private function_8fc96d1b(*var_cfeeef61, var_2f3f4731, a_ents, *n_blend) {
    var_db632007 = 0;
    if (isarray(a_ents.var_d6cfa700)) {
        foreach (var_15a51335 in a_ents.var_d6cfa700) {
            if (isdefined(var_15a51335.var_b1299ae4)) {
                var_db632007 = 1;
                break;
            }
        }
    }
    if (var_db632007) {
        if (isarray(self.scene_ents)) {
            arrayremovevalue(self.scene_ents, undefined, 1);
        }
        if (a_ents.shot === "init") {
            self init(a_ents.scene, n_blend);
        } else {
            self thread play(a_ents.scene, a_ents.shot, n_blend);
        }
        s_tracker = spawnstruct();
        foreach (var_db087283 in a_ents.var_d6cfa700) {
            switch (var_db087283.name) {
            case #"death":
                foreach (ent in self.scene_ents) {
                    s_tracker thread function_100bb0ad(var_db087283, ent);
                }
                break;
            case #"react_r":
            case #"react_l":
            case #"react_b":
            case #"react_f":
                foreach (ent in self.scene_ents) {
                    s_tracker thread function_ac41a9e4(var_db087283, ent);
                }
                break;
            }
        }
        foreach (o_scene in self.scenes) {
            s_tracker thread function_84533a09(o_scene);
        }
        s_waitresult = s_tracker waittill(#"hash_52bd91230328f58f");
        function_1eaaceab(self.scene_ents, 1);
        arrayremovevalue(self.scene_ents, undefined, 1);
        s_waitresult.a_ents = self.scene_ents;
        return s_waitresult;
    } else {
        self stop(a_ents.scene);
        if (a_ents.shot === "init") {
            self init(a_ents.scene, n_blend);
        } else {
            self play(a_ents.scene, a_ents.shot, n_blend);
        }
    }
    return undefined;
}

// Namespace scene/scene_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x861de8e8, Offset: 0xc9c0
// Size: 0x46
function private function_84533a09(o_scene) {
    self endon(#"hash_52bd91230328f58f");
    o_scene waittill(#"scene_stop");
    self notify(#"hash_52bd91230328f58f");
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x2991258a, Offset: 0xca10
// Size: 0x6e
function private function_100bb0ad(var_db087283, ent) {
    self endon(#"hash_52bd91230328f58f");
    ent waittill(var_db087283.name);
    self notify(#"hash_52bd91230328f58f", {#var_cc000a39:var_db087283.var_b1299ae4});
}

// Namespace scene/scene_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xcfbb5bd4, Offset: 0xca88
// Size: 0x28e
function private function_ac41a9e4(var_db087283, ent) {
    self endon(#"hash_52bd91230328f58f");
    while (isalive(ent)) {
        a_players = getplayers("all", ent.origin, 300);
        foreach (player in a_players) {
            var_2231bfef = vectornormalize(player.origin - ent.origin);
            v_forward = anglestoforward(ent.angles);
            var_3f9826ab = vectordot(var_2231bfef, v_forward);
            v_right = anglestoright(ent.angles);
            var_8ecbd20e = vectordot(var_2231bfef, v_right);
            if (var_3f9826ab >= 0.7 && var_db087283.name === "react_f" || var_3f9826ab <= -0.7 && var_db087283.name === "react_b" || var_8ecbd20e <= -0.7 && var_db087283.name === "react_l" || var_8ecbd20e >= 0.7 && var_db087283.name === "react_r") {
                self notify(#"hash_52bd91230328f58f", {#var_cc000a39:var_db087283.var_b1299ae4});
                return;
            }
        }
        waitframe(1);
    }
}

