// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using script_113dd7f0ea2a1d4f;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace zm_sq;

// Namespace zm_sq/zm_sq
// Params 0, eflags: 0x5
// Checksum 0x2dcd009f, Offset: 0x198
// Size: 0x84
function private autoexec init() {
    /#
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            adddebugcommand("<unknown string>");
        }
    #/
    callback::on_disconnect(&on_player_disconnect);
    callback::on_connect(&on_player_connect);
}

// Namespace zm_sq/zm_sq
// Params 0, eflags: 0x2 linked
// Checksum 0x68bec035, Offset: 0x228
// Size: 0x44
function on_player_disconnect() {
    /#
        if (getdvarint(#"zm_debug_ee", 0)) {
            self thread function_fa5a5bfd();
        }
    #/
}

// Namespace zm_sq/zm_sq
// Params 0, eflags: 0x2 linked
// Checksum 0x53c2b236, Offset: 0x278
// Size: 0x1fc
function on_player_connect() {
    self endon(#"disconnect");
    self.var_4fcae9dc = [];
    self.var_e453e8a5 = [];
    waittillframeend();
    if (is_true(self.is_hotjoining)) {
        foreach (other_player in function_a1ef346b()) {
            if (other_player == self || !isdefined(level.var_31028c5d)) {
                continue;
            }
            if (isarray(other_player.var_4fcae9dc) && other_player.var_4fcae9dc.size > 0) {
                self.var_4fcae9dc = arraycopy(other_player.var_4fcae9dc);
                a_keys = getarraykeys(self.var_4fcae9dc);
                var_ff6498a7 = a_keys[a_keys.size - 1];
                var_441061cd = self.var_4fcae9dc[var_ff6498a7];
                level.var_31028c5d prototype_hud::set_active_objective_string(self, var_441061cd);
                level.var_31028c5d prototype_hud::function_817e4d10(self, 2);
                level.var_31028c5d prototype_hud::function_1b05e380(self, 0);
                break;
            }
        }
    }
}

// Namespace zm_sq/zm_sq
// Params 10, eflags: 0x0
// Checksum 0x910ecb76, Offset: 0x480
// Size: 0x694
function register(name, step_name, var_e788cdd7, setup_func, cleanup_func, var_d6ca4caf, var_27465eb4, var_6cc77d4e, a_targets, var_441061cd) {
    /#
        assert(ishash(name), "<unknown string>");
        assert(ishash(step_name), "<unknown string>");
        assert(ishash(var_e788cdd7), "<unknown string>");
        if (!isdefined(name)) {
            if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                iprintlnbold("<unknown string>");
                println("<unknown string>");
            }
            return;
        }
        if (!isdefined(step_name)) {
            if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                iprintlnbold("<unknown string>");
                println("<unknown string>");
            }
            return;
        }
        if (!isdefined(setup_func)) {
            if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                iprintlnbold("<unknown string>");
                println("<unknown string>");
            }
            return;
        }
        if (!isdefined(cleanup_func)) {
            if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                iprintlnbold("<unknown string>");
                println("<unknown string>");
            }
            return;
        }
        if (isdefined(self._ee) && isdefined(self._ee[name]) && isdefined(var_d6ca4caf) && isdefined(self._ee[name].record_stat)) {
            if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                iprintlnbold("<unknown string>");
                println("<unknown string>");
            }
            return;
        }
    #/
    if (!isdefined(self._ee)) {
        self._ee = [];
    }
    if (!isdefined(self._ee[name])) {
        self._ee[name] = {#name:name, #completed:0, #steps:[], #current_step:0, #started:0, #owner:self, #skip_to_step:-1};
        /#
            if (getdvarint(#"zm_debug_ee", 0)) {
                thread function_28aee167(name);
            }
        #/
    }
    ee = self._ee[name];
    if (!isdefined(ee.record_stat)) {
        ee.record_stat = var_d6ca4caf;
    }
    if (!isdefined(ee.var_35ccab99)) {
        ee.var_35ccab99 = var_27465eb4;
    }
    new_step = {#name:step_name, #ee:ee, #var_e788cdd7:var_e788cdd7, #setup_func:setup_func, #cleanup_func:cleanup_func, #started:0, #completed:0, #cleaned_up:0, #var_6cc77d4e:var_6cc77d4e, #a_targets:a_targets, #var_441061cd:var_441061cd};
    previous_step = ee.steps[self._ee[name].steps.size - 1];
    if (isdefined(previous_step)) {
        previous_step.next_step = new_step;
    }
    if (!isdefined(ee.steps)) {
        ee.steps = [];
    } else if (!isarray(ee.steps)) {
        ee.steps = array(ee.steps);
    }
    ee.steps[ee.steps.size] = new_step;
    self flag::init(var_e788cdd7 + "_completed");
    if (!self flag::exists(ee.name + "_completed")) {
        self flag::init(ee.name + "_completed");
    }
    /#
        if (getdvarint(#"zm_debug_ee", 0)) {
            thread function_b3da1a16(ee.name, new_step.name);
            thread devgui_think();
        }
    #/
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x0
// Checksum 0xc9a41cfa, Offset: 0xb20
// Size: 0x244
function start(name, var_9d8cf7f = 0) {
    if (!zm_utility::is_ee_enabled() && !var_9d8cf7f) {
        return;
    }
    assert(ishash(name), "<unknown string>");
    assert(isdefined(self._ee[name]), "<unknown string>" + function_9e72a96(name) + "<unknown string>");
    if (self._ee[name].started) {
        /#
            if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                iprintlnbold("<unknown string>" + function_9e72a96(name) + "<unknown string>");
                println("<unknown string>" + function_9e72a96(name) + "<unknown string>");
            }
        #/
        return;
    }
    ee = self._ee[name];
    var_5ea5c94d = 0;
    /#
        if (ee.skip_to_step > -1) {
            assert(0 <= ee.skip_to_step, "<unknown string>");
            if (0 < ee.skip_to_step) {
                var_5ea5c94d = 1;
            } else if (0 == ee.skip_to_step) {
                ee.skip_to_step = -1;
            }
        }
    #/
    self thread run_step(ee, ee.steps[0], var_5ea5c94d);
}

// Namespace zm_sq/zm_sq
// Params 1, eflags: 0x0
// Checksum 0x61978bad, Offset: 0xd70
// Size: 0x9e
function is_complete(name) {
    assert(ishash(name), "<unknown string>");
    assert(isdefined(self._ee[name]), "<unknown string>" + function_9e72a96(name) + "<unknown string>");
    return self._ee[name].completed;
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x0
// Checksum 0xb0acdaf2, Offset: 0xe18
// Size: 0x142
function function_9212ff4d(ee_name, step_name) {
    assert(ishash(ee_name), "<unknown string>");
    assert(ishash(step_name), "<unknown string>");
    assert(isdefined(self._ee[ee_name]), "<unknown string>" + ee_name + "<unknown string>");
    foreach (ee_index, ee_step in self._ee[ee_name].steps) {
        if (step_name == ee_step.name) {
            return ee_index;
        }
    }
    return -1;
}

// Namespace zm_sq/zm_sq
// Params 3, eflags: 0x6 linked
// Checksum 0xbf1cbd47, Offset: 0xf68
// Size: 0x934
function private run_step(ee, step, var_5ea5c94d) {
    var_4ef8d79b = isentity(self);
    if (var_4ef8d79b) {
        self endon(#"death");
        self endon(#"disconnect");
    }
    self endon(#"game_ended");
    /#
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            iprintlnbold(function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step.name) + "<unknown string>");
            println(function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step.name) + "<unknown string>");
        }
    #/
    ee.started = 1;
    step.started = 1;
    self thread function_3f795dc3(ee, step, var_5ea5c94d);
    if (!step.completed) {
        waitresult = self waittill(step.var_e788cdd7 + "_setup_completed", step.var_e788cdd7 + "_ended_early");
    }
    /#
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            iprintlnbold(function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step.name) + "<unknown string>");
            println(function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step.name) + "<unknown string>");
        }
    #/
    if (game.state === #"postgame") {
        return;
    }
    ended_early = isdefined(waitresult) && waitresult._notify == step.var_e788cdd7 + "_ended_early";
    [[ step.cleanup_func ]](var_5ea5c94d, ended_early);
    /#
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            iprintlnbold(function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step.name) + "<unknown string>");
            println(function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step.name) + "<unknown string>");
        }
    #/
    step.cleaned_up = 1;
    if (game.state === #"postgame") {
        return;
    }
    self flag::set(step.var_e788cdd7 + "_completed");
    if (ee.current_step === 0 && is_true(ee.record_stat)) {
        if (var_4ef8d79b) {
            self.var_897fa11b = 1;
        } else {
            players = getplayers();
            foreach (player in players) {
                player.var_897fa11b = 1;
            }
        }
    }
    if (isdefined(step.next_step)) {
        var_5ea5c94d = 0;
        /#
            if (ee.skip_to_step > -1) {
                var_7f1ec3f3 = ee.current_step + 1;
                assert(var_7f1ec3f3 <= ee.skip_to_step, "<unknown string>");
                if (var_7f1ec3f3 < ee.skip_to_step) {
                    var_5ea5c94d = 1;
                } else if (var_7f1ec3f3 == ee.skip_to_step) {
                    ee.skip_to_step = -1;
                }
                wait(0.5);
            }
        #/
        ee.current_step++;
        self thread run_step(ee, step.next_step, var_5ea5c94d);
        return;
    }
    ee.completed = 1;
    self flag::set(ee.name + "_completed");
    if (sessionmodeisonlinegame() && is_true(ee.record_stat)) {
        players = [];
        if (var_4ef8d79b) {
            players[0] = self;
        } else {
            players = getplayers();
        }
        foreach (player in players) {
            if (is_true(player.var_897fa11b)) {
                player zm_stats::set_map_stat(#"main_quest_completed", 1);
                player zm_stats::function_a6efb963(#"main_quest_completed", 1);
                player zm_stats::function_9288c79b(#"main_quest_completed", 1);
                n_time_elapsed = gettime() - level.var_21e22beb;
                player zm_stats::function_366b6fb9("FASTEST_QUEST_COMPLETION_TIME", n_time_elapsed);
                player zm_stats::function_5addf1fc("FASTEST_QUEST_COMPLETION_TIME", n_time_elapsed);
                scoreevents::processscoreevent(#"main_ee", player);
                if (isdefined(ee.var_35ccab99)) {
                    player thread [[ ee.var_35ccab99 ]]();
                }
            }
        }
        zm_stats::set_match_stat(#"main_quest_completed", 1);
        if (isdefined(level.var_3034d7b8)) {
            [[ level.var_3034d7b8 ]]();
        }
        zm_stats::function_ea5b4947();
    }
    /#
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            iprintlnbold("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>");
            println("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>");
        }
    #/
}

// Namespace zm_sq/zm_sq
// Params 3, eflags: 0x6 linked
// Checksum 0xbf8c5d4b, Offset: 0x18a8
// Size: 0x154
function private function_3f795dc3(*ee, step, var_5ea5c94d) {
    if (isentity(self)) {
        self endon(#"death");
        self endon(#"disconnect");
    }
    self endon(#"game_ended");
    step endoncallback(&function_df365859, #"end_early");
    self notify(step.var_e788cdd7 + "_started");
    if (isdefined(step.var_6cc77d4e)) {
        level function_266d66eb(step.var_6cc77d4e, step.a_targets, undefined, step.var_441061cd);
    }
    [[ step.setup_func ]](var_5ea5c94d);
    step.completed = 1;
    if (isdefined(step.var_6cc77d4e)) {
        level objective_complete(step.var_6cc77d4e, step.a_targets);
    }
    self notify(step.var_e788cdd7 + "_setup_completed");
}

// Namespace zm_sq/zm_sq
// Params 1, eflags: 0x6 linked
// Checksum 0x8f06f29c, Offset: 0x1a08
// Size: 0x174
function private function_df365859(*notifyhash) {
    /#
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            iprintlnbold(function_9e72a96(self.ee.name) + "<unknown string>" + function_9e72a96(self.name) + "<unknown string>");
            println(function_9e72a96(self.ee.name) + "<unknown string>" + function_9e72a96(self.name) + "<unknown string>");
        }
    #/
    self.completed = 1;
    if (isdefined(self.var_6cc77d4e)) {
        level objective_complete(self.var_6cc77d4e, self.a_targets);
    }
    waittillframeend();
    self.ee.owner notify(self.var_e788cdd7 + "_ended_early");
    self.ee.owner notify(self.var_e788cdd7 + "_setup_completed");
}

// Namespace zm_sq/zm_sq
// Params 8, eflags: 0x2 linked
// Checksum 0xd5303095, Offset: 0x1b88
// Size: 0xab8
function function_266d66eb(var_6cc77d4e, var_54829af, var_8c7ec5ce = 1, var_441061cd, var_4cfa0710 = var_6cc77d4e, var_df2aef7b, var_c87f9ad7, params) {
    var_7f05db6 = [];
    if (isplayer(self)) {
        a_players = array(self);
    } else {
        a_players = getplayers();
    }
    if (isdefined(var_54829af)) {
        if (!isdefined(var_54829af)) {
            var_54829af = [];
        } else if (!isarray(var_54829af)) {
            var_54829af = array(var_54829af);
        }
        foreach (var_ff48959 in var_54829af) {
            n_obj_id = zm_utility::function_f5a222a8(var_6cc77d4e, var_ff48959, var_c87f9ad7, params);
            if (!isdefined(var_7f05db6)) {
                var_7f05db6 = [];
            } else if (!isarray(var_7f05db6)) {
                var_7f05db6 = array(var_7f05db6);
            }
            if (!isinarray(var_7f05db6, n_obj_id)) {
                var_7f05db6[var_7f05db6.size] = n_obj_id;
            }
            if (isentity(var_ff48959)) {
                if (!isdefined(var_ff48959.var_e453e8a5[var_4cfa0710])) {
                    var_ff48959.var_e453e8a5[var_4cfa0710] = [];
                }
                if (!isdefined(var_ff48959.var_e453e8a5[var_4cfa0710])) {
                    var_ff48959.var_e453e8a5[var_4cfa0710] = [];
                } else if (!isarray(var_ff48959.var_e453e8a5[var_4cfa0710])) {
                    var_ff48959.var_e453e8a5[var_4cfa0710] = array(var_ff48959.var_e453e8a5[var_4cfa0710]);
                }
                if (!isinarray(var_ff48959.var_e453e8a5[var_4cfa0710], n_obj_id)) {
                    var_ff48959.var_e453e8a5[var_4cfa0710][var_ff48959.var_e453e8a5[var_4cfa0710].size] = n_obj_id;
                }
                if (isdefined(var_df2aef7b)) {
                    if (isentity(var_df2aef7b) && var_df2aef7b trigger::is_trigger_of_type("trigger_use", "trigger_use_touch", "trigger_radius_use")) {
                        var_ff48959 thread zm_utility::function_747180ea(n_obj_id, undefined, var_df2aef7b);
                    } else if (isint(var_df2aef7b) || isfloat(var_df2aef7b)) {
                        var_ff48959 thread zm_utility::function_747180ea(n_obj_id, var_df2aef7b);
                    }
                }
                if (var_8c7ec5ce) {
                    var_ff48959 thread function_8a11442f(var_4cfa0710);
                }
            } else if (isstruct(var_ff48959)) {
                if (!isdefined(var_ff48959.var_e453e8a5[var_4cfa0710])) {
                    var_ff48959.var_e453e8a5[var_4cfa0710] = [];
                }
                if (!isdefined(var_ff48959.var_e453e8a5[var_4cfa0710])) {
                    var_ff48959.var_e453e8a5[var_4cfa0710] = [];
                } else if (!isarray(var_ff48959.var_e453e8a5[var_4cfa0710])) {
                    var_ff48959.var_e453e8a5[var_4cfa0710] = array(var_ff48959.var_e453e8a5[var_4cfa0710]);
                }
                if (!isinarray(var_ff48959.var_e453e8a5[var_4cfa0710], n_obj_id)) {
                    var_ff48959.var_e453e8a5[var_4cfa0710][var_ff48959.var_e453e8a5[var_4cfa0710].size] = n_obj_id;
                }
                if (isdefined(var_df2aef7b)) {
                    if (isentity(var_df2aef7b) && var_df2aef7b trigger::is_trigger_of_type("trigger_use", "trigger_use_touch", "trigger_radius_use")) {
                        var_ff48959 thread zm_utility::function_747180ea(n_obj_id, undefined, var_df2aef7b);
                    } else if (isint(var_df2aef7b) || isfloat(var_df2aef7b)) {
                        var_ff48959 thread zm_utility::function_747180ea(n_obj_id, var_df2aef7b);
                    }
                }
                var_ff48959 = var_ff48959.origin;
            }
            var_b9431d90 = getplayers();
            foreach (player in var_b9431d90) {
                if (isinarray(a_players, player)) {
                    if (!isdefined(player.var_e453e8a5[var_4cfa0710])) {
                        player.var_e453e8a5[var_4cfa0710] = [];
                    }
                    if (!isdefined(player.var_e453e8a5[var_4cfa0710])) {
                        player.var_e453e8a5[var_4cfa0710] = [];
                    } else if (!isarray(player.var_e453e8a5[var_4cfa0710])) {
                        player.var_e453e8a5[var_4cfa0710] = array(player.var_e453e8a5[var_4cfa0710]);
                    }
                    if (!isinarray(player.var_e453e8a5[var_4cfa0710], n_obj_id)) {
                        player.var_e453e8a5[var_4cfa0710][player.var_e453e8a5[var_4cfa0710].size] = n_obj_id;
                    }
                    objective_setvisibletoplayer(n_obj_id, player);
                    continue;
                }
                objective_setinvisibletoplayer(n_obj_id, player);
            }
        }
    } else {
        n_obj_id = zm_utility::function_f5a222a8(var_6cc77d4e, (0, 0, 0));
        if (!isdefined(var_7f05db6)) {
            var_7f05db6 = [];
        } else if (!isarray(var_7f05db6)) {
            var_7f05db6 = array(var_7f05db6);
        }
        if (!isinarray(var_7f05db6, n_obj_id)) {
            var_7f05db6[var_7f05db6.size] = n_obj_id;
        }
        foreach (player in a_players) {
            if (!isdefined(player.var_e453e8a5[var_4cfa0710])) {
                player.var_e453e8a5[var_4cfa0710] = [];
            }
            if (!isdefined(player.var_e453e8a5[var_4cfa0710])) {
                player.var_e453e8a5[var_4cfa0710] = [];
            } else if (!isarray(player.var_e453e8a5[var_4cfa0710])) {
                player.var_e453e8a5[var_4cfa0710] = array(player.var_e453e8a5[var_4cfa0710]);
            }
            if (!isinarray(player.var_e453e8a5[var_4cfa0710], n_obj_id)) {
                player.var_e453e8a5[var_4cfa0710][player.var_e453e8a5[var_4cfa0710].size] = n_obj_id;
            }
        }
        function_4339912c(n_obj_id);
        assert(isdefined(var_441061cd), "<unknown string>" + function_9e72a96(var_6cc77d4e) + "<unknown string>");
    }
    if (isdefined(var_441061cd)) {
        foreach (player in a_players) {
            foreach (n_obj_id in var_7f05db6) {
                player.var_4fcae9dc[n_obj_id] = var_441061cd;
                level.var_31028c5d prototype_hud::set_active_objective_string(player, var_441061cd);
                level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
                level.var_31028c5d prototype_hud::function_1b05e380(player, 0);
            }
        }
    }
    return var_7f05db6;
}

// Namespace zm_sq/zm_sq
// Params 1, eflags: 0x6 linked
// Checksum 0xf2defbd, Offset: 0x2648
// Size: 0x140
function private function_21a49118(var_743c16e0) {
    self notify("6f06916d93ef5b9");
    self endon("6f06916d93ef5b9");
    level endon(#"game_ended");
    self endon(#"death");
    if (isdefined(var_743c16e0)) {
        level waittill(var_743c16e0);
    }
    if (isplayer(self)) {
        a_players = array(self);
    } else {
        a_players = getplayers();
    }
    foreach (player in a_players) {
        level.var_31028c5d prototype_hud::function_1b05e380(player, 0);
    }
}

// Namespace zm_sq/zm_sq
// Params 1, eflags: 0x2 linked
// Checksum 0xe818927, Offset: 0x2790
// Size: 0xe0
function function_2398ab16(var_743c16e0) {
    if (isplayer(self)) {
        a_players = array(self);
    } else {
        a_players = getplayers();
    }
    foreach (player in a_players) {
        player thread function_21a49118(var_743c16e0);
    }
}

// Namespace zm_sq/zm_sq
// Params 1, eflags: 0x2 linked
// Checksum 0x32660788, Offset: 0x2878
// Size: 0x108
function sndonoverride_eye_(n_progress) {
    if (isplayer(self)) {
        a_players = array(self);
    } else {
        a_players = getplayers();
    }
    foreach (player in a_players) {
        level.var_31028c5d prototype_hud::function_1bd6077e(player, n_progress);
        level.var_31028c5d prototype_hud::function_1b05e380(player, 1);
    }
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x2 linked
// Checksum 0xedf79a6d, Offset: 0x2988
// Size: 0xa44
function objective_complete(var_7f440703, a_targets) {
    var_6261674 = [];
    if (isplayer(self)) {
        a_players = array(self);
    } else {
        a_players = getplayers();
    }
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        foreach (target in a_targets) {
            if (!isentity(target) && !isstruct(target)) {
                if (isvec(target)) {
                    var_8861fa85 = function_e883632(a_players, var_7f440703);
                    if (isarray(var_8861fa85)) {
                        var_6261674 = arraycombine(var_6261674, var_8861fa85, 0, 0);
                    }
                }
                continue;
            }
            var_8861fa85 = target.var_e453e8a5[var_7f440703];
            if (!isarray(var_8861fa85) || !var_8861fa85.size) {
                println("<unknown string>" + function_9e72a96(var_7f440703) + "<unknown string>");
                continue;
            }
            var_6261674 = arraycombine(var_6261674, var_8861fa85, 0, 0);
            foreach (player in a_players) {
                foreach (n_obj_id in var_8861fa85) {
                    zm_utility::function_e8f4d47b(player, n_obj_id, 1);
                    objective_setinvisibletoplayer(n_obj_id, player);
                    if (isarray(player.var_e453e8a5) && isarray(player.var_e453e8a5[var_7f440703])) {
                        arrayremovevalue(player.var_e453e8a5[var_7f440703], n_obj_id);
                        if (!player.var_e453e8a5[var_7f440703].size) {
                            player.var_e453e8a5[var_7f440703] = undefined;
                        }
                    }
                }
            }
            var_e3ee5414 = function_5c98edf1(var_7f440703, var_8861fa85);
            if (!var_e3ee5414) {
                target zm_utility::function_48d9a9c9();
                foreach (n_obj_id in var_8861fa85) {
                    objective_setstate(n_obj_id, "done");
                    zm_utility::function_bc5a54a8(n_obj_id);
                }
                target.var_e453e8a5[var_7f440703] = undefined;
                target notify("complete_objective_" + var_7f440703);
            }
        }
    } else {
        foreach (player in a_players) {
            var_8861fa85 = player.var_e453e8a5[var_7f440703];
            if (!isarray(var_8861fa85) || !var_8861fa85.size) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + function_9e72a96(var_7f440703) + "<unknown string>");
                continue;
            }
            var_6261674 = arraycombine(var_6261674, var_8861fa85, 0, 0);
            foreach (n_obj_id in var_8861fa85) {
                zm_utility::function_e8f4d47b(player, n_obj_id, 1);
                objective_setinvisibletoplayer(n_obj_id, player);
                if (isarray(player.var_e453e8a5) && isarray(player.var_e453e8a5[var_7f440703])) {
                    arrayremovevalue(player.var_e453e8a5[var_7f440703], n_obj_id);
                    if (!player.var_e453e8a5[var_7f440703].size) {
                        player.var_e453e8a5[var_7f440703] = undefined;
                    }
                }
            }
        }
        var_e3ee5414 = function_5c98edf1(var_7f440703, var_6261674);
        if (isarray(var_6261674) && !var_e3ee5414) {
            foreach (n_obj_id in var_6261674) {
                target = level.var_e63703cd[n_obj_id].v_origin_or_ent;
                if (isvec(target)) {
                    function_e883632(a_players, var_7f440703);
                    objective_setstate(n_obj_id, "done");
                    zm_utility::function_bc5a54a8(n_obj_id);
                    continue;
                }
                if (isentity(target) || isstruct(target)) {
                    target zm_utility::function_48d9a9c9();
                }
                objective_setstate(n_obj_id, "done");
                zm_utility::function_bc5a54a8(n_obj_id);
                if (isdefined(target.var_e453e8a5[var_7f440703])) {
                    target.var_e453e8a5[var_7f440703] = undefined;
                    target notify("complete_objective_" + var_7f440703);
                }
            }
        }
    }
    foreach (player in a_players) {
        foreach (n_obj_id in var_6261674) {
            if (isarray(player.var_4fcae9dc)) {
                arrayremoveindex(player.var_4fcae9dc, n_obj_id, 1);
                if (!player.var_4fcae9dc.size) {
                    level.var_31028c5d prototype_hud::function_817e4d10(player, 0);
                    level.var_31028c5d prototype_hud::function_1b05e380(player, 0);
                }
            }
        }
    }
}

// Namespace zm_sq/zm_sq
// Params 1, eflags: 0x6 linked
// Checksum 0xcd4d727e, Offset: 0x33d8
// Size: 0x64
function private function_8a11442f(str_objective) {
    self endon(#"deleted", "complete_objective_" + str_objective);
    self waittill(#"death", #"remove_objective");
    thread objective_complete(str_objective, self);
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x6 linked
// Checksum 0x7d208d6c, Offset: 0x3448
// Size: 0x29c
function private function_e883632(a_players, var_7f440703) {
    foreach (player in a_players) {
        var_8861fa85 = player.var_e453e8a5[var_7f440703];
        if (isarray(var_8861fa85)) {
            foreach (n_obj_id in var_8861fa85) {
                objective_setinvisibletoplayer(n_obj_id, player);
            }
            if (isarray(player.var_e453e8a5) && isarray(player.var_e453e8a5[var_7f440703])) {
                arrayremovevalue(player.var_e453e8a5[var_7f440703], n_obj_id);
                if (!player.var_e453e8a5[var_7f440703].size) {
                    player.var_e453e8a5[var_7f440703] = undefined;
                }
            }
        }
    }
    var_e3ee5414 = function_5c98edf1(var_7f440703, var_8861fa85);
    if (!var_e3ee5414 && isarray(var_8861fa85)) {
        foreach (n_obj_id in var_8861fa85) {
            objective_setstate(n_obj_id, "done");
            zm_utility::function_bc5a54a8(n_obj_id);
        }
    }
    return var_8861fa85;
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x6 linked
// Checksum 0x1014b366, Offset: 0x36f0
// Size: 0x19e
function private function_5c98edf1(var_7f440703, var_8861fa85) {
    if (!isdefined(var_8861fa85)) {
        var_8861fa85 = [];
    } else if (!isarray(var_8861fa85)) {
        var_8861fa85 = array(var_8861fa85);
    }
    foreach (player in getplayers()) {
        if (isarray(player.var_e453e8a5[var_7f440703]) && player.var_e453e8a5[var_7f440703].size) {
            foreach (n_obj_id in var_8861fa85) {
                if (isinarray(player.var_e453e8a5[var_7f440703], n_obj_id)) {
                    return true;
                }
            }
        }
    }
    return false;
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x0
// Checksum 0xc3a940f3, Offset: 0x3898
// Size: 0x224
function function_aee0b4b4(var_7f440703, a_targets) {
    if (isplayer(self)) {
        a_players = array(self);
    } else {
        a_players = getplayers();
    }
    var_8861fa85 = function_407dcc8d(var_7f440703, a_targets);
    foreach (n_obj_id in var_8861fa85) {
        a_info = level.var_e63703cd[n_obj_id];
        var_c87f9ad7 = a_info.var_c87f9ad7;
        v_origin_or_ent = a_info.v_origin_or_ent;
        params = a_info.params;
        foreach (player in a_players) {
            zm_utility::function_e8f4d47b(player, n_obj_id, 0);
            var_6cde9868 = 1;
            if (isdefined(var_c87f9ad7)) {
                var_6cde9868 = player [[ var_c87f9ad7 ]](v_origin_or_ent, params);
            }
            if (is_true(var_6cde9868)) {
                objective_setvisibletoplayer(n_obj_id, player);
            }
        }
    }
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x0
// Checksum 0x9d34b190, Offset: 0x3ac8
// Size: 0x194
function function_3029d343(var_7f440703, a_targets) {
    if (isplayer(self)) {
        a_players = array(self);
    } else {
        a_players = getplayers();
    }
    var_8861fa85 = function_407dcc8d(var_7f440703, a_targets);
    foreach (n_obj_id in var_8861fa85) {
        foreach (player in a_players) {
            zm_utility::function_e8f4d47b(player, n_obj_id, 1);
            objective_setinvisibletoplayer(n_obj_id, player);
        }
    }
}

// Namespace zm_sq/zm_sq
// Params 0, eflags: 0x0
// Checksum 0x47238478, Offset: 0x3c68
// Size: 0x2d8
function function_97aa577f() {
    if (isplayer(self)) {
        if (isdefined(self.var_e453e8a5)) {
            foreach (var_cd2db28c in self.var_e453e8a5) {
                foreach (objective_id in var_cd2db28c) {
                    zm_utility::function_e8f4d47b(self, objective_id, 1);
                    objective_setinvisibletoplayer(objective_id, self);
                }
            }
        }
        return;
    }
    a_players = getplayers();
    foreach (player in a_players) {
        if (isdefined(player.var_e453e8a5)) {
            foreach (var_cd2db28c in player.var_e453e8a5) {
                foreach (objective_id in var_cd2db28c) {
                    zm_utility::function_e8f4d47b(player, objective_id, 1);
                    objective_setinvisibletoplayer(objective_id, player);
                }
            }
        }
    }
}

// Namespace zm_sq/zm_sq
// Params 0, eflags: 0x0
// Checksum 0xec75deb9, Offset: 0x3f48
// Size: 0x2d8
function function_87bf9705() {
    if (isplayer(self)) {
        if (isdefined(self.var_e453e8a5)) {
            foreach (var_cd2db28c in self.var_e453e8a5) {
                foreach (objective_id in var_cd2db28c) {
                    zm_utility::function_e8f4d47b(self, objective_id, 0);
                    objective_setvisibletoplayer(objective_id, self);
                }
            }
        }
        return;
    }
    a_players = getplayers();
    foreach (player in a_players) {
        if (isdefined(player.var_e453e8a5)) {
            foreach (var_cd2db28c in player.var_e453e8a5) {
                foreach (objective_id in var_cd2db28c) {
                    zm_utility::function_e8f4d47b(player, objective_id, 0);
                    objective_setvisibletoplayer(objective_id, player);
                }
            }
        }
    }
}

// Namespace zm_sq/zm_sq
// Params 2, eflags: 0x2 linked
// Checksum 0x152738d8, Offset: 0x4228
// Size: 0x1ee
function function_407dcc8d(var_7f440703, a_targets) {
    a_n_objective_ids = [];
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        foreach (target in a_targets) {
            if (isarray(target.var_e453e8a5[var_7f440703])) {
                a_n_objective_ids = arraycombine(a_n_objective_ids, target.var_e453e8a5[var_7f440703], 0, 0);
            }
        }
    } else {
        foreach (player in getplayers()) {
            if (isarray(player.var_e453e8a5[var_7f440703])) {
                a_n_objective_ids = arraycombine(a_n_objective_ids, player.var_e453e8a5[var_7f440703], 0, 0);
            }
        }
    }
    return a_n_objective_ids;
}

/#

    // Namespace zm_sq/zm_sq
    // Params 2, eflags: 0x0
    // Checksum 0xb11da1bf, Offset: 0x4420
    // Size: 0x1d6
    function function_f09763fd(ee_name, step_name) {
        assert(ishash(ee_name), "<unknown string>");
        assert(isdefined(self._ee[ee_name]), "<unknown string>" + ee_name + "<unknown string>");
        var_da601d7f = function_44e256d8(ee_name);
        index = function_9212ff4d(ee_name, step_name);
        if (index == -1) {
            if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                iprintlnbold("<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + function_9e72a96(step_name));
                println("<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + function_9e72a96(step_name));
            }
            return;
        }
        return var_da601d7f + "<unknown string>" + function_9e72a96(step_name) + "<unknown string>" + index + "<unknown string>";
    }

    // Namespace zm_sq/zm_sq
    // Params 1, eflags: 0x0
    // Checksum 0x1993a4a9, Offset: 0x4600
    // Size: 0xd6
    function function_44e256d8(ee_name) {
        assert(ishash(ee_name), "<unknown string>");
        owner = "<unknown string>";
        if (isentity(self)) {
            entitynum = self getentitynumber();
            owner = "<unknown string>" + entitynum + "<unknown string>";
        }
        return "<unknown string>" + owner + function_9e72a96(ee_name) + "<unknown string>";
    }

    // Namespace zm_sq/zm_sq
    // Params 1, eflags: 0x0
    // Checksum 0xbd047940, Offset: 0x46e0
    // Size: 0x114
    function function_28aee167(ee_name) {
        assert(ishash(ee_name), "<unknown string>");
        ee_path = function_44e256d8(ee_name);
        owner = "<unknown string>";
        if (isentity(self)) {
            owner = self getentitynumber();
        }
        util::waittill_can_add_debug_command();
        adddebugcommand("<unknown string>" + ee_path + "<unknown string>" + owner + "<unknown string>" + function_9e72a96(ee_name) + "<unknown string>");
    }

    // Namespace zm_sq/zm_sq
    // Params 2, eflags: 0x0
    // Checksum 0xeff1f5d4, Offset: 0x4800
    // Size: 0x1e4
    function function_b3da1a16(ee_name, step_name) {
        assert(ishash(ee_name), "<unknown string>");
        assert(ishash(step_name), "<unknown string>");
        step_path = function_f09763fd(ee_name, step_name);
        index = function_9212ff4d(ee_name, step_name);
        owner = "<unknown string>";
        if (isentity(self)) {
            owner = self getentitynumber();
        }
        util::waittill_can_add_debug_command();
        adddebugcommand("<unknown string>" + step_path + "<unknown string>" + owner + "<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + index + "<unknown string>");
        adddebugcommand("<unknown string>" + step_path + "<unknown string>" + owner + "<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + index + "<unknown string>");
    }

    // Namespace zm_sq/zm_sq
    // Params 0, eflags: 0x0
    // Checksum 0xa9934c06, Offset: 0x49f0
    // Size: 0x8c
    function function_fa5a5bfd() {
        if (isdefined(self._ee)) {
            playernum = self getentitynumber();
            path = "<unknown string>" + playernum;
            util::waittill_can_add_debug_command();
            adddebugcommand("<unknown string>" + path + "<unknown string>");
        }
    }

    // Namespace zm_sq/zm_sq
    // Params 2, eflags: 0x0
    // Checksum 0xd2b48b9f, Offset: 0x4a88
    // Size: 0xca
    function function_87306f8a(ee_name, step_name) {
        ee = self._ee[ee_name];
        step_index = function_9212ff4d(ee_name, step_name);
        if (ee.started && step_index <= ee.current_step) {
            return 0;
        }
        ee.skip_to_step = step_index;
        if (ee.started) {
            function_614612f(ee_name);
        } else {
            level start(ee.name);
        }
        return 1;
    }

    // Namespace zm_sq/zm_sq
    // Params 1, eflags: 0x0
    // Checksum 0x446dad87, Offset: 0x4b60
    // Size: 0x14c
    function function_614612f(ee_name) {
        ee = self._ee[ee_name];
        if (ee.started) {
            ee.steps[ee.current_step] notify(#"end_early");
            return;
        }
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            iprintlnbold("<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>");
            println("<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>");
        }
    }

    // Namespace zm_sq/zm_sq
    // Params 2, eflags: 0x0
    // Checksum 0x7b7fe0ca, Offset: 0x4cb8
    // Size: 0x324
    function function_f2dd8601(ee_name, var_f2c264bb) {
        if (isentity(self)) {
            self endon(#"death");
            self endon(#"disconnect");
        }
        self endon(#"game_ended");
        ee = self._ee[ee_name];
        step = ee.steps[var_f2c264bb];
        if (function_87306f8a(ee_name, step.name)) {
            if (!step.started) {
                wait_time = 10 * ee.steps.size;
                waitresult = self waittilltimeout(wait_time, step.var_e788cdd7 + "<unknown string>");
                if (waitresult._notify == #"timeout") {
                    if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                        iprintlnbold("<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name));
                        println("<unknown string>" + function_9e72a96(ee_name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name));
                    }
                    return;
                }
            }
            wait(1);
        }
        if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
            iprintlnbold("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>");
            println("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>");
        }
        function_614612f(ee_name);
    }

    // Namespace zm_sq/zm_sq
    // Params 0, eflags: 0x0
    // Checksum 0x9d919078, Offset: 0x4fe8
    // Size: 0x8de
    function devgui_think() {
        self notify(#"hash_6d8b1a4c632ecc9");
        self endon(#"hash_6d8b1a4c632ecc9");
        while (true) {
            wait(1);
            cmd = getdvarstring(#"hash_319d902ea18eb39");
            setdvar(#"hash_319d902ea18eb39", "<unknown string>");
            cmd = strtok(cmd, "<unknown string>");
            if (cmd.size == 0) {
                continue;
            }
            var_48909105 = cmd[1];
            target = undefined;
            if (var_48909105 == "<unknown string>") {
                target = level;
            } else {
                foreach (player in getplayers()) {
                    if (player getentitynumber() == var_48909105) {
                        target = player;
                        break;
                    }
                }
            }
            assert(isdefined(target));
            switch (cmd[0]) {
            case #"skip_to":
                ee = target._ee[cmd[2]];
                if (!isdefined(ee)) {
                    continue;
                }
                var_f2c264bb = int(cmd[3]);
                step_name = ee.steps[var_f2c264bb].name;
                if (var_f2c264bb < ee.current_step) {
                    if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                        iprintlnbold("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>" + var_48909105);
                        println("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>" + var_48909105);
                    }
                } else if (var_f2c264bb == ee.current_step) {
                    if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                        iprintlnbold("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step_name) + "<unknown string>" + var_48909105);
                        println("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step_name) + "<unknown string>" + var_48909105);
                    }
                } else {
                    if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                        iprintlnbold("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step_name) + "<unknown string>" + var_48909105 + "<unknown string>");
                        println("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(step_name) + "<unknown string>" + var_48909105 + "<unknown string>");
                    }
                    target function_87306f8a(ee.name, step_name);
                }
                break;
            case #"complete":
                ee = target._ee[cmd[2]];
                if (!isdefined(ee)) {
                    continue;
                }
                var_f2c264bb = int(cmd[3]);
                if (var_f2c264bb < ee.current_step) {
                    if (getdvarint(#"hash_7919e37cd5d57659", 0)) {
                        iprintlnbold("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>" + var_48909105);
                        println("<unknown string>" + function_9e72a96(ee.name) + "<unknown string>" + function_9e72a96(ee.steps[ee.current_step].name) + "<unknown string>" + var_48909105);
                    }
                } else {
                    target thread function_f2dd8601(ee.name, var_f2c264bb);
                }
                break;
            case #"start":
                if (isdefined(target._ee[cmd[2]])) {
                    target start(hash(cmd[2]));
                }
                break;
            case #"show_status":
                if (is_true(level.var_7f2ca392)) {
                    function_c1d3567c();
                } else {
                    function_5df75220();
                    level thread function_9bee49bf();
                }
                break;
            case #"outro":
                if (cmd.size < 2 || !isdefined(target._ee[cmd[2]])) {
                    break;
                }
                ee = target._ee[cmd[2]];
                if (isdefined(ee)) {
                    target waittill(#"start_zombie_round_logic");
                    step_name = ee.steps[ee.steps.size - 1].name;
                    target function_87306f8a(ee.name, step_name);
                }
                break;
            }
        }
    }

    // Namespace zm_sq/zm_sq
    // Params 2, eflags: 0x4
    // Checksum 0x1271def8, Offset: 0x58d0
    // Size: 0xa4
    function private create_hudelem(y, x) {
        if (!isdefined(x)) {
            x = 0;
        }
        var_aa917a22 = newdebughudelem();
        var_aa917a22.alignx = "<unknown string>";
        var_aa917a22.horzalign = "<unknown string>";
        var_aa917a22.aligny = "<unknown string>";
        var_aa917a22.vertalign = "<unknown string>";
        var_aa917a22.y = y;
        var_aa917a22.x = x;
        return var_aa917a22;
    }

    // Namespace zm_sq/zm_sq
    // Params 0, eflags: 0x0
    // Checksum 0x45021b4d, Offset: 0x5980
    // Size: 0x248
    function function_5df75220() {
        current_y = 30;
        foreach (ee in level._ee) {
            current_x = 30;
            if (!isdefined(ee.debug_hudelem)) {
                ee.debug_hudelem = create_hudelem(current_y, current_x);
            }
            ee.debug_hudelem settext(function_9e72a96(ee.name));
            ee.debug_hudelem.fontscale = 1.5;
            current_x += 5;
            step_string = "<unknown string>";
            foreach (step in ee.steps) {
                current_y += 15;
                if (!isdefined(step.debug_hudelem)) {
                    step.debug_hudelem = create_hudelem(current_y, current_x);
                }
                step.debug_hudelem settext(step_string + function_9e72a96(step.name));
                step.debug_hudelem.fontscale = 1.5;
            }
            current_y += 30;
        }
        level.var_7f2ca392 = 1;
    }

    // Namespace zm_sq/zm_sq
    // Params 0, eflags: 0x0
    // Checksum 0xbef2c88c, Offset: 0x5bd0
    // Size: 0x172
    function function_c1d3567c() {
        level notify(#"hash_21c0567b0010f696");
        foreach (ee in level._ee) {
            if (isdefined(ee.debug_hudelem)) {
                ee.debug_hudelem destroy();
            }
            ee.debug_hudelem = undefined;
            foreach (step in ee.steps) {
                if (isdefined(step.debug_hudelem)) {
                    step.debug_hudelem destroy();
                }
                step.debug_hudelem = undefined;
            }
        }
        level.var_7f2ca392 = undefined;
    }

    // Namespace zm_sq/zm_sq
    // Params 0, eflags: 0x0
    // Checksum 0x84999853, Offset: 0x5d50
    // Size: 0x156
    function function_9bee49bf() {
        level endon(#"hash_21c0567b0010f696");
        while (true) {
            waitframe(1);
            foreach (ee in level._ee) {
                ee.debug_hudelem.color = function_1091b2a0(ee);
                foreach (step in ee.steps) {
                    step.debug_hudelem.color = function_1091b2a0(step);
                }
            }
        }
    }

    // Namespace zm_sq/zm_sq
    // Params 1, eflags: 0x0
    // Checksum 0x29f69717, Offset: 0x5eb0
    // Size: 0x64
    function function_1091b2a0(var_4f1c1316) {
        if (!var_4f1c1316.started) {
            color = (0.75, 0.75, 0.75);
        } else if (!var_4f1c1316.completed) {
            color = (1, 0, 0);
        } else {
            color = (0, 1, 0);
        }
        return color;
    }

#/
