// Atian COD Tools GSC CW decompiler test
#using script_92d4d637814fefa;
#using script_190d6b82bcca0908;
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using script_4421226bbc54b398;
#using scripts\zm_common\zm_vote.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\zm_common\callbacks.gsc;
#using script_27347f09888ad15;
#using scripts\killstreaks\helicopter_shared.gsc;
#using script_72d96920f15049b8;
#using script_1cc417743d7c262d;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_d592c983;

// Namespace namespace_d592c983/level_init
// Params 1, eflags: 0x20
// Checksum 0x3b89df75, Offset: 0x270
// Size: 0xc4
function event_handler[level_init] main(*eventstruct) {
    if (!is_true(getgametypesetting(#"hash_580b0e5930bebbd1"))) {
        return;
    }
    if (!zm_utility::is_classic()) {
        return;
    }
    clientfield::register("scriptmover", "zm_round_accelerant_fx", 15000, 2, "int");
    clientfield::function_5b7d846d("hud_items_rampage_inducer.rampage_state", 15000, 2, "int");
    function_d5ab66bf();
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 0, eflags: 0x2 linked
// Checksum 0x26f3bf48, Offset: 0x340
// Size: 0x372
function function_d5ab66bf() {
    callback::function_74872db6(&function_74872db6);
    callback::on_round_end(&on_round_end);
    level.var_41eb9e50 = 0;
    level.var_44064cc6 = 20;
    var_155f12e4 = struct::get("round_accelerant");
    if (isdefined(var_155f12e4)) {
        var_87f8ede0 = content_manager::spawn_script_model(var_155f12e4, #"hash_c4ab57344c6af29", 0, 1);
        var_87f8ede0 playloopsound(#"hash_350fcc9c7101d9b5");
        var_87f8ede0 clientfield::set("zm_round_accelerant_fx", 1);
        level.var_b03d5c95 = spawn("trigger_radius_use", var_155f12e4.origin, 0, 100);
        level.var_b03d5c95 setcursorhint("HINT_NOICON");
        level.var_b03d5c95 sethintstring(#"hash_67f5a549d99a3f56");
        level.var_b03d5c95 usetriggerignoreuseholdtime();
        level.var_b03d5c95 function_268e4500();
        level.var_b03d5c95 usetriggerrequirelookat(0);
        level.var_b03d5c95 triggerignoreteam();
        level.var_b03d5c95.var_9d7362a4 = #"hash_67f5a549d99a3f56";
        level.var_b03d5c95.var_f0468c71 = #"hash_5b07da139f0eb5d3";
        level.var_b03d5c95.var_51c14c0b = var_87f8ede0;
        var_a999a6b1 = gameobjects::create_use_object(#"any", level.var_b03d5c95, [], (0, 0, 0), #"hash_33e4ad6732f37b84", 1);
        var_a999a6b1 gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
        var_a999a6b1 gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
        var_a999a6b1 gameobjects::set_use_time(1.5);
        var_a999a6b1 gameobjects::set_onuse_event(&onuse);
        var_a999a6b1 gameobjects::set_onbeginuse_event(&function_d98f09d0);
        var_a999a6b1 gameobjects::set_onenduse_event(&function_c540ab84);
        var_a999a6b1.dontlinkplayertotrigger = 1;
        var_a999a6b1.keepweapon = 1;
        level.var_b03d5c95.gameobject = var_a999a6b1;
    }
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 1, eflags: 0x2 linked
// Checksum 0x9d9dc3e3, Offset: 0x6c0
// Size: 0x614
function onuse(player) {
    if (is_true(level.var_b03d5c95.var_f0e39b30)) {
        return;
    }
    if (getgametypesetting(#"hash_704e4a94667cfe72")) {
        if (level.var_41eb9e50) {
            b_passed = zm_vote::function_c65468ef(player, 4, #"hash_2b158e2ae2571717", 1);
        } else {
            b_passed = zm_vote::function_c65468ef(player, 3, #"hash_2b158e2ae2571717", 1);
        }
        if (!b_passed) {
            return;
        }
        level.var_b03d5c95.var_51c14c0b stoploopsound();
        playfxontag(#"hash_37d5882942ea39fb", level.var_b03d5c95.var_51c14c0b, "tag_origin");
        if (level.var_41eb9e50) {
            level.var_b03d5c95.var_51c14c0b playsound(#"hash_38547afc990cb84a");
            level.var_b03d5c95.var_51c14c0b playloopsound(#"hash_350fcc9c7101d9b5");
            level.var_deb2145c = undefined;
            if (is_true(level.var_c50b705e)) {
                level.var_c50b705e = undefined;
            }
            level.var_41eb9e50 = 0;
            level.var_b03d5c95.var_51c14c0b clientfield::set("zm_round_accelerant_fx", 1);
            var_bbec6b17 = getentarraybytype(15);
            foreach (zombie in var_bbec6b17) {
                if (zombie.var_6f84b820 === #"normal" && isalive(zombie) && zombie.archetype !== #"tormentor") {
                    zombie zombie_utility::set_zombie_run_cycle_restore_from_override();
                }
            }
            level.func_get_zombie_spawn_delay = &zm_round_logic::get_zombie_spawn_delay;
            level.func_get_delay_between_rounds = &zm_round_logic::get_delay_between_rounds;
            activated = 0;
            luinotifyevent(#"hash_1b98c5956f94d5c7", 1, activated);
            clientfield::set_world_uimodel("hud_items_rampage_inducer.rampage_state", 2);
            level.var_b03d5c95 thread function_2da3ba2e();
            return;
        }
        level.var_b03d5c95.var_51c14c0b clientfield::set("zm_round_accelerant_fx", 2);
        level.var_41eb9e50 = 1;
        level.var_b03d5c95.var_51c14c0b playsound(#"hash_33ae1ec69258cf05");
        level.var_b03d5c95.var_51c14c0b playloopsound(#"hash_3c36c72309bdbde8");
        var_bbec6b17 = getentarraybytype(15);
        foreach (zombie in var_bbec6b17) {
            if (zombie.var_6f84b820 === #"normal" && isalive(zombie) && zombie.archetype !== #"tormentor") {
                if (math::cointoss(level.var_44064cc6)) {
                    zombie zombie_utility::set_zombie_run_cycle_override_value("super_sprint");
                    continue;
                }
                zombie zombie_utility::set_zombie_run_cycle_override_value("run");
            }
        }
        level.var_deb2145c = &zombie_move_speed_override;
        level.func_get_zombie_spawn_delay = &function_4790457b;
        level.func_get_delay_between_rounds = &function_ff133c1e;
        activated = 1;
        luinotifyevent(#"hash_1b98c5956f94d5c7", 1, activated);
        clientfield::set_world_uimodel("hud_items_rampage_inducer.rampage_state", 1);
        level.var_b03d5c95 thread function_2da3ba2e();
    }
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 0, eflags: 0x2 linked
// Checksum 0x252ec7ef, Offset: 0xce0
// Size: 0x1fc
function function_2da3ba2e() {
    self endon(#"death");
    level.var_b03d5c95.gameobject gameobjects::disable_object();
    var_3ac1a2d6 = spawn("trigger_radius_use", level.var_b03d5c95.origin, 0, 100);
    var_3ac1a2d6 setcursorhint("HINT_NOICON");
    var_3ac1a2d6 sethintstring(#"hash_1c6d037475c27bd2");
    var_3ac1a2d6 usetriggerrequirelookat(0);
    var_3ac1a2d6 triggerignoreteam();
    var_3ac1a2d6 triggerenable(1);
    self.var_f0e39b30 = 1;
    self sethintstring(#"hash_1c6d037475c27bd2");
    wait(5);
    if (is_true(level.var_41eb9e50)) {
        level.var_b03d5c95 sethintstring(level.var_b03d5c95.var_f0468c71);
    } else {
        level.var_b03d5c95 sethintstring(level.var_b03d5c95.var_9d7362a4);
    }
    level.var_b03d5c95.gameobject gameobjects::enable_object();
    self.var_f0e39b30 = undefined;
    if (isdefined(var_3ac1a2d6)) {
        var_3ac1a2d6 delete();
    }
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 1, eflags: 0x2 linked
// Checksum 0x470800dd, Offset: 0xee8
// Size: 0x5c
function function_d98f09d0(player) {
    if (isdefined(self.trigger) && isdefined(player)) {
        self.trigger setinvisibletoplayer(player);
    }
    self playsound(#"hash_234c3f0475e9dc7f");
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 3, eflags: 0x2 linked
// Checksum 0xecf035ce, Offset: 0xf50
// Size: 0xac
function function_c540ab84(*team, player, success) {
    if (isdefined(self.trigger) && isdefined(player)) {
        self.trigger setvisibletoplayer(player);
    }
    if (is_true(success)) {
        self playsound(#"hash_3e4526a396c82250");
        return;
    }
    self playsound(#"hash_1cd12f0f1ae7b46a");
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 0, eflags: 0x2 linked
// Checksum 0xa73922a0, Offset: 0x1008
// Size: 0xaa
function zombie_move_speed_override() {
    self.zombie_move_speed_restore = self.zombie_move_speed;
    if (is_true(self.var_4439c2d9)) {
        self.zombie_move_speed_override = "walk";
        self.zombie_move_speed = "walk";
        return;
    }
    if (math::cointoss()) {
        self.zombie_move_speed_override = "super_sprint";
        self.zombie_move_speed = "super_sprint";
        return;
    }
    self.zombie_move_speed_override = "run";
    self.zombie_move_speed = "run";
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 1, eflags: 0x2 linked
// Checksum 0xaa485195, Offset: 0x10c0
// Size: 0x12
function function_4790457b(*params) {
    return 0.5;
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 0, eflags: 0x2 linked
// Checksum 0x86c6a5fd, Offset: 0x10e0
// Size: 0xa
function function_ff133c1e() {
    return 0.5;
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 0, eflags: 0x2 linked
// Checksum 0x2547a92b, Offset: 0x10f8
// Size: 0x2c
function function_74872db6() {
    if (is_true(level.var_41eb9e50)) {
        level.var_c50b705e = 1;
    }
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 0, eflags: 0x2 linked
// Checksum 0xa2afe67e, Offset: 0x1130
// Size: 0x14c
function on_round_end() {
    if (is_true(level.var_41eb9e50) && is_true(level.var_c50b705e)) {
        foreach (player in getplayers()) {
            player zm_stats::increment_challenge_stat(#"hash_7e74c2c266f4b3a8");
        }
    }
    if (level.round_number <= 55) {
        if ((isdefined(level.round_number) ? level.round_number : 1) % 5 == 0) {
            level.var_44064cc6 += 5;
        }
    }
    function_c531a378();
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 0, eflags: 0x2 linked
// Checksum 0x2b4027e0, Offset: 0x1288
// Size: 0x1ee
function function_c531a378() {
    if (level.round_number >= 55) {
        if (isdefined(level.var_b03d5c95)) {
            playfx(#"sr/fx9_safehouse_mchn_upgrades_spawn", level.var_b03d5c95.origin);
            playsoundatposition(#"hash_5c80b67921d4c89", level.var_b03d5c95.var_51c14c0b.origin);
            var_ce288ad4 = 0;
            if (is_true(level.var_41eb9e50)) {
                var_ce288ad4 = 1;
            }
            level.var_c50b705e = undefined;
            level.var_41eb9e50 = undefined;
            level.var_deb2145c = undefined;
            level.func_get_zombie_spawn_delay = &zm_round_logic::get_zombie_spawn_delay;
            level.func_get_delay_between_rounds = &zm_round_logic::get_delay_between_rounds;
            if (isdefined(level.var_b03d5c95.var_51c14c0b)) {
                level.var_b03d5c95.var_51c14c0b delete();
            }
            if (isdefined(level.var_b03d5c95.gameobject)) {
                level.var_b03d5c95.gameobject gameobjects::destroy_object(1, 1);
            }
            if (var_ce288ad4) {
                luinotifyevent(#"hash_1b98c5956f94d5c7", 1, 0);
            }
            clientfield::set_world_uimodel("hud_items_rampage_inducer.rampage_state", 2);
            level.var_b03d5c95 = undefined;
        }
    }
}

