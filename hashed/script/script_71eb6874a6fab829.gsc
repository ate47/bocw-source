// Atian COD Tools GSC CW decompiler test
#using script_7d0013bbc05623b9;
#using script_35ae72be7b4fec10;
#using script_4937c6974f43bb71;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_b27ebd77;

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 0, eflags: 0x5
// Checksum 0x699444a, Offset: 0x1e8
// Size: 0x2c
function private autoexec __init__system__() {
    system::register(#"hash_23eaaa0ed427f793", undefined, undefined, undefined, undefined);
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 1, eflags: 0x6 linked
// Checksum 0x69649965, Offset: 0x220
// Size: 0x84
function private function_7718419d(var_c93cfecf = "") {
    if (!namespace_61e6d095::exists(#"hash_541706109c2cadca")) {
        namespace_61e6d095::create(#"hash_541706109c2cadca", #"hash_6db62876e543d679");
    }
    function_62443495(var_c93cfecf);
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 1, eflags: 0x6 linked
// Checksum 0xf9761c35, Offset: 0x2b0
// Size: 0x124
function private function_62443495(var_c93cfecf = "") {
    if (var_c93cfecf == #"hash_4395d1d5184bf120") {
        namespace_61e6d095::function_73c9a490(#"hash_541706109c2cadca", 1);
        namespace_61e6d095::function_9ade1d9b(#"hash_541706109c2cadca", "useGameSelect", 1);
        namespace_61e6d095::function_9ade1d9b(#"hash_541706109c2cadca", "gameRef", "");
        return;
    }
    function_633f25cf(var_c93cfecf);
    namespace_61e6d095::function_9ade1d9b(#"hash_541706109c2cadca", "useGameSelect", 0);
    namespace_61e6d095::function_9ade1d9b(#"hash_541706109c2cadca", "gameRef", var_c93cfecf);
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 1, eflags: 0x2 linked
// Checksum 0xdeab0d1a, Offset: 0x3e0
// Size: 0x154
function function_633f25cf(var_c93cfecf) {
    if (!isdefined(var_c93cfecf) || var_c93cfecf == "") {
        return;
    }
    player = getplayers()[0];
    if (!player stats::function_e3eb9a8b(#"hash_4bc6f04ed9a574bc", var_c93cfecf)) {
        if (player stats::function_505387a6(#"hash_4bc6f04ed9a574bc", var_c93cfecf, 1)) {
            level thread function_5058f233(var_c93cfecf);
        }
    }
    var_98196ab3 = 0;
    for (i = 0; i < 10; i++) {
        if (player stats::function_e3eb9a8b(#"hash_4bc6f04ed9a574bc", i)) {
            var_98196ab3++;
        }
    }
    if (var_98196ab3 >= 10) {
        player stats::function_dad108fa(#"hash_2ab499ed268510cc", 1);
    }
    uploadstats(player);
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 0, eflags: 0x6 linked
// Checksum 0x300affe3, Offset: 0x540
// Size: 0x94
function private function_b2669077() {
    namespace_61e6d095::function_9ade1d9b(#"hash_541706109c2cadca", "gameRef", "");
    if (namespace_61e6d095::exists(#"hash_541706109c2cadca")) {
        namespace_61e6d095::remove(#"hash_541706109c2cadca");
        namespace_61e6d095::function_29703592(#"hash_541706109c2cadca", 0);
    }
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 2, eflags: 0x2 linked
// Checksum 0x492378a2, Offset: 0x5e0
// Size: 0x1c4
function function_5058f233(var_c93cfecf, var_c18a5a8b = 5) {
    if (namespace_61e6d095::exists(#"hash_1f8eeac8bf3b0e9b")) {
        namespace_61e6d095::remove(#"hash_1f8eeac8bf3b0e9b");
    }
    var_ae865aeb = getscriptbundle(var_c93cfecf);
    previewimage = #"";
    if (isdefined(var_ae865aeb) && isdefined(var_ae865aeb.previewimage)) {
        previewimage = var_ae865aeb.previewimage;
    }
    namespace_61e6d095::create(#"hash_1f8eeac8bf3b0e9b", #"hash_11f17c2c3c32912d");
    namespace_61e6d095::function_46df0bc7(#"hash_1f8eeac8bf3b0e9b", 5);
    namespace_61e6d095::function_9ade1d9b(#"hash_1f8eeac8bf3b0e9b", "image", previewimage);
    if (var_c18a5a8b >= float(function_60d95f53()) / 1000) {
        wait(var_c18a5a8b);
    }
    if (namespace_61e6d095::exists(#"hash_1f8eeac8bf3b0e9b")) {
        namespace_61e6d095::remove(#"hash_1f8eeac8bf3b0e9b");
    }
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 0, eflags: 0x2 linked
// Checksum 0xb05d44b8, Offset: 0x7b0
// Size: 0x44
function function_bafc791c() {
    self prompts::set_text(#"hash_13887dbed82d18b3");
    self prompts::function_309bf7c2(#"hash_3f3936e8e8c3de2b");
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 2, eflags: 0x6 linked
// Checksum 0x5fadcd4f, Offset: 0x800
// Size: 0x17c
function private function_8de07df8(var_cffbeaae, var_f35de83) {
    var_cffbeaae.origin = var_f35de83.origin;
    var_cffbeaae.angles = var_f35de83.angles;
    vec_right = anglestoright(self.angles);
    vec_to_player = vectornormalize(level.player getplayercamerapos() - self.origin);
    n_dot = vectordot(vec_right, vec_to_player);
    if (abs(n_dot) < 0.3) {
        var_a16bf7b3 = "player_center_enter";
    } else {
        var_a16bf7b3 = vectordot(vec_right, vec_to_player) > 0 ? "player_left_enter" : "player_right_enter";
    }
    level.player function_44d63ecd(0, 0.8);
    var_cffbeaae scene::play(var_a16bf7b3);
    var_cffbeaae thread scene::play("player_loop");
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 1, eflags: 0x6 linked
// Checksum 0x948ecc96, Offset: 0x988
// Size: 0x2c
function private function_9062877b(var_cffbeaae) {
    var_cffbeaae scene::play("player_exit");
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 1, eflags: 0x6 linked
// Checksum 0x47463fa4, Offset: 0x9c0
// Size: 0x16c
function private function_eee069b6(b_enable) {
    if (is_true(b_enable)) {
        level.player val::set(#"hash_23eaaa0ed427f793", "show_weapon_hud", 0);
        level.player val::set(#"hash_23eaaa0ed427f793", "show_crosshair", 0);
        level.player val::set(#"hash_23eaaa0ed427f793", "disable_weapons", 1);
        level.player val::set(#"hash_23eaaa0ed427f793", "freezecontrols_allowlook", 1);
        namespace_82bfe441::fade(1, "FadeImmediate");
        return;
    }
    level.player val::reset_all(#"hash_23eaaa0ed427f793");
    namespace_82bfe441::fade(0, "FadeMedium");
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 0, eflags: 0x2 linked
// Checksum 0xba0aaaaf, Offset: 0xb38
// Size: 0x1c4
function play() {
    if (!isdefined(level.player)) {
        level.player = getplayers()[0];
    }
    level.player flag::set(#"hash_6b3b32a84fb4bd01");
    function_eee069b6(1);
    var_cffbeaae = struct::get(#"hash_23c049910e1e4a97");
    assert(isdefined(var_cffbeaae));
    assert(isdefined(self.target));
    var_f35de83 = struct::get(self.target);
    self function_8de07df8(var_cffbeaae, var_f35de83);
    if (isdefined(self.script_noteworthy)) {
        function_7718419d(self.script_noteworthy);
        if (isdefined(var_f35de83.target)) {
            var_ca4dc1d1 = getdynentarray(var_f35de83.target, 1);
            assert(var_ca4dc1d1.size == 1);
            level.player thread function_939f5cad(var_ca4dc1d1[0]);
        }
    }
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 1, eflags: 0x6 linked
// Checksum 0xa0b27866, Offset: 0xd08
// Size: 0xf6
function private function_939f5cad(machine) {
    self notify("77bacd1333d8cd85");
    self endon("77bacd1333d8cd85");
    self endon(#"death", #"hash_763ad9ddb7081df4");
    do {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        value = waitresult.intpayload;
        if (response == "arcade_state") {
            function_e2a06860(machine, value);
        }
    } while (self flag::get(#"hash_6b3b32a84fb4bd01"));
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 0, eflags: 0x2 linked
// Checksum 0x2cc39b1a, Offset: 0xe08
// Size: 0x1fc
function exit() {
    if (!isdefined(level.player)) {
        level.player = getplayers()[0];
    }
    var_cffbeaae = struct::get(#"hash_23c049910e1e4a97");
    assert(isdefined(var_cffbeaae));
    assert(isdefined(self.target));
    var_f35de83 = struct::get(self.target);
    function_b2669077();
    if (isdefined(var_f35de83.target)) {
        var_ca4dc1d1 = getdynentarray(struct::get(self.target).target, 1);
        assert(var_ca4dc1d1.size == 1);
        function_e2a06860(var_ca4dc1d1[0], 0);
    }
    level.player function_44d63ecd(1, 0.6);
    self function_9062877b(var_cffbeaae);
    function_eee069b6(0);
    level.player flag::clear(#"hash_6b3b32a84fb4bd01");
    level.player notify(#"hash_763ad9ddb7081df4");
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 0, eflags: 0x2 linked
// Checksum 0x238e4945, Offset: 0x1010
// Size: 0x54
function function_71510186() {
    if (!isdefined(level.player)) {
        level.player = getplayers()[0];
    }
    level.player function_d6faeb2b();
}

// Namespace namespace_b27ebd77/namespace_b27ebd77
// Params 0, eflags: 0x6 linked
// Checksum 0x94c1f050, Offset: 0x1070
// Size: 0xdc
function private function_d6faeb2b() {
    self endon(#"death");
    while (!self gamepadusedlast() && self usebuttonpressed()) {
        waitframe(1);
    }
    while (true) {
        isusinggamepad = self gamepadusedlast();
        if (isusinggamepad && self namespace_61e6d095::function_70217795() || !isusinggamepad && self usebuttonpressed()) {
            self notify(#"request_menu_exit");
            break;
        }
        waitframe(1);
    }
}

