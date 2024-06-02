// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace player;

// Namespace player/player_shared
// Params 0, eflags: 0x5
// Checksum 0xca2c6911, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player", &preinit, undefined, undefined, undefined);
}

// Namespace player/player_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xf7dab9ef, Offset: 0x1b0
// Size: 0x1f4
function private preinit() {
    clientfield::register("world", "gameplay_started", 1, 1, "int");
    clientfield::register("toplayer", "gameplay_allows_deploy", 1, 1, "int");
    clientfield::register("toplayer", "player_dof_settings", 1, 2, "int");
    if (util::is_frontend_map()) {
        return;
    }
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    setdvar(#"hash_256144ebda864b87", 1);
    if (!isdefined(getdvarint(#"hash_8351525729015ab", 0))) {
        setdvar(#"hash_8351525729015ab", 0);
    }
    level.var_7d3ed2bf = currentsessionmode() != 4 && (isdefined(getgametypesetting(#"hash_6e051e440a6c3b91")) ? getgametypesetting(#"hash_6e051e440a6c3b91") : 0);
    level.var_68de7e10 = 1;
    level thread function_c518cf71();
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7ab3decd, Offset: 0x3b0
// Size: 0xe
function on_player_connect() {
    self.connect_time = gettime();
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x46903243, Offset: 0x3c8
// Size: 0x394
function spawn_player() {
    self endon(#"disconnect", #"joined_spectators");
    self notify(#"spawned");
    level notify(#"player_spawned");
    self notify(#"end_respawn");
    self set_spawn_variables();
    self luinotifyevent(#"player_spawned", 0);
    self function_8ba40d2f(#"player_spawned", 0);
    self setclientuivisibilityflag("killcam_nemesis", 0);
    self.sessionteam = self.team;
    function_73646bd9(self);
    self.sessionstate = "playing";
    self.killcamentity = -1;
    self.archivetime = 0;
    self.psoffsettime = 0;
    self.spectatekillcam = 0;
    self.statusicon = "";
    self.damagedplayers = [];
    self.friendlydamage = undefined;
    self.hasspawned = 1;
    self.lastspawntime = gettime();
    self.spawntime = gettime();
    self.afk = 0;
    self.laststunnedby = undefined;
    self.var_a010bd8f = undefined;
    self.var_9060b065 = undefined;
    self.lastflashedby = undefined;
    self.var_a7679005 = undefined;
    self.var_7ef2427c = undefined;
    self.var_e021fe43 = undefined;
    self.var_f866f320 = undefined;
    self.laststand = undefined;
    self.resurrect_not_allowed_by = undefined;
    self.revivingteammate = 0;
    self.burning = undefined;
    self.lastshotby = 127;
    self.maxhealth = self.spawnhealth;
    self.health = self.maxhealth;
    self function_9080887a();
    self.var_4a755632 = undefined;
    self.var_e03e3ae5 = undefined;
    if (self.pers[#"lives"] && !is_true(level.takelivesondeath)) {
        self.pers[#"lives"]--;
    }
    if (isdefined(game.lives) && is_true(game.lives[self.team]) && !is_true(level.takelivesondeath)) {
        game.lives[self.team]--;
        if (level.basegametype == "control") {
            self callback::callback(#"hash_7de173a0523c27c9", self);
        }
    }
    self.disabledweapon = 0;
    self util::resetusability();
    self reset_attacker_list();
    self resetfov();
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb1789cb2, Offset: 0x768
// Size: 0xd4
function on_player_spawned() {
    if (util::is_frontend_map()) {
        return;
    }
    self function_619a5c20();
    if (!isdefined(level.var_2386648b)) {
        level.var_2386648b = 0;
    }
    if (sessionmodeiszombiesgame() || sessionmodeiscampaigngame()) {
        snappedorigin = self get_snapped_spot_origin(self.origin);
        if (!self flag::get(#"shared_igc")) {
            self setorigin(snappedorigin);
        }
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x8b2c5d2, Offset: 0x848
// Size: 0x2e6
function function_135acc2d(var_e2bc3a9f, update_rate) {
    max_clients = getdvarint(#"com_maxclients", 0);
    wait_time = max(float(function_60d95f53()) / 1000, update_rate / max_clients);
    var_3c59cda4 = int(ceil(wait_time / 1 / max_clients));
    var_bf4d050f = max_clients;
    while (level.var_68de7e10) {
        var_2a20944d = 0;
        var_7ac865f7 = max_clients;
        var_42016ec7 = var_bf4d050f + 1;
        if (var_42016ec7 >= max_clients) {
            var_42016ec7 = 0;
        }
        players = getplayers();
        if (players.size == 0) {
            waitframe(1);
            continue;
        }
        var_92c4d936 = 0;
        foreach (index, player in players) {
            player = players[index];
            player_num = player getentitynumber();
            if (player_num >= var_42016ec7) {
                break;
            }
            var_92c4d936++;
        }
        var_92c4d936 %= players.size;
        for (player_index = 0; player_index < players.size; player_index++) {
            var_1896e17 = (player_index + var_92c4d936) % players.size;
            assert(var_1896e17 < players.size);
            player = players[var_1896e17];
            if (player.sessionstate != "playing") {
                continue;
            }
            player [[ var_e2bc3a9f ]]();
            var_2a20944d++;
            var_bf4d050f = player getentitynumber();
            if (var_3c59cda4 <= var_2a20944d) {
                break;
            }
        }
        waitframe(1);
    }
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xdc0b20af, Offset: 0xb38
// Size: 0xbc
function function_c518cf71() {
    update_rate = 0.1;
    if (sessionmodeiszombiesgame() || sessionmodeiscampaigngame()) {
        update_rate = 0.1;
    }
    if (sessionmodeiswarzonegame()) {
        return;
    }
    function_135acc2d(&function_8fef418b, update_rate);
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1496f088, Offset: 0xc00
// Size: 0x4a6
function function_8fef418b() {
    if (!isdefined(self.last_valid_position)) {
        self.last_valid_position = getclosestpointonnavmesh(self.origin, 2048, 0);
    }
    if (!isdefined(self.last_valid_position)) {
        return;
    }
    if (isdefined(level.var_cdc822b) && ![[ level.var_cdc822b ]]()) {
        return;
    }
    playerradius = self getpathfindingradius();
    if (ispointonnavmesh(self.last_valid_position, self) && distance2dsquared(self.origin, self.last_valid_position) < sqr(playerradius) && sqr(self.origin[2] - self.last_valid_position[2]) < sqr(16)) {
        return;
    }
    if (self isplayerswimming()) {
        if (isdefined(self.var_5d991645)) {
            if (distancesquared(self.origin, self.var_5d991645) < sqr(playerradius)) {
                return;
            }
        }
        ground_pos = groundtrace(self.origin + (0, 0, 8), self.origin + (0, 0, -100000), 0, self)[#"position"];
        if (!isdefined(ground_pos)) {
            return;
        }
        position = getclosestpointonnavmesh(ground_pos, 100, playerradius);
        if (isdefined(position)) {
            self.last_valid_position = position;
            self.var_5d991645 = self.origin;
        }
        return;
    }
    if (ispointonnavmesh(self.origin, self)) {
        self.last_valid_position = self.origin;
        return;
    }
    if (!ispointonnavmesh(self.origin, self) && ispointonnavmesh(self.last_valid_position, self) && distance2dsquared(self.origin, self.last_valid_position) < sqr(32) && sqr(self.origin[2] - self.last_valid_position[2]) < sqr(32)) {
        return;
    }
    var_946a4954 = isdefined(level.var_946a4954) ? level.var_946a4954 : playerradius;
    position = getclosestpointonnavmesh(self.origin, 100, var_946a4954);
    if (isdefined(position)) {
        if (is_true(level.var_2386648b) || function_352d316e(self)) {
            player_position = self.origin + (0, 0, 20);
            var_f5df51f2 = position + (0, 0, 20);
            ignore_ent = undefined;
            if (self isinvehicle()) {
                ignore_ent = self getvehicleoccupied();
            }
            if (bullettracepassed(player_position, var_f5df51f2, 0, self, ignore_ent)) {
                self.last_valid_position = position;
            }
        } else {
            self.last_valid_position = position;
        }
        return;
    }
    if (isdefined(level.var_a6a84389)) {
        self.last_valid_position = self [[ level.var_a6a84389 ]](playerradius);
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x0
// Checksum 0x2ad4a832, Offset: 0x10b0
// Size: 0xbc
function function_31b5c778(origin, radius) {
    if (!isdefined(level.var_c227eda9)) {
        level.var_c227eda9 = 0;
    }
    level.var_c227eda9 = max(level.var_c227eda9, radius);
    if (!isdefined(level.var_f0de6634)) {
        level.var_f0de6634 = [];
    }
    level.var_f0de6634[level.var_f0de6634.size] = {#origin:origin, #radius_sq:sqr(radius)};
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x821259eb, Offset: 0x1178
// Size: 0x12e
function function_352d316e(player) {
    if (!isdefined(player)) {
        return false;
    }
    if (!isdefined(level.var_f0de6634) || level.var_f0de6634.size <= 0) {
        return false;
    }
    var_9101d730 = function_72d3bca6(level.var_f0de6634, player.origin, undefined, 0, level.var_c227eda9);
    foreach (area in var_9101d730) {
        if (isdefined(area) && distancesquared(player.origin, area.origin) < area.radius_sq) {
            return true;
        }
    }
    return false;
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4803c1ae, Offset: 0x12b0
// Size: 0x28c
function take_weapons() {
    if (!is_true(self.gun_removed)) {
        self.gun_removed = 1;
        self._weapons = [];
        if (!isdefined(self._current_weapon)) {
            self._current_weapon = level.weaponnone;
        }
        w_current = self getcurrentweapon();
        if (w_current != level.weaponnone) {
            self._current_weapon = w_current;
        }
        a_weapon_list = self getweaponslist();
        if (self._current_weapon == level.weaponnone) {
            if (isdefined(a_weapon_list[0])) {
                self._current_weapon = a_weapon_list[0];
            }
        }
        foreach (weapon in a_weapon_list) {
            if (is_true(weapon.dniweapon)) {
                continue;
            }
            if (!isdefined(self._weapons)) {
                self._weapons = [];
            } else if (!isarray(self._weapons)) {
                self._weapons = array(self._weapons);
            }
            self._weapons[self._weapons.size] = get_weapondata(weapon);
        }
        foreach (weapon in a_weapon_list) {
            self takeweapon(weapon);
        }
        if (isdefined(level.detach_all_weapons)) {
            self [[ level.detach_all_weapons ]]();
        }
    }
}

// Namespace player/player_shared
// Params 0, eflags: 0x0
// Checksum 0x8a2f8344, Offset: 0x1548
// Size: 0x21c
function generate_weapon_data() {
    self._generated_weapons = [];
    if (!isdefined(self._generated_current_weapon)) {
        self._generated_current_weapon = level.weaponnone;
    }
    if (is_true(self.gun_removed) && isdefined(self._weapons)) {
        self._generated_weapons = arraycopy(self._weapons);
        self._generated_current_weapon = self._current_weapon;
        return;
    }
    w_current = self getcurrentweapon();
    if (w_current != level.weaponnone) {
        self._generated_current_weapon = w_current;
    }
    a_weapon_list = self getweaponslist();
    if (self._generated_current_weapon == level.weaponnone) {
        if (isdefined(a_weapon_list[0])) {
            self._generated_current_weapon = a_weapon_list[0];
        }
    }
    foreach (weapon in a_weapon_list) {
        if (is_true(weapon.dniweapon)) {
            continue;
        }
        if (!isdefined(self._generated_weapons)) {
            self._generated_weapons = [];
        } else if (!isarray(self._generated_weapons)) {
            self._generated_weapons = array(self._generated_weapons);
        }
        self._generated_weapons[self._generated_weapons.size] = get_weapondata(weapon);
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3e758262, Offset: 0x1770
// Size: 0x17e
function give_back_weapons(b_immediate = 0) {
    if (isdefined(self._weapons)) {
        foreach (weapondata in self._weapons) {
            weapondata_give(weapondata);
        }
        if (isdefined(self._current_weapon) && self._current_weapon != level.weaponnone) {
            if (b_immediate) {
                self switchtoweaponimmediate(self._current_weapon);
            } else {
                self switchtoweapon(self._current_weapon);
            }
        } else {
            weapon = self loadout::function_18a77b37("primary");
            if (isdefined(weapon) && self hasweapon(weapon)) {
                switch_to_primary_weapon(b_immediate);
            }
        }
    }
    self._weapons = undefined;
    self.gun_removed = undefined;
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe40e189a, Offset: 0x18f8
// Size: 0x394
function get_weapondata(weapon) {
    if (isdefined(level.var_51443ce5)) {
        return self [[ level.var_51443ce5 ]](weapon);
    }
    weapondata = [];
    if (!isdefined(weapon)) {
        weapon = self getcurrentweapon();
    }
    weapondata[#"weapon"] = weapon.rootweapon.name;
    weapondata[#"attachments"] = util::function_2146bd83(weapon);
    if (weapon != level.weaponnone) {
        weapondata[#"clip"] = self getweaponammoclip(weapon);
        weapondata[#"stock"] = self getweaponammostock(weapon);
        weapondata[#"fuel"] = self getweaponammofuel(weapon);
        weapondata[#"heat"] = self isweaponoverheating(1, weapon);
        weapondata[#"overheat"] = self isweaponoverheating(0, weapon);
        weapondata[#"renderoptionsweapon"] = self function_ade49959(weapon);
        weapondata[#"hash_305a93e7a368c654"] = self function_8cbd254d(weapon);
        if (weapon.isriotshield) {
            weapondata[#"health"] = self.weaponhealth;
        }
    } else {
        weapondata[#"clip"] = 0;
        weapondata[#"stock"] = 0;
        weapondata[#"fuel"] = 0;
        weapondata[#"heat"] = 0;
        weapondata[#"overheat"] = 0;
    }
    if (weapon.dualwieldweapon != level.weaponnone) {
        weapondata[#"lh_clip"] = self getweaponammoclip(weapon.dualwieldweapon);
    } else {
        weapondata[#"lh_clip"] = 0;
    }
    if (weapon.altweapon != level.weaponnone) {
        weapondata[#"alt_clip"] = self getweaponammoclip(weapon.altweapon);
        weapondata[#"alt_stock"] = self getweaponammostock(weapon.altweapon);
    } else {
        weapondata[#"alt_clip"] = 0;
        weapondata[#"alt_stock"] = 0;
    }
    return weapondata;
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xef37ff20, Offset: 0x1c98
// Size: 0x2bc
function weapondata_give(weapondata) {
    if (isdefined(level.var_bfbdc0cd)) {
        self [[ level.var_bfbdc0cd ]](weapondata);
        return;
    }
    weapon = util::get_weapon_by_name(weapondata[#"weapon"], weapondata[#"attachments"]);
    self giveweapon(weapon, weapondata[#"renderoptionsweapon"], weapondata[#"hash_305a93e7a368c654"]);
    if (weapon != level.weaponnone) {
        self setweaponammoclip(weapon, weapondata[#"clip"]);
        self setweaponammostock(weapon, weapondata[#"stock"]);
        if (isdefined(weapondata[#"fuel"])) {
            self setweaponammofuel(weapon, weapondata[#"fuel"]);
        }
        if (isdefined(weapondata[#"heat"]) && isdefined(weapondata[#"overheat"])) {
            self setweaponoverheating(weapondata[#"overheat"], weapondata[#"heat"], weapon);
        }
        if (weapon.isriotshield && isdefined(weapondata[#"health"])) {
            self.weaponhealth = weapondata[#"health"];
        }
    }
    if (weapon.dualwieldweapon != level.weaponnone) {
        self setweaponammoclip(weapon.dualwieldweapon, weapondata[#"lh_clip"]);
    }
    if (weapon.altweapon != level.weaponnone) {
        self setweaponammoclip(weapon.altweapon, weapondata[#"alt_clip"]);
        self setweaponammostock(weapon.altweapon, weapondata[#"alt_stock"]);
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x8e8a772, Offset: 0x1f60
// Size: 0xb4
function switch_to_primary_weapon(b_immediate = 0, var_61bb3b76 = 0) {
    weapon = self loadout::function_18a77b37("primary");
    if (is_valid_weapon(weapon)) {
        if (b_immediate) {
            self switchtoweaponimmediate(weapon, var_61bb3b76);
            return;
        }
        self switchtoweapon(weapon, var_61bb3b76);
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x0
// Checksum 0xaec9c8ff, Offset: 0x2020
// Size: 0xb4
function function_1bff13a1(b_immediate = 0, var_61bb3b76 = 0) {
    weapon = self loadout::function_18a77b37("secondary");
    if (is_valid_weapon(weapon)) {
        if (b_immediate) {
            self switchtoweaponimmediate(weapon, var_61bb3b76);
            return;
        }
        self switchtoweapon(weapon, var_61bb3b76);
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa181b429, Offset: 0x20e0
// Size: 0x2fc
function fill_current_clip(var_aa12242d = 0) {
    w_current = self getcurrentweapon();
    if (w_current.isheavyweapon) {
        w_current = self loadout::function_18a77b37("primary");
    }
    if (isdefined(w_current) && self hasweapon(w_current)) {
        if (var_aa12242d) {
            var_61b58f30 = self getweaponammoclip(w_current);
            var_45193587 = self getweaponammostock(w_current);
            var_c22fa6b8 = w_current.clipsize - var_61b58f30;
            var_f2084708 = int(min(var_c22fa6b8, var_45193587));
            if (var_c22fa6b8 > 0 && var_f2084708 > 0) {
                self setweaponammoclip(w_current, var_61b58f30 + var_f2084708);
                self setweaponammostock(w_current, var_45193587 - var_f2084708);
            }
            if (isdefined(w_current.altweapon)) {
                var_4d29c04f = self getweaponammoclip(w_current.altweapon);
                var_a398bb57 = self getweaponammostock(w_current.altweapon);
                var_b5193f0f = w_current.altweapon.clipsize - var_4d29c04f;
                var_c95287ff = int(min(var_b5193f0f, var_a398bb57));
                if (var_b5193f0f > 0 && var_c95287ff > 0) {
                    self setweaponammoclip(w_current.altweapon, var_4d29c04f + var_c95287ff);
                    self setweaponammostock(w_current.altweapon, var_a398bb57 - var_c95287ff);
                }
            }
            return;
        }
        self setweaponammoclip(w_current, w_current.clipsize);
        if (isdefined(w_current.altweapon)) {
            self setweaponammoclip(w_current.altweapon, w_current.altweapon.clipsize);
        }
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd0ada84a, Offset: 0x23e8
// Size: 0x26
function is_valid_weapon(weaponobject) {
    return isdefined(weaponobject) && weaponobject != level.weaponnone;
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x90063c60, Offset: 0x2418
// Size: 0x74
function is_spawn_protected() {
    if (!isdefined(self)) {
        return false;
    }
    if (!isdefined(self.spawntime)) {
        self.spawntime = 0;
    }
    return gettime() - (isdefined(self.spawntime) ? self.spawntime : 0) <= int(level.spawnsystem.var_d9984264 * 1000);
}

// Namespace player/player_shared
// Params 0, eflags: 0x0
// Checksum 0xeac07d4a, Offset: 0x2498
// Size: 0x18
function simple_respawn() {
    self [[ level.onspawnplayer ]](0);
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcac90103, Offset: 0x24b8
// Size: 0x11c
function get_snapped_spot_origin(spot_position) {
    snap_max_height = 100;
    size = 15;
    height = size * 2;
    mins = (-1 * size, -1 * size, 0);
    maxs = (size, size, height);
    spot_position = (spot_position[0], spot_position[1], spot_position[2] + 5);
    new_spot_position = (spot_position[0], spot_position[1], spot_position[2] - snap_max_height);
    trace = physicstrace(spot_position, new_spot_position, mins, maxs, self);
    if (trace[#"fraction"] < 1) {
        return trace[#"position"];
    }
    return spot_position;
}

// Namespace player/player_shared
// Params 1, eflags: 0x0
// Checksum 0xc6129e5, Offset: 0x25e0
// Size: 0x1b2
function allow_stance_change(b_allow = 1) {
    if (b_allow) {
        self allowprone(1);
        self allowcrouch(1);
        self allowstand(1);
        return;
    }
    str_stance = self getstance();
    switch (str_stance) {
    case #"prone":
        self allowprone(1);
        self allowcrouch(0);
        self allowstand(0);
        break;
    case #"crouch":
        self allowprone(0);
        self allowcrouch(1);
        self allowstand(0);
        break;
    case #"stand":
        self allowprone(0);
        self allowcrouch(0);
        self allowstand(1);
        break;
    }
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb2b4c9ff, Offset: 0x27a0
// Size: 0x3c
function set_spawn_variables() {
    self stopshellshock();
    self stoprumble("damage_heavy");
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7c39f98e, Offset: 0x27e8
// Size: 0x3e
function reset_attacker_list() {
    self.attackers = [];
    self.attackerdata = [];
    self.attackerdamage = [];
    self.var_6ef09a14 = [];
    self.firsttimedamaged = 0;
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x603b86f8, Offset: 0x2830
// Size: 0x126
function function_9080887a(var_cf05ebb7) {
    if (!isdefined(self.var_894f7879)) {
        self.var_894f7879 = [];
    }
    var_f7d37aa4 = 0;
    foreach (modifier in self.var_894f7879) {
        var_f7d37aa4 += modifier;
    }
    basemaxhealth = isdefined(var_cf05ebb7) ? var_cf05ebb7 : self.spawnhealth;
    self.var_66cb03ad = int(basemaxhealth + var_f7d37aa4 + (isdefined(level.var_90bb9821) ? level.var_90bb9821 : 0));
    if (self.var_66cb03ad < 1) {
        self.var_66cb03ad = 1;
    }
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x91790165, Offset: 0x2960
// Size: 0x34
function function_d1768e8e() {
    self notify(#"fully_healed");
    callback::callback(#"fully_healed");
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2db550ba, Offset: 0x29a0
// Size: 0x34
function function_c6fe9951() {
    self notify(#"done_healing");
    callback::callback(#"done_healing");
}

// Namespace player/player_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x888a8142, Offset: 0x29e0
// Size: 0xec
function function_2a67df65(modname, value, var_96a9fbf4, var_b861a047) {
    if (!isdefined(self.var_894f7879)) {
        self.var_894f7879 = [];
    }
    self function_74598aba(var_96a9fbf4);
    can_modify = 1;
    if (level.wound_disabled === 1 && value < 0) {
        can_modify = 0;
    }
    if (can_modify) {
        self.var_894f7879[modname] = value;
    }
    self function_9080887a();
    if (!is_true(var_b861a047)) {
        self function_b2b139e6();
    }
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe41640b7, Offset: 0x2ad8
// Size: 0x4c
function function_b2b139e6() {
    if (isdefined(self.var_abe2db87)) {
        return;
    }
    if (self.health > self.var_66cb03ad) {
        self.health = self.var_66cb03ad;
        self function_d1768e8e();
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa70559fd, Offset: 0x2b30
// Size: 0x9c
function function_b933de24(modname, var_b861a047) {
    if (isdefined(self)) {
        if (!isdefined(self.var_894f7879)) {
            self.var_894f7879 = [];
        }
        var_d87cedce = self.var_66cb03ad;
        self.var_894f7879[modname] = undefined;
        self function_9080887a();
        if (!is_true(var_b861a047)) {
            self function_b2b139e6();
        }
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xffda7252, Offset: 0x2bd8
// Size: 0xb8
function function_74598aba(var_96a9fbf4) {
    if (!isdefined(var_96a9fbf4)) {
        return;
    }
    foreach (modifier in var_96a9fbf4) {
        if (!isdefined(modifier)) {
            continue;
        }
        self function_b933de24(modifier.name, modifier.var_b861a047);
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x3d8ace48, Offset: 0x2c98
// Size: 0x94
function function_466d8a4b(var_b66879ad, team) {
    params = {#team:team, #var_b66879ad:var_b66879ad};
    self notify(#"joined_team", params);
    level notify(#"joined_team");
    self callback::callback(#"joined_team", params);
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfa5077bc, Offset: 0x2d38
// Size: 0x9c
function function_6f6c29e(var_b66879ad) {
    params = {#team:#"spectator", #var_b66879ad:var_b66879ad};
    self notify(#"joined_spectator", params);
    level notify(#"joined_spectator");
    self callback::callback(#"on_joined_spectator", params);
}

// Namespace player/player_shared
// Params 2, eflags: 0x42 linked
// Checksum 0x18fc3084, Offset: 0x2de0
// Size: 0xb0
function function_2f80d95b(player_func, ...) {
    players = getplayers();
    foreach (player in players) {
        util::single_func_argarray(player, player_func, vararg);
    }
}

// Namespace player/player_shared
// Params 3, eflags: 0x42 linked
// Checksum 0x3634adc6, Offset: 0x2e98
// Size: 0xa0
function function_4dcd9a89(players, player_func, ...) {
    foreach (player in players) {
        util::single_func_argarray(player, player_func, vararg);
    }
}

// Namespace player/player_shared
// Params 3, eflags: 0x40
// Checksum 0x34e981f0, Offset: 0x2f40
// Size: 0xd0
function function_7629df88(team, player_func, ...) {
    players = getplayers();
    foreach (player in players) {
        if (player.team == team) {
            util::single_func_argarray(player, player_func, vararg);
        }
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x42 linked
// Checksum 0x4e68fa96, Offset: 0x3018
// Size: 0xd0
function function_e7f18b20(player_func, ...) {
    players = getplayers();
    foreach (player in players) {
        if (!isdefined(player.pers[#"team"])) {
            continue;
        }
        util::single_func_argarray(player, player_func, vararg);
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb25f9676, Offset: 0x30f0
// Size: 0x9c
function function_38de2d5a(notification) {
    players = getplayers();
    foreach (player in players) {
        player notify(notification);
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5f076cf7, Offset: 0x3198
// Size: 0xc6
function init_heal(var_cd7b9255, var_e9c4ebeb) {
    var_84d04e6 = {#enabled:var_cd7b9255, #rate:0, #var_bc840360:0, #var_c8777194:var_e9c4ebeb, #var_b8c7d886:0, #var_a1cac2f1:0};
    if (!isdefined(self.heal)) {
        self.heal = var_84d04e6;
    }
    if (!isdefined(self.var_66cb03ad)) {
        self.var_66cb03ad = self.maxhealth;
    }
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1449f6e5, Offset: 0x3268
// Size: 0x1ba
function figure_out_attacker(eattacker) {
    if (isdefined(eattacker) && !isplayer(eattacker)) {
        team = self.team;
        if (isdefined(eattacker.script_owner)) {
            if (util::function_fbce7263(eattacker.script_owner.team, team)) {
                eattacker = eattacker.script_owner;
            }
        }
        if (isdefined(eattacker.owner)) {
            eattacker = eattacker.owner;
        }
        if (is_true(eattacker.var_97f1b32a) && isdefined(level.var_6ed50229)) {
            assert(isvehicle(eattacker));
            if (isvehicle(eattacker) && isdefined(eattacker.var_735382e) && isdefined(eattacker.var_a816f2cd)) {
                driver = eattacker getseatoccupant(0);
                if (!isdefined(driver)) {
                    currenttime = gettime();
                    if (currenttime - eattacker.var_a816f2cd <= int(level.var_6ed50229 * 1000)) {
                        eattacker = eattacker.var_735382e;
                    }
                }
            }
        }
    }
    return eattacker;
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc45c5f11, Offset: 0x3430
// Size: 0x12e
function function_803e2c82(weapon) {
    if (isplayer(self)) {
        currentweapon = self getcurrentweapon();
        if (currentweapon.type === #"melee") {
            weapon = currentweapon;
        } else {
            primaryweapon = self loadout::function_18a77b37("primary");
            secondaryweapon = self loadout::function_18a77b37("secondary");
            if (currentweapon === primaryweapon && secondaryweapon.type === #"melee") {
                weapon = secondaryweapon;
            } else if (currentweapon === secondaryweapon && primaryweapon.type === #"melee") {
                weapon = primaryweapon;
            }
        }
    }
    return weapon;
}

// Namespace player/player_shared
// Params 2, eflags: 0x0
// Checksum 0xad446410, Offset: 0x3568
// Size: 0x58
function function_4ca4d8c6(string, value) {
    assert(isdefined(string), "<unknown string>");
    if (isdefined(self) && isdefined(self.pers)) {
        self.pers[string] = value;
    }
}

// Namespace player/player_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa72832aa, Offset: 0x35c8
// Size: 0x78
function function_2abc116(string, defaultval) {
    assert(isdefined(string), "<unknown string>");
    if (isdefined(self) && isdefined(self.pers) && isdefined(self.pers[string])) {
        return self.pers[string];
    }
    return defaultval;
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xbaed96a6, Offset: 0x3648
// Size: 0x11a
function function_3d288f14() {
    /#
        if (isbot(self)) {
            if (isdefined(self.var_30e2c3ec)) {
                return self.var_30e2c3ec;
            }
            rand = randomintrange(0, 3);
            switch (rand) {
            case 0:
                self.var_30e2c3ec = #"none";
                break;
            case 1:
                self.var_30e2c3ec = #"game";
                break;
            case 2:
                self.var_30e2c3ec = #"system";
                break;
            }
            return self.var_30e2c3ec;
        }
    #/
    status = self voipstatus();
    return status;
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9fc81b7a, Offset: 0x3770
// Size: 0xf8
function function_d36b6597() {
    max_clients = getdvarint(#"com_maxclients", 0);
    assert(max_clients != 0);
    if (!isdefined(level.maxteamplayers)) {
        level.maxteamplayers = 0;
    }
    if (!isdefined(level.teamcount)) {
        level.teamcount = 0;
    }
    var_27e8a04e = max_clients;
    if ((level.teamcount == 0 || max_clients == level.teamcount) && level.maxteamplayers > 0) {
        var_27e8a04e = level.maxteamplayers;
    } else if (level.teamcount > 0) {
        var_27e8a04e = max_clients;
    }
    return var_27e8a04e;
}

// Namespace player/player_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x728d9565, Offset: 0x3870
// Size: 0x96
function private function_c70c4c93(party) {
    max_players = function_d36b6597();
    assert(max_players == 0 || party.var_a15e4438 <= max_players);
    if (isdefined(level.var_7d3ed2bf) && level.var_7d3ed2bf && !party.fill) {
        return max_players;
    }
    return party.var_a15e4438;
}

// Namespace player/player_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4b8ac6ac, Offset: 0x3910
// Size: 0x1a8
function function_1cec6cba(players) {
    var_ab9e77bf = [];
    /#
        var_f8896168 = getdvarint(#"hash_4cbf229ab691d987", 0);
    #/
    foreach (player in players) {
        party = player getparty();
        var_ab9e77bf[party.party_id] = function_c70c4c93(party);
        /#
            if (var_f8896168) {
                var_ab9e77bf[party.party_id] = party.var_a15e4438;
            }
        #/
    }
    var_6195506c = 0;
    foreach (count in var_ab9e77bf) {
        var_6195506c += count;
    }
    return var_6195506c;
}

// Namespace player/player_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa7c81802, Offset: 0x3ac0
// Size: 0x9e
function function_114b77dd(time, timeout) {
    if (self isstreamerready(-1, 1)) {
        return true;
    }
    if (!isdefined(timeout)) {
        timeout = getdvarint(#"hash_6974ec4bbf3b9e97");
    }
    if (!isdefined(time)) {
        time = gettime();
    }
    if (isdefined(self.connect_time) && self.connect_time + timeout < gettime()) {
        return true;
    }
    return false;
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xaef4d0fb, Offset: 0x3b68
// Size: 0x22
function function_51b57f72() {
    return getdvarint(#"hash_6974ec4bbf3b9e97");
}

// Namespace player/player_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9fbe5079, Offset: 0x3b98
// Size: 0x24
function function_80e763a4() {
    level flag::set(#"hash_2210f8d75db6eda7");
}

// Namespace player/player_shared
// Params 0, eflags: 0x0
// Checksum 0xc989044, Offset: 0x3bc8
// Size: 0x22
function function_171bf4c0() {
    return level flag::get(#"hash_2210f8d75db6eda7");
}

