// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace hostmigration;

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x5
// Checksum 0xc110c6d4, Offset: 0x218
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hostmigration", &preinit, undefined, undefined, undefined);
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x6 linked
// Checksum 0xa4cba52c, Offset: 0x260
// Size: 0x24
function private preinit() {
    callback::on_connect(&on_connect);
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x6 linked
// Checksum 0xd3eb383f, Offset: 0x290
// Size: 0x64
function private on_connect() {
    callback::function_d8abfc3d(#"on_host_migration_begin", &on_host_migration_begin);
    callback::function_d8abfc3d(#"on_host_migration_end", &on_host_migration_end);
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x6 linked
// Checksum 0x67cb5d0e, Offset: 0x300
// Size: 0x54
function private on_host_migration_begin() {
    if (isplayer(self)) {
        self thread val::set_for_time(60, #"host_migration", "ignoreme", 1);
    }
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x6 linked
// Checksum 0xcc34a5c9, Offset: 0x360
// Size: 0xec
function private on_host_migration_end() {
    if (isplayer(self)) {
        self val::reset(#"host_migration", "ignoreme");
    }
    if (isdefined(self.inventory.items)) {
        for (i = 0; i < self.inventory.items.size; i++) {
            item = self.inventory.items[i];
            if (item.networkid !== 32767) {
                self function_b00db06(4, item.id, item.count, i + 1);
            }
        }
    }
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x0
// Checksum 0x96f7576c, Offset: 0x458
// Size: 0xa0
function updatetimerpausedness() {
    shouldbestopped = isdefined(level.hostmigrationtimer);
    if (!level.timerstopped && shouldbestopped) {
        level.timerstopped = 1;
        level.timerpausetime = gettime();
        return;
    }
    if (level.timerstopped && !shouldbestopped) {
        level.timerstopped = 0;
        level.discardtime += gettime() - level.timerpausetime;
    }
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x500
// Size: 0x4
function callback_hostmigrationsave() {
    
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0xb12b7a71, Offset: 0x510
// Size: 0x16c
function callback_prehostmigrationsave() {
    zm_utility::undo_link_changes();
    if (is_true(level._hm_should_pause_spawning)) {
        level flag::set("spawn_zombies");
    }
    for (i = 0; i < level.players.size; i++) {
        level.players[i] val::set(#"host_migration", "takedamage", 0);
        level.players[i] stats::set_stat(#"afteractionreportstats", #"lobbypopup", #"summary");
        clientnum = level.players[i] getentitynumber();
        level.players[i] stats::set_stat(#"afteractionreportstats", #"clientnum", clientnum);
    }
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x0
// Checksum 0x9b1ff26c, Offset: 0x688
// Size: 0x10
function pausetimer() {
    level.migrationtimerpausetime = gettime();
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x0
// Checksum 0x48d00197, Offset: 0x6a0
// Size: 0x28
function resumetimer() {
    level.discardtime += gettime() - level.migrationtimerpausetime;
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x621cb7d1, Offset: 0x6d0
// Size: 0x80
function locktimer() {
    level endon(#"host_migration_begin", #"host_migration_end");
    for (;;) {
        currtime = gettime();
        waitframe(1);
        if (!level.timerstopped && isdefined(level.discardtime)) {
            level.discardtime += gettime() - currtime;
        }
    }
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x221a1428, Offset: 0x758
// Size: 0x930
function callback_hostmigration() {
    zm_utility::redo_link_changes();
    setslowmotion(1, 1, 0);
    level.hostmigrationreturnedplayercount = 0;
    if (level.gameended) {
        println("<unknown string>" + gettime() + "<unknown string>");
        return;
    }
    sethostmigrationstatus(1);
    callback::function_daed27e8(#"on_host_migration_begin");
    level notify(#"host_migration_begin");
    for (i = 0; i < level.players.size; i++) {
        if (isdefined(level.hostmigration_link_entity_callback)) {
            if (!isdefined(level.players[i]._host_migration_link_entity)) {
                level.players[i]._host_migration_link_entity = level.players[i] [[ level.hostmigration_link_entity_callback ]]();
            }
        }
        level.players[i] thread hostmigrationtimerthink();
    }
    if (isdefined(level.hostmigration_ai_link_entity_callback)) {
        zombies = getaiteamarray(level.zombie_team);
        if (isdefined(zombies) && zombies.size > 0) {
            foreach (zombie in zombies) {
                if (!isdefined(zombie._host_migration_link_entity)) {
                    zombie._host_migration_link_entity = zombie [[ level.hostmigration_ai_link_entity_callback ]]();
                }
            }
        }
    } else {
        zombies = getaiteamarray(level.zombie_team);
        if (isdefined(zombies) && zombies.size > 0) {
            foreach (zombie in zombies) {
                zombie.no_powerups = 1;
                zombie.marked_for_recycle = 1;
                zombie.has_been_damaged_by_player = 0;
                zombie dodamage(zombie.health + 1000, zombie.origin, zombie);
            }
        }
    }
    if (level.inprematchperiod) {
        level waittill(#"prematch_over");
    }
    println("<unknown string>" + gettime());
    level.hostmigrationtimer = 1;
    thread locktimer();
    if (is_true(level.b_host_migration_force_player_respawn)) {
        foreach (player in level.players) {
            if (zm_utility::is_player_valid(player, 0, 0)) {
                player host_migration_respawn();
            }
        }
    }
    zombies = getaiteamarray(level.zombie_team);
    if (isdefined(zombies) && zombies.size > 0) {
        foreach (zombie in zombies) {
            if (isdefined(zombie._host_migration_link_entity)) {
                ent = spawn("script_origin", zombie.origin);
                ent.angles = zombie.angles;
                zombie linkto(ent);
                ent linkto(zombie._host_migration_link_entity, "tag_origin", zombie._host_migration_link_entity worldtolocalcoords(ent.origin), ent.angles + zombie._host_migration_link_entity.angles);
                zombie._host_migration_link_helper = ent;
                zombie linkto(zombie._host_migration_link_helper);
            }
        }
    }
    level endon(#"host_migration_begin");
    should_pause_spawning = level flag::get("spawn_zombies");
    if (should_pause_spawning) {
        level flag::clear("spawn_zombies");
    }
    hostmigrationwait();
    foreach (player in level.players) {
        player thread post_migration_invulnerability();
    }
    zombies = getaiteamarray(level.zombie_team);
    if (isdefined(zombies) && zombies.size > 0) {
        foreach (zombie in zombies) {
            if (isdefined(zombie._host_migration_link_entity)) {
                zombie unlink();
                zombie._host_migration_link_helper delete();
                zombie._host_migration_link_helper = undefined;
                zombie._host_migration_link_entity = undefined;
            }
        }
    }
    if (should_pause_spawning) {
        level flag::set("spawn_zombies");
    }
    level.hostmigrationtimer = undefined;
    level._hm_should_pause_spawning = undefined;
    sethostmigrationstatus(0);
    println("<unknown string>" + gettime());
    level.host = util::gethostplayer();
    for (i = 0; i < level.players.size; i++) {
        clientnum = level.players[i] getentitynumber();
        level.players[i] stats::set_stat(#"afteractionreportstats", #"clientnum", clientnum);
    }
    callback::function_daed27e8(#"on_host_migration_end");
    callback::callback(#"on_host_migration_end");
    level notify(#"host_migration_end");
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x0
// Checksum 0x516b16bc, Offset: 0x1090
// Size: 0x18
function post_migration_become_vulnerable() {
    self endon(#"disconnect");
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0xd195b5b8, Offset: 0x10b0
// Size: 0x2c
function post_migration_invulnerability() {
    self thread val::set_for_time(3, "host_migration", "takedamage", 0);
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0xce0011b8, Offset: 0x10e8
// Size: 0x100
function host_migration_respawn() {
    println("<unknown string>");
    new_origin = undefined;
    if (isdefined(level.var_5816975b)) {
        new_origin = [[ level.var_5816975b ]](self);
    }
    if (!isdefined(new_origin)) {
        new_origin = zm_player::check_for_valid_spawn_near_team(self, 1);
    }
    if (isdefined(new_origin)) {
        if (!isdefined(new_origin.angles)) {
            angles = (0, 0, 0);
        } else {
            angles = new_origin.angles;
        }
        self dontinterpolate();
        self setorigin(new_origin.origin);
        self setplayerangles(angles);
    }
    return true;
}

// Namespace hostmigration/hostmigration
// Params 1, eflags: 0x2 linked
// Checksum 0x5aa93114, Offset: 0x11f0
// Size: 0x72
function matchstarttimerconsole_internal(counttime) {
    waittillframeend();
    level endon(#"match_start_timer_beginning");
    luinotifyevent(#"create_prematch_timer", 2, gettime() + int(counttime * 1000), 1);
    wait(counttime);
}

// Namespace hostmigration/hostmigration
// Params 2, eflags: 0x2 linked
// Checksum 0x6e4c3ff, Offset: 0x1270
// Size: 0xac
function matchstarttimerconsole(*type, duration) {
    level notify(#"match_start_timer_beginning");
    waitframe(1);
    counttime = int(duration);
    var_5654073f = counttime >= 2;
    if (var_5654073f) {
        matchstarttimerconsole_internal(counttime);
    }
    luinotifyevent(#"prematch_timer_ended", 1, var_5654073f);
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0xfe0db40, Offset: 0x1328
// Size: 0x92
function hostmigrationwait() {
    level endon(#"game_ended");
    if (level.hostmigrationreturnedplayercount < level.players.size * 2 / 3) {
        thread matchstarttimerconsole("waiting_for_teams", 20);
        hostmigrationwaitforplayers();
    }
    thread matchstarttimerconsole("match_starting_in", 9);
    wait(1);
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x4148c88a, Offset: 0x13c8
// Size: 0x20
function hostmigrationwaitforplayers() {
    level endon(#"hostmigration_enoughplayers");
    wait(1);
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0xfbe599de, Offset: 0x13f0
// Size: 0x1dc
function hostmigrationtimerthink_internal() {
    level endon(#"host_migration_begin", #"host_migration_end");
    self.hostmigrationcontrolsfrozen = 0;
    while (!isalive(self)) {
        self waittill(#"spawned");
    }
    if (isdefined(self._host_migration_link_entity)) {
        ent = spawn("script_origin", self.origin);
        ent.angles = self.angles;
        self linkto(ent);
        ent linkto(self._host_migration_link_entity, "tag_origin", self._host_migration_link_entity worldtolocalcoords(ent.origin), ent.angles + self._host_migration_link_entity.angles);
        self._host_migration_link_helper = ent;
        println("<unknown string>" + self._host_migration_link_entity.targetname);
    }
    self.hostmigrationcontrolsfrozen = 1;
    self val::set(#"host_migration", "freezecontrols");
    self val::set(#"host_migration", "disablegadgets");
    level waittill(#"host_migration_end");
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x31408d7f, Offset: 0x15d8
// Size: 0x13e
function hostmigrationtimerthink() {
    self endon(#"disconnect");
    level endon(#"host_migration_begin");
    hostmigrationtimerthink_internal();
    if (self.hostmigrationcontrolsfrozen) {
        self val::reset(#"host_migration", "freezecontrols");
        self val::reset(#"host_migration", "disablegadgets");
        self.hostmigrationcontrolsfrozen = 0;
        println("<unknown string>");
    }
    if (isdefined(self._host_migration_link_entity)) {
        self unlink();
        self._host_migration_link_helper delete();
        self._host_migration_link_helper = undefined;
        if (isdefined(self._host_migration_link_entity._post_host_migration_thread)) {
            self thread [[ self._host_migration_link_entity._post_host_migration_thread ]](self._host_migration_link_entity);
        }
        self._host_migration_link_entity = undefined;
    }
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x6809fa8, Offset: 0x1720
// Size: 0x44
function waittillhostmigrationdone() {
    if (!isdefined(level.hostmigrationtimer)) {
        return 0;
    }
    starttime = gettime();
    level waittill(#"host_migration_end");
    return gettime() - starttime;
}

// Namespace hostmigration/hostmigration
// Params 1, eflags: 0x2 linked
// Checksum 0xf4b44b60, Offset: 0x1770
// Size: 0x38
function waittillhostmigrationstarts(duration) {
    if (isdefined(level.hostmigrationtimer)) {
        return;
    }
    level endon(#"host_migration_begin");
    wait(duration);
}

// Namespace hostmigration/hostmigration
// Params 1, eflags: 0x2 linked
// Checksum 0xecd7554e, Offset: 0x17b0
// Size: 0x114
function waitlongdurationwithhostmigrationpause(duration) {
    if (duration == 0) {
        return;
    }
    assert(duration > 0);
    starttime = gettime();
    for (endtime = gettime() + duration * 1000; gettime() < endtime; endtime += timepassed) {
        waittillhostmigrationstarts((endtime - gettime()) / 1000);
        if (isdefined(level.hostmigrationtimer)) {
            timepassed = waittillhostmigrationdone();
        }
    }
    if (gettime() != endtime) {
        println("<unknown string>" + gettime() + "<unknown string>" + endtime);
    }
    waittillhostmigrationdone();
    return gettime() - starttime;
}

// Namespace hostmigration/hostmigration
// Params 1, eflags: 0x0
// Checksum 0xbc3a48fd, Offset: 0x18d0
// Size: 0x16e
function waitlongdurationwithgameendtimeupdate(duration) {
    if (duration == 0) {
        return;
    }
    assert(duration > 0);
    starttime = gettime();
    endtime = gettime() + duration * 1000;
    while (gettime() < endtime) {
        waittillhostmigrationstarts((endtime - gettime()) / 1000);
        while (isdefined(level.hostmigrationtimer)) {
            endtime += 1000;
            setgameendtime(int(endtime));
            wait(1);
        }
    }
    /#
        if (gettime() != endtime) {
            println("<unknown string>" + gettime() + "<unknown string>" + endtime);
        }
    #/
    while (isdefined(level.hostmigrationtimer)) {
        endtime += 1000;
        setgameendtime(int(endtime));
        wait(1);
    }
    return gettime() - starttime;
}

// Namespace hostmigration/hostmigration
// Params 5, eflags: 0x2 linked
// Checksum 0xab9383c8, Offset: 0x1a48
// Size: 0x256
function find_alternate_player_place(v_origin, min_radius, max_radius, max_height, ignore_targetted_nodes) {
    found_node = undefined;
    a_nodes = getnodesinradiussorted(v_origin, max_radius, min_radius, max_height, "pathnodes");
    if (isdefined(a_nodes) && a_nodes.size > 0) {
        a_player_volumes = getentarray("player_volume", "script_noteworthy");
        index = a_nodes.size - 1;
        for (i = index; i >= 0; i--) {
            n_node = a_nodes[i];
            if (ignore_targetted_nodes == 1) {
                if (isdefined(n_node.target)) {
                    continue;
                }
            }
            if (!positionwouldtelefrag(n_node.origin)) {
                if (zm_utility::check_point_in_enabled_zone(n_node.origin, 1, a_player_volumes)) {
                    v_start = (n_node.origin[0], n_node.origin[1], n_node.origin[2] + 30);
                    v_end = (n_node.origin[0], n_node.origin[1], n_node.origin[2] - 30);
                    trace = bullettrace(v_start, v_end, 0, undefined);
                    if (trace[#"fraction"] < 1) {
                        override_abort = 0;
                        if (isdefined(level._whoswho_reject_node_override_func)) {
                            override_abort = [[ level._whoswho_reject_node_override_func ]](v_origin, n_node);
                        }
                        if (!override_abort) {
                            found_node = n_node;
                            break;
                        }
                    }
                }
            }
        }
    }
    return found_node;
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x0
// Checksum 0x3ab7f7dc, Offset: 0x1ca8
// Size: 0x34c
function hostmigration_put_player_in_better_place() {
    spawnpoint = undefined;
    spawnpoint = find_alternate_player_place(self.origin, 50, 150, 64, 1);
    if (!isdefined(spawnpoint)) {
        spawnpoint = find_alternate_player_place(self.origin, 150, 400, 64, 1);
    }
    if (!isdefined(spawnpoint)) {
        spawnpoint = find_alternate_player_place(self.origin, 50, 400, 256, 0);
    }
    if (!isdefined(spawnpoint)) {
        spawnpoint = zm_player::check_for_valid_spawn_near_team(self, 1);
    }
    if (!isdefined(spawnpoint)) {
        match_string = "";
        location = level.scr_zm_map_start_location;
        if ((location == "default" || location == "") && isdefined(level.default_start_location)) {
            location = level.default_start_location;
        }
        match_string = level.scr_zm_ui_gametype + "_" + location;
        spawnpoints = [];
        structs = struct::get_array("initial_spawn", "script_noteworthy");
        if (isdefined(structs)) {
            foreach (struct in structs) {
                if (isdefined(struct.script_string)) {
                    tokens = strtok(struct.script_string, " ");
                    foreach (token in tokens) {
                        if (token == match_string) {
                            spawnpoints[spawnpoints.size] = struct;
                        }
                    }
                }
            }
        }
        if (!isdefined(spawnpoints) || spawnpoints.size == 0) {
            spawnpoints = struct::get_array("initial_spawn_points", "targetname");
        }
        assert(isdefined(spawnpoints), "<unknown string>");
        spawnpoint = zm_player::getfreespawnpoint(spawnpoints, self);
    }
    if (isdefined(spawnpoint)) {
        self setorigin(spawnpoint.origin);
    }
}

