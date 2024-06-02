// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.csc;
#using scripts\killstreaks\killstreak_bundles.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace killstreak_detect;

// Namespace killstreak_detect/killstreak_detect
// Params 0, eflags: 0x5
// Checksum 0x5575f5a5, Offset: 0x1a8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"killstreak_detect", &init_shared, undefined, undefined, #"killstreaks");
}

// Namespace killstreak_detect/killstreak_detect
// Params 0, eflags: 0x2 linked
// Checksum 0x43f8f517, Offset: 0x1f8
// Size: 0x29c
function init_shared() {
    if (!isdefined(level.var_c662dc2d)) {
        level.var_c662dc2d = {};
        callback::on_localplayer_spawned(&watch_killstreak_detect_perks_changed);
        clientfield::register("scriptmover", "enemyvehicle", 1, 2, "int", &enemyscriptmovervehicle_changed, 0, 0);
        clientfield::register("vehicle", "enemyvehicle", 1, 2, "int", &enemyvehicle_changed, 0, 1);
        clientfield::register("missile", "enemyvehicle", 1, 2, "int", &enemymissilevehicle_changed, 0, 1);
        clientfield::register("actor", "enemyvehicle", 1, 2, "int", &function_430c370a, 0, 1);
        clientfield::register("vehicle", "vehicletransition", 1, 1, "int", &vehicle_transition, 0, 1);
        if (!isdefined(level.enemyvehicles)) {
            level.enemyvehicles = [];
        }
        if (!isdefined(level.enemymissiles)) {
            level.enemymissiles = [];
        }
        if (!isdefined(level.var_51afeae4)) {
            level.var_51afeae4 = [];
        }
        level.emp_killstreaks = [];
        if (false) {
            renderoverridebundle::function_f72f089c(#"hash_7d4b6b0d84ddafa3", #"friendly", sessionmodeiscampaigngame() ? #"rob_sonar_set_friendlyequip_cp" : #"rob_sonar_set_friendlyequip_mp", &function_95f96f3e);
        }
        function_8ac48939(level.killstreakcorebundle);
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 3, eflags: 0x2 linked
// Checksum 0xa69067ba, Offset: 0x4a0
// Size: 0xf2
function function_95f96f3e(local_client_num, *bundle, *param) {
    if (!self function_e9fc6a64()) {
        return false;
    }
    if (codcaster::function_b8fe9b52(param)) {
        return false;
    }
    if (self.type === "vehicle" && self function_979020fe()) {
        return false;
    }
    if (isdefined(level.vision_pulse) && is_true(level.vision_pulse[param])) {
        return false;
    }
    player = function_5c10bd79(param);
    if (self == player) {
        return false;
    }
    return true;
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0x42e64ef7, Offset: 0x5a0
// Size: 0x114
function function_7181329a(entity) {
    if (isplayer(entity)) {
        return false;
    }
    if (entity.type != "missile" && entity.type != "vehicle" && entity.type != "scriptmover" && entity.type != "actor") {
        return false;
    }
    if (self clientfield::get("enemyvehicle") != 0) {
        return true;
    }
    if (entity.type != "actor" && self.type !== "vehicle" && self clientfield::get("enemyequip") != 0) {
        return true;
    }
    return false;
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0x92f5c381, Offset: 0x6c0
// Size: 0x116
function function_d63aa49b(local_client_num, *bundle) {
    if (self function_e9fc6a64()) {
        return false;
    }
    if (codcaster::function_b8fe9b52(bundle)) {
        return false;
    }
    if (self.type === "vehicle") {
        if (self function_4add50a7()) {
            return false;
        }
        if (!isvehicleoccupied(bundle, self)) {
            return false;
        }
    }
    if (self.isbreachingfirewall === 1) {
        return false;
    }
    player = function_5c10bd79(bundle);
    if (player.var_33b61b6f === 1 && self flag::get(#"enemy") !== 1) {
        return true;
    }
    return false;
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0xa60aff0d, Offset: 0x7e0
// Size: 0xf8
function function_903bbed3(local_client_num, *bundle) {
    if (self function_e9fc6a64()) {
        return false;
    }
    if (codcaster::function_b8fe9b52(bundle)) {
        return false;
    }
    if (self.type === "vehicle" && self function_4add50a7()) {
        return false;
    }
    if (isdefined(self.isbreachingfirewall) && self.isbreachingfirewall == 1) {
        return false;
    }
    if (function_5778f82(bundle, #"specialty_showenemyvehicles") && !isplayer(self) && function_7181329a(self)) {
        return true;
    }
    return false;
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0x9139cbe5, Offset: 0x8e0
// Size: 0x224
function function_d859c344(local_client_num, *newval) {
    if (self.weapon.name === #"uav" || self.weapon.name === #"counteruav") {
        var_fd9de919 = function_9b3f0ed1(newval);
        if (self.team === var_fd9de919) {
            return;
        }
    }
    bundle = self killstreak_bundles::function_48e9536e();
    if (!isdefined(bundle)) {
        bundle = level.killstreakcorebundle;
    }
    if (isdefined(bundle)) {
        show_friendly = bundle.("ksROBShowFriendly");
        if (is_true(show_friendly) && false) {
            self renderoverridebundle::function_c8d97b8e(newval, #"friendly", bundle.var_d3413870 + "friendly");
        }
        show_enemy = bundle.("ksROBShowEnemy");
        if (is_true(show_enemy)) {
            self renderoverridebundle::function_c8d97b8e(newval, #"enemy", bundle.var_d3413870 + "enemy");
        }
    } else if (false) {
        self renderoverridebundle::function_c8d97b8e(newval, #"friendly", #"hash_7d4b6b0d84ddafa3");
    }
    self renderoverridebundle::function_c8d97b8e(newval, #"rob_sonar_set_enemy", #"hash_6a966793a191bc8c");
}

// Namespace killstreak_detect/killstreak_detect
// Params 7, eflags: 0x2 linked
// Checksum 0xd3349cce, Offset: 0xb10
// Size: 0x84
function vehicle_transition(local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    function_d859c344(local_client_num, newval);
    if (isdefined(level.var_7cc76271)) {
        [[ level.var_7cc76271 ]](local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0xb7a4b712, Offset: 0xba0
// Size: 0x44
function should_set_compass_icon(local_client_num) {
    return self function_ca024039() || function_5778f82(local_client_num, #"specialty_showenemyvehicles");
}

// Namespace killstreak_detect/killstreak_detect
// Params 7, eflags: 0x2 linked
// Checksum 0xa971f51, Offset: 0xbf0
// Size: 0xd4
function enemyscriptmovervehicle_changed(local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    if (isdefined(level.scriptmovercompassicons) && isdefined(self.model)) {
        if (isdefined(level.scriptmovercompassicons[self.model])) {
            if (self should_set_compass_icon(local_client_num)) {
                self setcompassicon(level.scriptmovercompassicons[self.model]);
            }
        }
    }
    enemyvehicle_changed(local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
}

// Namespace killstreak_detect/killstreak_detect
// Params 7, eflags: 0x2 linked
// Checksum 0xf7151cb7, Offset: 0xcd0
// Size: 0xd4
function enemymissilevehicle_changed(local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    if (isdefined(level.missilecompassicons) && isdefined(self.weapon)) {
        if (isdefined(level.missilecompassicons[self.weapon])) {
            if (self should_set_compass_icon(local_client_num)) {
                self setcompassicon(level.missilecompassicons[self.weapon]);
            }
        }
    }
    enemymissile_changed(local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
}

// Namespace killstreak_detect/killstreak_detect
// Params 7, eflags: 0x2 linked
// Checksum 0x30c9a078, Offset: 0xdb0
// Size: 0x74
function enemymissile_changed(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self updateteammissiles(fieldname, bwastimejump);
    self util::add_remove_list(level.enemymissiles, bwastimejump);
}

// Namespace killstreak_detect/killstreak_detect
// Params 7, eflags: 0x2 linked
// Checksum 0x6122c093, Offset: 0xe30
// Size: 0x1a4
function enemyvehicle_changed(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(level.draftstage) && (level.draftstage > 0 || is_true(level.var_8c099032))) {
        self function_d05902d9(fieldname, bwastimejump);
        return;
    }
    self updateteamvehicles(fieldname, bwastimejump);
    self util::add_remove_list(level.enemyvehicles, bwastimejump);
    self updateenemyvehicles(fieldname, bwastimejump);
    if (isdefined(self.model) && self.model == "wpn_t7_turret_emp_core" && self.type === "vehicle") {
        if (!isdefined(level.emp_killstreaks)) {
            level.emp_killstreaks = [];
        } else if (!isarray(level.emp_killstreaks)) {
            level.emp_killstreaks = array(level.emp_killstreaks);
        }
        level.emp_killstreaks[level.emp_killstreaks.size] = self;
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 7, eflags: 0x2 linked
// Checksum 0x69da88b9, Offset: 0xfe0
// Size: 0xd4
function function_430c370a(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(level.draftstage) && (level.draftstage > 0 || is_true(level.var_8c099032))) {
        self function_f27ffe49(fieldname, bwastimejump);
        return;
    }
    self util::add_remove_list(level.var_51afeae4, bwastimejump);
    self function_f884010a(fieldname, bwastimejump);
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0x4a16a5a0, Offset: 0x10c0
// Size: 0x2c
function updateteamvehicles(local_client_num, *newval) {
    self checkteamvehicles(newval);
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0xb62ea5d0, Offset: 0x10f8
// Size: 0x2c
function updateteammissiles(local_client_num, *newval) {
    self checkteammissiles(newval);
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0x76c7d632, Offset: 0x1130
// Size: 0x34
function function_f884010a(local_client_num, newval) {
    if (!isdefined(self)) {
        return;
    }
    function_d859c344(local_client_num, newval);
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0xf3711e50, Offset: 0x1170
// Size: 0x34
function updateenemyvehicles(local_client_num, newval) {
    if (!isdefined(self)) {
        return;
    }
    function_d859c344(local_client_num, newval);
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0x2a7475e6, Offset: 0x11b0
// Size: 0x34
function updateenemymissiles(local_client_num, newval) {
    if (!isdefined(self)) {
        return;
    }
    function_d859c344(local_client_num, newval);
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0x8c3302f5, Offset: 0x11f0
// Size: 0x176
function watch_killstreak_detect_perks_changed(local_client_num) {
    if (!self function_21c0fa55()) {
        return;
    }
    self notify(#"watch_killstreak_detect_perks_changed");
    self endon(#"watch_killstreak_detect_perks_changed");
    self endon(#"death");
    self endon(#"disconnect");
    while (isdefined(self)) {
        waitframe(1);
        util::clean_deleted(level.var_51afeae4);
        util::clean_deleted(level.enemyvehicles);
        util::clean_deleted(level.enemymissiles);
        array::thread_all(level.var_51afeae4, &function_f884010a, local_client_num, 1);
        array::thread_all(level.enemyvehicles, &updateenemyvehicles, local_client_num, 1);
        array::thread_all(level.enemymissiles, &updateenemymissiles, local_client_num, 1);
        self waittill(#"perks_changed");
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0x5621b82a, Offset: 0x1370
// Size: 0x13e
function checkteamvehicles(localclientnum) {
    if (!isdefined(self.owner) || !isdefined(self.owner.team)) {
        return;
    }
    if (!isdefined(self.vehicleoldteam)) {
        self.vehicleoldteam = self.team;
    }
    if (!isdefined(self.vehicleoldownerteam)) {
        self.vehicleoldownerteam = self.owner.team;
    }
    var_fd9de919 = function_9b3f0ed1(localclientnum);
    if (!isdefined(self.vehicleoldwatcherteam)) {
        self.vehicleoldwatcherteam = var_fd9de919;
    }
    if (self.vehicleoldteam != self.team || self.vehicleoldownerteam != self.owner.team || self.vehicleoldwatcherteam != var_fd9de919) {
        self.vehicleoldteam = self.team;
        self.vehicleoldownerteam = self.owner.team;
        self.vehicleoldwatcherteam = var_fd9de919;
        self notify(#"team_changed");
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0x6507c99a, Offset: 0x14b8
// Size: 0x13e
function checkteammissiles(localclientnum) {
    if (!isdefined(self.owner) || !isdefined(self.owner.team)) {
        return;
    }
    if (!isdefined(self.missileoldteam)) {
        self.missileoldteam = self.team;
    }
    if (!isdefined(self.missileoldownerteam)) {
        self.missileoldownerteam = self.owner.team;
    }
    var_fd9de919 = function_9b3f0ed1(localclientnum);
    if (!isdefined(self.missileoldwatcherteam)) {
        self.missileoldwatcherteam = var_fd9de919;
    }
    if (self.missileoldteam != self.team || self.missileoldownerteam != self.owner.team || self.missileoldwatcherteam != var_fd9de919) {
        self.missileoldteam = self.team;
        self.missileoldownerteam = self.owner.team;
        self.missileoldwatcherteam = var_fd9de919;
        self notify(#"team_changed");
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0x84e0738d, Offset: 0x1600
// Size: 0x12c
function function_8ac48939(bundle) {
    show_friendly = bundle.("ksROBShowFriendly");
    if (is_true(show_friendly)) {
        renderoverridebundle::function_f72f089c(bundle.var_d3413870 + "friendly", bundle.("ksROBFriendly"), &function_95f96f3e);
    }
    show_enemy = bundle.("ksROBShowEnemy");
    if (is_true(show_enemy)) {
        renderoverridebundle::function_f72f089c(bundle.var_d3413870 + "enemy", bundle.("ksROBEnemy"), &function_903bbed3);
    }
    renderoverridebundle::function_f72f089c(#"hash_6a966793a191bc8c", #"rob_sonar_set_enemy", &function_d63aa49b);
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x6 linked
// Checksum 0x982c6085, Offset: 0x1738
// Size: 0x12a
function private function_d05902d9(local_client_num, newval) {
    if (!isdefined(level.var_b1dca2fb)) {
        level.var_b1dca2fb = [];
    }
    if (!isdefined(level.var_b1dca2fb[local_client_num])) {
        level.var_b1dca2fb[local_client_num] = [];
    }
    var_55251088 = spawnstruct();
    var_55251088.vehicle = self;
    var_55251088.newval = newval;
    if (!isdefined(level.var_b1dca2fb[local_client_num])) {
        level.var_b1dca2fb[local_client_num] = [];
    } else if (!isarray(level.var_b1dca2fb[local_client_num])) {
        level.var_b1dca2fb[local_client_num] = array(level.var_b1dca2fb[local_client_num]);
    }
    level.var_b1dca2fb[local_client_num][level.var_b1dca2fb[local_client_num].size] = var_55251088;
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0x7dcfac9f, Offset: 0x1870
// Size: 0x142
function function_32c8b999(local_client_num) {
    if (!isdefined(level.var_b1dca2fb) || !isdefined(level.var_b1dca2fb[local_client_num])) {
        return;
    }
    for (i = level.var_b1dca2fb[local_client_num].size - 1; i >= 0; i--) {
        vehicle = level.var_b1dca2fb[local_client_num][i].vehicle;
        newval = level.var_b1dca2fb[local_client_num][i].newval;
        if (isdefined(vehicle) && isalive(vehicle)) {
            vehicle enemyvehicle_changed(local_client_num, undefined, newval);
        }
        level.var_b1dca2fb[local_client_num][i] = undefined;
    }
    arrayremoveindex(level.var_b1dca2fb, local_client_num);
    if (level.var_b1dca2fb.size == 0) {
        level.var_b1dca2fb = undefined;
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x6 linked
// Checksum 0x95a68646, Offset: 0x19c0
// Size: 0x12a
function private function_f27ffe49(local_client_num, newval) {
    if (!isdefined(level.inserted_pop_)) {
        level.inserted_pop_ = [];
    }
    if (!isdefined(level.inserted_pop_[local_client_num])) {
        level.inserted_pop_[local_client_num] = [];
    }
    var_a87a8991 = spawnstruct();
    var_a87a8991.actor = self;
    var_a87a8991.newval = newval;
    if (!isdefined(level.inserted_pop_[local_client_num])) {
        level.inserted_pop_[local_client_num] = [];
    } else if (!isarray(level.inserted_pop_[local_client_num])) {
        level.inserted_pop_[local_client_num] = array(level.inserted_pop_[local_client_num]);
    }
    level.inserted_pop_[local_client_num][level.inserted_pop_[local_client_num].size] = var_a87a8991;
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x2 linked
// Checksum 0x7bcddc7b, Offset: 0x1af8
// Size: 0x142
function function_3eff7815(local_client_num) {
    if (!isdefined(level.inserted_pop_) || !isdefined(level.inserted_pop_[local_client_num])) {
        return;
    }
    for (i = level.inserted_pop_[local_client_num].size - 1; i >= 0; i--) {
        actor = level.inserted_pop_[local_client_num][i].actor;
        newval = level.inserted_pop_[local_client_num][i].newval;
        if (isdefined(actor) && isalive(actor)) {
            actor function_430c370a(local_client_num, undefined, newval);
        }
        level.inserted_pop_[local_client_num][i] = undefined;
    }
    arrayremoveindex(level.inserted_pop_, local_client_num);
    if (level.inserted_pop_.size == 0) {
        level.inserted_pop_ = undefined;
    }
}

