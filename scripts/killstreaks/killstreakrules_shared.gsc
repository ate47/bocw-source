// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;

#namespace killstreakrules;

// Namespace killstreakrules/killstreakrules_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x93fd3d04, Offset: 0xd8
// Size: 0xb8
function init_shared() {
    val::register(#"killstreaksdisabled", 1, "$self", &function_4a433a3f, "$value");
    if (!isdefined(level.var_ef447a73)) {
        level.var_ef447a73 = {};
        level.killstreakrules = [];
        level.killstreaktype = [];
        level.var_dcc3befb = [];
        level.killstreaks_triggered = [];
        level.matchrecorderkillstreakkills = [];
        if (!isdefined(level.globalkillstreakscalled)) {
            level.globalkillstreakscalled = 0;
        }
    }
}

// Namespace killstreakrules/killstreakrules_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf510b83, Offset: 0x198
// Size: 0x24
function function_4a433a3f(value) {
    self function_fe89725a(value);
}

// Namespace killstreakrules/killstreakrules_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x28fd198c, Offset: 0x1c8
// Size: 0x132
function createrule(rule, maxallowable, maxallowableperteam, var_11c5ecfd, var_5b7d134, var_cc6f8ade) {
    level.killstreakrules[rule] = spawnstruct();
    level.killstreakrules[rule].cur = 0;
    level.killstreakrules[rule].curteam = [];
    level.killstreakrules[rule].max = maxallowable;
    level.killstreakrules[rule].maxperteam = maxallowableperteam;
    level.killstreakrules[rule].var_11c5ecfd = var_11c5ecfd;
    if (isdefined(var_11c5ecfd) && var_11c5ecfd != 0) {
        level.killstreakrules[rule].var_62a7c0b4 = var_5b7d134;
        level.killstreakrules[rule].var_ee52fece = var_cc6f8ade;
        level.killstreakrules[rule].var_8c2bb724 = [];
    }
}

// Namespace killstreakrules/killstreakrules_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xd388dc0f, Offset: 0x308
// Size: 0x12c
function addkillstreaktorule(killstreak, rule, counttowards, checkagainst, inventoryvariant) {
    if (!isdefined(level.killstreaktype[killstreak])) {
        level.killstreaktype[killstreak] = [];
    }
    assert(isdefined(level.killstreakrules[rule]));
    if (!isdefined(level.killstreaktype[killstreak][rule])) {
        level.killstreaktype[killstreak][rule] = spawnstruct();
    }
    level.killstreaktype[killstreak][rule].counts = counttowards;
    level.killstreaktype[killstreak][rule].checks = checkagainst;
    if (!is_true(inventoryvariant)) {
        addkillstreaktorule("inventory_" + killstreak, rule, counttowards, checkagainst, 1);
    }
}

// Namespace killstreakrules/killstreakrules_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xa7175d26, Offset: 0x440
// Size: 0x468
function killstreakstart(hardpointtype, team, hacked, displayteammessage) {
    assert(isdefined(team), "<unknown string>");
    if (self iskillstreakallowed(hardpointtype, team) == 0) {
        return -1;
    }
    assert(isdefined(hardpointtype));
    if (!isdefined(hacked)) {
        hacked = 0;
    }
    if (!isdefined(displayteammessage)) {
        displayteammessage = 1;
    }
    if (displayteammessage == 1) {
        if (!hacked) {
            level thread popups::displaykillstreakteammessagetoall(hardpointtype, self);
        }
    }
    keys = getarraykeys(level.killstreaktype[hardpointtype]);
    killstreak_id = level.globalkillstreakscalled;
    foreach (key in keys) {
        if (!level.killstreaktype[hardpointtype][key].counts) {
            continue;
        }
        assert(isdefined(level.killstreakrules[key]));
        level.killstreakrules[key].cur++;
        if (level.teambased) {
            if (!isdefined(level.killstreakrules[key].curteam[team])) {
                level.killstreakrules[key].curteam[team] = 0;
            }
            level.killstreakrules[key].curteam[team]++;
        }
    }
    level notify(#"killstreak_started", {#killstreaktype:hardpointtype, #team:team, #attacker:self});
    if (isdefined(level.var_4d062db3)) {
        self [[ level.var_4d062db3 ]]({#hardpointtype:hardpointtype});
    }
    level.globalkillstreakscalled++;
    var_5c07b36e = [];
    var_5c07b36e[#"caller"] = self getxuid();
    var_5c07b36e[#"spawnid"] = getplayerspawnid(self);
    var_5c07b36e[#"starttime"] = gettime();
    var_5c07b36e[#"type"] = hardpointtype;
    var_5c07b36e[#"endtime"] = 0;
    level.matchrecorderkillstreakkills[killstreak_id] = 0;
    level.scorestreak_kills[killstreak_id] = 0;
    level.killstreaks_triggered[killstreak_id] = var_5c07b36e;
    if (!sessionmodeiscampaigngame()) {
        if (!sessionmodeiszombiesgame()) {
            stats::function_8fb23f94(killstreaks::function_73b4659(hardpointtype), #"uses", 1);
        }
        killstreaks::function_eb52ba7(hardpointtype, team, killstreak_id);
    }
    /#
        killstreak_debug_text("<unknown string>" + hardpointtype + "<unknown string>" + team + "<unknown string>" + killstreak_id);
    #/
    return killstreak_id;
}

// Namespace killstreakrules/killstreakrules_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xdbe2e11b, Offset: 0x8b0
// Size: 0x158
function function_2e6ff61a(hardpointtype, killstreak_id, var_8c2bb724) {
    keys = getarraykeys(level.killstreaktype[hardpointtype]);
    foreach (key in keys) {
        if (!level.killstreaktype[hardpointtype][key].counts) {
            continue;
        }
        assert(isdefined(level.killstreakrules[key]));
        if (!isdefined(level.killstreakrules[key].var_11c5ecfd)) {
            continue;
        }
        if (level.killstreakrules[key].var_11c5ecfd == 0) {
            continue;
        }
        level.killstreakrules[key].var_8c2bb724[killstreak_id] = var_8c2bb724;
    }
}

// Namespace killstreakrules/killstreakrules_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2cd83171, Offset: 0xa10
// Size: 0x142
function function_7f69aa48(hardpointtype) {
    keys = getarraykeys(level.killstreaktype[hardpointtype]);
    foreach (key in keys) {
        if (!level.killstreaktype[hardpointtype][key].counts) {
            continue;
        }
        assert(isdefined(level.killstreakrules[key]));
        if (!isdefined(level.killstreakrules[key].var_11c5ecfd) || level.killstreakrules[key].var_11c5ecfd == 0) {
            continue;
        }
        return level.killstreakrules[key].var_11c5ecfd;
    }
    return undefined;
}

// Namespace killstreakrules/killstreakrules_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xce7f4c0b, Offset: 0xb60
// Size: 0x40
function function_feb4595f(hardpointtype, var_5f910be6) {
    level.var_dcc3befb[hardpointtype] = var_5f910be6;
    level.var_dcc3befb["inventory_" + hardpointtype] = var_5f910be6;
}

// Namespace killstreakrules/killstreakrules_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xad5f43eb, Offset: 0xba8
// Size: 0x54
function recordkillstreakenddirect(eventindex, recordstreakindex, totalkills) {
    player = self;
    player recordkillstreakendevent(eventindex, recordstreakindex, totalkills);
    player.killstreakevents[recordstreakindex] = undefined;
}

// Namespace killstreakrules/killstreakrules_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x23a06f2, Offset: 0xc08
// Size: 0xc0
function recordkillstreakend(recordstreakindex, totalkills) {
    player = self;
    if (!isplayer(player)) {
        return;
    }
    if (!isdefined(totalkills)) {
        totalkills = 0;
    }
    if (!isdefined(player.killstreakevents)) {
        player.killstreakevents = associativearray();
    }
    eventindex = player.killstreakevents[recordstreakindex];
    if (isdefined(eventindex)) {
        player recordkillstreakenddirect(eventindex, recordstreakindex, totalkills);
        return;
    }
    player.killstreakevents[recordstreakindex] = totalkills;
}

// Namespace killstreakrules/killstreakrules_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x6950973e, Offset: 0xcd0
// Size: 0x6f4
function killstreakstop(hardpointtype, team, id, var_2921b547 = 1) {
    assert(isdefined(team), "<unknown string>");
    assert(isdefined(hardpointtype));
    /#
        idstr = "<unknown string>";
        if (isdefined(id)) {
            idstr = id;
        }
        killstreak_debug_text("<unknown string>" + hardpointtype + "<unknown string>" + team + "<unknown string>" + idstr);
    #/
    keys = getarraykeys(level.killstreaktype[hardpointtype]);
    foreach (key in keys) {
        if (!level.killstreaktype[hardpointtype][key].counts) {
            continue;
        }
        assert(isdefined(level.killstreakrules[key]));
        if (isdefined(level.killstreakrules[key].cur)) {
            level.killstreakrules[key].cur--;
        }
        assert(level.killstreakrules[key].cur >= 0);
        if (isdefined(level.killstreakrules[key].var_8c2bb724[id])) {
            level.killstreakrules[key].var_8c2bb724[id] = undefined;
        }
        if (level.teambased) {
            assert(isdefined(team));
            assert(isdefined(level.killstreakrules[key].curteam[team]));
            if (isdefined(team) && isdefined(level.killstreakrules[key].curteam[team])) {
                level.killstreakrules[key].curteam[team]--;
            }
            assert(level.killstreakrules[key].curteam[team] >= 0);
        }
    }
    if (!isdefined(id) || id == -1) {
        /#
            killstreak_debug_text("<unknown string>" + hardpointtype);
        #/
        if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame() || sessionmodeiszombiesgame()) {
            var_8756d70f = killstreaks::function_cb0594d5();
            function_92d1707f(var_8756d70f, {#starttime:0, #endtime:gettime(), #name:hardpointtype, #team:team});
        }
        return;
    }
    level.killstreaks_triggered[id][#"endtime"] = gettime();
    totalkillswiththiskillstreak = level.matchrecorderkillstreakkills[id];
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame() || sessionmodeiszombiesgame()) {
        mpkillstreakuses = {#starttime:level.killstreaks_triggered[id][#"starttime"], #endtime:level.killstreaks_triggered[id][#"endtime"], #spawnid:level.killstreaks_triggered[id][#"spawnid"], #name:hardpointtype, #team:team};
        var_8756d70f = killstreaks::function_cb0594d5();
        function_92d1707f(var_8756d70f, mpkillstreakuses);
        player = self;
        if (isdefined(player.owner)) {
            player = player.owner;
        }
        player killstreaks::function_fda235cf(hardpointtype, id);
    }
    level.killstreaks_triggered[id] = undefined;
    level.matchrecorderkillstreakkills[id] = undefined;
    level.scorestreak_kills[id] = undefined;
    if (isdefined(level.killstreaks[hardpointtype].menuname)) {
        recordstreakindex = level.killstreakindices[level.killstreaks[hardpointtype].menuname];
        if (isdefined(self) && isdefined(recordstreakindex) && (!isdefined(self.activatingkillstreak) || !self.activatingkillstreak)) {
            entity = self;
            if (isdefined(entity.owner)) {
                entity = entity.owner;
            }
            entity recordkillstreakend(recordstreakindex, totalkillswiththiskillstreak);
        }
    }
    if (var_2921b547 && !killstreaks::function_6bde02cc(hardpointtype)) {
        self function_d9f8f32b(hardpointtype);
    }
}

// Namespace killstreakrules/killstreakrules_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfebc5f1, Offset: 0x13d0
// Size: 0x13c
function function_d9f8f32b(killstreaktype) {
    owner = undefined;
    if (isplayer(self)) {
        owner = self;
    } else if (isdefined(self.owner)) {
        self.owner.var_9e10e827 = self.var_9e10e827;
        owner = self.owner;
    }
    if (!isdefined(owner)) {
        return;
    }
    var_f66fab06 = owner function_3859ee41(killstreaktype);
    if (level.var_5b544215 === 1 || level.var_5b544215 === 2) {
        if (!isdefined(var_f66fab06)) {
            var_e5e81b59 = owner.var_8b9b1bba[killstreaktype];
            if (isdefined(var_e5e81b59) && var_e5e81b59 > gettime()) {
                var_f66fab06 = float(var_e5e81b59 - gettime()) / 1000;
            }
        }
        if (isdefined(var_f66fab06)) {
            owner thread function_9f635a5(var_f66fab06, killstreaktype);
        }
    }
}

// Namespace killstreakrules/killstreakrules_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1077181, Offset: 0x1518
// Size: 0x37c
function function_9f635a5(cooldowntime = 0, killstreaktype) {
    if (level.var_5b544215 !== 1 && level.var_5b544215 !== 2) {
        return;
    }
    level endon(#"game_ended");
    self endon(#"disconnect");
    if (!isdefined(killstreaktype)) {
        return;
    }
    killstreakslot = self killstreaks::function_a2c375bb(killstreaktype);
    if (!isdefined(killstreakslot) || killstreakslot === 3) {
        return;
    }
    if (util::function_7f7a77ab()) {
        currenttime = float(gettime()) / 1000;
        while (cooldowntime > 0) {
            if (is_true(level.var_e80a117f)) {
                var_e5e81b59 = int((currenttime + cooldowntime) * 1000);
                self.var_8b9b1bba[killstreaktype] = var_e5e81b59;
                self killstreaks::function_b3185041(killstreakslot, var_e5e81b59);
            } else {
                cooldowntime -= float(gettime()) / 1000 - currenttime;
            }
            currenttime = float(gettime()) / 1000;
            waitframe(1);
        }
    } else {
        wait(cooldowntime);
    }
    if (!isdefined(self)) {
        return;
    }
    if (level.var_5b544215 === 1) {
        if (self function_40451ab0(killstreaktype)) {
            self killstreaks::add_to_notification_queue(level.killstreaks[killstreaktype].menuname, undefined, killstreaktype, 0, 0);
            self.pers[#"hash_b05d8e95066f3ce"][killstreaktype] = 1;
        } else if (self.pers[#"hash_b05d8e95066f3ce"][killstreaktype] === 1) {
            self.pers[#"hash_b05d8e95066f3ce"][killstreaktype] = 0;
        }
        return;
    }
    if (level.var_5b544215 === 2) {
        weapon = killstreaks::get_killstreak_weapon(killstreaktype);
        if ((isdefined(self.pers[#"killstreak_quantity"][weapon]) ? self.pers[#"killstreak_quantity"][weapon] : 0) >= level.scorestreaksmaxstacking) {
            self killstreaks::add_to_notification_queue(level.killstreaks[killstreaktype].menuname, undefined, killstreaktype, 0, 0);
        }
    }
}

// Namespace killstreakrules/killstreakrules_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2882ed83, Offset: 0x18a0
// Size: 0x94
function function_40451ab0(killstreaktype) {
    if (isdefined(killstreaktype)) {
        momentum = self.pers[#"momentum"];
        streakcost = self function_dceb5542(level.killstreaks[killstreaktype].itemindex);
        if (isdefined(momentum) && isdefined(streakcost) && momentum >= streakcost) {
            return true;
        }
    }
    return false;
}

// Namespace killstreakrules/killstreakrules_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x1a5c8575, Offset: 0x1940
// Size: 0x1a0
function private function_3859ee41(killstreaktype) {
    /#
        if (getdvarint(#"hash_1a2e3d781ea7271f", 0)) {
            return;
        }
    #/
    if (!isplayer(self)) {
        return;
    }
    if (self.var_9e10e827 === 1) {
        self.var_9e10e827 = undefined;
        return;
    }
    killstreakslot = self killstreaks::function_a2c375bb(killstreaktype);
    if (!isdefined(killstreakslot)) {
        return;
    }
    if (killstreakslot == 3) {
        return;
    }
    killstreakweapon = killstreaks::get_killstreak_weapon(killstreaktype);
    if (level.var_5b544215 === 1) {
        var_f66fab06 = level.var_b29e45cf[killstreakweapon.statname];
    }
    if (level.var_5b544215 === 2) {
        var_f66fab06 = level.var_b3c95dd8[killstreakweapon.statname];
    }
    if (!isdefined(var_f66fab06)) {
        return;
    }
    var_e5e81b59 = gettime() + int(var_f66fab06 * 1000);
    self.var_8b9b1bba[killstreaktype] = var_e5e81b59;
    self killstreaks::function_a831f92c(killstreakslot, var_f66fab06, 1);
    self killstreaks::function_b3185041(killstreakslot, var_e5e81b59);
    return var_f66fab06;
}

// Namespace killstreakrules/killstreakrules_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xf9064294, Offset: 0x1ae8
// Size: 0x5c4
function iskillstreakallowed(hardpointtype, team, var_1d8339ae, var_91419d5) {
    if (level.var_7aa0d894 === 1) {
        return 0;
    }
    if (self.var_7aa0d894 === 1) {
        return 0;
    }
    if (game.state == #"postgame") {
        return 0;
    }
    assert(isdefined(team), "<unknown string>");
    assert(isdefined(hardpointtype));
    if (!is_true(var_91419d5)) {
        if (isdefined(level.var_dcc3befb[hardpointtype])) {
            if (!self [[ level.var_dcc3befb[hardpointtype] ]]()) {
                return 0;
            }
        }
    }
    isallowed = 1;
    if (!isdefined(level.killstreaktype[hardpointtype])) {
        var_22eba84a = getweapon(hardpointtype);
        if (var_22eba84a.iscarriedkillstreak) {
            return 1;
        }
        if (hardpointtype == #"supplydrop_marker" || hardpointtype == #"inventory_supplydrop_marker") {
            return 1;
        }
        return 0;
    }
    keys = getarraykeys(level.killstreaktype[hardpointtype]);
    foreach (key in keys) {
        if (!isallowed) {
            break;
        }
        if (!level.killstreaktype[hardpointtype][key].checks) {
            continue;
        }
        rule = level.killstreakrules[key];
        if (rule.max != 0) {
            if (rule.cur >= rule.max) {
                /#
                    killstreak_debug_text("<unknown string>" + key + "<unknown string>");
                #/
                isallowed = 0;
                break;
            }
        }
        if (isdefined(rule.var_11c5ecfd) && rule.var_11c5ecfd != 0) {
            playerorigin = self.origin;
            radiussq = sqr(rule.var_11c5ecfd);
            var_9a9cdff6 = 0;
            var_6eeac690 = 0;
            foreach (var_69e8e774 in rule.var_8c2bb724) {
                if (distance2dsquared(playerorigin, var_69e8e774.origin) > radiussq) {
                    continue;
                }
                var_9a9cdff6++;
                if (var_9a9cdff6 >= rule.var_62a7c0b4) {
                    /#
                        killstreak_debug_text("<unknown string>" + key + "<unknown string>");
                    #/
                    isallowed = 0;
                    break;
                }
                if (level.teambased && rule.var_ee52fece != 0) {
                    if (self.team == var_69e8e774.team) {
                        var_6eeac690++;
                        if (var_6eeac690 >= rule.var_ee52fece) {
                            isallowed = 0;
                            /#
                                killstreak_debug_text("<unknown string>" + key + "<unknown string>");
                            #/
                            break;
                        }
                    }
                }
            }
        }
        if (level.teambased && rule.maxperteam != 0) {
            if (!isdefined(rule.curteam[team])) {
                rule.curteam[team] = 0;
            }
            if (rule.curteam[team] >= rule.maxperteam) {
                isallowed = 0;
                /#
                    killstreak_debug_text("<unknown string>" + key + "<unknown string>");
                #/
                break;
            }
        }
    }
    if (isdefined(self.laststand) && self.laststand) {
        /#
            killstreak_debug_text("<unknown string>");
        #/
        isallowed = 0;
    }
    if (!is_true(var_1d8339ae)) {
        if (isallowed == 0) {
            if (isdefined(level.var_956bde25)) {
                self [[ level.var_956bde25 ]](hardpointtype, team, 0);
            }
        }
    }
    return isallowed;
}

/#

    // Namespace killstreakrules/killstreakrules_shared
    // Params 1, eflags: 0x0
    // Checksum 0x6cdf07ee, Offset: 0x20b8
    // Size: 0xcc
    function killstreak_debug_text(text) {
        level.killstreak_rule_debug = getdvarint(#"scr_killstreak_rule_debug", 0);
        if (isdefined(level.killstreak_rule_debug)) {
            if (level.killstreak_rule_debug == 1) {
                iprintln("<unknown string>" + text + "<unknown string>");
                return;
            }
            if (level.killstreak_rule_debug == 2) {
                iprintlnbold("<unknown string>" + text);
            }
        }
    }

#/
