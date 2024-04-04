// Atian COD Tools GSC CW decompiler test
#using script_1cc417743d7c262d;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\zm_score.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_4faef43b;

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x5
// Checksum 0x569022d1, Offset: 0x330
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3793eb4a6c52c66f", &__init__, undefined, undefined, undefined);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0x2b023864, Offset: 0x378
// Size: 0x18c
function __init__() {
    clientfield::register("scriptmover", "" + #"hash_322ed89801938bb9", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_6d9aa5215e695ca2", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_1f232116f775fa91", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_4719ef7fda616f3a", 1, 1, "counter");
    clientfield::register_clientuimodel("hudItems.reinforcing", 1, 1, "int", 0);
    level thread init_doors();
    level thread function_e5d01ba1();
    level.var_dd9a04c9 = 0;
    callback::on_player_killed(&on_player_killed);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 1, eflags: 0x0
// Checksum 0xbcb36db1, Offset: 0x510
// Size: 0x2c
function on_player_killed(*var_a2f12b49) {
    self clientfield::set_player_uimodel("hudItems.reinforcing", 0);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 1, eflags: 0x0
// Checksum 0x80981a18, Offset: 0x548
// Size: 0x3c
function function_3dfeef3b(var_da2c0964 = 0) {
    self clientfield::set_player_uimodel("hudItems.reinforcing", var_da2c0964);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0x89f077ea, Offset: 0x590
// Size: 0x400
function init_doors() {
    var_51eefac8 = array("p9_sr_barricade_01_window_01", "p9_sr_barricade_01_window_01", "p9_sr_barricade_01_window_01", "p9_sr_barricade_01_window_01_dmg_a", "p9_sr_barricade_01_window_01_dmg_a", "p9_sr_barricade_01_window_01_dmg_a", "p9_sr_barricade_01_window_01_dmg_b", "p9_sr_barricade_01_window_01_dmg_b", "p9_sr_barricade_01_window_01_dmg_b");
    var_57652081 = struct::get_array("survival_door");
    foreach (var_2b02295f in var_57652081) {
        var_2b02295f.var_a7417bea = var_51eefac8;
        var_2b02295f.s_boards = arraygetclosest(var_2b02295f.origin, struct::get_array("survival_door_boards"));
        use_trigger = spawn("trigger_radius_use", var_2b02295f.origin, 0, 96, 96, 1);
        assert(isdefined(use_trigger));
        use_trigger triggerignoreteam();
        use_trigger setvisibletoall();
        use_trigger setteamfortrigger(#"none");
        use_trigger setcursorhint("HINT_NOICON");
        use_trigger sethintstring(#"hash_e0e56e669b6a886");
        use_trigger usetriggerignoreuseholdtime();
        var_56d14168 = spawn("script_model", var_2b02295f.origin);
        assert(isdefined(var_56d14168));
        var_56d14168.angles = var_2b02295f.angles;
        var_56d14168.health = 10000000;
        var_56d14168 setcandamage(1);
        var_56d14168 setmodel("p8_wz_door_01");
        var_56d14168.var_1c553fa4 = 1;
        var_56d14168.damage_level = 0;
        var_56d14168.var_27a45076 = 0;
        var_56d14168.reinforced = 0;
        var_2b02295f.trigger = use_trigger;
        var_2b02295f.door = var_56d14168;
        use_trigger.parent_struct = var_2b02295f;
        var_56d14168.parent_struct = var_2b02295f;
        var_8b4e689b = spawn("trigger_radius", var_2b02295f.origin, 0, 96, 96);
        var_8b4e689b.parent_struct = var_2b02295f;
        var_8b4e689b thread function_6a3e8a89();
        use_trigger callback::on_trigger_once(&door_think);
        namespace_85745671::function_1ede0cd3(var_2b02295f.target, var_2b02295f.door, 1);
        function_be2c24a3(var_2b02295f.target, 0);
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0xb68cca43, Offset: 0x998
// Size: 0x4f8
function function_6a3e8a89() {
    level endon(#"game_ended");
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        var_b1336156 = gettime();
        elapsed_time = 0;
        parent_struct = self.parent_struct;
        door = self.parent_struct.door;
        while (isalive(player) && player istouching(self) && player usebuttonpressed() && elapsed_time < 0.5) {
            elapsed_time = float(gettime() - var_b1336156) / 1000;
            progress = elapsed_time / 0.5;
            n_resource = player zm_score::function_ffc2d0bc();
            if (!isdefined(self.parent_struct.door)) {
                var_b9fbcc94 = 0;
            } else {
                var_b9fbcc94 = 0;
            }
            if (isdefined(n_resource) && n_resource >= var_b9fbcc94 && elapsed_time > 0.1) {
                if (!isdefined(door) || isdefined(door.damage_level) && door.damage_level > 0 || !is_true(door.reinforced)) {
                    player clientfield::set_player_uimodel("hudItems.dynentUseHoldProgress", progress);
                    player function_3dfeef3b(1);
                    if (isdefined(self.parent_struct.trigger)) {
                        self.parent_struct.trigger sethintstring("");
                    }
                }
            }
            waitframe(1);
        }
        player function_3dfeef3b(0);
        if (elapsed_time >= 0.5) {
            n_resource = player zm_score::function_ffc2d0bc();
            if (!isdefined(self.parent_struct.door)) {
                var_b9fbcc94 = 0;
            } else {
                var_b9fbcc94 = 0;
            }
            if (isdefined(n_resource) && n_resource >= var_b9fbcc94) {
                var_c598073c = parent_struct function_55859752();
                if (var_c598073c) {
                    player zm_score::minus_to_player_score(var_b9fbcc94);
                    if (isdefined(self.parent_struct.trigger)) {
                        self.parent_struct.trigger function_dae4ab9b(0.3);
                        self.parent_struct.trigger sethintstring(#"");
                    }
                }
            }
            continue;
        }
        if (!isdefined(self.parent_struct.door)) {
            self.parent_struct.trigger sethintstring(#"hash_3d9e6b6b1984617d");
            continue;
        }
        if (self.parent_struct.door.var_27a45076 === -1 || self.parent_struct.door.var_27a45076 === 1) {
            if (!is_true(self.parent_struct.door.reinforced)) {
                self.parent_struct.trigger sethintstring(#"hash_3197c6dc91249ca2");
            }
            continue;
        }
        if (!is_true(self.parent_struct.door.reinforced)) {
            self.parent_struct.trigger sethintstring(#"hash_e0e56e669b6a886");
        }
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 1, eflags: 0x4
// Checksum 0xda1b29fb, Offset: 0xe98
// Size: 0x4d4
function private door_think(eventstruct) {
    player = eventstruct.activator;
    parent_struct = self.parent_struct;
    door = self.parent_struct.door;
    if (isdefined(door) && is_true(door.reinforced)) {
        self thread function_48a16d8d(player, &door_think);
        return;
    }
    if (isdefined(door)) {
        current_angles = door.angles;
        var_f6f828b2 = (0, 90, 0) + current_angles;
        var_bc7389e4 = (0, -90, 0) + current_angles;
        var_1be3aa53 = vectordot(player.origin - door.origin, anglestoforward(door.angles)) > 0;
        if (door.var_27a45076 == 0 && var_1be3aa53) {
            door rotateto(var_f6f828b2, 0.5);
            door.var_27a45076 = 1;
            function_be2c24a3(parent_struct.target, 1);
            if (!is_true(door.reinforced)) {
                self sethintstring(#"hash_3197c6dc91249ca2");
            } else {
                self sethintstring(#"hash_3df5eb7de3fa5e80");
            }
        } else if (door.var_27a45076 == 0 && !var_1be3aa53) {
            door rotateto(var_bc7389e4, 0.5);
            door.var_27a45076 = -1;
            function_be2c24a3(parent_struct.target, 1);
            if (!is_true(door.reinforced)) {
                self sethintstring(#"hash_3197c6dc91249ca2");
            } else {
                self sethintstring(#"hash_3df5eb7de3fa5e80");
            }
        } else if (door.var_27a45076 == 1) {
            door rotateto(var_bc7389e4, 0.5);
            door.var_27a45076 = 0;
            function_be2c24a3(parent_struct.target, 0);
            if (!is_true(door.reinforced)) {
                self sethintstring(#"hash_e0e56e669b6a886");
            }
        } else if (door.var_27a45076 == -1) {
            door rotateto(var_f6f828b2, 0.5);
            door.var_27a45076 = 0;
            function_be2c24a3(parent_struct.target, 0);
            if (!is_true(door.reinforced)) {
                self sethintstring(#"hash_e0e56e669b6a886");
            }
        }
        if (door.var_27a45076 == 0) {
            door namespace_85745671::function_aa894590();
        } else {
            door namespace_85745671::function_a63a9610();
        }
        self thread function_be463e75(0.5, &door_think);
        return;
    }
    self sethintstring(#"hash_3d9e6b6b1984617d");
    self thread function_48a16d8d(player, &door_think);
}

// Namespace namespace_4faef43b/event_1524de24
// Params 1, eflags: 0x20
// Checksum 0xb0f0b7f0, Offset: 0x1378
// Size: 0x84
function event_handler[event_1524de24] function_9d78f548(eventstruct) {
    parent_struct = self.parent_struct;
    if (!isdefined(parent_struct)) {
        return;
    }
    if (parent_struct.targetname == "survival_door") {
        self function_ae47792b(eventstruct);
        return;
    }
    if (parent_struct.targetname == "survival_window") {
        self function_994e81b7(eventstruct);
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 1, eflags: 0x0
// Checksum 0xcd01cdc, Offset: 0x1408
// Size: 0x434
function function_ae47792b(eventstruct) {
    self endon(#"death", #"destroyed");
    self.health = 10000000;
    parent_struct = self.parent_struct;
    if (!is_true(self.var_1c553fa4)) {
        return;
    }
    if (isactor(eventstruct.attacker) && (eventstruct.mod === "MOD_MELEE" || eventstruct.mod === "MOD_EXPLOSIVE")) {
        self.damage_level++;
        if (self.var_27a45076 === 0) {
            self.parent_struct.trigger sethintstring(#"hash_330249c707d8e92b");
        }
    }
    if (!isdefined(self.parent_struct.fx_org)) {
        self.parent_struct.fx_org = spawn("script_model", self.origin);
        self.parent_struct.fx_org.angles = self.angles;
        waitframe(1);
    }
    if (self.damage_level > 8 || !self.reinforced && self.damage_level > 4) {
        self.parent_struct.fx_org clientfield::increment("" + #"hash_6d9aa5215e695ca2");
        if (level flag::get("obj_defend_start") && !level flag::get("obj_defend_complete") && level.var_dd9a04c9 < 3) {
            level thread globallogic_audio::leader_dialog("objectiveDefendBarrierBroken");
            level.var_dd9a04c9++;
        }
        if (!self.reinforced) {
            self playsound(#"hash_75beb5fd873ee815");
        } else {
            self playsound(#"hash_15d3a67feb395a2a");
        }
        function_be2c24a3(self.parent_struct.target, 1);
        self.parent_struct.trigger sethintstring(#"hash_3d9e6b6b1984617d");
        waittillframeend();
        self delete();
        return;
    }
    if (self.reinforced) {
        if (self.model != parent_struct.var_a7417bea[self.damage_level]) {
            self.parent_struct.fx_org clientfield::increment("" + #"hash_322ed89801938bb9");
        }
        self playsound(#"hash_7c72cea06ae4906c");
        self setmodel(parent_struct.var_a7417bea[self.damage_level]);
        self.origin = parent_struct.s_boards.origin;
        self setscale(parent_struct.s_boards.modelscale);
        self thread function_9801cde9();
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0x3bd41f2a, Offset: 0x1848
// Size: 0x36
function function_9801cde9() {
    self endon(#"death");
    self.var_1c553fa4 = 0;
    wait(1);
    self.var_1c553fa4 = 1;
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0xbb533de0, Offset: 0x1888
// Size: 0x1e0
function function_55859752() {
    door = self.door;
    if (!isdefined(door)) {
        door = spawn("script_model", self.origin);
        assert(isdefined(door));
        door.angles = self.angles;
        door.health = 10000000;
        door setcandamage(1);
        door.var_27a45076 = 0;
        self.door = door;
        door.parent_struct = self;
        function_be2c24a3(self.target, 0);
    } else if (door.reinforced && door.damage_level <= 0 || door.var_27a45076 != 0) {
        return false;
    }
    door.damage_level = 0;
    door.var_1c553fa4 = 1;
    door setmodel(self.var_a7417bea[door.damage_level]);
    door.origin = self.s_boards.origin;
    door setscale(self.s_boards.modelscale);
    door.reinforced = 1;
    namespace_85745671::function_1ede0cd3(self.target, self.door);
    door playsound(#"hash_4ef96dfa0f645331");
    return true;
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x4
// Checksum 0x612a5718, Offset: 0x1a70
// Size: 0x290
function private function_e5d01ba1() {
    var_23c777e4 = array("p9_sr_barricade_01_window_01", "p9_sr_barricade_01_window_01", "p9_sr_barricade_01_window_01_dmg_a", "p9_sr_barricade_01_window_01_dmg_a", "p9_sr_barricade_01_window_01_dmg_b", "p9_sr_barricade_01_window_01_dmg_b");
    var_7f2b410c = array("p9_sr_barricade_01_window_02", "p9_sr_barricade_01_window_02", "p9_sr_barricade_01_window_02_dmg_a", "p9_sr_barricade_01_window_02_dmg_a", "p9_sr_barricade_01_window_02_dmg_b", "p9_sr_barricade_01_window_01_dmg_b");
    var_dbba5e0 = struct::get_array("survival_window");
    foreach (window_boards in var_dbba5e0) {
        window_boards.var_811c2d3a = undefined;
        if (window_boards.var_cd17ea88 == "window_01") {
            window_boards.var_811c2d3a = var_23c777e4;
        } else if (window_boards.var_cd17ea88 == "window_02") {
            window_boards.var_811c2d3a = var_7f2b410c;
        }
        window_trigger = spawn("trigger_radius", window_boards.origin, 0, 64, 80, 1);
        assert(isdefined(window_trigger));
        window_trigger triggerignoreteam();
        window_trigger setvisibletoall();
        window_trigger usetriggerrequirelookat();
        window_trigger setcursorhint("HINT_NOICON");
        window_trigger sethintstring(#"hash_3766e0d30f6782ad");
        window_trigger.window_boards = window_boards;
        window_boards.trigger = window_trigger;
        window_trigger.parent_struct = window_boards;
        window_trigger thread function_51095a3d();
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x4
// Checksum 0x32ba1878, Offset: 0x1d08
// Size: 0x460
function private function_51095a3d() {
    level endon(#"game_ended");
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        parent_struct = self.parent_struct;
        var_b1336156 = gettime();
        elapsed_time = 0;
        if (!isdefined(self.window_boards.window.model) || isdefined(self.window_boards.window.damage_level) && self.window_boards.window.damage_level > 0) {
            while (isalive(player) && player istouching(self) && player util::is_player_looking_at(self.parent_struct.origin, 0.8) && player usebuttonpressed() && elapsed_time < 1.5) {
                elapsed_time = float(gettime() - var_b1336156) / 1000;
                progress = elapsed_time / 1.5;
                n_resource = player zm_score::function_ffc2d0bc();
                if (!isdefined(self.parent_struct.window)) {
                    var_b9fbcc94 = 0;
                } else {
                    var_b9fbcc94 = 0;
                }
                if (isdefined(n_resource) && n_resource >= var_b9fbcc94 && elapsed_time > 0.1) {
                    player clientfield::set_player_uimodel("hudItems.dynentUseHoldProgress", progress);
                    player function_3dfeef3b(1);
                    self sethintstring("");
                }
                waitframe(1);
            }
        }
        player function_3dfeef3b(0);
        if (elapsed_time >= 1.5 && player util::is_player_looking_at(self.parent_struct.origin, 0.8)) {
            n_resource = player zm_score::function_ffc2d0bc();
            if (!isdefined(self.parent_struct.window)) {
                var_b9fbcc94 = 0;
            } else {
                var_b9fbcc94 = 0;
            }
            if (isdefined(n_resource) && n_resource >= var_b9fbcc94) {
                if (isdefined(n_resource) && n_resource >= var_b9fbcc94) {
                    var_c598073c = parent_struct function_673a485();
                    if (var_c598073c) {
                        player zm_score::minus_to_player_score(var_b9fbcc94);
                        self sethintstring("");
                        self.parent_struct.window notify(#"repaired");
                    }
                }
            }
            continue;
        }
        if (!isdefined(self.parent_struct.window)) {
            self sethintstring(#"hash_3766e0d30f6782ad");
            continue;
        }
        if (isdefined(self.parent_struct.window.damage_level) && self.parent_struct.window.damage_level > 0) {
            self sethintstring(#"hash_7b18ee0053fc3a7b");
        }
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 1, eflags: 0x4
// Checksum 0xd624d693, Offset: 0x2170
// Size: 0x2ec
function private function_994e81b7(eventstruct) {
    self endon(#"death", #"destroyed");
    self.health = 10000000;
    if (!is_true(self.var_1c553fa4)) {
        return;
    }
    if (isactor(eventstruct.attacker) && (eventstruct.mod === "MOD_MELEE" || eventstruct.mod === "MOD_EXPLOSIVE")) {
        self.damage_level++;
    }
    if (!isdefined(self.parent_struct.fx_org)) {
        self.parent_struct.fx_org = spawn("script_model", self.origin);
        self.parent_struct.fx_org.angles = self.angles;
        waitframe(1);
    }
    if (self.damage_level > 5) {
        self.parent_struct.fx_org clientfield::increment("" + #"hash_4719ef7fda616f3a");
        self playsound(#"hash_bf0f566d836c8a2");
        self.parent_struct.trigger sethintstring(#"hash_3766e0d30f6782ad");
        waittillframeend();
        self delete();
        return;
    }
    if (self.damage_level > 0) {
        if (self.model != self.parent_struct.var_811c2d3a[self.damage_level]) {
            self.parent_struct.fx_org clientfield::increment("" + #"hash_1f232116f775fa91");
        }
        self playsound(#"hash_6d3a81cd3c4049f4");
        self setmodel(self.parent_struct.var_811c2d3a[self.damage_level]);
        self.parent_struct.trigger sethintstring(#"hash_7b18ee0053fc3a7b");
        if (!isplayer(eventstruct.attacker)) {
            self thread function_82c85f70();
        }
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0x55c887e4, Offset: 0x2468
// Size: 0x3a
function function_82c85f70() {
    self endon(#"death");
    self.var_1c553fa4 = 0;
    wait(0.5);
    self.var_1c553fa4 = 1;
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0x73479ece, Offset: 0x24b0
// Size: 0x150
function function_673a485() {
    window = self.window;
    if (!isdefined(window)) {
        window = spawn("script_model", self.origin);
        assert(isdefined(window));
        window.angles = self.angles;
        window.health = 10000000;
        window setcandamage(1);
        self.window = window;
        window.parent_struct = self;
    } else if (window.damage_level <= 0) {
        return false;
    }
    window.damage_level = 0;
    window.var_1c553fa4 = 1;
    window setmodel(self.var_811c2d3a[window.damage_level]);
    window playsound(#"hash_65d45ffe1b39c009");
    namespace_85745671::function_1ede0cd3(self.target, self.window);
    return true;
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 2, eflags: 0x4
// Checksum 0xfb2ec62b, Offset: 0x2608
// Size: 0x5c
function private function_48a16d8d(activator, func) {
    level endon(#"game_ended");
    while (activator usebuttonpressed()) {
        waitframe(1);
    }
    self callback::on_trigger_once(func);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 2, eflags: 0x4
// Checksum 0xc4b03542, Offset: 0x2670
// Size: 0x44
function private function_be463e75(delay, func) {
    level endon(#"game_ended");
    wait(delay);
    self callback::on_trigger_once(func);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 2, eflags: 0x4
// Checksum 0xf863dae7, Offset: 0x26c0
// Size: 0xcc
function private function_be2c24a3(var_6de4a710, value) {
    if (!isdefined(var_6de4a710)) {
        return;
    }
    var_e86e150a = undefined;
    if (ispathnode(var_6de4a710)) {
        var_e86e150a = var_6de4a710;
    } else {
        var_e86e150a = getnode(var_6de4a710, "targetname");
    }
    if (isdefined(var_e86e150a)) {
        other_node = namespace_85745671::function_5a4a952a(var_e86e150a);
        function_dc0a8e61(var_e86e150a, value);
        if (isdefined(other_node)) {
            function_dc0a8e61(other_node, value);
        }
    }
}

