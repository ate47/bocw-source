// Atian COD Tools GSC CW decompiler test
#using scripts\wz_common\util.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\match_record.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace wz_progression;

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x5
// Checksum 0xa9361cc, Offset: 0x178
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"wz_progression", &preinit, &postinit, undefined, undefined);
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0x89b04ef7, Offset: 0x1d0
// Size: 0x29c
function private preinit() {
    callback::on_revived(&function_3de8b6e0);
    callback::on_player_damage(&function_36e144fa);
    callback::on_vehicle_killed(&function_8920ad6e);
    callback::on_item_pickup(&function_106be0dc);
    callback::on_item_pickup(&on_item_pickup);
    callback::on_item_use(&function_393ec79e);
    callback::on_stash_open(&function_6c478b00);
    callback::add_callback(#"freefall", &function_c9a18304);
    callback::on_challenge_complete(&on_challenge_complete);
    callback::on_character_unlock(&on_character_unlock);
    callback::on_game_playing(&on_game_playing);
    callback::on_downed(&function_a117c988);
    callback::on_player_killed(&on_player_killed);
    callback::function_14dae612(&function_14dae612);
    callback::add_callback("on_driving_wz_vehicle", &function_207e668);
    callback::add_callback("on_exit_locked_on_vehicle", &on_exit_locked_on_vehicle);
    callback::add_callback(#"hash_677c43609aa6ce47", &function_5648f82);
    callback::add_callback(#"hash_1019ab4b81d07b35", &team_eliminated);
    level.var_c8453874 = &function_35ac33e1;
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x478
// Size: 0x4
function private postinit() {
    
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x2 linked
// Checksum 0x98ecd327, Offset: 0x488
// Size: 0xcc
function function_cfc02934() {
    var_88846d2d = getdvar(#"hash_4a5fd7d94cfc9dfd", 0) != 0 || getdvarint(#"hash_4a5fd7d94cfc9dfd", 0) != 0;
    if (isplayer(self) && !isbot(self) && var_88846d2d) {
        player = self;
        player giveachievement(#"wz_specialist_super_fan");
    }
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x2 linked
// Checksum 0x74a9236e, Offset: 0x560
// Size: 0x90
function function_ec3a8858() {
    player = self;
    if (!isplayer(player)) {
        return false;
    }
    if (isdefined(player.inventory) && isdefined(player.inventory.consumed)) {
        if ((isdefined(player.inventory.consumed.size) ? player.inventory.consumed.size : 0) > 0) {
            return true;
        }
    }
    return false;
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x6 linked
// Checksum 0xc8fbadbb, Offset: 0x5f8
// Size: 0xbc
function private function_f874ca5e(placement_player) {
    player = self;
    assert(isplayer(player));
    if (!isplayer(player)) {
        return;
    }
    player.pers[#"placement_player"] = placement_player;
    player match_record::set_player_stat(#"player_placement", placement_player);
    player stats::function_7a850245(#"placement_player", placement_player);
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x2 linked
// Checksum 0x8dc3c30f, Offset: 0x6c0
// Size: 0xcc
function player_connected() {
    assert(isplayer(self));
    player = self;
    player.pers[#"jointime"] = gettime();
    player.pers[#"deathtime"] = 0;
    player.pers[#"teameliminatedtime"] = 0;
    player.pers[#"hash_77f848fcd417ea53"] = 0;
    player.pers[#"placement_player"] = 0;
    player.pers[#"placement_team"] = 0;
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x2 linked
// Checksum 0xb62ed20a, Offset: 0x798
// Size: 0x3bc
function function_2c8aac6() {
    assert(isplayer(self));
    player = self;
    if (!player stats::function_f94325d3() || isbot(player) || !isdefined(player.pers)) {
        return;
    }
    if (is_true(player.pers[#"hash_77f848fcd417ea53"])) {
        println("<unknown string>" + (isdefined(player.name) ? player.name : "<unknown string>") + "<unknown string>");
        return;
    }
    if (!isdefined(self.pers[#"teameliminatedtime"])) {
        self.pers[#"teameliminatedtime"] = gettime();
    }
    if (player.pers[#"teameliminatedtime"]) {
        var_c06441ec = max(gettime() - self.pers[#"teameliminatedtime"], 0);
    } else {
        var_c06441ec = 0;
    }
    var_3e32dc53 = 0;
    if (isdefined(self.pers[#"hash_150795bee4d46ce4"])) {
        var_3e32dc53 = max(gettime() - self.pers[#"hash_150795bee4d46ce4"] - var_c06441ec, 0);
    }
    player contracts::function_78083139();
    player challenges::function_659f7dc(var_3e32dc53, undefined);
    if (game.state == #"playing" && isdefined(level.var_13de4626)) {
        player [[ level.var_13de4626 ]]();
    }
    player function_4835d26a();
    println("<unknown string>" + (isdefined(player.name) ? player.name : "<unknown string>") + "<unknown string>" + (isdefined(player.pers[#"placement_player"]) ? player.pers[#"placement_player"] : "<unknown string>") + "<unknown string>" + "<unknown string>" + (isdefined(player.pers[#"placement_team"]) ? player.pers[#"placement_team"] : "<unknown string>") + "<unknown string>" + "<unknown string>" + (isdefined(player.pers[#"kills"]) ? player.pers[#"kills"] : "<unknown string>") + "<unknown string>");
    player.pers[#"hash_77f848fcd417ea53"] = 1;
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x2 linked
// Checksum 0x8f663333, Offset: 0xb60
// Size: 0x44
function player_disconnected() {
    self stats::function_b7f80d87(#"died", 1);
    self function_2c8aac6();
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0xac3e392b, Offset: 0xbb0
// Size: 0x64
function private function_fb20ad56() {
    player = self;
    assert(isplayer(player));
    player stats::function_d40764f3(#"hash_6d5e162204f447f4", 1);
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0x85a3d4aa, Offset: 0xc20
// Size: 0x64
function private function_d61fdbef() {
    player = self;
    assert(isplayer(player));
    player stats::function_d40764f3(#"hash_25f4611fc9d40aa8", 1);
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0x58ec702, Offset: 0xc90
// Size: 0x64
function private function_67949803() {
    player = self;
    assert(isplayer(player));
    player stats::function_d40764f3(#"hash_63307a0460c698ac", 1);
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0x715e31d4, Offset: 0xd00
// Size: 0x64
function private function_a0fea1a9() {
    player = self;
    assert(isplayer(player));
    player stats::function_d40764f3(#"hash_6429d1fccdef2c9", 1);
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0x57ffe523, Offset: 0xd70
// Size: 0xe4
function private function_3217b0d2() {
    player = self;
    assert(isplayer(player));
    player stats::function_d40764f3(#"hash_7b8d2c77874a1c24", 1);
    if (player function_ec3a8858()) {
        player stats::function_d40764f3(#"hash_337e05385393e3a6", 1);
    }
    if (!is_true(player.var_e4bec3d4)) {
        player stats::function_d40764f3(#"hash_702849e1bf1e3915", 1);
    }
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0x33a2209, Offset: 0xe60
// Size: 0xf4
function private function_6a7970fe() {
    player = self;
    assert(isplayer(player));
    player stats::function_d40764f3(#"hash_5e9a745460a10f80", 1);
    if (is_true(player.avenger)) {
        player stats::function_d40764f3(#"hash_5387d5e6f15c6b55", 1);
    }
    if (isdefined(player.items_picked_up) && player.items_picked_up.size <= 1) {
        player stats::function_d40764f3(#"hash_7158067d85c1402a", 1);
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x8c036254, Offset: 0xf60
// Size: 0x290
function team_eliminated(params) {
    team = params.team;
    team_placement = params.var_293493b;
    if (!isdefined(team)) {
        println("<unknown string>");
        return;
    }
    a_players = getplayers(team);
    if (isdefined(level.var_29ab88df)) {
        level [[ level.var_29ab88df ]](a_players, team_placement);
    }
    println("<unknown string>" + (isdefined(team) ? team : "<unknown string>") + "<unknown string>" + team_placement + "<unknown string>");
    foreach (player in a_players) {
        if (!isdefined(player.pers) || is_true(player.pers[#"hash_2283e9384383a6e9"])) {
            continue;
        }
        player.pers[#"hash_2283e9384383a6e9"] = 1;
        player.pers[#"teameliminatedtime"] = gettime();
        player.pers[#"placement_team"] = team_placement;
        player match_record::set_player_stat(#"team_placement", team_placement);
        player stats::function_7a850245(#"placement_team", team_placement);
        if (team_placement <= 15) {
            player function_a0fea1a9();
        }
        if (team_placement <= 10) {
            player function_3217b0d2();
        }
        if (team_placement <= 5) {
            player function_6a7970fe();
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0xdfb85714, Offset: 0x11f8
// Size: 0x4a8
function function_5648f82(team) {
    println("<unknown string>" + (isdefined(team) ? team : "<unknown string>"));
    if (isdefined(team)) {
        foreach (player in getplayers(team)) {
            if (!player stats::function_f94325d3()) {
                continue;
            }
            if (!isdefined(player.pers) || is_true(player.pers[#"hash_2283e9384383a6e9"])) {
                continue;
            }
            player.pers[#"hash_2283e9384383a6e9"] = 1;
            player.pers[#"placement_team"] = 1;
            player.pers[#"placement_player"] = 1;
            player function_a0fea1a9();
            player function_3217b0d2();
            player function_6a7970fe();
            player function_fb20ad56();
            player function_d61fdbef();
            player function_67949803();
            player stats::function_dad108fa(#"wins_first", 1);
            player giveachievement(#"wz_first_win");
            var_4cf27874 = player stats::get_stat_global(#"wins");
            if (var_4cf27874 >= 9) {
                player giveachievement(#"wz_not_a_fluke");
            }
            if (!isdefined(player.laststandcount) || player.laststandcount <= 0) {
                player stats::function_d40764f3(#"wins_without_down", 1);
            }
            if (isdefined(player.pers[#"kills"]) && player.pers[#"kills"] == 0) {
                player stats::function_d40764f3(#"wins_without_kills", 1);
            }
            player_counts = util::function_de15dc32();
            if (isalive(player) && player_counts.alive == 1 && (isdefined(getgametypesetting(#"maxteamplayers")) ? getgametypesetting(#"maxteamplayers") : 1) > 1) {
                player stats::function_d40764f3(#"wins_last_alive", 1);
            }
            player function_f874ca5e(1);
            player match_record::set_player_stat(#"team_placement", 1);
            player stats::function_7a850245(#"placement_team", 1);
            player stats::function_b7f80d87(#"died", 1);
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x10636454, Offset: 0x16a8
// Size: 0x29c
function function_207e668(params) {
    if (level.inprematchperiod) {
        return;
    }
    vehicle = params.vehicle;
    player = params.player;
    seatindex = params.seatindex;
    if (seatindex === 0) {
        vehicle thread function_f8072c71(player);
        if (!isdefined(player.var_e081a4e5)) {
            player.var_e081a4e5 = [];
        }
        var_b01d9212 = isairborne(vehicle);
        var_7c6311c4 = vehicle.vehicleclass === "boat";
        var_f03db647 = !var_b01d9212 && !var_7c6311c4;
        if (var_b01d9212 && !isdefined(player.var_e081a4e5[#"air"])) {
            player.var_e081a4e5[#"air"] = 1;
        } else if (var_7c6311c4 && !isdefined(player.var_e081a4e5[#"sea"])) {
            player.var_e081a4e5[#"sea"] = 1;
        } else if (var_f03db647 && !isdefined(player.var_e081a4e5[#"land"])) {
            player.var_e081a4e5[#"land"] = 1;
        }
        if (player.var_e081a4e5.size == 3) {
            if (!is_true(player.var_e081a4e5[#"all_used"])) {
                player.var_e081a4e5[#"all_used"] = 1;
                player stats::function_d40764f3(#"vehicle_used_all", 1);
            }
        }
        if (isdefined(player.lastdamagetime)) {
            time = gettime();
            if (time - player.lastdamagetime <= 3000) {
                player thread function_d0c523bf();
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x2 linked
// Checksum 0x1d9e536e, Offset: 0x1950
// Size: 0x7c
function function_d0c523bf() {
    self endon(#"death", #"exit_vehicle", #"disconnect");
    wait(5);
    if (self isinvehicle()) {
        self stats::function_d40764f3(#"vehicle_escapes", 1);
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x9024b4c6, Offset: 0x19d8
// Size: 0x3fa
function function_f8072c71(player) {
    if (!isplayer(player) || !isdefined(self)) {
        return;
    }
    self endon(#"death");
    player endon(#"death", #"change_seat", #"exit_vehicle", #"disconnect");
    prevposition = self.origin;
    distancetraveled = 0;
    var_b01d9212 = isairborne(self);
    var_7c6311c4 = self.vehicleclass === "boat";
    var_f03db647 = !var_b01d9212 && !var_7c6311c4;
    while (isdefined(self) && isdefined(player)) {
        wait(1);
        if (isdefined(self) && isdefined(player)) {
            distancetraveled = int(distancetraveled + distance2d(self.origin, prevposition));
            prevposition = self.origin;
            if (distancetraveled > 1000) {
                if (var_f03db647) {
                    player stats::function_dad108fa(#"distance_traveled_vehicle_land", distancetraveled);
                    var_ae40ba19 = player stats::get_stat_global(#"distance_traveled_vehicle_land");
                    var_7f444a72 = int(var_ae40ba19 / 63360);
                    var_a7f485eb = player stats::get_stat_global(#"distance_traveled_vehicle_land_miles");
                    if (var_7f444a72 > var_a7f485eb) {
                        diff = var_7f444a72 - var_a7f485eb;
                        player stats::function_dad108fa(#"distance_traveled_vehicle_land_miles", diff);
                    }
                }
                if (var_b01d9212) {
                    player stats::function_dad108fa(#"distance_traveled_vehicle_air", distancetraveled);
                    var_ae40ba19 = player stats::get_stat_global(#"distance_traveled_vehicle_air");
                    var_7f444a72 = int(var_ae40ba19 / 63360);
                    var_a7f485eb = player stats::get_stat_global(#"distance_traveled_vehicle_air_miles");
                    if (var_7f444a72 > var_a7f485eb) {
                        diff = var_7f444a72 - var_a7f485eb;
                        player stats::function_dad108fa(#"distance_traveled_vehicle_air_miles", diff);
                    }
                }
                if (var_7c6311c4) {
                    player stats::function_dad108fa(#"distance_traveled_vehicle_water", distancetraveled);
                    var_ae40ba19 = player stats::get_stat_global(#"distance_traveled_vehicle_water");
                    var_7f444a72 = int(var_ae40ba19 / 63360);
                    var_a7f485eb = player stats::get_stat_global(#"distance_traveled_vehicle_water_miles");
                    if (var_7f444a72 > var_a7f485eb) {
                        diff = var_7f444a72 - var_a7f485eb;
                        player stats::function_dad108fa(#"distance_traveled_vehicle_water_miles", diff);
                    }
                }
                distancetraveled = 0;
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0xa9cb0ca7, Offset: 0x1de0
// Size: 0x5c
function on_exit_locked_on_vehicle(params) {
    player = params.player;
    if (isplayer(player)) {
        player stats::function_d40764f3(#"vehicle_lock_exits", 1);
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x8b5cd82a, Offset: 0x1e48
// Size: 0x46
function function_c9a18304(eventstruct) {
    if (eventstruct.freefall) {
        if (isplayer(self)) {
        }
        return;
    }
    self notify(#"hash_74973f333d2fabfa");
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x0
// Checksum 0xccad3b57, Offset: 0x1e98
// Size: 0x1b0
function function_da21a17c() {
    self endon(#"hash_74973f333d2fabfa", #"death", #"disconnect");
    prevposition = self.origin;
    distancetraveled = 0;
    while (isdefined(self)) {
        wait(1);
        if (isdefined(self)) {
            distancetraveled = int(distancetraveled + distance2d(self.origin, prevposition));
            prevposition = self.origin;
            if (distancetraveled > 1000) {
                self stats::function_dad108fa(#"distance_traveled_wingsuit", distancetraveled);
                distancetraveled = 0;
                var_ae40ba19 = self stats::get_stat_global(#"distance_traveled_wingsuit");
                var_7f444a72 = int(var_ae40ba19 / 63360);
                var_a7f485eb = self stats::get_stat_global(#"distance_traveled_wingsuit_miles");
                if (var_7f444a72 > var_a7f485eb) {
                    diff = var_7f444a72 - var_a7f485eb;
                    self stats::function_dad108fa(#"distance_traveled_wingsuit_miles", diff);
                }
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0xcc75fdb6, Offset: 0x2050
// Size: 0x46
function function_3de8b6e0(params) {
    if (!gamestate::is_state(#"playing") || !isdefined(params.reviver)) {
        return;
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x2aeed5f1, Offset: 0x20a0
// Size: 0x268
function function_36e144fa(params) {
    if (!is_true(self.var_e4bec3d4)) {
        if (params.smeansofdeath == "MOD_DEATH_CIRCLE") {
            self.var_e4bec3d4 = 1;
        }
    }
    if (!isdefined(self.var_9854aa3a)) {
        self.var_9854aa3a = [];
    }
    attacker = params.eattacker;
    if (isplayer(attacker) && !isinarray(self.var_9854aa3a, attacker)) {
        if (!isdefined(self.var_9854aa3a)) {
            self.var_9854aa3a = [];
        } else if (!isarray(self.var_9854aa3a)) {
            self.var_9854aa3a = array(self.var_9854aa3a);
        }
        if (!isinarray(self.var_9854aa3a, attacker)) {
            self.var_9854aa3a[self.var_9854aa3a.size] = attacker;
        }
    }
    bare_hands = getweapon(#"bare_hands");
    var_c1f166f3 = self hasweapon(bare_hands);
    if (var_c1f166f3) {
        if (!isdefined(self.var_91ddc6c5)) {
            self.var_91ddc6c5 = [];
        }
        if (isplayer(attacker) && !isinarray(self.var_91ddc6c5, attacker)) {
            if (!isdefined(self.var_91ddc6c5)) {
                self.var_91ddc6c5 = [];
            } else if (!isarray(self.var_91ddc6c5)) {
                self.var_91ddc6c5 = array(self.var_91ddc6c5);
            }
            if (!isinarray(self.var_91ddc6c5, attacker)) {
                self.var_91ddc6c5[self.var_91ddc6c5.size] = attacker;
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x6 linked
// Checksum 0xdae7f48f, Offset: 0x2310
// Size: 0xce
function private function_a117c988() {
    if (isdefined(self.laststandparams)) {
        attacker = self.laststandparams.attacker;
        if (isdefined(attacker) && isdefined(attacker.var_121392a1) && isarray(attacker.var_121392a1)) {
            if (isdefined(attacker.var_121392a1[#"blind_base"]) || isdefined(attacker.var_121392a1[#"swat_grenade"]) || isdefined(attacker.var_121392a1[#"hash_1527a22d8a6fdc21"])) {
                self.laststandparams.var_6314a3a3 = 1;
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x6 linked
// Checksum 0x38557d08, Offset: 0x23e8
// Size: 0x144
function private on_player_killed(*params) {
    victim = self;
    assert(isplayer(victim));
    if (isdefined(victim)) {
        victim.pers[#"deathtime"] = gettime();
        player_counts = util::function_de15dc32(victim);
        placement_player = player_counts.alive + 1;
        if (placement_player <= 25) {
            victim function_fb20ad56();
        }
        if (placement_player <= 10) {
            victim function_d61fdbef();
        }
        if (placement_player <= 5) {
            victim function_67949803();
        }
        victim stats::function_b7f80d87(#"died", 1);
        victim function_f874ca5e(placement_player);
    }
}

// Namespace wz_progression/wz_progression
// Params 3, eflags: 0x2 linked
// Checksum 0xd3e026c1, Offset: 0x2538
// Size: 0xbb4
function function_35ac33e1(attacker, victim, var_c5948a69 = {}) {
    if (isdefined(attacker)) {
        attacker stats::function_b7f80d87(#"kills", 1);
        if (isdefined(attacker.pers[#"timesrevived"]) && attacker.pers[#"timesrevived"] > 0) {
            attacker stats::function_d40764f3(#"kills_after_revive", 1);
        }
        var_2fba6abe = attacker.var_37ef8626;
        currenttime = gettime();
        if (isdefined(var_2fba6abe) && currenttime - var_2fba6abe <= 60000) {
            attacker stats::function_d40764f3(#"kills_early", 1);
            attacker callback::callback(#"hash_22c795c5dddbfc97");
        }
        if (var_c5948a69.weapon === getweapon(#"bare_hands")) {
            attacker stats::function_d40764f3(#"kills_unarmed", 1);
        }
        if (is_true(var_c5948a69.var_6314a3a3)) {
            attacker stats::function_d40764f3(#"kills_while_stunned", 1);
        }
        if (attacker isplayerunderwater()) {
            attacker stats::function_d40764f3(#"kills_underwater", 1);
        }
        if (isdefined(victim)) {
            if (isdefined(victim.playerskilled)) {
                if (isdefined(victim.playerskilled[attacker.team]) && victim.playerskilled[attacker.team].size > 0) {
                    attacker.avenger = 1;
                }
            }
            if (isdefined(victim.team)) {
                maxteamplayers = isdefined(getgametypesetting(#"maxteamplayers")) ? getgametypesetting(#"maxteamplayers") : 1;
                if (!isdefined(attacker.playerskilled)) {
                    attacker.playerskilled = [];
                }
                if (!isdefined(attacker.playerskilled[victim.team])) {
                    attacker.playerskilled[victim.team] = [];
                } else if (!isarray(attacker.playerskilled[victim.team])) {
                    attacker.playerskilled[victim.team] = array(attacker.playerskilled[victim.team]);
                }
                if (!isinarray(attacker.playerskilled[victim.team], victim)) {
                    attacker.playerskilled[victim.team][attacker.playerskilled[victim.team].size] = victim;
                }
                if (isdefined(attacker.playerskilled[victim.team])) {
                    switch (attacker.playerskilled[victim.team].size) {
                    case 2:
                        attacker stats::function_d40764f3(#"hash_46971a941d93cbb4", 1);
                        if (maxteamplayers == 2) {
                            scoreevents::processscoreevent(#"hash_36b13ed6e99e6f06", attacker, undefined, var_c5948a69.weapon);
                        }
                        break;
                    case 3:
                        attacker stats::function_d40764f3(#"hash_1b3182f99881069d", 1);
                        break;
                    case 4:
                        attacker stats::function_d40764f3(#"hash_736fa2bcc0b0bf62", 1);
                        attacker stats::function_d40764f3(#"squads_eliminated_unassisted", 1);
                        attacker stats::function_dad108fa(#"hash_6f41f79a13199c79", 1);
                        break;
                    default:
                        break;
                    }
                }
            }
            if (isdefined(attacker.var_22002c3b)) {
                if (isinarray(attacker.var_22002c3b, victim)) {
                    attacker stats::function_d40764f3(#"kills_revenge", 1);
                }
            }
            if (victim isplayerunderwater()) {
                attacker stats::function_d40764f3(#"kills_underwater_enemy", 1);
            }
            if (isdefined(attacker.var_9854aa3a) && isinarray(attacker.var_9854aa3a, victim)) {
                attacker stats::function_d40764f3(#"kills_after_damage", 1);
            } else {
                attacker stats::function_d40764f3(#"kills_without_damage", 1);
            }
            if (isdefined(attacker.var_91ddc6c5)) {
                if (isinarray(attacker.var_91ddc6c5, victim)) {
                    attacker stats::function_d40764f3(#"kills_after_damage_unarmed", 1);
                }
            }
            vehicle = victim.var_156bf46e;
            if (isdefined(vehicle) && isvehicle(vehicle)) {
                var_b01d9212 = isairborne(vehicle);
                var_7c6311c4 = vehicle.vehicleclass === "boat";
                var_f03db647 = !var_b01d9212 && !var_7c6311c4;
                if (var_f03db647) {
                    attacker stats::function_d40764f3(#"kills_enemy_in_vehicle_land", 1);
                }
                if (var_b01d9212) {
                    attacker stats::function_d40764f3(#"kills_enemy_in_vehicle_air", 1);
                }
                if (var_7c6311c4) {
                    attacker stats::function_d40764f3(#"kills_enemy_in_vehicle_water", 1);
                }
            }
        }
        weapon = var_c5948a69.weapon;
        if (isdefined(weapon) && weapon != level.weaponnone && isdefined(var_c5948a69.attackerorigin) && isdefined(var_c5948a69.victimorigin) && is_true(weapon.isbulletweapon)) {
            weaponclass = util::getweaponclass(weapon);
            dist_to_target = distance(var_c5948a69.attackerorigin, var_c5948a69.victimorigin);
            if (dist_to_target >= 13779 && weaponclass == #"weapon_sniper") {
                attacker stats::function_d40764f3(#"kills_longshot_sniper", 1);
            }
            var_5afc3871 = attacker function_65776b07();
            if (isdefined(var_5afc3871) && isdefined(var_5afc3871[#"talent_deadsilence"]) && weaponhasattachment(weapon, "suppressed")) {
                attacker stats::function_dad108fa(#"hash_41f134c3e727d877", 1);
                attacker callback::callback(#"hash_453c77a41df1963c");
            }
            height = var_c5948a69.attackerorigin[2] - var_c5948a69.victimorigin[2];
            if (height >= 240) {
                attacker stats::function_dad108fa(#"hash_35020c395a89befb", 1);
                attacker callback::callback(#"hash_7a9bdd3ee0ae95af");
            }
            if (!isdefined(attacker.pers[#"longestdistancekill"]) || dist_to_target > attacker.pers[#"longestdistancekill"]) {
                attacker.pers[#"longestdistancekill"] = dist_to_target;
                longestkill = dist_to_target * 0.0254;
                attacker.longestkill = int(floor(longestkill + 0.5));
                attacker stats::function_62b271d8(#"longest_distance_kill", int(dist_to_target));
                attacker stats::function_7a850245(#"longestdistancekill", int(attacker.pers[#"longestdistancekill"]));
            }
            var_c2d07ee0 = attacker stats::function_ed81f25e(#"longest_distance_kill");
            if (isdefined(var_c2d07ee0)) {
                if (dist_to_target > var_c2d07ee0) {
                    attacker stats::function_baa25a23(#"longest_distance_kill", int(dist_to_target));
                }
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0xa07c9e64, Offset: 0x30f8
// Size: 0xa2
function function_c7aa9338(array) {
    foreach (ent in array) {
        if (util::function_fbce7263(ent.team, self.team)) {
            return true;
        }
    }
    return false;
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0xc1b4163b, Offset: 0x31a8
// Size: 0x1bc
function function_8920ad6e(params) {
    if (!gamestate::is_state(#"playing")) {
        return;
    }
    if (isplayer(params.eattacker)) {
        params.eattacker stats::function_d40764f3(#"vehicles_destroyed", 1);
    }
    if (isdefined(params.occupants)) {
        if (params.occupants.size > 0 && self function_c7aa9338(params.occupants)) {
            if (isplayer(params.eattacker)) {
                vehicle = params.eattacker getvehicleoccupied();
                if (isdefined(vehicle) && isvehicle(vehicle)) {
                    seat = vehicle getoccupantseat(params.eattacker);
                    if (isdefined(seat)) {
                        if (seat === 0) {
                            params.eattacker stats::function_d40764f3(#"vehicles_destroyed_occupied_using_vehicle", 1);
                        }
                    }
                }
                params.eattacker stats::function_d40764f3(#"vehicles_destroyed_occupied", 1);
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x440c2117, Offset: 0x3370
// Size: 0x1a4
function function_106be0dc(params) {
    if (!gamestate::is_state(#"playing") || !isdefined(params.item)) {
        return;
    }
    item = params.item;
    if (isplayer(self)) {
        self.pers[#"participation"]++;
        if (!isdefined(self.items_picked_up)) {
            self.items_picked_up = [];
        }
        if (!isdefined(self.items_picked_up[item.id])) {
            self.items_picked_up[item.id] = 1;
            self stats::function_d40764f3(#"items_picked_up", 1);
            if (isdefined(item.itementry) && item.itementry.itemtype === #"armor") {
                self stats::function_d40764f3(#"items_armor_used", 1);
            }
            if (isdefined(item.itementry) && item.itementry.itemtype === #"backpack") {
                self stats::function_d40764f3(#"items_backpacks_used", 1);
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0xf083142f, Offset: 0x3520
// Size: 0x11c
function function_393ec79e(params) {
    if (!gamestate::is_state(#"playing") || !isdefined(params.item)) {
        return;
    }
    item = params.item;
    if (isdefined(item.itementry) && item.itementry.itemtype === #"health") {
        self stats::function_d40764f3(#"items_health_used", 1);
        if (is_true(self.outsidedeathcircle)) {
            self stats::function_d40764f3(#"hash_154d42f200303577", 1);
            self match_record::function_34800eec(#"hash_154d42f200303577", 1);
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x36ed9f26, Offset: 0x3648
// Size: 0xbc
function function_6c478b00(params) {
    if (!gamestate::is_state(#"playing") || !isdefined(params.activator)) {
        return;
    }
    activator = params.activator;
    if (isplayer(activator)) {
        if (self === getdynent(#"dock_yard_stash_2")) {
            activator stats::function_d40764f3(#"cargo_supply_opened", 1);
        }
    }
}

// Namespace wz_progression/grenade_fire
// Params 1, eflags: 0x24
// Checksum 0x54fc37b9, Offset: 0x3710
// Size: 0xdc
function private event_handler[grenade_fire] function_4776caf4(eventstruct) {
    if (level.inprematchperiod) {
        return;
    }
    if (sessionmodeiswarzonegame() && isplayer(self) && isalive(self) && isdefined(eventstruct) && isdefined(eventstruct.weapon)) {
        if (eventstruct.weapon.name === #"basketball") {
            if (isdefined(eventstruct.projectile)) {
                ball = eventstruct.projectile;
                ball thread function_16de96c7(self);
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x6634a8c8, Offset: 0x37f8
// Size: 0x278
function function_16de96c7(player) {
    if (!isdefined(player) || !isdefined(self)) {
        return;
    }
    level endon(#"game_ended");
    self endon(#"stationary", #"death");
    player endon(#"disconnect", #"death");
    var_299b8419 = getentarray("basketball_hoop", "targetname");
    if (!isdefined(var_299b8419)) {
        return;
    }
    var_69a93dcf = 0;
    ball_velocity = self getvelocity();
    if (!isdefined(ball_velocity)) {
        return;
    }
    var_ace707d = 0;
    while (!var_69a93dcf && !var_ace707d) {
        ball_velocity = self getvelocity();
        if (ball_velocity[2] < 0) {
            var_b4331e2d = 0;
            foreach (basket in var_299b8419) {
                if (self.origin[2] < basket.origin[2]) {
                    var_b4331e2d++;
                }
                if (self istouching(basket)) {
                    var_69a93dcf = 1;
                    break;
                }
            }
            if (var_b4331e2d === var_299b8419.size) {
                var_ace707d = 1;
                break;
            }
            if (var_69a93dcf) {
                break;
            }
        }
        waitframe(1);
    }
    if (var_69a93dcf) {
        if (isplayer(player)) {
            player stats::function_d40764f3(#"baskets_made", 1);
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x737bebb8, Offset: 0x3a78
// Size: 0x33c
function on_game_playing(*params) {
    level.prematchduration = gettime();
    foreach (team, _ in level.teams) {
        players = getplayers(team);
        foreach (player in players) {
            if (isbot(player)) {
                continue;
            }
            player function_cfc02934();
            player stats::set_stat(#"afteractionreportstats", #"teammatecount", players.size);
            for (i = 0; i < players.size; i++) {
                teammate = players[i];
                player stats::set_stat(#"afteractionreportstats", #"teammates", i, #"name", teammate.name);
                player stats::set_stat(#"afteractionreportstats", #"teammates", i, #"xuid", teammate getxuid(1));
                if (isdefined(teammate.pers) && isdefined(teammate.pers[#"rank"])) {
                    player stats::set_stat(#"afteractionreportstats", #"teammates", i, #"rank", teammate.pers[#"rank"]);
                    player stats::set_stat(#"afteractionreportstats", #"teammates", i, #"plevel", teammate.pers[#"plevel"]);
                }
            }
        }
    }
}

// Namespace wz_progression/wz_progression
// Params 0, eflags: 0x2 linked
// Checksum 0x3adab3cd, Offset: 0x3dc0
// Size: 0xa0
function function_14dae612() {
    players = getplayers();
    foreach (player in players) {
        player function_2c8aac6();
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x68295906, Offset: 0x3e68
// Size: 0xc6
function on_challenge_complete(*params) {
    player = self;
    assert(isplayer(player));
    if (!isplayer(player) || !isdefined(player.pers)) {
        return;
    }
    if (!isdefined(player.pers[#"participation"])) {
        player.pers[#"participation"] = 0;
    }
    player.pers[#"participation"]++;
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0xf787eab1, Offset: 0x3f38
// Size: 0x3a
function on_character_unlock(*params) {
    if (isplayer(self)) {
        waitframe(1);
        player = self;
    }
}

// Namespace wz_progression/wz_progression
// Params 1, eflags: 0x2 linked
// Checksum 0x2cac3225, Offset: 0x3f80
// Size: 0x12c
function on_item_pickup(params) {
    if (!gamestate::is_state(#"playing") || !isdefined(params.item)) {
        return;
    }
    item = params.item;
    count = params.count;
    if (isplayer(self)) {
        if (isdefined(item.itementry) && item.itementry.itemtype === #"resource" && item_world_util::function_41f06d9d(item.itementry) && count > 0) {
            self stats::function_dad108fa(#"items_paint_cans_collected", count);
            self stats::function_b7f80d87("paint_cans_collected", count);
        }
    }
}

// Namespace wz_progression/event_cf200f34
// Params 1, eflags: 0x24
// Checksum 0xba382148, Offset: 0x40b8
// Size: 0x1fc
function private event_handler[event_cf200f34] function_209450ae(eventstruct) {
    if (level.inprematchperiod) {
        return;
    }
    dynent = eventstruct.ent;
    if (dynent.targetname !== #"firing_range_target_challenge") {
        return;
    }
    attacker = eventstruct.attacker;
    weapon = eventstruct.weapon;
    position = eventstruct.position;
    direction = eventstruct.dir;
    if (!isplayer(attacker) || !isdefined(weapon) || !isdefined(position) || !isdefined(direction)) {
        return;
    }
    dist = distance(attacker.origin, dynent.origin);
    if (dist < 3550) {
        return;
    }
    targetangles = dynent.angles + (0, 90, 0);
    var_2bbc9717 = anglestoforward(targetangles);
    if (vectordot(var_2bbc9717, direction) >= 0) {
        return;
    }
    var_f748425e = dynent.origin + (0, 0, 45);
    if (distance2dsquared(var_f748425e, position) > sqr(5)) {
        return;
    }
    attacker stats::function_d40764f3(#"longest_firing_range_bullseye", 1);
}

/#

    // Namespace wz_progression/wz_progression
    // Params 0, eflags: 0x0
    // Checksum 0x50c815dc, Offset: 0x42c0
    // Size: 0x5e
    function function_f6dc1aa9() {
        while (true) {
            var_f748425e = self.origin + (0, 0, 45);
            sphere(var_f748425e, 5, (1, 1, 0));
            waitframe(1);
        }
    }

#/
