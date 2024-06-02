// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_killed.gsc;
#using scripts\mp_common\player\player_damage.gsc;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\challenges.gsc;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using script_45fdb6cec5580007;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\demo_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_5394c653bafe1358;
#using script_243ea03c7a285692;

#namespace laststand_mp;

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x5
// Checksum 0x42fba7b3, Offset: 0x500
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"laststand_mp", &preinit, undefined, undefined, undefined);
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x6 linked
// Checksum 0xb9ec70b, Offset: 0x548
// Size: 0x6fc
function private preinit() {
    if (!isdefined(level.skiplaststand)) {
        level.skiplaststand = 0;
    }
    if (!isdefined(level.var_f19192e3)) {
        level.var_f19192e3 = 1;
    }
    if (!isdefined(level.var_39d772ad)) {
        level.var_39d772ad = 0;
    }
    if (!isdefined(level.var_6dec0ba0)) {
        level.var_6dec0ba0 = 0;
    }
    if (!isdefined(level.var_b21f0c3)) {
        level.var_b21f0c3 = 1;
    }
    if (!isdefined(level.var_e735bd66)) {
        level.var_e735bd66 = 0;
    }
    if (!isdefined(level.var_b1c167f1)) {
        level.var_b1c167f1 = 1;
    }
    if (!isdefined(level.var_55615499)) {
        level.var_55615499 = 1;
    }
    if (!isdefined(level.var_3709909d)) {
        level.var_3709909d = 1;
    }
    if (!isdefined(level.var_47ee6930)) {
        level.var_47ee6930 = 1;
    }
    function_349ff038();
    clientfield::register_clientuimodel("hudItems.laststand.progress", 13000, 5, "float");
    clientfield::register_clientuimodel("hudItems.laststand.beingRevived", 13000, 1, "int");
    clientfield::register_clientuimodel("hudItems.laststand.cowardsWayBleedOut", 1, 1, "int");
    clientfield::register_clientuimodel("hudItems.laststand.revivingClientNum", 1, 7, "int");
    clientfield::register_clientuimodel("hudItems.laststand.reviveProgress", 1, 5, "float");
    clientfield::register_clientuimodel("EnemyTeamLastLivesData.numPlayersDowned", 1, 3, "int");
    clientfield::register_clientuimodel("PlayerTeamLastLivesData.numPlayersDowned", 1, 3, "int");
    clientfield::register("allplayers", "laststand_bleed", 1, 1, "int");
    clientfield::register_clientuimodel("hud_items.selfReviveAvailable", 1, 1, "int");
    clientfield::register("toplayer", "isSelfReviving", 1, 1, "int");
    level.var_8e910e84 = 1;
    level.var_97c6ee7c = &playerlaststand;
    level.skiplaststand = getgametypesetting(#"skiplaststand");
    level.laststandlives = getgametypesetting(#"hash_83f11b8abac148f");
    level.var_5c13c13f = getgametypesetting(#"hash_4c7c8c4bd1b2a58b");
    level.var_57e7d5a = getgametypesetting(#"hash_67d54bbc52811921");
    level.var_b5087de4 = getgametypesetting(#"hash_3e13b420d6773b4c");
    level.var_5bf4f34b = isdefined(getgametypesetting(#"wzenablecowardswayout")) ? getgametypesetting(#"wzenablecowardswayout") : 0;
    level.laststandweapon = getweapon(#"downed");
    level.var_e273f858 = getweapon(#"notdowned");
    level.var_e86679bd = [];
    level.var_402b86e = &function_c3249e8c;
    if (isdefined(level.revive_hud)) {
        level thread revive_hud_think();
    }
    level.var_91c33dcb = getscriptbundle(#"finishers");
    if (!isdefined(getdvar(#"revive_trigger_radius"))) {
        setdvar(#"revive_trigger_radius", 100);
    }
    callback::on_connect(&on_player_connect);
    callback::on_joined_team(&on_joined_team);
    callback::on_spawned(&on_player_spawned);
    callback::on_player_damage(&on_player_damage);
    callback::on_player_killed(&on_player_killed);
    callback::on_disconnect(&on_player_disconnect);
    level.var_dea23a93 = [];
    level.var_ead46974 = [];
    foreach (team, teamstr in level.teams) {
        level.var_dea23a93[team] = 0;
        level.var_ead46974[team] = 0;
    }
    /#
        level thread function_86c92a7e();
    #/
    setdvar(#"g_revivetime", getgametypesetting(#"laststandrevivetime"));
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xdb8b7161, Offset: 0xc50
// Size: 0x9c
function function_349ff038() {
    var_f6784858 = 6;
    if (sessionmodeiswarzonegame()) {
        var_f6784858 = 4;
    }
    prompts = [];
    for (i = 0; i < var_f6784858; i++) {
        promptid = i + 1;
        prompts[i] = mp_revive_prompt::register();
    }
    level.mp_revive_prompt = prompts;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x49a4bf4f, Offset: 0xcf8
// Size: 0x50
function function_feb3e91d() {
    return isdefined(getgametypesetting(#"laststandfinishing")) ? getgametypesetting(#"laststandfinishing") : 0;
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x2ac238d2, Offset: 0xd50
// Size: 0x1c
function function_367cfa1b(callbackfunc) {
    level.var_dcc41ae = callbackfunc;
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0xa3f3f512, Offset: 0xd78
// Size: 0x1c
function function_eb8c0e47(callbackfunc) {
    level.var_f80fdd3f = callbackfunc;
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x62616cf, Offset: 0xda0
// Size: 0x64
function function_414115a0(time, health) {
    tier = {#time:time, #health:health};
    level.var_e86679bd[level.var_e86679bd.size] = tier;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x934a6d80, Offset: 0xe10
// Size: 0x110
function on_player_connect() {
    if (!isdefined(level.var_dea23a93[self.team])) {
        level.var_dea23a93[self.team] = 0;
    }
    if (!isdefined(level.var_ead46974[self.team])) {
        level.var_ead46974[self.team] = 0;
    }
    foreach (prompt in level.mp_revive_prompt) {
        [[ prompt ]]->set_clientnum(self, int(pow(2, 7) - 2));
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0xc9aa3e2d, Offset: 0xf28
// Size: 0xe4
function on_joined_team(*params) {
    if (!isdefined(level.var_dea23a93[self.team])) {
        level.var_dea23a93[self.team] = 0;
    }
    if (!isdefined(level.var_ead46974[self.team])) {
        level.var_ead46974[self.team] = 0;
    }
    if (!is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
        self clientfield::set_player_uimodel("PlayerTeamLastLivesData.numPlayersDowned", level.var_dea23a93[self.team]);
        self clientfield::set_player_uimodel("EnemyTeamLastLivesData.numPlayersDowned", level.var_ead46974[self.team]);
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x566134de, Offset: 0x1018
// Size: 0xbe
function on_player_spawned() {
    if (isdefined(level.revive_hud)) {
        self laststand::revive_hud_create();
    }
    if (!is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
        self clientfield::set_player_uimodel("hudItems.laststand.revivingClientNum", int(pow(2, 7) - 2));
    }
    self.var_d887a4ad = undefined;
    self.var_156bf46e = undefined;
    self.var_5b73c96a = undefined;
}

// Namespace laststand_mp/exit_vehicle
// Params 1, eflags: 0x20
// Checksum 0x2768bfb9, Offset: 0x10e0
// Size: 0xc2
function event_handler[exit_vehicle] codecallback_vehicleexit(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    if (self inlaststand()) {
        self.var_156bf46e = eventstruct.vehicle;
        return;
    }
    if (isairborne(eventstruct.vehicle)) {
        self.var_156bf46e = eventstruct.vehicle;
        waitframe(1);
        if (isalive(self) && !self inlaststand()) {
            self.var_156bf46e = undefined;
        }
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x6098ea5b, Offset: 0x11b0
// Size: 0xb2
function on_player_damage(params) {
    if (self is_reviving_any()) {
        if (isdefined(self.reviving_player) && isdefined(self.reviving_player.var_d75a6ff5)) {
            self.reviving_player.var_d75a6ff5.var_d733f8d7 += params.idamage;
            if (self.health <= params.idamage) {
                self.reviving_player.var_d75a6ff5.var_bb36e277 = 1;
            }
        }
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x9806d5fc, Offset: 0x1270
// Size: 0x3c
function on_player_killed(*params) {
    if (is_true(level.var_f19192e3)) {
        self function_7ff2fc91();
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xa3d40f1f, Offset: 0x12b8
// Size: 0xde
function on_player_disconnect() {
    if (is_true(level.var_f19192e3)) {
        self function_7ff2fc91();
    }
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger delete();
        self.revivetrigger = undefined;
    }
    if (isdefined(self.laststandparams)) {
        attacker = self.laststandparams.attacker;
        weapon = self.laststandparams.weapon;
        smeansofdeath = self.laststandparams.smeansofdeath;
        if (self util::isenemyplayer(attacker)) {
        }
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x9b85c6f, Offset: 0x13a0
// Size: 0x100
function function_7ff2fc91() {
    var_4cf51823 = function_c0ec19cd();
    if (!var_4cf51823) {
        friendlies = function_78d8cf9b(self);
        foreach (player in friendlies) {
            if (player != self && isalive(player) && player laststand::player_is_in_laststand()) {
                player thread function_64df6095();
            }
        }
    }
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x76822444, Offset: 0x14a8
// Size: 0xbc
function function_263a2944(prompt, var_a1258c6b) {
    var_a1258c6b waittill(#"player_revived", #"disconnect", #"bled_out", #"death");
    if (isdefined(self)) {
        [[ prompt ]]->close(self);
        [[ prompt ]]->set_clientnum(self, int(pow(2, 7) - 2));
    }
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x986a4c83, Offset: 0x1570
// Size: 0x112
function function_c025efba(prompt, var_a1258c6b) {
    var_a1258c6b endon(#"player_revived", #"disconnect", #"bled_out", #"death");
    self endon(#"disconnect");
    clientnum = var_a1258c6b getentitynumber();
    while (true) {
        if (![[ prompt ]]->function_7bfd10e6(self)) {
            [[ prompt ]]->open(self);
            [[ prompt ]]->set_clientnum(self, clientnum);
        }
        [[ prompt ]]->set_progress(self, var_a1258c6b.var_2d19ce3c);
        [[ prompt ]]->set_reviveprogress(self, var_a1258c6b.reviveprogress);
        waitframe(1);
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x38f7eed3, Offset: 0x1690
// Size: 0x134
function function_5de626dc(var_a1258c6b) {
    foreach (prompt in level.mp_revive_prompt) {
        if (![[ prompt ]]->function_7bfd10e6(self)) {
            [[ prompt ]]->open(self);
            [[ prompt ]]->set_progress(self, 1);
            [[ prompt ]]->set_reviveprogress(self, 0);
            [[ prompt ]]->set_clientnum(self, var_a1258c6b getentitynumber());
            self thread function_263a2944(prompt, var_a1258c6b);
            self thread function_c025efba(prompt, var_a1258c6b);
            break;
        }
    }
}

// Namespace laststand_mp/laststand
// Params 8, eflags: 0x2 linked
// Checksum 0x859ebee7, Offset: 0x17d0
// Size: 0x2e4
function function_dc7906e8(einflictor, attacker, idamage, smeansofdeath, weapon, var_fd90b0bb, vdir, shitloc) {
    self.laststandparams = spawnstruct();
    self.var_bfc8055f = spawnstruct();
    self.laststandparams.einflictor = einflictor;
    self.var_bfc8055f.var_b5346661 = isdefined(einflictor) ? einflictor getentitynumber() : -1;
    self.laststandparams.attacker = attacker;
    self.var_bfc8055f.attackernum = isdefined(attacker) ? attacker getentitynumber() : -1;
    self.laststandparams.attackerorigin = attacker.origin;
    if (isplayer(attacker)) {
        self.laststandparams.var_83634238 = attacker getplayerangles();
    } else {
        self.laststandparams.var_83634238 = attacker.angles;
    }
    self.laststandparams.idamage = idamage;
    self.laststandparams.smeansofdeath = smeansofdeath;
    self.laststandparams.weapon = weapon;
    self.laststandparams.var_fd90b0bb = var_fd90b0bb;
    self.laststandparams.vdir = vdir;
    self.laststandparams.shitloc = shitloc;
    self.laststandparams.laststandstarttime = gettime();
    self.laststandparams.victimorigin = self.origin;
    self.laststandparams.var_5fceefd4 = self getplayerangles();
    self.laststandparams.victimweapon = self.currentweapon;
    self.laststandparams.matchtime = gettime();
    self.laststandparams.bledout = 0;
    self.laststandparams.var_59b19c1b = 0;
    if (isdefined(level.var_82b353bf)) {
        self.laststandparams.var_60cb0c39 = self [[ level.var_82b353bf ]](attacker);
    }
    profilestart();
    self.laststandparams.var_5eb847d5 = self challenges::playerkilled(einflictor, attacker, idamage, smeansofdeath, weapon, shitloc, undefined, 0, 1);
    profilestop();
}

// Namespace laststand_mp/laststand
// Params 8, eflags: 0x0
// Checksum 0x2087ddf1, Offset: 0x1ac0
// Size: 0x1ea
function function_67b38e11(einflictor, attacker, idamage, smeansofdeath, weapon, var_fd90b0bb, vdir, shitloc) {
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.laststandparams)) {
        self.laststandparams = [];
    }
    if (!isdefined(self.var_bfc8055f)) {
        self.var_bfc8055f = [];
    }
    self.laststandparams.einflictor = einflictor;
    self.var_bfc8055f.var_b5346661 = isdefined(einflictor) ? einflictor getentitynumber() : -1;
    self.laststandparams.attacker = attacker;
    self.var_bfc8055f.attackernum = isdefined(attacker) ? attacker getentitynumber() : -1;
    self.laststandparams.idamage = idamage;
    self.laststandparams.smeansofdeath = smeansofdeath;
    self.laststandparams.weapon = weapon;
    self.laststandparams.var_fd90b0bb = var_fd90b0bb;
    self.laststandparams.vdir = vdir;
    self.laststandparams.shitloc = shitloc;
    if (isdefined(einflictor) && isdefined(einflictor.item) && einflictor.item.name === #"planemortar") {
        self.laststandparams.killcam_entity_info_cached = killcam::get_killcam_entity_info(attacker, einflictor, weapon);
    }
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0xb2d26f5b, Offset: 0x1cb8
// Size: 0x2c
function function_d5db8d2e(*attacker, *weapon) {
    self function_2907ce7a();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xa9fd43ea, Offset: 0x1cf0
// Size: 0x11c
function function_c0ec19cd() {
    friendlies = function_78d8cf9b(self);
    foreach (player in friendlies) {
        if (player == self) {
            if (player clientfield::get_player_uimodel("hud_items.selfReviveAvailable")) {
                return true;
            }
            continue;
        }
        if (!isalive(player)) {
            continue;
        }
        if (!player laststand::player_is_in_laststand() || player clientfield::get_player_uimodel("hud_items.selfReviveAvailable")) {
            return true;
        }
    }
    return false;
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x8f67ddbc, Offset: 0x1e18
// Size: 0x1ee
function function_78d8cf9b(player) {
    assert(isplayer(player));
    friendlies = [];
    if (!isplayer(player)) {
        return friendlies;
    }
    if (player.squad != #"none" && squads::function_a9758423()) {
        friendlies = arraycombine(friendlies, function_c65231e2(player.squad), 0, 0);
    }
    if (is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
        friendlies = arraycombine(friendlies, function_a1ef346b(), 0, 0);
    } else {
        teams = player function_2b77bc35();
        foreach (team in teams) {
            players = getplayers(team);
            friendlies = arraycombine(friendlies, players, 0, 0);
        }
    }
    return friendlies;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xc80f7d0d, Offset: 0x2010
// Size: 0x6e
function function_2b77bc35() {
    teams = [];
    if (!isdefined(teams)) {
        teams = [];
    } else if (!isarray(teams)) {
        teams = array(teams);
    }
    teams[teams.size] = self.team;
    return teams;
}

/#

    // Namespace laststand_mp/laststand
    // Params 0, eflags: 0x0
    // Checksum 0x22c0c13c, Offset: 0x2088
    // Size: 0x270
    function function_86c92a7e() {
        level endon(#"game_ended");
        while (true) {
            var_e796bc31 = getdvarstring(#"scr_last_stand", "<unknown string>");
            if (var_e796bc31 == "<unknown string>") {
                host = util::gethostplayer();
                angles = host getplayerangles();
                dir = anglestoforward(angles);
                eye = host geteye();
                dir *= 500;
                trace = bullettrace(eye, eye + dir, 1, host);
                target = trace[#"entity"];
                if (!isdefined(target) || !isplayer(target)) {
                    target = host;
                }
                target dodamage(1000, target.origin);
            } else if (var_e796bc31 == "<unknown string>") {
                foreach (player in getplayers()) {
                    if (isdefined(player.revivetrigger)) {
                        player notify(#"auto_revive");
                    }
                }
            }
            setdvar(#"scr_last_stand", "<unknown string>");
            wait(0.1);
        }
    }

#/

// Namespace laststand_mp/laststand
// Params 4, eflags: 0x2 linked
// Checksum 0x8661afb0, Offset: 0x2300
// Size: 0x48a
function function_b1158c52(attacker, idamage, smeansofdeath, var_4cf51823) {
    if (is_true(level.skiplaststand)) {
        return true;
    } else if (is_true(level.var_f19192e3) && !var_4cf51823) {
        return true;
    } else if (is_true(level.var_39d772ad) && self.usingremote) {
        return true;
    } else if (is_true(level.var_6dec0ba0) && isdefined(attacker) && attacker == self) {
        return true;
    } else if (is_true(level.laststandlives) && self.laststandcount > level.laststandlives) {
        return true;
    } else if (is_true(level.var_b21f0c3) && self isplayerswimming()) {
        return true;
    } else if (is_true(level.var_e735bd66) && isvehicle(self.var_156bf46e) && !self.var_156bf46e isremotecontrol()) {
        return true;
    } else if (is_true(level.var_47ee6930) && self isremotecontrolling()) {
        return true;
    } else if (is_true(level.var_b1c167f1) && isvehicle(self.var_156bf46e) && !self.var_156bf46e isremotecontrol() && isairborne(self.var_156bf46e) && function_5ffabd64(self.var_156bf46e, self)) {
        return true;
    } else if (is_true(level.var_55615499) && isvehicle(self.var_156bf46e) && !self.var_156bf46e isremotecontrol() && self.var_156bf46e.vehicleclass === "boat" && function_61c14ebf(self.var_156bf46e, self)) {
        return true;
    } else if (is_true(level.var_3709909d) && isdefined(smeansofdeath) && isdefined(idamage) && smeansofdeath == "MOD_FALLING" && idamage >= self.maxhealth) {
        return true;
    } else if (!function_3238d10d(self.origin)) {
        return true;
    } else if (is_true(self.var_f5dc0dbf)) {
        self.var_f5dc0dbf = undefined;
        self.var_5b73c96a = 1;
        return true;
    } else {
        var_b145f8cd = self.laststandcount - 1;
        if (var_b145f8cd >= level.var_e86679bd.size) {
            var_b145f8cd = level.var_e86679bd.size - 1;
        }
        var_e86679bd = level.var_e86679bd[var_b145f8cd];
        if (isdefined(var_e86679bd)) {
            return (var_e86679bd.time <= 0);
        }
    }
    return false;
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x6 linked
// Checksum 0x62fa516a, Offset: 0x2798
// Size: 0x7c
function private function_5ffabd64(vehicle, player) {
    trace = groundtrace(player.origin, player.origin - (0, 0, 300), 0, vehicle);
    if (trace[#"fraction"] >= 1) {
        return true;
    }
    return false;
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x6 linked
// Checksum 0x86f47811, Offset: 0x2820
// Size: 0x100
function private function_61c14ebf(vehicle, player) {
    exitposition = vehicle function_212db732(player);
    traceorigin = isdefined(exitposition) ? exitposition : player.origin;
    ignoreent = isdefined(exitposition) ? undefined : vehicle;
    trace = groundtrace(traceorigin, traceorigin - (0, 0, 500), 0, ignoreent, 1);
    if (trace[#"fraction"] >= 1 || oob::chr_party(trace[#"position"])) {
        return true;
    }
    return false;
}

// Namespace laststand_mp/laststand
// Params 10, eflags: 0x2 linked
// Checksum 0xbcc8aa91, Offset: 0x2928
// Size: 0xc04
function playerlaststand(einflictor, attacker, idamage, smeansofdeath, weapon, var_fd90b0bb, vdir, shitloc, *psoffsettime, *delayoverride) {
    if (self laststand::player_is_in_laststand()) {
        return;
    }
    self.var_60956d6 = self getcurrentweapon();
    self function_dc7906e8(idamage, smeansofdeath, weapon, var_fd90b0bb, vdir, shitloc, psoffsettime, delayoverride);
    if (!isdefined(self.laststandcount)) {
        self.laststandcount = 0;
    }
    self.laststandcount++;
    self function_ecdd4b27();
    if (isdefined(level.var_f7b64ada)) {
        [[ level.var_f7b64ada ]]();
    }
    if (is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
        friendlies = function_a1ef346b();
    } else {
        friendlies = getplayers(self.team);
    }
    var_4cf51823 = self function_c0ec19cd();
    if (self function_b1158c52(smeansofdeath, weapon, var_fd90b0bb, var_4cf51823)) {
        self undolaststand();
        self.uselaststandparams = 1;
        self function_6da86ae();
        self.laststandparams.killcam_entity_info_cached = killcam::get_killcam_entity_info(smeansofdeath, idamage, vdir);
        self suicide(var_fd90b0bb, smeansofdeath.origin);
        if (isdefined(self.var_d75a6ff5)) {
            self.var_d75a6ff5.death = 1;
        }
        self function_1e8018b0();
        if (!var_4cf51823) {
            foreach (player in friendlies) {
                if (player != self && isalive(player) && player laststand::player_is_in_laststand()) {
                    player thread bleed_out();
                    player.var_9cd2c51d.var_a063d754 = 1;
                }
            }
        }
        return;
    }
    obituary(self, smeansofdeath, level.weaponnone, "MOD_DOWNED");
    if (isplayer(smeansofdeath)) {
        var_e6af62e9 = self player::function_40c6c42d(smeansofdeath);
        function_f887b191(self, smeansofdeath, var_e6af62e9, 1);
    }
    if (isdefined(smeansofdeath) && isplayer(smeansofdeath)) {
        if (util::function_fbce7263(smeansofdeath.team, self.team) && !function_7afe7d1e(smeansofdeath, self) && self.var_179765d7 !== 1) {
            scoreevents::processscoreevent(#"downed_enemy", smeansofdeath, self, vdir);
        }
        if (isdefined(level.var_dcc41ae)) {
            [[ level.var_dcc41ae ]](smeansofdeath, self, idamage, vdir, var_fd90b0bb);
        }
    }
    self.reviveprogress = 0;
    self.var_2d19ce3c = 1;
    if (!isdefined(level.var_dea23a93[self.team])) {
        level.var_dea23a93[self.team] = 0;
    }
    if (is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
        playercounts = 0;
        foreach (player in function_a1ef346b()) {
            level.var_dea23a93[player.team]++;
        }
        var_9b6c9b51 = level.var_dea23a93[self.team];
        foreach (player in friendlies) {
            player thread function_5de626dc(self);
        }
    } else {
        level.var_dea23a93[self.team]++;
        var_9b6c9b51 = level.var_dea23a93[self.team];
        foreach (player in friendlies) {
            player clientfield::set_player_uimodel("PlayerTeamLastLivesData.numPlayersDowned", var_9b6c9b51);
            player thread function_5de626dc(self);
        }
        foreach (team, count in level.var_ead46974) {
            if (!util::function_fbce7263(team, self.team)) {
                continue;
            }
            count++;
            level.var_ead46974[team] = count;
            foreach (player in getplayers(team)) {
                player clientfield::set_player_uimodel("EnemyTeamLastLivesData.numPlayersDowned", count);
            }
        }
    }
    self notify(#"entering_last_stand");
    self allowjump(0);
    self disableoffhandweapons();
    self.health = 5;
    self.laststand = 1;
    self.meleeattackers = undefined;
    callback::callback(#"on_player_laststand");
    self function_d5db8d2e(smeansofdeath, vdir);
    if (!is_true(self.no_revive_trigger)) {
        self revive_trigger_spawn();
    }
    self thread laststand_disable_player_weapons();
    bleedout_time = getdvarfloat(#"player_laststandbleedouttime", 0);
    var_969fabf4 = self.maxhealth;
    var_b145f8cd = self.laststandcount - 1;
    if (var_b145f8cd >= level.var_e86679bd.size) {
        var_b145f8cd = level.var_e86679bd.size - 1;
    }
    var_e86679bd = level.var_e86679bd[var_b145f8cd];
    if (isdefined(var_e86679bd)) {
        bleedout_time = var_e86679bd.time;
        var_969fabf4 = var_e86679bd.health;
    }
    self clientfield::set("laststand_bleed", 1);
    /#
        bleedout_time = getdvarfloat(#"overridebleedouttime", bleedout_time);
    #/
    self thread laststand_bleedout(bleedout_time, var_969fabf4);
    self thread laststand_invulnerability();
    demo::bookmark(#"player_downed", gettime(), self);
    potm::bookmark(#"player_downed", gettime(), self);
    if (!player::function_faf77690(vdir, idamage, smeansofdeath)) {
        overrideentitycamera = player::function_c0f28ff9(smeansofdeath, vdir);
        var_50d1e41a = potm::function_775b9ad1(vdir, var_fd90b0bb);
        potm::function_66d09fea(#"hash_11588f7b0737f095", smeansofdeath, self, idamage, var_50d1e41a, overrideentitycamera);
    }
    self thread laststand::function_d4c9e1b5();
    self thread auto_revive_on_notify();
    self thread function_5ccd602d();
    if (self clientfield::get_player_uimodel("hud_items.selfReviveAvailable")) {
        self thread function_8e3d5c84();
    }
    /#
        if (getdvarint(#"hash_4fc41e7721e32d59", 0) && isbot(self)) {
            self thread function_64bea7b1();
        }
    #/
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x5659b431, Offset: 0x3538
// Size: 0x64
function function_5ccd602d() {
    self endon(#"player_revived", #"disconnect");
    self waittill(#"death");
    self function_2907ce7a();
    self undolaststand();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x488d5bf1, Offset: 0x35a8
// Size: 0x144
function laststand_disable_player_weapons() {
    self endon(#"death", #"disconnect");
    self giveweapon(level.laststandweapon);
    self givemaxammo(level.laststandweapon);
    self switchtoweaponimmediate(level.laststandweapon, 1);
    self val::set(#"hash_4cddba4e2cb5f525", "disable_weapon_cycling", 1);
    self val::set(#"hash_4cddba4e2cb5f525", "disable_offhand_weapons", 1);
    self val::set(#"hash_4cddba4e2cb5f525", "disable_offhand_special", 1);
    self waittilltimeout(1, #"weapon_change_complete");
    self weapons::detach_all_weapons();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xf26c1120, Offset: 0x36f8
// Size: 0x64
function function_102748f8() {
    self takeweapon(level.laststandweapon);
    self giveweapon(level.var_e273f858);
    self switchtoweaponimmediate(level.var_e273f858, 1);
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xf0450f6a, Offset: 0x3768
// Size: 0xbc
function laststand_enable_player_weapons() {
    self takeweapon(level.var_e273f858);
    self val::reset(#"hash_4cddba4e2cb5f525", "disable_weapon_cycling");
    self val::reset(#"hash_4cddba4e2cb5f525", "disable_offhand_weapons");
    self val::reset(#"hash_4cddba4e2cb5f525", "disable_offhand_special");
    self weapons::function_d571ac59(self.var_60956d6);
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x5e594c43, Offset: 0x3830
// Size: 0x1bc
function laststand_clean_up_on_interrupt(playerbeingrevived) {
    level endon(#"game_ended");
    self endon(#"do_revive_ended_normally", #"disconnect");
    revivetrigger = playerbeingrevived.revivetrigger;
    playerbeingrevived waittill(#"death", #"disconnect");
    if (isdefined(playerbeingrevived)) {
        playerbeingrevived clientfield::set_player_uimodel("hudItems.laststand.beingRevived", 0);
        if (self == playerbeingrevived) {
            self clientfield::set_to_player("isSelfReviving", 0);
        }
        if (playerbeingrevived isgestureplaying("ges_t9_self_revive_last_stand")) {
            playerbeingrevived stopgestureviewmodel("ges_t9_self_revive_last_stand");
        }
    }
    if (isdefined(revivetrigger)) {
        revivetrigger delete();
    }
    self function_2907ce7a();
    if (playerbeingrevived !== self) {
        self function_92bfddb4();
    }
    self clientfield::set_player_uimodel("hudItems.laststand.revivingClientNum", int(pow(2, 7) - 2));
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x46b750e0, Offset: 0x39f8
// Size: 0x338
function laststand_bleedout_damage() {
    level endon(#"game_ended");
    self endon(#"player_revived", #"disconnect", #"bled_out");
    while (true) {
        waitresult = self waittill(#"laststand_damage");
        if (self.var_d887a4ad === 1) {
            return;
        }
        if (function_58f9f9c5(waitresult)) {
            self.var_969fabf4 = 0;
        } else {
            self.var_969fabf4 -= waitresult.idamage;
        }
        if (self.var_969fabf4 <= 0) {
            self.bleedout_time = 0;
            self.var_1cc38de0 = 1;
            vattacker = isdefined(waitresult.eattacker) ? waitresult.eattacker : self;
            self.var_a1d415ee = {#einflictor:waitresult.einflictor, #attacker:waitresult.eattacker, #attackerorigin:vattacker.origin, #var_83634238:isplayer(vattacker) ? vattacker getplayerangles() : vattacker.angles, #idamage:waitresult.idamage, #smeansofdeath:waitresult.smeansofdeath, #weapon:waitresult.weapon, #var_fd90b0bb:waitresult.var_fd90b0bb, #vdir:waitresult.vdir, #shitloc:waitresult.shitloc, #matchtime:function_f8d53445()};
        }
        if (isdefined(self.var_d75a6ff5)) {
            self.var_d75a6ff5.damage += int(waitresult.idamage);
        }
        self function_a6872ca5(waitresult.idamage, waitresult.eattacker, waitresult.idflags, waitresult.smeansofdeath, waitresult.weapon, waitresult.var_fd90b0bb, waitresult.vpoint, waitresult.shitloc, waitresult.vdamageorigin, waitresult.boneindex, waitresult.vsurfacenormal, self.var_969fabf4 <= 0);
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0xc97e787d, Offset: 0x3d38
// Size: 0xba
function function_58f9f9c5(var_acdfb38d) {
    attacker = player::figure_out_attacker(var_acdfb38d.eattacker);
    if (!isplayer(attacker) || !isdefined(var_acdfb38d.einflictor) || var_acdfb38d.einflictor != attacker) {
        return false;
    }
    return var_acdfb38d.smeansofdeath == "MOD_MELEE" || var_acdfb38d.smeansofdeath == "MOD_MELEE_WEAPON_BUTT" || var_acdfb38d.smeansofdeath == "MOD_MELEE_ASSASSINATE";
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x22e11d4c, Offset: 0x3e00
// Size: 0x34
function is_being_revived() {
    return isdefined(self.revivetrigger) && is_true(self.revivetrigger.beingrevived);
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x6d2ccc63, Offset: 0x3e40
// Size: 0x34
function function_72e0c544() {
    return isdefined(self.revivetrigger) && is_true(self.revivetrigger.beingfinished);
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x4db6756f, Offset: 0x3e80
// Size: 0x5b4
function laststand_bleedout(bleedouttime, var_969fabf4) {
    level endon(#"game_ended");
    self endon(#"player_revived", #"player_bleedout", #"death", #"disconnect");
    self.var_84c0402e = bleedouttime;
    self.bleedout_time = bleedouttime;
    self.var_969fabf4 = var_969fabf4;
    self.var_2d19ce3c = 0;
    self.var_1cc38de0 = 0;
    self.var_eb33efbc = 0;
    self.var_bcba8155 = 0;
    var_cb141a23 = int(0.1 * 1000);
    var_93b9385d = bleedouttime * 0.06;
    var_1b4f5d73 = "BUTTON_BIT_ACTIONSLOT_4";
    if (self function_a8bbc98a(4) != #"scorestreak_wheel") {
        for (i = 1; i <= 4; i++) {
            if (self function_a8bbc98a(i) == #"scorestreak_wheel") {
                var_1b4f5d73 = "BUTTON_BIT_ACTIONSLOT_" + i;
                break;
            }
        }
    }
    var_cebeb781 = !self usebuttonpressed();
    var_3e5a068a = !self buttonbitstate(var_1b4f5d73);
    if (self.bleedout_time > 0) {
        if (!is_true(level.var_7624ce4c)) {
            self thread laststand_bleedout_damage();
        }
        var_7c962084 = undefined;
        var_9da219f5 = gettime();
        while (self.bleedout_time > 0 || self isinexecutionvictim() && !is_true(self.var_1cc38de0)) {
            time = gettime();
            if (is_true(level.var_5bf4f34b) && var_cebeb781 && self usebuttonpressed() && !self is_being_revived() && !self function_72e0c544()) {
                if (!isdefined(var_7c962084)) {
                    var_7c962084 = time;
                }
                self.var_eb33efbc = 1;
                if (time >= var_7c962084 + var_cb141a23) {
                    self.bleedout_time -= var_93b9385d;
                    var_7c962084 = time;
                    var_9da219f5 += var_cb141a23;
                }
            } else if (time >= var_9da219f5) {
                self.bleedout_time -= 1;
                var_7c962084 = undefined;
                var_9da219f5 = time + int(1 * 1000);
            }
            self.var_2d19ce3c = self.bleedout_time / bleedouttime;
            if (self.var_d887a4ad !== 1) {
                self clientfield::set_player_uimodel("hudItems.laststand.progress", self.var_2d19ce3c);
            }
            self clientfield::set_player_uimodel("hudItems.laststand.cowardsWayBleedOut", self.var_eb33efbc ? 1 : 0);
            if (self buttonbitstate(var_1b4f5d73) && time - self.var_bcba8155 > int(3 * 1000)) {
                self battlechatter::play_dialog("laststandHelpCallout", 1);
                self.var_bcba8155 = time;
            }
            waitframe(1);
            var_cebeb781 |= !self usebuttonpressed();
            var_3e5a068a |= !self buttonbitstate(var_1b4f5d73);
            self.var_eb33efbc = 0;
            while (!is_true(self.var_1cc38de0) && (self is_being_revived() || self function_72e0c544())) {
                waitframe(1);
            }
        }
    }
    if (is_true(self.var_d887a4ad)) {
        return;
    }
    self notify(#"bled_out");
    self thread bleed_out();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x2ee01b4a, Offset: 0x4440
// Size: 0x4c
function laststand_invulnerability() {
    self endon(#"death");
    self enableinvulnerability();
    wait(level.var_5c13c13f);
    self disableinvulnerability();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x894d510d, Offset: 0x4498
// Size: 0x76
function function_6da86ae() {
    if (isdefined(self) && isdefined(self.laststandparams)) {
        if (!isdefined(self.laststandparams.attacker)) {
            self.laststandparams.attacker = self;
        }
        if (!isdefined(self.laststandparams.einflictor)) {
            self.laststandparams.einflictor = self.laststandparams.attacker;
        }
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x62e5d7f1, Offset: 0x4518
// Size: 0x4c
function function_64df6095() {
    self endon(#"death");
    while (self isinexecutionvictim()) {
        waitframe(1);
    }
    self bleed_out();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xd3f98524, Offset: 0x4570
// Size: 0x59c
function bleed_out() {
    self endon(#"player_revived", #"death");
    util::wait_network_frame();
    if (!isalive(self)) {
        return;
    }
    self function_2907ce7a();
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger delete();
        self.revivetrigger = undefined;
    }
    self clientfield::set("laststand_bleed", 0);
    demo::bookmark(#"player_bledout", gettime(), self, undefined, 1);
    potm::bookmark(#"player_bledout", gettime(), self, undefined, 1);
    level notify(#"bleed_out", {#character_index:self.characterindex});
    self notify(#"player_bleedout");
    callback::callback(#"on_player_bleedout");
    self undolaststand();
    self.uselaststandparams = 1;
    self function_6da86ae();
    assert(isdefined(self.laststandparams));
    if (!isdefined(self.laststandparams)) {
        return;
    }
    if (!is_true(self.var_1cc38de0)) {
        self.laststandparams.bledout = 1;
    }
    if (isdefined(self.var_d75a6ff5)) {
        self.var_d75a6ff5.death = is_true(self.var_1cc38de0);
        self.var_d75a6ff5.bleed_out = !self.var_d75a6ff5.death;
        self function_1e8018b0();
    }
    self function_2907ce7a();
    self val::reset(#"hash_4cddba4e2cb5f525", "disable_weapon_cycling");
    self val::reset(#"hash_4cddba4e2cb5f525", "disable_offhand_weapons");
    self val::reset(#"hash_4cddba4e2cb5f525", "disable_offhand_special");
    if (self isinexecutionvictim() && isdefined(self.var_a1d415ee)) {
        self bledout(self.var_a1d415ee.einflictor, self.laststandparams.attacker, self.var_a1d415ee.idamage, self.var_a1d415ee.smeansofdeath, self.laststandparams.weapon, self.laststandparams.var_fd90b0bb, self.laststandparams.vdir, self.laststandparams.shitloc);
    } else if (isdefined(self.laststandparams)) {
        self bledout(self.laststandparams.einflictor, self.laststandparams.attacker, self.laststandparams.idamage, self.laststandparams.smeansofdeath, self.laststandparams.weapon, self.laststandparams.var_fd90b0bb, self.laststandparams.vdir, self.laststandparams.shitloc);
    } else {
        return;
    }
    if (getdvarint(#"hash_62b8db0428755a32", 1) && isplayer(self)) {
        var_d7e063c = getdvarfloat(#"hash_44de9418bb6289ac", 1.5);
        self playsoundtoplayer(#"hash_11d39dca0f911535", self);
        self lui::screen_fade(var_d7e063c, 1, 0, "black", 0);
        wait(var_d7e063c + 0.2);
        self lui::screen_fade(var_d7e063c, 0, 1, "black", 0);
    }
    if (isdefined(self) && self.no_respawn !== 1) {
        self thread respawn_player_after_time(15);
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x5ffe1103, Offset: 0x4b18
// Size: 0xbc
function respawn_player_after_time(n_time_seconds) {
    self endon(#"death", #"disconnect");
    players = getplayers();
    if (players.size == 1) {
        return;
    }
    self waittill(#"spawned_spectator");
    level endon(#"objective_changed");
    wait(n_time_seconds);
    if (self.sessionstate == #"spectator") {
        self thread globallogic_spawn::waitandspawnclient();
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xf86f32bd, Offset: 0x4be0
// Size: 0x84
function function_2907ce7a() {
    self clientfield::set_player_uimodel("hudItems.laststand.progress", 0);
    self clientfield::set_player_uimodel("hudItems.laststand.reviveProgress", 0);
    self clientfield::set_player_uimodel("hudItems.laststand.beingRevived", 0);
    self clientfield::set_player_uimodel("hudItems.laststand.cowardsWayBleedOut", 0);
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xaa6d4ddc, Offset: 0x4c70
// Size: 0x1dc
function revive_trigger_spawn() {
    radius = getdvarint(#"revive_trigger_radius", 100);
    self.revivetrigger = spawn("trigger_radius", (0, 0, 0), 0, radius, radius);
    self.revivetrigger sethintstring("");
    self.revivetrigger setcursorhint("HINT_NOICON");
    self.revivetrigger setmovingplatformenabled(1);
    self.revivetrigger enablelinkto();
    self.revivetrigger.origin = self.origin;
    self.revivetrigger linkto(self);
    self.revivetrigger.beingrevived = 0;
    self.revivetrigger.createtime = gettime();
    self.revivetrigger.radius = radius;
    self.revivetrigger function_268e4500();
    if (!is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
        self.revivetrigger setteamfortrigger(self.team);
    } else {
        self.revivetrigger triggerignoreteam();
    }
    self thread revive_trigger_think();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xe9c1ba6a, Offset: 0x4e58
// Size: 0x538
function revive_trigger_think() {
    self endon(#"death", #"stop_revive_trigger");
    level endon(#"game_ended");
    while (true) {
        wait(0.1);
        if (!isdefined(self.revivetrigger)) {
            self notify(#"stop_revive_trigger");
        }
        self.revivetrigger sethintstring("");
        players = getplayers();
        for (i = 0; i < players.size; i++) {
            if (!is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
                if (players[i].team != self.team) {
                    continue;
                }
            }
            if (players[i] can_revive(self)) {
                if (!is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
                    self.revivetrigger setrevivehintstring(#"hash_51a0f083a5566a3", self.team);
                } else {
                    self.revivetrigger setrevivehintstring(#"hash_51a0f083a5566a3");
                }
                break;
            }
        }
        for (i = 0; i < players.size; i++) {
            reviver = players[i];
            if (!isdefined(reviver)) {
                continue;
            }
            if (!is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
                if (reviver.team != self.team) {
                    continue;
                }
            }
            if (self == reviver || !reviver is_reviving(self)) {
                continue;
            }
            if (isdefined(reviver.is_reviving_any) && reviver.is_reviving_any > 0) {
                continue;
            }
            var_6525e39a = reviver gestures::function_c77349d4("gestable_t9_stimshot_last_stand");
            if (reviver isgestureplaying(var_6525e39a)) {
                reviver stopgestureviewmodel(var_6525e39a, 0, 1);
            }
            reviver gestures::function_56e00fbf("gestable_t9_stimshot_last_stand");
            reviver val::set(#"laststand_revive", "disable_weapon_cycling", 1);
            reviver val::set(#"laststand_revive", "disable_offhand_weapons", 1);
            reviver val::set(#"laststand_revive", "disable_usability", 1);
            reviver val::set(#"laststand_revive", "disable_offhand_special", 1);
            reviver val::set("laststand_revive", "allow_movement", 0);
            revive_success = reviver revive_do_revive(self);
            if (isdefined(reviver)) {
                reviver function_92bfddb4();
            }
            if (revive_success === 1) {
                self thread revive_success(reviver);
                self function_2907ce7a();
                return;
            }
        }
        if (function_feb3e91d()) {
            foreach (team in level.teams) {
                if (team === self.team) {
                    continue;
                }
                if (function_356caede(team)) {
                    return;
                }
            }
        }
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0xe0a358b6, Offset: 0x5398
// Size: 0x722
function function_356caede(team) {
    if (!isdefined(self)) {
        return false;
    }
    if (function_a1ef346b(team).size == 0) {
        return false;
    }
    if (!isdefined(self.revivetrigger)) {
        return false;
    }
    players = getplayers(team, self.revivetrigger.origin, self.revivetrigger.radius);
    height = getdvarint(#"hash_48068f92d21e2a64", 15);
    foreach (player in players) {
        if (player can_revive(self, 1, height)) {
            self.revivetrigger setrevivehintstring(#"hash_a9213d7fcad1656", team);
            break;
        }
    }
    foreach (finisher in players) {
        if (self == finisher || !finisher is_reviving(self, 0, height) || finisher is_reviving_any() || is_true(finisher.var_5c574004)) {
            continue;
        }
        finisher increment_finishing();
        bundle_index = randomintrange(1, level.var_91c33dcb.finishers.size - 1);
        assert(level.var_91c33dcb.finishers.size >= bundle_index);
        var_abdbed5a = level.var_91c33dcb.finishers[bundle_index].("finisherbundle");
        var_d1d9820d = getscriptbundle(var_abdbed5a);
        if (isdefined(var_d1d9820d.("attacker_gesture"))) {
            finisher function_c6775cf9(var_d1d9820d.("attacker_gesture"));
        }
        if (isdefined(var_d1d9820d.("victim_gesture"))) {
            self function_c6775cf9(var_d1d9820d.("victim_gesture"));
        }
        self function_fab0e07e(finisher);
        if (!isdefined(finisher)) {
            return false;
        }
        if (!isdefined(self) || !isalive(self) || !isalive(finisher)) {
            finisher function_b16f016a();
            return false;
        }
        finisher val::set(#"hash_2835111320c7e9ec", "disable_weapon_cycling", 1);
        finisher val::set(#"hash_2835111320c7e9ec", "disable_offhand_weapons", 1);
        finisher val::set(#"hash_2835111320c7e9ec", "disable_usability", 1);
        finisher val::set(#"hash_2835111320c7e9ec", "disable_offhand_special", 1);
        self flag::clear(#"hash_40e3b09bdbcdac81");
        var_62728357 = finisher function_1c8cab15(self);
        if (isdefined(finisher)) {
            finisher function_b16f016a();
            finisher val::reset(#"hash_2835111320c7e9ec", "disable_weapon_cycling");
            finisher val::reset(#"hash_2835111320c7e9ec", "disable_offhand_weapons");
            finisher val::reset(#"hash_2835111320c7e9ec", "disable_usability");
            finisher val::reset(#"hash_2835111320c7e9ec", "disable_offhand_special");
            kill_angles = finisher gettagangles("tag_sync");
            kill_origin = finisher gettagorigin("tag_sync");
            if (isdefined(self)) {
                if (is_true(var_62728357)) {
                    self function_516a3bef(0);
                    self setplayerangles(kill_angles);
                    self setorigin(kill_origin);
                    self dodamage(self.var_969fabf4, self.origin, finisher, undefined, "none", "MOD_MELEE_ASSASSINATE", 8192);
                    self function_2907ce7a();
                    return true;
                } else {
                    self function_516a3bef(1);
                    self function_7c685040();
                }
            }
            finisher function_7c685040();
        }
    }
    return false;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xe56c6b87, Offset: 0x5ac8
// Size: 0x24
function increment_finishing() {
    if (!isdefined(self.var_5c574004)) {
        self.var_5c574004 = 0;
    }
    self.var_5c574004++;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x89340aba, Offset: 0x5af8
// Size: 0x4e
function function_b16f016a() {
    self.var_5c574004--;
    if (self.var_5c574004 < 0) {
        self.var_5c574004 = 0;
        return;
    }
    if (self.var_5c574004 > 99999) {
        self.var_5c574004 = 99999;
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x3721f58e, Offset: 0x5b50
// Size: 0xc4
function function_fab0e07e(finisher) {
    self endon(#"disconnect");
    finisher endon(#"disconnect");
    waitframe(1);
    if (isdefined(self) && isdefined(finisher) && isalive(self) && isalive(finisher)) {
        self.laststandparams.savedorigin = self.origin;
        self.laststandparams.savedangles = self.angles;
        self playerlinkto(finisher, "tag_sync");
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x60987907, Offset: 0x5c20
// Size: 0x84
function function_516a3bef(replace) {
    if (isalive(self) && function_feb3e91d()) {
        self unlink();
        if (replace) {
            self setorigin(self.laststandparams.savedorigin);
        }
    }
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x30539f60, Offset: 0x5cb0
// Size: 0xb6
function function_c82a14d1(finisher) {
    self endon(#"death", #"disconnect", #"finish_abort");
    finisher endon(#"death", #"disconnect");
    waitresult = self waittill(#"contact");
    self flag::set(#"hash_40e3b09bdbcdac81");
    self notify(#"player_finished");
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0xa9328b7f, Offset: 0x5d70
// Size: 0x170
function function_1c8cab15(var_b4bb7319) {
    var_b4bb7319 endon(#"disconnect");
    self endon(#"disconnect");
    var_b4bb7319.revivetrigger.beingfinished = 1;
    var_b4bb7319 thread function_c82a14d1(self);
    while (isdefined(var_b4bb7319) && isalive(var_b4bb7319) && isalive(self) && !self laststand::player_is_in_laststand() && var_b4bb7319 laststand::player_is_in_laststand() && !var_b4bb7319 flag::get(#"hash_40e3b09bdbcdac81") && !self is_reviving_any()) {
        waitframe(1);
    }
    if (isdefined(var_b4bb7319.revivetrigger)) {
        var_b4bb7319.revivetrigger.beingfinished = 0;
    }
    if (isdefined(var_b4bb7319) && var_b4bb7319 flag::get(#"hash_40e3b09bdbcdac81")) {
        return true;
    }
    return false;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x9c88aca9, Offset: 0x5ee8
// Size: 0x168
function function_92bfddb4() {
    if (!isdefined(self)) {
        return;
    }
    self stopgestureviewmodel(self gestures::function_c77349d4("gestable_t9_stimshot_last_stand"));
    self val::reset(#"laststand_revive", "disable_usability");
    self val::reset(#"laststand_revive", "disable_weapon_cycling");
    self val::reset(#"laststand_revive", "disable_offhand_weapons");
    self val::reset(#"laststand_revive", "disable_offhand_special");
    self val::set("laststand_revive", "allow_movement", 1);
    self.is_reviving_any--;
    if (self.is_reviving_any < 0) {
        self.is_reviving_any = 0;
    } else if (self.is_reviving_any > 99999) {
        self.is_reviving_any = 99999;
    }
    if (is_true(self.laststand)) {
        return;
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x7d2f988e, Offset: 0x6058
// Size: 0xa6
function function_c3249e8c() {
    assert(isplayer(self));
    players = getplayers(self.team);
    for (index = 0; index < players.size; index++) {
        if (players[index] == self) {
            continue;
        }
        if (self can_revive(players[index])) {
            return true;
        }
    }
    return false;
}

// Namespace laststand_mp/laststand
// Params 3, eflags: 0x2 linked
// Checksum 0xf5752ffc, Offset: 0x6108
// Size: 0x306
function can_revive(revivee, ignore_touch_checks = 0, height = undefined) {
    if (!isdefined(revivee.revivetrigger)) {
        return false;
    }
    if (!isalive(self)) {
        return false;
    }
    if (self laststand::player_is_in_laststand()) {
        return false;
    }
    if (self isinexecutionvictim() || revivee isinexecutionvictim()) {
        return false;
    }
    if (isdefined(level.can_revive) && ![[ level.can_revive ]](revivee)) {
        return false;
    }
    if (isdefined(level.var_1461fd14) && ![[ level.var_1461fd14 ]](revivee)) {
        return false;
    }
    if (isdefined(level.revive_trigger_should_ignore_sight_checks)) {
        ignore_sight_checks = [[ level.revive_trigger_should_ignore_sight_checks ]](self);
        if (ignore_sight_checks && isdefined(revivee.revivetrigger.beingrevived) && revivee.revivetrigger.beingrevived == 1) {
            ignore_touch_checks = 1;
        }
    }
    if (!ignore_touch_checks) {
        if (!self istouching(revivee.revivetrigger)) {
            return false;
        }
    }
    if (isdefined(height)) {
        delta = revivee.origin[2] - self.origin[2];
        if (delta > height || delta < height * -1) {
            return false;
        }
    }
    if (!self laststand::is_facing(revivee, 0.8)) {
        return false;
    }
    if (distancesquared(revivee.origin, self.origin) > sqr(140)) {
        return false;
    }
    if (!sighttracepassed(self.origin + (0, 0, 50), revivee.origin + (0, 0, 30), 0, undefined)) {
        return false;
    }
    if (!bullettracepassed(self.origin + (0, 0, 50), revivee.origin + (0, 0, 30), 0, undefined)) {
        return false;
    }
    return true;
}

// Namespace laststand_mp/laststand
// Params 3, eflags: 0x2 linked
// Checksum 0xd1627bed, Offset: 0x6418
// Size: 0xac
function is_reviving(revivee, ignore_touch_checks = 0, height = undefined) {
    if (!isdefined(self) || !isdefined(revivee)) {
        return false;
    }
    if (!isalive(revivee)) {
        return false;
    }
    if (!isdefined(revivee.revivetrigger)) {
        return false;
    }
    return self usebuttonpressed() && can_revive(revivee, ignore_touch_checks, height);
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x78cf5ad9, Offset: 0x64d0
// Size: 0x1a
function is_reviving_any() {
    return is_true(self.is_reviving_any);
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x827155e, Offset: 0x64f8
// Size: 0x5f2
function revive_do_revive(playerbeingrevived) {
    self endon(#"disconnect");
    if (!isdefined(playerbeingrevived)) {
        return 0;
    }
    assert(self is_reviving(playerbeingrevived));
    revivetime = getdvarfloat(#"g_revivetime", 3) * self function_bd85bc2f();
    timer = 0;
    revived = 0;
    playerbeingrevived clientfield::set_player_uimodel("hudItems.laststand.beingRevived", 1);
    playerbeingrevived.revivetrigger.beingrevived = 1;
    playerbeingrevived.revivetrigger sethintstring("");
    playerbeingrevived function_6bf621ea(#"hash_5b6f9e0c346eb0a", 2, int(revivetime * 1000), playerbeingrevived getentitynumber());
    if (isplayer(playerbeingrevived)) {
        playerbeingrevived startrevive(self);
    }
    self thread laststand_clean_up_on_interrupt(playerbeingrevived);
    if (!isdefined(self.is_reviving_any)) {
        self.is_reviving_any = 0;
    }
    self.is_reviving_any++;
    if (isdefined(playerbeingrevived.var_d75a6ff5)) {
        playerbeingrevived.var_d75a6ff5.var_d10f3b9a++;
    }
    self.reviving_player = playerbeingrevived;
    self clientfield::set_player_uimodel("hudItems.laststand.revivingClientNum", playerbeingrevived getentitynumber());
    while (self is_reviving(playerbeingrevived)) {
        if (self laststand::player_is_in_laststand() || self isinexecutionvictim() || playerbeingrevived isinexecutionvictim()) {
            playerbeingrevived.reviveprogress = 0;
            break;
        }
        if (is_true(playerbeingrevived.revivetrigger.auto_revive)) {
            playerbeingrevived.reviveprogress = 0;
            break;
        }
        playerbeingrevived.reviveprogress = min(timer / revivetime, 1);
        if (timer >= revivetime) {
            revived = 1;
            break;
        }
        self clientfield::set_player_uimodel("hudItems.laststand.reviveProgress", playerbeingrevived.reviveprogress);
        playerbeingrevived clientfield::set_player_uimodel("hudItems.laststand.reviveProgress", playerbeingrevived.reviveprogress);
        timer += float(function_60d95f53()) / 1000;
        waitframe(1);
    }
    self clientfield::set_player_uimodel("hudItems.laststand.reviveProgress", 0);
    playerbeingrevived clientfield::set_player_uimodel("hudItems.laststand.reviveProgress", 0);
    self clientfield::set_player_uimodel("hudItems.laststand.revivingClientNum", int(pow(2, 7) - 2));
    if (isdefined(playerbeingrevived) && playerbeingrevived laststand::player_is_in_laststand()) {
        playerbeingrevived clientfield::set_player_uimodel("hudItems.laststand.beingRevived", 0);
        playerbeingrevived.reviveprogress = 0;
        if (!is_true(playerbeingrevived.revivetrigger.auto_revive) && !revived) {
            playerbeingrevived function_6bf621ea(#"hash_c21960dae38833d", 1, playerbeingrevived getentitynumber());
            if (isplayer(playerbeingrevived)) {
                playerbeingrevived stoprevive(self);
            }
        }
        playerbeingrevived.revivetrigger sethintstring(#"hash_51a0f083a5566a3");
        playerbeingrevived.revivetrigger.beingrevived = 0;
        if (is_true(revived) && isdefined(level.var_f80fdd3f)) {
            [[ level.var_f80fdd3f ]](playerbeingrevived, self);
        }
    }
    self.reviving_player = undefined;
    self notify(#"do_revive_ended_normally");
    self.is_reviving_any--;
    if (self.is_reviving_any < 0) {
        self.is_reviving_any = 0;
    } else if (self.is_reviving_any > 99999) {
        self.is_reviving_any = 99999;
    }
    return revived;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xa9889f85, Offset: 0x6af8
// Size: 0x86
function function_d20a7e12() {
    var_51635501 = self gamepadusedlast() && self weaponswitchbuttonpressed();
    var_e317d01d = !self gamepadusedlast() && self meleebuttonpressed();
    return var_51635501 || var_e317d01d;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xfb25a99a, Offset: 0x6b88
// Size: 0x118
function function_8e3d5c84() {
    self endon(#"player_revived", #"disconnect", #"death");
    while (isalive(self) && self laststand::player_is_in_laststand()) {
        if (self function_d20a7e12() && !self isinexecutionvictim()) {
            success = self function_73d6c609();
            if (success) {
                self clientfield::set_player_uimodel("hud_items.selfReviveAvailable", 0);
                self thread revive_success(self, 0);
                self function_2907ce7a();
                return;
            }
        }
        waitframe(1);
    }
}

/#

    // Namespace laststand_mp/laststand
    // Params 0, eflags: 0x0
    // Checksum 0x53648d97, Offset: 0x6ca8
    // Size: 0xf0
    function function_64bea7b1() {
        self endon(#"player_revived", #"disconnect", #"death");
        wait(getdvarint(#"hash_4fc41e7721e32d59", 1));
        while (isalive(self) && self laststand::player_is_in_laststand()) {
            success = self function_73d6c609();
            if (success) {
                self thread revive_success(self, 0);
                self function_2907ce7a();
                return;
            }
            waitframe(1);
        }
    }

#/

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x6f999e98, Offset: 0x6da0
// Size: 0x592
function function_73d6c609() {
    self endon(#"disconnect");
    self playgestureviewmodel("ges_t9_self_revive_last_stand");
    revivetime = getdvarfloat(#"g_revivetime", 3) * self function_bd85bc2f();
    timer = 0;
    revived = 0;
    self clientfield::set_player_uimodel("hudItems.laststand.beingRevived", 1);
    self clientfield::set_to_player("isSelfReviving", 1);
    self.revivetrigger.beingrevived = 1;
    self.revivetrigger sethintstring("");
    self function_6bf621ea(#"hash_5b6f9e0c346eb0a", 2, int(revivetime * 1000), self getentitynumber());
    if (isplayer(self)) {
        self startrevive(self);
    }
    self thread laststand_clean_up_on_interrupt(self);
    if (isdefined(self.var_d75a6ff5)) {
        self.var_d75a6ff5.var_d10f3b9a++;
    }
    self.reviving_player = self;
    self clientfield::set_player_uimodel("hudItems.laststand.revivingClientNum", self getentitynumber());
    while (isalive(self) && self laststand::player_is_in_laststand() && (self function_d20a7e12() || isbot(self))) {
        if (self isinexecutionvictim()) {
            self.reviveprogress = 0;
            break;
        }
        if (is_true(self.revivetrigger.auto_revive)) {
            self.reviveprogress = 0;
            break;
        }
        self.reviveprogress = min(timer / revivetime, 1);
        if (timer >= revivetime) {
            revived = 1;
            break;
        }
        self clientfield::set_player_uimodel("hudItems.laststand.reviveProgress", self.reviveprogress);
        timer += float(function_60d95f53()) / 1000;
        waitframe(1);
    }
    self clientfield::set_player_uimodel("hudItems.laststand.reviveProgress", 0);
    self clientfield::set_player_uimodel("hudItems.laststand.revivingClientNum", int(pow(2, 7) - 2));
    self clientfield::set_player_uimodel("hudItems.laststand.beingRevived", 0);
    self clientfield::set_to_player("isSelfReviving", 0);
    self.reviveprogress = 0;
    if (!is_true(self.revivetrigger.auto_revive) && !revived) {
        self function_6bf621ea(#"hash_c21960dae38833d", 1, self getentitynumber());
        if (isplayer(self)) {
            self stoprevive(self);
        }
    }
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger sethintstring(#"hash_51a0f083a5566a3");
        self.revivetrigger.beingrevived = 0;
        if (is_true(revived) && isdefined(level.var_f80fdd3f)) {
            [[ level.var_f80fdd3f ]](self, self);
        }
    }
    self.reviving_player = undefined;
    if (revived) {
        self stopgestureviewmodel("ges_t9_self_revive_last_stand");
    } else {
        self stopgestureviewmodel("ges_t9_self_revive_last_stand", 0, 1);
    }
    self notify(#"do_revive_ended_normally");
    return revived;
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x19188f07, Offset: 0x7340
// Size: 0x74
function auto_revive_on_notify() {
    self endon(#"death", #"disconnect", #"player_revived");
    waitresult = self waittill(#"auto_revive");
    auto_revive(waitresult.reviver);
}

// Namespace laststand_mp/laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x1c02d0ed, Offset: 0x73c0
// Size: 0x1ae
function auto_revive(reviver) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"disconnect");
    self.var_d887a4ad = 1;
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger.auto_revive = 1;
        while (is_true(self.revivetrigger.beingrevived)) {
            util::wait_network_frame();
        }
        self.revivetrigger.auto_trigger = 0;
    }
    self function_102748f8();
    if (!isdefined(self)) {
        return;
    }
    self reviveplayer();
    self.var_d887a4ad = undefined;
    self notify(#"stop_revive_trigger");
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger delete();
        self.revivetrigger = undefined;
    }
    self function_2907ce7a();
    self laststand_enable_player_weapons();
    self allowjump(1);
    self.laststand = undefined;
    self lui::screen_close_menu();
    self notify(#"player_revived", {#reviver:reviver});
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x63e2fcb1, Offset: 0x7578
// Size: 0x3bc
function revive_success(reviver, b_track_stats = 1) {
    self.var_156bf46e = undefined;
    if (!isplayer(self)) {
        self notify(#"player_revived", {#reviver:reviver});
        return;
    }
    if (self isgestureplaying("ges_t9_self_revive_last_stand")) {
        self stopgestureviewmodel("ges_t9_self_revive_last_stand");
    }
    self function_102748f8();
    self.var_d887a4ad = 1;
    if (!isdefined(self)) {
        return;
    }
    if (is_true(b_track_stats)) {
        demo::bookmark(#"player_revived", gettime(), reviver, self);
        potm::bookmark(#"player_revived", gettime(), reviver, self);
    }
    if (isplayer(self)) {
        self allowjump(1);
    }
    self.laststand = undefined;
    self notify(#"player_revived", {#reviver:reviver});
    self reviveplayer();
    self.var_d887a4ad = undefined;
    health = getgametypesetting(#"laststandrevivehealth");
    if (isdefined(reviver)) {
        var_e705e073 = reviver function_15098882();
        if (var_e705e073 > 0) {
            health = var_e705e073;
        }
        if (!function_7e980623(reviver, self) && self.var_db459f8d !== 1 && reviver != self) {
            reviver scoreevents::processscoreevent(#"revived_teammate", reviver, self);
            reviver stats::function_dad108fa(#"hash_34001d400c0aa7bb", 1);
        }
    }
    self.health = health;
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger delete();
        self.revivetrigger = undefined;
    }
    self clientfield::set("laststand_bleed", 0);
    self function_2907ce7a();
    self laststand_enable_player_weapons();
    self lui::screen_close_menu();
    self function_1e8018b0();
    callback::callback(#"on_player_revived");
    if (isdefined(level.var_1a0c2b72)) {
        reviver [[ level.var_1a0c2b72 ]](self);
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x2dd086f2, Offset: 0x7940
// Size: 0x294
function revive_hud_think() {
    level endon(#"game_ended");
    while (true) {
        wait(0.1);
        if (!laststand::player_any_player_in_laststand()) {
            continue;
        }
        revived = 0;
        foreach (team, _ in level.teams) {
            playertorevive = undefined;
            foreach (player in function_a1ef346b(team)) {
                if (!isdefined(player.revivetrigger) || !isdefined(player.revivetrigger.createtime)) {
                    continue;
                }
                if (!isdefined(playertorevive) || playertorevive.revivetrigger.createtime > player.revivetrigger.createtime) {
                    playertorevive = player;
                }
            }
            if (isdefined(playertorevive)) {
                foreach (player in function_a1ef346b(team)) {
                    if (player laststand::player_is_in_laststand()) {
                        continue;
                    }
                    player thread faderevivemessageover(playertorevive, 3);
                }
                playertorevive.revivetrigger.createtime = undefined;
                revived = 1;
            }
        }
        if (revived) {
            wait(3.5);
        }
    }
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0xa71459b2, Offset: 0x7be0
// Size: 0x3c
function faderevivemessageover(playertorevive, time) {
    self thread laststand::revive_hud_show_n_fade(#"hash_14cc93f11ba8334a", time, playertorevive);
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x4384ba46, Offset: 0x7c28
// Size: 0xf6
function function_ecdd4b27() {
    if (!isplayer(self) || isdefined(self.var_d75a6ff5)) {
        return;
    }
    self.var_d75a6ff5 = {#player_xuid:int(self getxuid(1)), #start_time:gettime(), #end_time:0, #damage:0, #death:0, #bleed_out:0, #var_d10f3b9a:0, #var_d733f8d7:0, #var_35b89428:0};
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xd6f905c5, Offset: 0x7d28
// Size: 0x384
function function_1e8018b0() {
    if (!isplayer(self) || !isdefined(self.var_d75a6ff5)) {
        return;
    }
    self.var_d75a6ff5.end_time = gettime();
    function_92d1707f(#"hash_142816c2e7c5da66", self.var_d75a6ff5);
    self.var_d75a6ff5 = undefined;
    if (!isdefined(level.var_dea23a93[self.team])) {
        level.var_dea23a93[self.team] = 0;
    }
    if (is_true(getgametypesetting("enableSpyModeLaststandTeamOverride"))) {
        playercounts = 0;
        foreach (player in function_a1ef346b()) {
            level.var_dea23a93[player.team]--;
        }
        var_9b6c9b51 = level.var_dea23a93[self.team];
        return;
    }
    level.var_dea23a93[self.team]--;
    var_9b6c9b51 = level.var_dea23a93[self.team];
    foreach (player in getplayers(self.team)) {
        player clientfield::set_player_uimodel("PlayerTeamLastLivesData.numPlayersDowned", var_9b6c9b51);
    }
    foreach (team, count in level.var_ead46974) {
        if (!util::function_fbce7263(team, self.team)) {
            continue;
        }
        count--;
        level.var_ead46974[team] = count;
        foreach (player in getplayers(team)) {
            player clientfield::set_player_uimodel("EnemyTeamLastLivesData.numPlayersDowned", count);
        }
    }
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x8c34f0a9, Offset: 0x80b8
// Size: 0x6a
function function_b394486e() {
    self.var_d292d803 = spawnstruct();
    self.var_d292d803.cheating = 0;
    self.var_d292d803.downs = array();
    self.var_d292d803.revives = array();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x24e0bab2, Offset: 0x8130
// Size: 0x22
function is_cheating() {
    if (!isdefined(self.var_d292d803)) {
        return 0;
    }
    return self.var_d292d803.cheating;
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x1d55900b, Offset: 0x8160
// Size: 0x3da
function function_7afe7d1e(attacker, victim) {
    if (!isdefined(level.var_57e7d5a) || level.var_57e7d5a == 0) {
        return 0;
    }
    if (!isdefined(attacker.var_d292d803)) {
        attacker function_b394486e();
    } else if (attacker is_cheating()) {
        return 1;
    }
    if (!isdefined(attacker.var_d292d803.downs[victim.entnum])) {
        attacker.var_d292d803.downs[victim.entnum] = array();
        if (!isdefined(attacker.var_d292d803.downs[victim.entnum])) {
            attacker.var_d292d803.downs[victim.entnum] = [];
        } else if (!isarray(attacker.var_d292d803.downs[victim.entnum])) {
            attacker.var_d292d803.downs[victim.entnum] = array(attacker.var_d292d803.downs[victim.entnum]);
        }
        attacker.var_d292d803.downs[victim.entnum][attacker.var_d292d803.downs[victim.entnum].size] = gettime();
        return 0;
    }
    if (!isdefined(attacker.var_d292d803.downs[victim.entnum])) {
        attacker.var_d292d803.downs[victim.entnum] = [];
    } else if (!isarray(attacker.var_d292d803.downs[victim.entnum])) {
        attacker.var_d292d803.downs[victim.entnum] = array(attacker.var_d292d803.downs[victim.entnum]);
    }
    attacker.var_d292d803.downs[victim.entnum][attacker.var_d292d803.downs[victim.entnum].size] = gettime();
    numdowns = attacker.var_d292d803.downs[victim.entnum].size;
    if (numdowns < level.var_57e7d5a) {
        return 0;
    }
    var_1053d9e9 = attacker.var_d292d803.downs[victim.entnum][numdowns - 1];
    var_6ab74732 = attacker.var_d292d803.downs[victim.entnum][numdowns - level.var_57e7d5a];
    if (var_1053d9e9 - var_6ab74732 <= int(60 * 1000)) {
        attacker.var_d292d803.cheating = 1;
        attacker.var_d292d803.downs = undefined;
        attacker.var_d292d803.revives = undefined;
    }
    return attacker is_cheating();
}

// Namespace laststand_mp/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x9c9eeaee, Offset: 0x8548
// Size: 0x3da
function function_7e980623(reviver, victim) {
    if (!isdefined(level.var_b5087de4) || level.var_b5087de4 == 0) {
        return 0;
    }
    if (!isdefined(reviver.var_d292d803)) {
        reviver function_b394486e();
    } else if (reviver is_cheating()) {
        return 1;
    }
    if (!isdefined(reviver.var_d292d803.revives[victim.entnum])) {
        reviver.var_d292d803.revives[victim.entnum] = array();
        if (!isdefined(reviver.var_d292d803.revives[victim.entnum])) {
            reviver.var_d292d803.revives[victim.entnum] = [];
        } else if (!isarray(reviver.var_d292d803.revives[victim.entnum])) {
            reviver.var_d292d803.revives[victim.entnum] = array(reviver.var_d292d803.revives[victim.entnum]);
        }
        reviver.var_d292d803.revives[victim.entnum][reviver.var_d292d803.revives[victim.entnum].size] = gettime();
        return 0;
    }
    if (!isdefined(reviver.var_d292d803.revives[victim.entnum])) {
        reviver.var_d292d803.revives[victim.entnum] = [];
    } else if (!isarray(reviver.var_d292d803.revives[victim.entnum])) {
        reviver.var_d292d803.revives[victim.entnum] = array(reviver.var_d292d803.revives[victim.entnum]);
    }
    reviver.var_d292d803.revives[victim.entnum][reviver.var_d292d803.revives[victim.entnum].size] = gettime();
    numrevives = reviver.var_d292d803.revives[victim.entnum].size;
    if (numrevives < level.var_b5087de4) {
        return 0;
    }
    var_1053d9e9 = reviver.var_d292d803.revives[victim.entnum][numrevives - 1];
    var_6ab74732 = reviver.var_d292d803.revives[victim.entnum][numrevives - level.var_b5087de4];
    if (var_1053d9e9 - var_6ab74732 <= int(60 * 1000)) {
        reviver.var_d292d803.cheating = 1;
        reviver.var_d292d803.downs = undefined;
        reviver.var_d292d803.revives = undefined;
    }
    return reviver is_cheating();
}

// Namespace laststand_mp/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xa85e2d64, Offset: 0x8930
// Size: 0x42
function function_7e714b6a() {
    if (!isplayer(self)) {
        assert(0);
        return;
    }
    self.laststandcount = 0;
}

