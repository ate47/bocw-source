// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\trials\zm_trial_disable_buys.gsc;
#using script_4ce5d94e8c797350;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_challenges.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace zm_fasttravel;

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x5
// Checksum 0x935375cb, Offset: 0x518
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_fasttravel", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x6 linked
// Checksum 0x1240b5fb, Offset: 0x570
// Size: 0xbc
function private preinit() {
    init_clientfields();
    function_44a82004("power_on");
    level flag::init(#"disable_fast_travel");
    /#
        zm_devgui::add_custom_devgui_callback(&function_dd6276f3);
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    #/
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0x76ba998d, Offset: 0x638
// Size: 0x214
function init_clientfields() {
    clientfield::register("world", "fasttravel_exploder", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"wormhole_fx", 1, 2, "int");
    clientfield::register("toplayer", "player_stargate_fx", 1, 1, "int");
    clientfield::register("toplayer", "player_chaos_light_rail_fx", 1, 1, "int");
    clientfield::register("toplayer", "fasttravel_teleport_sfx", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_638ce9451eb0ea49", 1, 3, "int");
    clientfield::register("allplayers", "fasttravel_start_fx", 1, 1, "counter");
    clientfield::register("allplayers", "fasttravel_end_fx", 1, 1, "counter");
    clientfield::register("allplayers", "fasttravel_rail_fx", 1, 2, "int");
    clientfield::register("allplayers", "" + #"hash_1747eb69683ce477", 1, 1, "int");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x8fdc55d0, Offset: 0x858
// Size: 0x2c
function function_44a82004(str_flag) {
    if (!isdefined(level.var_5bfd847e)) {
        level.var_5bfd847e = str_flag;
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x6 linked
// Checksum 0xb8c53db3, Offset: 0x890
// Size: 0x35c
function private postinit() {
    var_7b5d3a70 = &function_2d4bda34;
    if (isdefined(level.var_a5689564)) {
        var_7b5d3a70 = level.var_a5689564;
    }
    var_1d1bbd52 = struct::get_array("fasttravel_trigger", "targetname");
    foreach (s_loc in var_1d1bbd52) {
        level thread [[ var_7b5d3a70 ]](s_loc);
    }
    callback::on_spawned(&function_cdbbf1ee);
    level.var_f410ef3b = [];
    for (i = 0; i < 4; i++) {
        level.var_f410ef3b[i] = 0;
    }
    var_a3101e2f = getentarray("fasttravel_dropout", "targetname");
    foreach (var_d70a9989 in var_a3101e2f) {
        var_d70a9989 sethintstring(#"hash_499c3242364f1755");
        var_d70a9989 thread function_5165d69();
    }
    if (!is_true(level.var_d0fafce1)) {
        level thread function_1ab837f6();
    }
    s_room = struct::get("s_teleport_room_1", "targetname");
    if (isdefined(s_room)) {
        level.var_16fecec8 = 1;
        scene::add_scene_func("p8_fxanim_zm_zod_wormhole_bundle", &wormhole_fx);
        scene::add_scene_func("p8_fxanim_zm_office_wormhole_bundle", &wormhole_fx);
        scene::add_scene_func("p8_fxanim_zm_zod_wormhole_looping_bundle", &function_ac7928bd);
        scene::add_scene_func("p8_fxanim_zm_office_wormhole_looping_bundle", &function_ac7928bd);
    }
    level.var_d03afa3 = [];
    level.var_1dbf5163 = &function_d06e636b;
    level.var_3c84697b = &function_b9c7ccbb;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x4a3a7963, Offset: 0xbf8
// Size: 0xa4
function wormhole_fx(a_ents) {
    e_wormhole = a_ents[getfirstarraykey(a_ents)];
    do {
        util::wait_network_frame();
    } while (!e_wormhole isplayinganimscripted());
    e_wormhole clientfield::set("" + #"wormhole_fx", zm_utility::get_story());
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xc041d8e2, Offset: 0xca8
// Size: 0x94
function function_ac7928bd(a_ents) {
    e_wormhole = a_ents[getfirstarraykey(a_ents)];
    do {
        util::wait_network_frame();
    } while (!e_wormhole isplayinganimscripted());
    e_wormhole clientfield::set("" + #"wormhole_fx", 2);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0xcedea706, Offset: 0xd48
// Size: 0xe
function function_cdbbf1ee() {
    self.var_9c7b96ed = [];
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x661c5996, Offset: 0xd60
// Size: 0x274
function function_2d4bda34(s_loc) {
    s_loc.unitrigger_stub = spawnstruct();
    s_loc.unitrigger_stub.origin = s_loc.origin;
    s_loc.unitrigger_stub.angles = s_loc.angles;
    s_loc.unitrigger_stub.script_unitrigger_type = "unitrigger_box_use";
    s_loc.unitrigger_stub.cursor_hint = "HINT_NOICON";
    s_loc.unitrigger_stub.require_look_at = 0;
    s_loc.unitrigger_stub.script_string = s_loc.script_string;
    s_loc.unitrigger_stub.script_noteworthy = s_loc.script_noteworthy;
    s_loc.unitrigger_stub.var_7b3e65fe = s_loc.var_7b3e65fe;
    str_flags = isdefined(s_loc.var_a92d1b24) ? s_loc.var_a92d1b24 : s_loc.var_a4134e51;
    if (isdefined(str_flags)) {
        s_loc.unitrigger_stub.var_a92d1b24 = util::create_flags_and_return_tokens(str_flags);
    }
    s_loc.unitrigger_stub.zombie_cost = s_loc.zombie_cost;
    s_loc.unitrigger_stub.var_638d9008 = s_loc.var_638d9008;
    s_loc.unitrigger_stub.var_8d5d092c = s_loc.unitrigger_stub.script_string;
    s_loc.unitrigger_stub.delay = s_loc.delay;
    s_loc.unitrigger_stub.used = 0;
    if (isdefined(s_loc.unitrigger_stub.delay)) {
        s_loc.unitrigger_stub flag::init("delayed");
    }
    if (isdefined(level.var_829d6a97)) {
        s_loc [[ level.var_829d6a97 ]]();
    }
    s_loc.unitrigger_stub.prompt_and_visibility_func = &function_5c18a7f4;
    zm_unitrigger::unitrigger_force_per_player_triggers(s_loc.unitrigger_stub, 1);
    zm_unitrigger::register_static_unitrigger(s_loc.unitrigger_stub, &function_6cde5436);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x997c064f, Offset: 0xfe0
// Size: 0x280
function function_5c18a7f4(player) {
    if (!isdefined(self.hint_string)) {
        self.hint_string = [];
    }
    n_player_index = player getentitynumber();
    if (!is_true(player.var_16735873)) {
        self setvisibletoplayer(player);
    } else {
        self setinvisibletoplayer(player);
    }
    player globallogic::function_d96c031e();
    if (isdefined(level.var_e9737821)) {
        var_235457fd = self [[ level.var_e9737821 ]](player, self.stub.var_8d5d092c);
    } else {
        var_235457fd = self function_c52e8ba(player, self.stub.var_8d5d092c);
    }
    if (!is_true(player.var_9c7b96ed[self.stub.var_8d5d092c])) {
        if (isdefined(player.var_d883eecd)) {
            n_cost = player.var_d883eecd;
        } else if (isdefined(self.stub)) {
            n_cost = self.stub.zombie_cost;
        } else {
            n_cost = self.zombie_cost;
        }
    }
    if (isdefined(self.hint_string[n_player_index]) && self.hint_string[n_player_index] !== " ") {
        if (zm_trial_disable_buys::is_active() && !isdefined(level.var_a29299fb)) {
            self sethintstringforplayer(player, #"hash_55d25caf8f7bbb2f");
        } else if (isdefined(n_cost)) {
            self sethintstringforplayer(player, self.hint_string[n_player_index], n_cost);
        } else {
            self sethintstringforplayer(player, self.hint_string[n_player_index]);
        }
    }
    return var_235457fd;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x2 linked
// Checksum 0xc4fc5b69, Offset: 0x1268
// Size: 0x204
function function_c52e8ba(player, var_8d5d092c) {
    b_result = 0;
    if (!isdefined(self.hint_string)) {
        self.hint_string = [];
    }
    n_player_index = player getentitynumber();
    if (!self function_d06e636b(player)) {
        self.hint_string[n_player_index] = #"";
    } else if (isdefined(self.stub.var_a92d1b24) && !level flag::get_all(self.stub.var_a92d1b24)) {
        self.hint_string[n_player_index] = #"zombie/fasttravel_locked";
        b_result = 1;
    } else if (is_true(player.var_9c7b96ed[var_8d5d092c])) {
        self.hint_string[n_player_index] = #"hash_7667bd0f83307360";
        b_result = 1;
    } else if (isdefined(self.stub.delay) && !self.stub flag::get("delayed")) {
        self.hint_string[n_player_index] = #"zombie/fasttravel_delay";
        b_result = 1;
    } else {
        if (player function_8b1a219a()) {
            self.hint_string[n_player_index] = #"hash_47b20f457b370888";
        } else {
            self.hint_string[n_player_index] = #"hash_2731cc5c1208e2e4";
        }
        b_result = 1;
    }
    return b_result;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xdad623e, Offset: 0x1478
// Size: 0x13e
function function_d06e636b(player) {
    if (!level flag::get(level.var_5bfd847e)) {
        return false;
    } else if (!zombie_utility::is_player_valid(player)) {
        return false;
    } else if (is_true(player.var_16735873) && isdefined(self.stub) && self.stub.script_string !== "dropout") {
        return false;
    } else if (is_true(player.var_564dec14)) {
        return false;
    } else if (player isthrowinggrenade() || player isusingoffhand()) {
        return false;
    } else if (level flag::get(#"disable_fast_travel")) {
        return false;
    }
    return true;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0x9d0db459, Offset: 0x15c0
// Size: 0x3f8
function function_6cde5436() {
    level endon(#"end_game");
    var_8d5d092c = self.stub.var_8d5d092c;
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        if (player zm_utility::in_revive_trigger()) {
            continue;
        }
        if (player zm_utility::is_drinking()) {
            continue;
        }
        if (player isthrowinggrenade() || player isusingoffhand()) {
            continue;
        }
        if (zm_trial_disable_buys::is_active() && !isdefined(level.var_a29299fb)) {
            continue;
        }
        if (is_true(player.var_564dec14)) {
            continue;
        }
        if (is_true(player.var_16735873)) {
            continue;
        }
        if (!zm_utility::is_player_valid(player)) {
            continue;
        }
        if (isdefined(self.stub.var_a92d1b24) && !level flag::get_all(self.stub.var_a92d1b24)) {
            continue;
        }
        if (is_true(player.var_9c7b96ed[var_8d5d092c])) {
            continue;
        }
        if (isdefined(self.stub.delay) && !self.stub flag::get("delayed")) {
            continue;
        }
        if (isdefined(player.var_d883eecd)) {
            n_cost = player.var_d883eecd;
        } else if (isdefined(self.stub)) {
            n_cost = self.stub.zombie_cost;
        } else {
            n_cost = self.zombie_cost;
        }
        if (isdefined(level.var_91171ae5)) {
            n_cost = player [[ level.var_91171ae5 ]](self);
        }
        if (!player zm_score::can_player_purchase(n_cost)) {
            /#
                player iprintln("<unknown string>");
            #/
            player zm_audio::create_and_play_dialog(#"general", #"outofmoney");
            continue;
        }
        player zm_score::minus_to_player_score(n_cost);
        player contracts::increment_zm_contract(#"contract_zm_fast_travel");
        level notify(#"fasttravel_bought", {#player:player});
        player notify(#"fasttravel_bought");
        if (isdefined(level.var_352c9e03)) {
            player [[ level.var_352c9e03 ]](self);
        }
        if (isdefined(self.stub)) {
            player thread function_b9c7ccbb(self.stub, self.stub.var_7b3e65fe);
            continue;
        }
        player thread function_b9c7ccbb(self);
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x2 linked
// Checksum 0x6d0643cf, Offset: 0x19c0
// Size: 0x53e
function function_b9c7ccbb(var_12230d08, var_829a20a8 = 0) {
    level endon(#"end_game");
    self endon(#"death");
    n_index = get_player_index(self);
    var_f80635c = var_12230d08.script_string;
    self.var_388ee880 = var_f80635c;
    self.var_3011d31c = 0;
    level notify(var_f80635c + "_start", {#player:self, #s_unitrigger:var_12230d08});
    var_4500bf3f = var_12230d08.script_noteworthy;
    var_8d5d092c = var_12230d08.var_8d5d092c;
    var_12230d08.used = 1;
    switch (var_4500bf3f) {
    case #"traverse":
        if (var_829a20a8) {
            if (var_f80635c === "dropout") {
                n_idx = self.var_85c91ccc;
            } else {
                n_idx = function_de173abb(var_f80635c);
                if (!isdefined(n_idx)) {
                    return;
                }
                self.var_85c91ccc = n_idx;
            }
            nd_path_start = getvehiclenode("fasttravel_" + var_f80635c + "_start_" + n_idx, "targetname");
            var_384528 = getvehiclenode("fasttravel_" + var_f80635c + "_zipline_end_" + n_idx, "targetname");
            str_notify = "fasttravel_" + var_f80635c + "_zipline_end_" + n_idx;
        } else {
            nd_path_start = getvehiclenode("fasttravel_" + var_f80635c + "_start", "targetname");
            str_notify = var_f80635c + "_end";
        }
        var_5314bd63 = getent("veh_fasttravel_cam", "targetname");
        self function_66d020b0(var_5314bd63, nd_path_start, undefined, str_notify, undefined, var_12230d08, undefined, undefined);
        break;
    case #"flinger":
    case #"teleport":
        n_idx = function_de173abb(var_f80635c);
        if (!isdefined(n_idx)) {
            return;
        }
        self.var_85c91ccc = n_idx;
        str_notify = "fasttravel_" + var_f80635c + "_end_" + n_idx;
        self function_66d020b0(undefined, undefined, undefined, str_notify, undefined, var_12230d08, undefined, undefined);
        break;
    }
    if (!var_829a20a8) {
        var_f0bbde5 = self function_c78572ab(var_f80635c);
    }
    vgt_vtx_cnt_en = 1;
    var_f499ccef = 1;
    if (var_4500bf3f == "traverse") {
        if (is_true(level.var_2053e15f)) {
            vgt_vtx_cnt_en = 0;
        } else {
            util::wait_network_frame();
            if (is_true(level.var_9d19ea6d) || is_true(level.var_7ac95f85)) {
                var_f499ccef = 0;
            }
        }
    } else if (var_4500bf3f == "flinger") {
        var_f499ccef = 0;
    }
    if (vgt_vtx_cnt_en) {
        self function_2aed1d83(var_f0bbde5, var_f499ccef);
        if (isdefined(level.var_1e47389a)) {
            self thread [[ level.var_1e47389a ]]();
        }
    }
    if (isdefined(self.var_a5a050c1)) {
        n_cooldown_timer = self.var_a5a050c1;
    } else if (isdefined(level.var_a5a050c1)) {
        n_cooldown_timer = level.var_a5a050c1;
    } else {
        n_cooldown_timer = 30;
    }
    self function_c1f603e(var_12230d08, n_cooldown_timer, var_8d5d092c);
    self notify(#"hash_178a3d0115bc972e", {#var_9fa6220c:var_12230d08});
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x25a222ee, Offset: 0x1f08
// Size: 0xa2
function function_c78572ab(var_f80635c) {
    if (self.var_3011d31c) {
        var_6a4c362c = function_7a74dbfd(var_f80635c + "_dropdown_end_");
        var_f0bbde5 = self function_d4fbc062(var_6a4c362c);
    } else {
        var_6a4c362c = function_7a74dbfd(var_f80635c + "_end_");
        var_f0bbde5 = self function_d4fbc062(var_6a4c362c);
    }
    return var_f0bbde5;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x2 linked
// Checksum 0x2a972c80, Offset: 0x1fb8
// Size: 0x14c
function function_2aed1d83(var_f0bbde5, var_b3733073 = 1) {
    self dontinterpolate();
    self setorigin(var_f0bbde5.origin);
    self setvelocity((0, 0, 0));
    /#
        if (var_b3733073 && !isdefined(var_f0bbde5.angles)) {
            println("<unknown string>" + (isdefined(var_f0bbde5.origin) ? var_f0bbde5.origin : "<unknown string>") + "<unknown string>");
        }
    #/
    if (var_b3733073 && isdefined(var_f0bbde5.angles)) {
        self setplayerangles(var_f0bbde5.angles);
    }
    self function_e61d152a();
    self.var_16735873 = 0;
    self thread function_f86439bc();
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0xe159feca, Offset: 0x2110
// Size: 0x196
function function_f86439bc() {
    level endon(#"end_game");
    self endon(#"death");
    var_e9a9a32a = 1;
    do {
        util::wait_network_frame();
        var_e9a9a32a = 0;
        players = getplayers();
        foreach (e_player in players) {
            if (!isdefined(e_player)) {
                continue;
            }
            n_distance_squared = distance2dsquared(e_player.origin, self.origin);
            if (self != e_player && !is_true(e_player.var_16735873) && n_distance_squared <= 1024) {
                /#
                    iprintlnbold("<unknown string>");
                #/
                var_e9a9a32a = 1;
                break;
            }
        }
    } while (var_e9a9a32a);
    self.var_f4e33249 = undefined;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x8d666b06, Offset: 0x22b0
// Size: 0x90
function function_de173abb(*str_loc) {
    var_33c06362 = level.var_f410ef3b.size;
    for (i = 0; i < var_33c06362; i++) {
        n_idx = randomint(var_33c06362);
        if (level.var_f410ef3b[n_idx] == 0) {
            level.var_f410ef3b[n_idx] = 1;
            return n_idx;
        }
    }
    return undefined;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x2b4016f, Offset: 0x2348
// Size: 0x62
function get_player_index(e_player) {
    a_players = getplayers(e_player.team);
    for (i = 0; i < a_players.size; i++) {
        if (e_player == a_players[i]) {
            return i;
        }
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x8ae82e8, Offset: 0x23b8
// Size: 0xde
function function_7a74dbfd(str_targetname) {
    var_6a4c362c = [];
    for (i = 0; i < 4; i++) {
        var_f0bbde5 = struct::get(str_targetname + i);
        assert(isdefined(var_f0bbde5), "<unknown string>" + str_targetname + i);
        if (!isdefined(var_6a4c362c)) {
            var_6a4c362c = [];
        } else if (!isarray(var_6a4c362c)) {
            var_6a4c362c = array(var_6a4c362c);
        }
        var_6a4c362c[var_6a4c362c.size] = var_f0bbde5;
    }
    return var_6a4c362c;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 12, eflags: 0x2 linked
// Checksum 0x3297c666, Offset: 0x24a0
// Size: 0xac4
function function_66d020b0(var_5314bd63, nd_path_start, var_384528, str_notify, var_6c365dbf, var_12230d08, var_5817f611, var_8f1ba730 = 0, var_6e7468ee = 1, var_c3cd6081 = 1, var_1605b07a = 0, var_1f8fbe0b = 0) {
    level endon(#"end_game");
    self endoncallback(&function_79766c56, #"bled_out", #"death");
    self.var_16735873 = 1;
    self.b_ignore_fow_damage = 1;
    self notify(#"hash_217479a2ecb64b4");
    if (var_1605b07a) {
        if (is_true(self.var_b895a3ff)) {
            if (isdefined(level.var_655e32ec)) {
                self [[ level.var_655e32ec ]]();
            }
        }
    }
    self function_7a607f29(var_12230d08);
    self.var_f4e33249 = 1;
    self val::set(#"fasttravel", "freezecontrols", 1);
    self val::set(#"fasttravel", "show_hud", 0);
    if (isdefined(level.var_996e8a57)) {
        if (self namespace_f0b43eb5::is_active()) {
            self namespace_f0b43eb5::function_7e30f24c();
        } else if (isdefined(self.var_9e09931e) && self.var_9e09931e > 0) {
            self namespace_f0b43eb5::function_ada590f5();
        }
    }
    if (self isinvehicle() && !isdefined(self.var_e1fd941b)) {
        self unlink();
        util::wait_network_frame();
    }
    if (isdefined(var_12230d08)) {
        var_5817f611 = var_12230d08.script_string;
        self.var_5817f611 = var_5817f611;
        var_44c6df03 = var_12230d08.var_cafe149c;
    }
    if (!var_8f1ba730) {
        while (level.var_d03afa3[var_5817f611] === 1) {
            util::wait_network_frame();
        }
        level thread function_78e3c2ba(var_5817f611);
    }
    foreach (e_player in getplayers()) {
        e_player clientfield::set_player_uimodel("WorldSpaceIndicators.bleedOutModel" + self getentitynumber() + ".hide", 1);
    }
    if (!self laststand::player_is_in_laststand() && isalive(self)) {
        str_stance = self getstance();
        if (self isstanceallowed("stand")) {
            switch (str_stance) {
            case #"crouch":
                self setstance("stand");
                if (var_c3cd6081) {
                    wait(0.2);
                }
                break;
            case #"prone":
                self setstance("stand");
                if (var_c3cd6081) {
                    wait(1);
                }
                break;
            }
        }
    }
    if (isdefined(var_6c365dbf)) {
        if (isarray(var_6c365dbf)) {
            self util::create_streamer_hint(var_6c365dbf[0].origin, var_6c365dbf[0].angles, 1);
        } else {
            self util::create_streamer_hint(var_6c365dbf.origin, var_6c365dbf.angles, 1);
        }
    }
    self notify(#"hash_1c35eb15aa210d6", {#var_9fa6220c:var_12230d08});
    /#
        self zm_challenges::debug_print("<unknown string>");
    #/
    self zm_stats::increment_challenge_stat(#"fast_travels");
    if (!is_true(self.var_472e3448)) {
        self stopsounds();
    }
    if (!isdefined(var_12230d08) || isdefined(var_12230d08) && !is_true(var_12230d08.var_694cbc6f)) {
        self ghost();
    }
    self thread function_946fc2d6();
    self clientfield::increment("fasttravel_start_fx", 1);
    if (isdefined(var_5314bd63)) {
        self thread fasttravel_spline(var_5314bd63, nd_path_start, var_384528);
    } else if (isdefined(var_12230d08) && var_12230d08.script_noteworthy === "flinger") {
        self thread fasttravel_flinger(var_6c365dbf, var_12230d08);
    } else if (is_true(level.var_16fecec8)) {
        var_896486fb = struct::get(var_12230d08.script_string, "script_name");
        self thread function_a78584c0(var_6c365dbf, var_896486fb, var_1f8fbe0b);
    } else {
        self thread function_62686dda(var_6c365dbf);
    }
    self waittill(#"fasttravel_over");
    self.b_ignore_fow_damage = 0;
    self flag::set(#"hash_66d02a378fc362d4");
    if (isdefined(var_5314bd63)) {
        self clientfield::set("fasttravel_rail_fx", 0);
        self clientfield::set_to_player("player_chaos_light_rail_fx", 0);
        self clientfield::set("" + #"hash_1747eb69683ce477", 0);
        util::wait_network_frame();
        self allowcrouch(1);
        self allowprone(1);
    } else {
        self val::reset(#"fasttravel", "freezecontrols");
    }
    if (isdefined(var_44c6df03)) {
        self clientfield::increment(var_44c6df03, 1);
    } else {
        self clientfield::increment("fasttravel_end_fx", 1);
    }
    self show();
    if (isdefined(self.var_85c91ccc)) {
        level.var_f410ef3b[self.var_85c91ccc] = 0;
    }
    if (isdefined(str_notify)) {
        level notify(str_notify);
    }
    if (isdefined(var_6c365dbf)) {
        self util::clear_streamer_hint();
    }
    self.var_5817f611 = undefined;
    self notify(#"fasttravel_finished", {#var_9fa6220c:var_12230d08});
    foreach (e_player in getplayers()) {
        e_player clientfield::set_player_uimodel("WorldSpaceIndicators.bleedOutModel" + self getentitynumber() + ".hide", 0);
    }
    if (is_true(var_6e7468ee) && isdefined(level.var_34eb792d)) {
        thread [[ level.var_34eb792d ]](self, var_12230d08);
    }
    self util::delay(0.3, undefined, &zm_audio::create_and_play_dialog, #"fast_travel", #"end");
    self flag::clear(#"hash_66d02a378fc362d4");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x94e310c4, Offset: 0x2f70
// Size: 0x5c
function function_78e3c2ba(var_5817f611) {
    level endon(#"end_game");
    level.var_d03afa3[var_5817f611] = 1;
    util::wait_network_frame(2);
    level.var_d03afa3[var_5817f611] = undefined;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xfd14a274, Offset: 0x2fd8
// Size: 0x12c
function function_7a607f29(var_12230d08) {
    self.var_f22c83f5 = 1;
    self.var_e75517b1 = 1;
    self val::set(#"fasttravel", "ignoreme", 1);
    b_disable_weapons = 1;
    if (isdefined(var_12230d08) && is_true(var_12230d08.var_638d9008)) {
        b_disable_weapons = 0;
    }
    if (b_disable_weapons) {
        if (self isusingoffhand()) {
            self forceoffhandend();
        }
        self val::set(#"fasttravel", "disable_weapons", 1);
    }
    self bgb::suspend_weapon_cycling();
    self.bgb_disabled = 1;
    self util::magic_bullet_shield();
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0xe5f711b5, Offset: 0x3110
// Size: 0x144
function function_e61d152a() {
    self.var_f22c83f5 = 0;
    self.var_e75517b1 = 0;
    self val::reset(#"fasttravel", "ignoreme");
    self val::reset(#"fasttravel", "disable_weapons");
    self val::reset(#"fasttravel", "show_hud");
    if (isdefined(level.var_996e8a57)) {
        if (self namespace_f0b43eb5::is_active()) {
            self namespace_f0b43eb5::function_b4759cf8();
        } else if (isdefined(self.var_9e09931e) && self.var_9e09931e > 0) {
            self namespace_f0b43eb5::function_d38641f1();
        }
    }
    self.bgb_disabled = 0;
    self bgb::resume_weapon_cycling();
    self util::stop_magic_bullet_shield();
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x6110dcff, Offset: 0x3260
// Size: 0x134
function function_79766c56(*str_notify) {
    self function_e61d152a();
    self val::reset(#"fasttravel", "freezecontrols");
    self allowcrouch(1);
    self allowprone(1);
    self.var_f4e33249 = undefined;
    self.var_16735873 = 0;
    self val::reset(#"fasttravel", "show_hud");
    if (isdefined(level.var_996e8a57)) {
        if (self namespace_f0b43eb5::is_active()) {
            self namespace_f0b43eb5::function_b4759cf8();
            return;
        }
        if (isdefined(self.var_9e09931e) && self.var_9e09931e > 0) {
            self namespace_f0b43eb5::function_d38641f1();
        }
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 3, eflags: 0x2 linked
// Checksum 0xb63825bb, Offset: 0x33a0
// Size: 0x4a4
function fasttravel_spline(var_5314bd63, nd_path_start, var_384528) {
    self endon(#"death");
    while (true) {
        self.var_2790fd8b = spawner::simple_spawn_single(var_5314bd63);
        if (isdefined(self.var_2790fd8b)) {
            break;
        }
        waitframe(1);
    }
    self.var_2790fd8b val::set("fasttravel_spline", "takedamage", 0);
    self.var_2790fd8b val::set("fasttravel_spline", "allowdeath", 0);
    self.var_2790fd8b setignorepauseworld(1);
    if (isdefined(level.var_a38d293a)) {
        self.var_2790fd8b setacceleration(level.var_a38d293a);
    } else {
        self.var_2790fd8b setacceleration(40);
    }
    if (isdefined(level.var_ce0f67cf)) {
        self.var_2790fd8b setspeed(level.var_ce0f67cf);
    } else {
        self.var_2790fd8b setspeed(55);
    }
    self.var_2790fd8b setturningability(0.03);
    self.var_2790fd8b.origin = nd_path_start.origin;
    self.var_2790fd8b.angles = nd_path_start.angles;
    self dontinterpolate();
    self setorigin(nd_path_start.origin);
    if (!is_true(level.var_9d19ea6d) && !is_true(level.var_7ac95f85)) {
        self setplayerangles(nd_path_start.angles);
    }
    self.var_2790fd8b.e_parent = self;
    if (is_true(level.var_dfd49265)) {
        self playerlinktodelta(self.var_2790fd8b, undefined, 0.5, 0, 0, 0, 0);
    } else if (is_true(level.var_9d19ea6d)) {
        self playerlinktodelta(self.var_2790fd8b, undefined, 0.5, 180, 180, 180, 180, 1, 0);
    } else if (is_true(level.var_7ac95f85)) {
        self playerlinktodelta(self.var_2790fd8b, undefined, 0.5, 180, 180, 20, 20);
    } else {
        self playerlinktodelta(self.var_2790fd8b, undefined, 0.5, 30, 30, 15, 30);
    }
    self val::reset(#"fasttravel", "freezecontrols");
    self allowcrouch(0);
    self allowprone(0);
    self.var_2790fd8b vehicle::get_on_path(nd_path_start);
    util::wait_network_frame();
    self clientfield::set("fasttravel_rail_fx", 1);
    self clientfield::set("" + #"hash_1747eb69683ce477", 1);
    self thread function_ab80021(var_384528);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x7d32b2af, Offset: 0x3850
// Size: 0x23e
function function_62686dda(var_6c365dbf) {
    var_a16f5b07 = self.origin;
    self playrumbleonentity(#"hash_5d8a1a68b12dfb24");
    wait(0.5);
    self clientfield::set_to_player("player_stargate_fx", 1);
    if (isdefined(self.var_3487fff6)) {
        self clientfield::set_to_player(self.var_3487fff6, 1);
    } else {
        self clientfield::set_to_player("fasttravel_teleport_sfx", 1);
    }
    if (isdefined(var_6c365dbf)) {
        if (isarray(var_6c365dbf)) {
            var_f0bbde5 = self function_d4fbc062(var_6c365dbf);
        } else {
            var_f0bbde5 = var_6c365dbf;
        }
        self function_2aed1d83(var_f0bbde5);
    }
    str_alias = #"hash_3388d9809bf60b12";
    if (isdefined(self.var_1bfa91a)) {
        str_alias += self.var_1bfa91a;
    }
    playsoundatposition(str_alias, var_a16f5b07);
    wait(0.5);
    self clientfield::set_to_player("player_stargate_fx", 0);
    if (isdefined(self.var_3487fff6)) {
        self clientfield::set_to_player(self.var_3487fff6, 0);
    } else {
        self clientfield::set_to_player("fasttravel_teleport_sfx", 0);
    }
    str_alias = #"hash_52aaa9a4a2e71c73";
    if (isdefined(self.var_1bfa91a)) {
        str_alias += self.var_1bfa91a;
    }
    self playsound(str_alias);
    self notify(#"fasttravel_over");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0x1a7d6e18, Offset: 0x3a98
// Size: 0x188
function function_946fc2d6() {
    level endon(#"end_game");
    self endon(#"death");
    self waittill(#"fasttravel_over");
    a_enemies = level.ai[#"axis"];
    if (isdefined(a_enemies) && a_enemies.size) {
        a_potential_targets = array::get_all_closest(self.origin, a_enemies, undefined, undefined, 640);
        var_ecfe5e20 = array::filter(a_potential_targets, 0, &function_6c856fde);
        if (var_ecfe5e20.size > 0) {
            foreach (zombie in var_ecfe5e20) {
                if (is_true(zombie.completed_emerging_into_playable_area)) {
                    zombie zombie_utility::setup_zombie_knockdown(self);
                }
            }
        }
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xd61fb49, Offset: 0x3c28
// Size: 0x30
function function_6c856fde(e_zombie) {
    if (e_zombie.var_6f84b820 === #"normal") {
        return true;
    }
    return false;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 3, eflags: 0x2 linked
// Checksum 0x45379609, Offset: 0x3c60
// Size: 0xd8
function function_c1f603e(var_12230d08, n_cooldown, var_8d5d092c) {
    level endon(#"end_game");
    self endon(#"death");
    if (var_8d5d092c == "no_cooldown") {
        return;
    }
    self.var_9c7b96ed[var_8d5d092c] = 1;
    if (self hasperk(#"specialty_cooldown")) {
        n_cooldown *= 0.5;
    }
    if (isdefined(var_12230d08)) {
        var_12230d08 waittilltimeout(n_cooldown, #"cancel_fasttravel_cooldown");
    } else {
        wait(n_cooldown);
    }
    self.var_9c7b96ed[var_8d5d092c] = 0;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0xdc443e02, Offset: 0x3d40
// Size: 0x228
function function_5165d69() {
    level endon(#"end_game");
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        if (!isdefined(player)) {
            assert(0, "<unknown string>");
            continue;
        }
        var_616025ba = getvehiclenode("fasttravel_dropdown_" + player.var_388ee880 + "_start", "targetname");
        if (!isdefined(var_616025ba)) {
            assert(0, "<unknown string>");
            continue;
        }
        if (!isdefined(player.var_2790fd8b)) {
            assert(0, "<unknown string>");
            continue;
        }
        player endon(#"death");
        player.var_3011d31c = 1;
        player notify(#"switch_rail");
        player.var_2790fd8b vehicle::detach_path();
        player.var_2790fd8b vehicle::get_on_path(var_616025ba);
        player clientfield::set("fasttravel_rail_fx", 2);
        player.var_2790fd8b vehicle::go_path();
        player notify(#"fasttravel_over");
        player unlink();
        wait(0.3);
        if (isdefined(player.var_2790fd8b)) {
            player.var_2790fd8b delete();
        }
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0x28c861da, Offset: 0x3f70
// Size: 0x150
function function_1ab837f6() {
    level endon(#"end_game");
    level waittill(#"all_players_spawned");
    level flag::wait_till(level.var_5bfd847e);
    level clientfield::set("fasttravel_exploder", 1);
    var_1d1bbd52 = struct::get_array("fasttravel_trigger", "targetname");
    foreach (s_loc in var_1d1bbd52) {
        if (isdefined(s_loc.unitrigger_stub.delay)) {
            s_loc.unitrigger_stub flag::delay_set(s_loc.unitrigger_stub.delay, "delayed");
        }
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xb2b9418a, Offset: 0x40c8
// Size: 0x1cc
function function_ab80021(var_384528) {
    level endon(#"end_game");
    self endon(#"disconnect", #"switch_rail");
    self playrumblelooponentity(#"hash_5d8a1a68b12dfb24");
    if (isdefined(self.var_2790fd8b)) {
        self.var_2790fd8b vehicle::go_path();
    }
    if (isdefined(var_384528)) {
        if (isdefined(self.var_2790fd8b)) {
            self.var_2790fd8b.origin = var_384528.origin;
        }
        self dontinterpolate();
        self setorigin(var_384528.origin);
        self setplayerangles(var_384528.angles);
        if (isdefined(self.var_2790fd8b)) {
            self.var_2790fd8b vehicle::get_on_path(var_384528);
            self.var_2790fd8b vehicle::go_path();
        }
    }
    self stoprumble(#"hash_5d8a1a68b12dfb24");
    self notify(#"fasttravel_over");
    self unlink();
    wait(0.3);
    if (isdefined(self.var_2790fd8b)) {
        self.var_2790fd8b delete();
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x6 linked
// Checksum 0x16ba5d2c, Offset: 0x42a0
// Size: 0x9c
function private function_e4af83af(s_teleport_room) {
    util::wait_network_frame();
    self.var_805b8325 = spawn("script_origin", s_teleport_room.origin);
    self.var_805b8325.angles = s_teleport_room.angles;
    var_d271f921 = self;
    if (isdefined(self.var_e1fd941b)) {
        var_d271f921 = self.var_e1fd941b;
    }
    var_d271f921 linkto(self.var_805b8325);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 3, eflags: 0x6 linked
// Checksum 0xbc0b2580, Offset: 0x4348
// Size: 0x1bc
function private function_fdb3b5(var_a16f5b07, s_teleport_room, var_98b11ed9) {
    util::wait_network_frame();
    self dontinterpolate();
    self setorigin(s_teleport_room.origin);
    self setplayerangles(s_teleport_room.angles);
    if (isdefined(self.var_3487fff6)) {
        self clientfield::set_to_player(self.var_3487fff6, 1);
    } else {
        self clientfield::set_to_player("fasttravel_teleport_sfx", 1);
    }
    str_alias = #"hash_3388d9809bf60b12";
    if (isdefined(self.var_1bfa91a)) {
        str_alias += self.var_1bfa91a;
    }
    playsoundatposition(str_alias, var_a16f5b07);
    println("<unknown string>" + self getplayercamerapos());
    self childthread function_e4af83af(s_teleport_room);
    waittillframeend();
    self playrumblelooponentity(#"hash_5d8a1a68b12dfb24");
    self clientfield::set_to_player("" + #"hash_638ce9451eb0ea49", var_98b11ed9);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 3, eflags: 0x2 linked
// Checksum 0x469bedcd, Offset: 0x4510
// Size: 0x41e
function function_a78584c0(var_6c365dbf, var_896486fb, var_1f8fbe0b = 0) {
    level endon(#"end_game");
    self endoncallback(&function_9ff6bcf6, #"death");
    var_a16f5b07 = self.origin;
    self allowcrouch(0);
    self allowprone(0);
    var_1e1e92e9 = [];
    for (i = 0; i < 4; i++) {
        str_name = "s_teleport_room_" + i + 1;
        var_1e1e92e9[i] = struct::get(str_name, "targetname");
    }
    if (!isdefined(level.var_98b11ed9)) {
        level.var_98b11ed9 = 0;
    }
    s_teleport_room = var_1e1e92e9[level.var_98b11ed9];
    level.var_98b11ed9++;
    var_98b11ed9 = level.var_98b11ed9;
    if (level.var_98b11ed9 >= var_1e1e92e9.size) {
        level.var_98b11ed9 = 0;
    }
    self childthread function_fdb3b5(var_a16f5b07, isdefined(var_896486fb) ? var_896486fb : s_teleport_room, var_98b11ed9);
    v_vortex_origin = s_teleport_room.origin + anglestoforward(s_teleport_room.angles) * 1000;
    var_291fc0f7 = struct::spawn(v_vortex_origin, s_teleport_room.angles - (0, 90, 0));
    self function_82c1415f(var_291fc0f7, var_1f8fbe0b);
    self clientfield::set_to_player("" + #"hash_638ce9451eb0ea49", 0);
    if (isdefined(self.var_805b8325)) {
        self.var_805b8325 delete();
        self.var_805b8325 = undefined;
    }
    if (isdefined(var_6c365dbf)) {
        if (isarray(var_6c365dbf)) {
            var_f0bbde5 = self function_d4fbc062(var_6c365dbf);
        } else {
            var_f0bbde5 = var_6c365dbf;
        }
        self function_2aed1d83(var_f0bbde5);
    }
    if (isdefined(self.var_3487fff6)) {
        self clientfield::set_to_player(self.var_3487fff6, 0);
    } else {
        self clientfield::set_to_player("fasttravel_teleport_sfx", 0);
    }
    str_alias = #"hash_52aaa9a4a2e71c73";
    if (isdefined(self.var_1bfa91a)) {
        str_alias += self.var_1bfa91a;
    }
    self playsound(#"hash_52aaa9a4a2e71c73");
    self allowcrouch(1);
    self allowprone(1);
    self notify(#"fasttravel_over", {#str_type:#"vortex"});
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xcdc32ab3, Offset: 0x4938
// Size: 0x3c
function function_9ff6bcf6(*var_c34665fc) {
    if (isdefined(self) && isdefined(self.var_805b8325)) {
        self.var_805b8325 delete();
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x9a1aaad3, Offset: 0x4980
// Size: 0x68
function function_183c691b(var_1f8fbe0b = 0) {
    if (zm_utility::get_story() == 1) {
        if (var_1f8fbe0b) {
            return "p8_fxanim_zm_office_wormhole_looping_bundle";
        }
        return "p8_fxanim_zm_office_wormhole_bundle";
    }
    if (var_1f8fbe0b) {
        return "p8_fxanim_zm_zod_wormhole_looping_bundle";
    }
    return "p8_fxanim_zm_zod_wormhole_bundle";
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0x786325ff, Offset: 0x49f0
// Size: 0x54
function function_b6e62bc1() {
    if (isdefined(level.var_f3901984)) {
        return level.var_f3901984;
    }
    str_scene = function_183c691b();
    return scene::function_12479eba(str_scene);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xc3664a2d, Offset: 0x4a50
// Size: 0x38
function function_c88e13b1(duration = 1) {
    wait(duration);
    level notify(#"hash_62c65dd69ca5fbf5");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x2 linked
// Checksum 0x7e5a0169, Offset: 0x4a90
// Size: 0x204
function function_82c1415f(var_291fc0f7, var_1f8fbe0b = 0) {
    level endon(#"end_game");
    var_e830c896 = function_183c691b(var_1f8fbe0b);
    duration = function_b6e62bc1();
    duration /= 2;
    level thread function_c88e13b1(duration);
    if (!isdefined(level.var_f3901984)) {
        if (var_1f8fbe0b) {
            var_291fc0f7 thread scene::play(var_e830c896);
            level util::streamer_wait();
            var_291fc0f7 thread scene::stop(var_e830c896);
        } else {
            var_291fc0f7 scene::play(var_e830c896);
        }
    } else if (var_1f8fbe0b) {
        var_291fc0f7 thread scene::play(var_e830c896);
        level util::streamer_wait();
        wait(level.var_f3901984);
        var_291fc0f7 thread scene::stop(var_e830c896);
    } else {
        var_291fc0f7 thread scene::play(var_e830c896);
        wait(level.var_f3901984);
        var_291fc0f7 thread scene::stop(var_e830c896);
    }
    self stoprumble(#"hash_5d8a1a68b12dfb24");
    var_291fc0f7 struct::delete();
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0xfc667243, Offset: 0x4ca0
// Size: 0x13a
function function_d4fbc062(var_6a4c362c) {
    n_index = get_player_index(self);
    a_e_players = getplayers();
    if (self function_60d91d03(var_6a4c362c[n_index], a_e_players)) {
        return var_6a4c362c[n_index];
    }
    foreach (var_f0bbde5 in var_6a4c362c) {
        if (var_f0bbde5 == var_6a4c362c[n_index]) {
            continue;
        }
        if (self function_60d91d03(var_f0bbde5, a_e_players)) {
            return var_f0bbde5;
        }
    }
    /#
        iprintln("<unknown string>");
    #/
    return var_6a4c362c[n_index];
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x2 linked
// Checksum 0x69918833, Offset: 0x4de8
// Size: 0x194
function function_60d91d03(var_f0bbde5, a_e_players) {
    if (isdefined(level.var_11b26237)) {
        var_65d61e3a = level.var_11b26237 * level.var_11b26237;
    } else {
        var_65d61e3a = 1024;
    }
    b_safe = 1;
    assert(isdefined(var_f0bbde5), "<unknown string>");
    foreach (e_player in a_e_players) {
        if (is_true(e_player.var_16735873)) {
            continue;
        }
        if (abs(var_f0bbde5.origin[2] - e_player.origin[2]) > 60) {
            continue;
        }
        if (distance2dsquared(var_f0bbde5.origin, e_player.origin) > var_65d61e3a) {
            continue;
        }
        b_safe = 0;
        break;
    }
    return b_safe;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x2 linked
// Checksum 0x29d2812b, Offset: 0x4f88
// Size: 0x194
function fasttravel_flinger(var_6c365dbf, var_12230d08) {
    level endon(#"end_game");
    self endoncallback(&function_672d56c7, #"death");
    self.var_46e13a5f = util::spawn_model("tag_origin", self.origin, self.angles);
    self playerlinkto(self.var_46e13a5f);
    if (isdefined(var_6c365dbf)) {
        if (isarray(var_6c365dbf)) {
            var_f0bbde5 = self function_d4fbc062(var_6c365dbf);
        } else {
            var_f0bbde5 = var_6c365dbf;
        }
        var_c9a46783 = var_f0bbde5;
    } else {
        var_c9a46783 = struct::get(var_12230d08.var_5d8fb38b, "targetname");
    }
    n_time = self.var_46e13a5f zm_utility::fake_physicslaunch(var_c9a46783.origin, var_12230d08.var_152a43e0);
    wait(n_time);
    self notify(#"fasttravel_over");
    if (isdefined(self.var_46e13a5f)) {
        self.var_46e13a5f delete();
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0x9b91d46b, Offset: 0x5128
// Size: 0x2c
function function_672d56c7() {
    if (isdefined(self.var_46e13a5f)) {
        self.var_46e13a5f delete();
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x0
// Checksum 0x451a9af5, Offset: 0x5160
// Size: 0x112
function function_dd6276f3(cmd) {
    switch (cmd) {
    case #"start_looping":
        if (!is_true(level.var_2a40310c)) {
            level.var_2a40310c = 1;
            level thread function_8d419972(0);
        }
        break;
    case #"stop_looping":
        if (is_true(level.var_2a40310c)) {
            level.var_2a40310c = 0;
        }
        break;
    case #"play_once":
        if (!is_true(level.var_2a40310c)) {
            level.var_2a40310c = 1;
            level thread function_8d419972(1);
        }
        break;
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 1, eflags: 0x2 linked
// Checksum 0x1253f86, Offset: 0x5280
// Size: 0x12c
function function_8d419972(b_play_once) {
    level endon(#"end_game");
    s_loc = struct::spawn((0, 0, 0));
    player = level.players[0];
    player endon(#"disconnect");
    var_78e5d9d1 = player.origin;
    v_start_angles = player.angles;
    while (is_true(level.var_2a40310c)) {
        player function_a78584c0(s_loc);
        if (is_true(b_play_once)) {
            level.var_2a40310c = 0;
        }
    }
    player setorigin(var_78e5d9d1);
    player setplayerangles(v_start_angles);
}

