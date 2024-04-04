// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_9b972177;

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x5
// Checksum 0x9960f974, Offset: 0x1a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_946f5279d6cd83c", undefined, &function_2a159d3e, undefined, undefined);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x6 linked
// Checksum 0xb248a0fd, Offset: 0x1f0
// Size: 0xc4
function private function_2a159d3e() {
    if (!is_true(level.is_survival)) {
        return;
    }
    level.var_d1b0ffd = undefined;
    level.var_d4a9453c = 0;
    level.var_b4b53e55 = 0;
    callback::on_spawned(&on_player_spawned);
    callback::add_callback(#"hash_17028f0b9883e5be", &function_83b6d24a);
    callback::add_callback(#"objective_ended", &function_2b1da4a6);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x2 linked
// Checksum 0x98a3f4a6, Offset: 0x2c0
// Size: 0x44
function on_end_game() {
    var_9c1ed9ea = "gameover_survival";
    if (isdefined(level.var_e6512c09)) {
        var_9c1ed9ea = level.var_e6512c09;
    }
    function_5a47adab(var_9c1ed9ea);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x2 linked
// Checksum 0x3446e5ab, Offset: 0x310
// Size: 0xa4
function on_player_spawned() {
    if (level flag::get(#"intro_scene_done")) {
        if (isdefined(level.var_d1b0ffd) && level.var_d1b0ffd != "") {
            self set_to_player(level.var_d1b0ffd);
        } else {
            self set_to_player("");
        }
    }
    self thread underscore();
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x0
// Checksum 0xc1d3c3e4, Offset: 0x3c0
// Size: 0x8c
function on_player_connect() {
    if (flag::get(#"intro_scene_done")) {
        if (isdefined(level.var_d1b0ffd) && level.var_d1b0ffd != "") {
            self set_to_player(level.var_d1b0ffd);
            return;
        }
        self set_to_player("");
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x631592a1, Offset: 0x458
// Size: 0xa4
function function_83b6d24a(params) {
    if (!isdefined(params)) {
        return;
    }
    if (!isdefined(params.instance)) {
        return;
    }
    if (is_true(params.instance.var_6c9943b1)) {
        return;
    }
    str_objective_name = undefined;
    s_instance = params.instance;
    if (isdefined(s_instance.content_script_name)) {
        str_objective_name = s_instance.content_script_name;
    }
    function_df47d1da(str_objective_name);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x8568801c, Offset: 0x508
// Size: 0x8c
function function_2b1da4a6(params) {
    if (is_true(params.instance.var_6c9943b1)) {
        return;
    }
    str_objective_name = undefined;
    s_instance = params.instance;
    if (isdefined(s_instance.content_script_name)) {
        str_objective_name = s_instance.content_script_name;
    }
    function_a9cc2e9f(params.completed, str_objective_name);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x14214194, Offset: 0x5a0
// Size: 0xf4
function function_df47d1da(str_objective_name) {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        return;
    }
    level notify(#"hash_1034af1a853c873d");
    level.var_d4a9453c = 1;
    function_5d985962(0);
    var_71ce1ff1 = function_86df3ee8(str_objective_name);
    if (isdefined(var_71ce1ff1)) {
        var_9c1ed9ea = var_71ce1ff1;
    } else {
        var_9c1ed9ea = "survival_objective_" + randomintrange(0, 3);
    }
    function_5a47adab(var_9c1ed9ea);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 2, eflags: 0x2 linked
// Checksum 0xa0d261c0, Offset: 0x6a0
// Size: 0xb4
function function_a9cc2e9f(b_completed, *str_objective_name = 1) {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        return;
    }
    level notify(#"hash_27abcd3efcaaf572");
    level.var_d4a9453c = 0;
    if (str_objective_name) {
        function_5a47adab("");
        function_5d985962(1);
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x10f81b72, Offset: 0x760
// Size: 0xbc
function function_9a65b730(var_4338e57e) {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        return;
    }
    if (!is_true(level.var_d4a9453c) && !is_true(level.var_b4b53e55)) {
        level.var_b4b53e55 = 1;
        function_5d985962(0);
        function_5a47adab(var_4338e57e);
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x2 linked
// Checksum 0xec151987, Offset: 0x828
// Size: 0x94
function function_16bede30() {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        return;
    }
    if (!is_true(level.var_d4a9453c)) {
        level.var_b4b53e55 = 0;
        function_5a47adab("");
        function_5d985962(1);
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x795ab2b1, Offset: 0x8c8
// Size: 0x94
function function_9f5c2ff2(var_9c1ed9ea) {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        return;
    }
    level notify(#"hash_65e9b602c68b844d");
    level.var_d4a9453c = 1;
    function_5d985962(0);
    function_5a47adab(var_9c1ed9ea);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x2 linked
// Checksum 0x1d12b237, Offset: 0x968
// Size: 0x74
function function_b8af32da() {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        return;
    }
    level.var_d4a9453c = 0;
    function_5a47adab("");
    function_5d985962(1);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x9b9a5eaf, Offset: 0x9e8
// Size: 0xb6
function function_5d985962(var_b375589a) {
    level.var_b375589a = var_b375589a;
    if (!var_b375589a) {
        foreach (player in level.players) {
            player.var_edc6d524 = "";
            player.var_187e3f7e = "";
        }
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x2 linked
// Checksum 0xbf340ccb, Offset: 0xaa8
// Size: 0x18e
function underscore() {
    self endon(#"death");
    self endon(#"disconnect");
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        return;
    }
    if (is_true(level.var_149a60e7)) {
        return;
    }
    if (!isdefined(level.var_b375589a)) {
        level.var_b375589a = 0;
    }
    if (!isdefined(self.var_edc6d524)) {
        self.var_edc6d524 = "";
    }
    if (!isdefined(self.var_187e3f7e)) {
        self.var_187e3f7e = "";
    }
    self thread function_28f119be();
    while (true) {
        waitresult = self waittill(#"hash_766bf24383b8f582");
        if (is_true(level.var_b375589a)) {
            if (isdefined(waitresult.var_9c1ed9ea)) {
                self.var_187e3f7e = waitresult.var_9c1ed9ea;
            }
            if (self.var_edc6d524 !== self.var_187e3f7e) {
                set_to_player(self.var_187e3f7e);
                self.var_edc6d524 = self.var_187e3f7e;
            }
        }
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x2 linked
// Checksum 0xcf741bcd, Offset: 0xc40
// Size: 0x2a0
function function_28f119be() {
    self endon(#"death");
    self endon(#"disconnect");
    while (true) {
        if (!is_true(level.var_b375589a)) {
            wait(0.1);
            continue;
        }
        a_enemies = getaiarray();
        var_d300714c = function_61eeb910(self, a_enemies);
        var_3ac2b3dc = var_d300714c.var_9dd94851 || var_d300714c.var_b16c3c87;
        if (var_3ac2b3dc && self.var_edc6d524 != "survival_underscore_active") {
            self notify(#"hash_766bf24383b8f582", {#var_9c1ed9ea:"survival_underscore_active"});
        } else if (var_d300714c.var_8cebd3a9 && !var_3ac2b3dc && self.var_edc6d524 === "") {
            self notify(#"hash_766bf24383b8f582", {#var_9c1ed9ea:"survival_underscore"});
        } else if (!var_d300714c.var_8cebd3a9 && !var_3ac2b3dc && self.var_edc6d524 != "survival_underscore") {
            if (function_2d36215b(self, a_enemies)) {
                self notify(#"hash_766bf24383b8f582", {#var_9c1ed9ea:"survival_underscore"});
            } else {
                self notify(#"hash_766bf24383b8f582", {#var_9c1ed9ea:""});
            }
        } else if (!var_d300714c.var_8cebd3a9 && !var_3ac2b3dc && self.var_edc6d524 != "") {
            if (!function_2d36215b(self, a_enemies)) {
                self notify(#"hash_766bf24383b8f582", {#var_9c1ed9ea:""});
            }
        }
        wait(5);
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 2, eflags: 0x2 linked
// Checksum 0x5675b14e, Offset: 0xee8
// Size: 0x5e
function function_2d36215b(e_player, a_enemies) {
    ai_closest = array::get_all_closest(e_player.origin, a_enemies, undefined, undefined, 2500);
    if (ai_closest.size >= 6) {
        return true;
    }
    return false;
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 2, eflags: 0x2 linked
// Checksum 0xa348aff2, Offset: 0xf50
// Size: 0x1c4
function function_61eeb910(*e_player, a_enemies) {
    var_2a7ac8ab = 0;
    var_50e79c32 = 0;
    var_fb83b33f = 0;
    n_counter = 0;
    foreach (enemy in a_enemies) {
        if (isdefined(enemy.favoriteenemy)) {
            if (enemy.favoriteenemy == self) {
                n_counter++;
                if (is_true(enemy.var_d8695234) || is_true(enemy.var_c588eb) || enemy.archetype === #"raz" || enemy.archetype === #"mimic") {
                    var_fb83b33f = 1;
                }
            }
        }
        if (n_counter >= 6) {
            var_50e79c32 = 1;
        }
    }
    if (n_counter > 0) {
        var_2a7ac8ab = 1;
    }
    return {#var_8cebd3a9:var_2a7ac8ab, #var_b16c3c87:var_50e79c32, #var_9dd94851:var_fb83b33f};
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x14b4025e, Offset: 0x1120
// Size: 0xa8
function function_5a47adab(var_9c1ed9ea) {
    level.var_d1b0ffd = var_9c1ed9ea;
    foreach (player in level.players) {
        player set_to_player(var_9c1ed9ea);
    }
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0x9587114e, Offset: 0x11d0
// Size: 0x24
function set_to_player(var_9c1ed9ea) {
    music::setmusicstate(var_9c1ed9ea, self);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x2 linked
// Checksum 0xcd96ae69, Offset: 0x1200
// Size: 0xca
function function_86df3ee8(str_objective_name) {
    str_override = undefined;
    switch (str_objective_name) {
    case #"holdout":
        str_override = "survival_objective_hold_0";
        break;
    case #"secure":
        str_override = "survival_objective_secure_0";
        break;
    case #"mq4":
        str_override = "jellyfish_all_around";
        break;
    default:
        str_override = undefined;
        break;
    }
    if (isdefined(level.var_75b02512)) {
        str_override = level.var_75b02512;
    }
    return str_override;
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 0, eflags: 0x2 linked
// Checksum 0xb663de40, Offset: 0x12d8
// Size: 0x8c
function function_57292af3() {
    var_9c1ed9ea = "survival_intro";
    if (isdefined(level.var_f546b995)) {
        var_9c1ed9ea = "survival_intro_" + level.var_f546b995;
    }
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        var_9c1ed9ea = "";
    }
    function_5a47adab(var_9c1ed9ea);
}

// Namespace namespace_9b972177/namespace_9b972177
// Params 1, eflags: 0x0
// Checksum 0x7ef0beed, Offset: 0x1370
// Size: 0x4c
function insertion(*var_df887556) {
    level endon(#"hash_1034af1a853c873d", #"hash_65e9b602c68b844d");
    wait(5);
    function_5d985962(1);
}

