// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_powerup_carpenter;

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 0, eflags: 0x5
// Checksum 0x8b91c3b, Offset: 0x198
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_carpenter", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 0, eflags: 0x6 linked
// Checksum 0x38571a92, Offset: 0x1e0
// Size: 0x8c
function private preinit() {
    zm_powerups::register_powerup("carpenter", &grab_carpenter);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("carpenter", #"p7_zm_power_up_carpenter", #"hash_7ee3cb05607f53f3", &func_should_drop_carpenter, 0, 0, 0);
    }
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 1, eflags: 0x2 linked
// Checksum 0x1e6411d9, Offset: 0x278
// Size: 0x298
function grab_carpenter(e_player) {
    var_ea1d8f06 = 1;
    if (zm_utility::is_standard()) {
        var_ea1d8f06 = 0;
        level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:e_player, #scoreevent:"carpenter_powerup_zm"});
    }
    level thread start_carpenter(e_player, var_ea1d8f06);
    e_player thread zm_powerups::powerup_vo("carpenter");
    if (zm_powerups::function_cfd04802(#"carpenter")) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(self.hint)) {
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", self.hint);
        }
        if (isdefined(e_player.armor) && isdefined(e_player.maxarmor)) {
            e_player.armor = e_player.maxarmor;
        }
    } else {
        players = getplayers();
        foreach (e_player in players) {
            if (isdefined(e_player) && isplayer(e_player) && isdefined(self.hint)) {
                e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", self.hint);
            }
            if (isdefined(e_player.armor) && isdefined(e_player.maxarmor)) {
                e_player.armor = e_player.maxarmor;
            }
        }
    }
    level notify(#"carpenter_started", {#var_264cf1f9:e_player});
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 2, eflags: 0x0
// Checksum 0x59943a6e, Offset: 0x518
// Size: 0x10a
function get_closest_window_repair(windows, origin) {
    current_window = undefined;
    shortest_distance = undefined;
    for (i = 0; i < windows.size; i++) {
        if (zm_utility::all_chunks_intact(windows, windows[i].barrier_chunks)) {
            continue;
        }
        if (!isdefined(current_window)) {
            current_window = windows[i];
            shortest_distance = distancesquared(current_window.origin, origin);
            continue;
        }
        if (distancesquared(windows[i].origin, origin) < shortest_distance) {
            current_window = windows[i];
            shortest_distance = distancesquared(windows[i].origin, origin);
        }
    }
    return current_window;
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 2, eflags: 0x2 linked
// Checksum 0x359ad9f6, Offset: 0x630
// Size: 0x532
function start_carpenter(var_264cf1f9, var_ea1d8f06 = 1) {
    level.carpenter_powerup_active = 1;
    carp_ent = spawn("script_origin", (0, 0, 0));
    carp_ent playloopsound(#"evt_carpenter");
    if (zm_custom::function_901b751c(#"zmbarricadestate")) {
        window_boards = struct::get_array("exterior_goal", "targetname");
        if (isdefined(level._additional_carpenter_nodes)) {
            window_boards = arraycombine(window_boards, level._additional_carpenter_nodes, 0, 0);
        }
        boards_near_players = get_near_boards(window_boards);
        boards_far_from_players = get_far_boards(window_boards);
        level repair_far_boards(boards_far_from_players);
        for (i = 0; i < boards_near_players.size; i++) {
            window = boards_near_players[i];
            num_chunks_checked = 0;
            last_repaired_chunk = undefined;
            while (true) {
                if (zm_utility::all_chunks_intact(window, window.barrier_chunks)) {
                    break;
                }
                chunk = zm_utility::get_random_destroyed_chunk(window, window.barrier_chunks);
                if (!isdefined(chunk)) {
                    break;
                }
                window thread zm_blockers::replace_chunk(window, chunk, 1);
                last_repaired_chunk = chunk;
                if (isdefined(window.clip)) {
                    window.clip triggerenable(1);
                    window.clip disconnectpaths();
                } else {
                    zm_blockers::blocker_disconnect_paths(window.neg_start, window.neg_end);
                }
                util::wait_network_frame();
                num_chunks_checked++;
                if (num_chunks_checked >= 20) {
                    break;
                }
            }
            if (isdefined(window.zbarrier)) {
                if (isdefined(last_repaired_chunk)) {
                    while (window.zbarrier getzbarrierpiecestate(last_repaired_chunk) == "closing") {
                        waitframe(1);
                    }
                    if (isdefined(window._post_carpenter_callback)) {
                        window [[ window._post_carpenter_callback ]]();
                    }
                }
                continue;
            }
            while (isdefined(last_repaired_chunk) && last_repaired_chunk.state == "mid_repair") {
                waitframe(1);
            }
        }
    }
    carp_ent stoploopsound(1);
    carp_ent playsoundwithnotify("evt_carpenter_end", "sound_done");
    carp_ent waittill(#"sound_done");
    if (var_ea1d8f06) {
        if (zm_powerups::function_cfd04802(#"carpenter") && isplayer(var_264cf1f9)) {
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:var_264cf1f9, #scoreevent:"carpenter_powerup_zm"});
        } else {
            foreach (e_player in level.players) {
                level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:e_player, #scoreevent:"carpenter_powerup_zm"});
            }
        }
    }
    carp_ent deletedelay();
    level notify(#"carpenter_finished");
    level.carpenter_powerup_active = undefined;
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 1, eflags: 0x2 linked
// Checksum 0x55945e42, Offset: 0xb70
// Size: 0x12a
function get_near_boards(windows) {
    players = getplayers();
    boards_near_players = [];
    for (j = 0; j < windows.size; j++) {
        close = 0;
        for (i = 0; i < players.size; i++) {
            origin = undefined;
            if (isdefined(windows[j].zbarrier)) {
                origin = windows[j].zbarrier.origin;
            } else {
                origin = windows[j].origin;
            }
            if (distancesquared(players[i].origin, origin) <= 562500) {
                close = 1;
                break;
            }
        }
        if (close) {
            boards_near_players[boards_near_players.size] = windows[j];
        }
    }
    return boards_near_players;
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 1, eflags: 0x2 linked
// Checksum 0x86672b8f, Offset: 0xca8
// Size: 0x12a
function get_far_boards(windows) {
    players = getplayers();
    boards_far_from_players = [];
    for (j = 0; j < windows.size; j++) {
        close = 0;
        for (i = 0; i < players.size; i++) {
            origin = undefined;
            if (isdefined(windows[j].zbarrier)) {
                origin = windows[j].zbarrier.origin;
            } else {
                origin = windows[j].origin;
            }
            if (distancesquared(players[i].origin, origin) >= 562500) {
                close = 1;
                break;
            }
        }
        if (close) {
            boards_far_from_players[boards_far_from_players.size] = windows[j];
        }
    }
    return boards_far_from_players;
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 1, eflags: 0x2 linked
// Checksum 0x2a74545f, Offset: 0xde0
// Size: 0x224
function repair_far_boards(barriers) {
    for (i = 0; i < barriers.size; i++) {
        barrier = barriers[i];
        if (zm_utility::all_chunks_intact(barrier, barrier.barrier_chunks)) {
            continue;
        }
        if (isdefined(barrier.zbarrier)) {
            a_pieces = barrier.zbarrier getzbarrierpieceindicesinstate("open");
            if (isdefined(a_pieces)) {
                for (xx = 0; xx < a_pieces.size; xx++) {
                    chunk = a_pieces[xx];
                    barrier.zbarrier zbarrierpieceusedefaultmodel(chunk);
                    barrier.zbarrier.chunk_health[chunk] = 0;
                }
            }
            for (x = 0; x < barrier.zbarrier getnumzbarrierpieces(); x++) {
                barrier.zbarrier setzbarrierpiecestate(x, "closed");
                barrier.zbarrier showzbarrierpiece(x);
            }
        }
        if (isdefined(barrier.clip)) {
            barrier.clip triggerenable(1);
            barrier.clip disconnectpaths();
        } else {
            zm_blockers::blocker_disconnect_paths(barrier.neg_start, barrier.neg_end);
        }
        if (i % 4 == 0) {
            util::wait_network_frame();
        }
    }
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 0, eflags: 0x2 linked
// Checksum 0x4e9ae3bf, Offset: 0x1010
// Size: 0x42
function func_should_drop_carpenter() {
    if (get_num_window_destroyed() < 5 && !is_true(level.var_ef7415bc)) {
        return false;
    }
    return true;
}

// Namespace zm_powerup_carpenter/zm_powerup_carpenter
// Params 0, eflags: 0x2 linked
// Checksum 0x82041a4, Offset: 0x1060
// Size: 0x88
function get_num_window_destroyed() {
    num = 0;
    for (i = 0; i < level.exterior_goals.size; i++) {
        if (zm_utility::all_chunks_destroyed(level.exterior_goals[i], level.exterior_goals[i].barrier_chunks)) {
            num += 1;
        }
    }
    return num;
}

