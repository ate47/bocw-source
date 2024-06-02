// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace control;

// Namespace control/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x9bbb3a62, Offset: 0x248
// Size: 0x630
function event_handler[gametype_init] main(*eventstruct) {
    level.current_zone_mask = [];
    level.current_zone_state_mask = [];
    level.visuals = [];
    level.warzonefx = [];
    level.zones = [];
    level.var_2c71eaf8 = [];
    level.zoneindices = [];
    for (i = 0; i < 4; i++) {
        level.current_zone_mask[i] = 0;
        level.current_zone_state_mask[i] = 0;
        level.warzonefx[i] = [];
    }
    clientfield::register("world", "activeZoneTriggers", 1, 5, "int", &function_c3ac47f5, 0, 0);
    clientfield::register("world", "warzone", 1, 5, "int", &warzone, 0, 0);
    clientfield::register("world", "warzonestate", 1, 10, "int", &warzone_state, 0, 0);
    clientfield::function_5b7d846d("hudItems.missions.captureMultiplierStatus", #"hash_410fe12a68d6e801", [#"missions", #"hash_2c267d320cc0909c"], 1, 2, "int", undefined, 0, 1);
    clientfield::function_5b7d846d("hudItems.war.attackingTeam", #"hash_11ea1e04b846f98e", #"attackingteam", 1, 2, "int", undefined, 0, 1);
    clientfield::register("scriptmover", "scriptid", 1, 5, "int", &function_e116df6c, 0, 0);
    level.effect_scriptbundles = [];
    level.effect_scriptbundles[#"zoneedgemarker"] = getscriptbundle("teamcolorfx_koth_edge_marker");
    level.effect_scriptbundles[#"zoneedgemarkerwndw"] = getscriptbundle("teamcolorfx_koth_edge_marker_window");
    level._effect[#"zoneedgemarker"] = [];
    level._effect[#"zoneedgemarker"][0] = #"hash_1f447aeb1973f7b6";
    level._effect[#"zoneedgemarker"][1] = #"hash_5c2ae9f4f331d4b9";
    level._effect[#"zoneedgemarker"][2] = #"hash_7d1b0f001ea88b82";
    level._effect[#"zoneedgemarker"][3] = #"hash_7981eb245ea536fc";
    level._effect[#"zoneedgemarkerwndw"] = [];
    level._effect[#"zoneedgemarkerwndw"][0] = #"hash_35ab4f45bbfba6b3";
    level._effect[#"zoneedgemarkerwndw"][1] = #"hash_5565c3fc2c7742fe";
    level._effect[#"zoneedgemarkerwndw"][2] = #"hash_3283b765fe480df7";
    level._effect[#"zoneedgemarkerwndw"][3] = #"hash_6a512c225256a2e9";
    level.mission_bundle = getscriptbundle("mission_settings_control");
    level.mission_bundle = getscriptbundle("mission_settings_control");
    callback::on_localclient_connect(&on_localclient_connect);
    callback::on_spawned(&function_6e3affdc);
    callback::add_callback(#"hash_34e39ee0c9fa0092", &function_3022f6ba);
    fields = getmapfields();
    level.var_117b4a3a = [];
    level.var_117b4a3a[0] = isdefined(fields.var_306136ca) ? fields.var_306136ca : #"hash_280d5153e1276d";
    level.var_117b4a3a[1] = isdefined(fields.var_e1ef0bf1) ? fields.var_e1ef0bf1 : #"hash_4b1a3a0285bea14d";
    level.var_117b4a3a[2] = isdefined(fields.var_97278b57) ? fields.var_97278b57 : #"hash_36a94457406aea0e";
    level.var_117b4a3a[3] = isdefined(fields.var_29209af9) ? fields.var_29209af9 : #"hash_5a60154937b01557";
}

// Namespace control/control
// Params 7, eflags: 0x0
// Checksum 0x3de2d316, Offset: 0x880
// Size: 0xe4
function function_c3ac47f5(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != fieldname) {
        var_cad692a8 = getentarray(binitialsnap, "control_zone_trigger", "targetname");
        for (i = 0; i < var_cad692a8.size; i++) {
            if (bwastimejump & 1 << i) {
                var_cad692a8[i] function_c06a8682(binitialsnap);
                continue;
            }
            var_cad692a8[i] function_c6c4ce9f(binitialsnap);
        }
    }
}

// Namespace control/control
// Params 1, eflags: 0x0
// Checksum 0xe795c919, Offset: 0x970
// Size: 0x4c
function function_3022f6ba(eventstruct) {
    local_client_num = eventstruct.localclientnum;
    objid = eventstruct.id;
    function_dd2493cc(local_client_num, objid);
}

// Namespace control/control
// Params 2, eflags: 0x0
// Checksum 0x64a7f762, Offset: 0x9c8
// Size: 0x378
function function_dd2493cc(local_client_num, objid) {
    while (!isdefined(level.var_2c71eaf8[0])) {
        waitframe(1);
    }
    zone_index = level.zoneindices[objid];
    if (!isdefined(zone_index)) {
        return;
    }
    iscodcaster = codcaster::function_b8fe9b52(local_client_num);
    team = serverobjective_getobjectiveteam(local_client_num, objid);
    if (iscodcaster) {
        var_4bb78aa3 = function_8147db19(local_client_num, objid, #"allies");
        var_c7fc4f01 = function_8147db19(local_client_num, objid, #"axis");
    } else {
        friendlyteam = function_9b3f0ed1(local_client_num);
        enemyteam = util::get_enemy_team(friendlyteam);
        var_4bb78aa3 = function_8147db19(local_client_num, objid, friendlyteam);
        var_c7fc4f01 = function_8147db19(local_client_num, objid, enemyteam);
    }
    suffix = iscodcaster ? "_codcaster" : "";
    state = 0;
    if (var_4bb78aa3) {
        state = 1;
    }
    if (var_c7fc4f01) {
        state = 2;
    }
    if (var_4bb78aa3 && var_c7fc4f01) {
        state = 3;
    }
    if (isdefined(level.othervisuals[zone_index])) {
        foreach (entid in level.othervisuals[zone_index]) {
            entity = getentbynum(local_client_num, entid);
            if (!isdefined(entity)) {
                continue;
            }
            for (si = 0; si < 4; si++) {
                rob = level.var_117b4a3a[si] + suffix;
                if (entity function_d2503806(rob)) {
                    if (state != si) {
                        entity stoprenderoverridebundle(rob);
                    }
                    continue;
                }
                if (state == si) {
                    entity playrenderoverridebundle(rob);
                    if (iscodcaster) {
                        codcaster::function_773f6e31(local_client_num, entity, rob, state);
                        continue;
                    }
                    util::function_f5b24d2d(local_client_num, entity, rob, state);
                }
            }
        }
    }
}

// Namespace control/control
// Params 7, eflags: 0x0
// Checksum 0xc91350e, Offset: 0xd48
// Size: 0x284
function function_e116df6c(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != fieldname || !isdefined(self.script_index)) {
        script_index = bwastimejump;
        self.script_index = script_index;
        if (!isdefined(level.othervisuals[script_index])) {
            level.othervisuals[script_index] = [];
        }
        entnum = self getentitynumber();
        if (!isinarray(level.othervisuals[script_index], entnum)) {
            if (!isdefined(level.othervisuals[script_index])) {
                level.othervisuals[script_index] = [];
            } else if (!isarray(level.othervisuals[script_index])) {
                level.othervisuals[script_index] = array(level.othervisuals[script_index]);
            }
            if (!isinarray(level.othervisuals[script_index], entnum)) {
                level.othervisuals[script_index][level.othervisuals[script_index].size] = entnum;
            }
            iscodcaster = codcaster::function_b8fe9b52(binitialsnap);
            suffix = iscodcaster ? "_codcaster" : "";
            rob = level.var_117b4a3a[0] + suffix;
            if (!self function_d2503806(rob)) {
                self playrenderoverridebundle(rob);
            }
            if (iscodcaster) {
                codcaster::function_773f6e31(binitialsnap, self, rob, 0);
                return;
            }
            util::function_f5b24d2d(binitialsnap, self, rob, 0);
        }
    }
}

// Namespace control/control
// Params 1, eflags: 0x0
// Checksum 0x6d7997a6, Offset: 0xfd8
// Size: 0x12c
function on_localclient_connect(local_client_num) {
    zone_count = 3;
    while (!isdefined(level.var_2c71eaf8[0])) {
        for (zi = 0; zi < zone_count; zi++) {
            level.var_2c71eaf8[zi] = serverobjective_getobjective(local_client_num, "control_" + zi);
        }
        waitframe(1);
    }
    for (zi = 0; zi < zone_count; zi++) {
        if (isdefined(level.var_2c71eaf8[zi])) {
            level.zoneindices[level.var_2c71eaf8[zi]] = zi + 1;
        }
    }
    if (is_true(getgametypesetting(#"hash_4091f2d0019b1f4a"))) {
        lui::function_ca036b2c(local_client_num, "control_zone_trigger");
    }
}

// Namespace control/control
// Params 1, eflags: 0x0
// Checksum 0x15096f60, Offset: 0x1110
// Size: 0x200
function function_64ffa588(*local_client_num) {
    effects = [];
    effects[#"zoneedgemarker"] = level._effect[#"zoneedgemarker"];
    effects[#"zoneedgemarkerwndw"] = level._effect[#"zoneedgemarkerwndw"];
    effects[#"zoneedgemarker"][2] = #"hash_682365220f952226";
    effects[#"zoneedgemarker"][1] = #"hash_5c0d472966d09d41";
    effects[#"zoneedgemarker"][3] = [];
    effects[#"zoneedgemarker"][3][2] = #"hash_3d943e08d321081c";
    effects[#"zoneedgemarker"][3][1] = #"hash_6328e922e5ef809f";
    effects[#"zoneedgemarkerwndw"][2] = #"hash_6bfa43a02f3672e3";
    effects[#"zoneedgemarkerwndw"][1] = #"hash_7e0524ef3f409d16";
    effects[#"zoneedgemarkerwndw"][3] = [];
    effects[#"zoneedgemarkerwndw"][3][2] = #"hash_252ee62d9ea8dcc9";
    effects[#"zoneedgemarkerwndw"][3][1] = #"hash_7495c7dec3ebf9dc";
    return effects;
}

// Namespace control/control
// Params 4, eflags: 0x0
// Checksum 0x978e5ceb, Offset: 0x1318
// Size: 0x100
function get_fx_state(local_client_num, state, attackers, var_b8fe9b52) {
    if (var_b8fe9b52) {
        if (attackers == #"allies") {
            return state;
        } else if (state == 1) {
            return 2;
        } else if (state == 2) {
            return 1;
        } else {
            return state;
        }
    }
    if (state == 1) {
        if (function_9b3f0ed1(local_client_num) != attackers) {
            return 1;
        } else {
            return 2;
        }
    } else if (state == 2) {
        if (function_9b3f0ed1(local_client_num) == attackers) {
            return 1;
        } else {
            return 2;
        }
    }
    return state;
}

// Namespace control/control
// Params 3, eflags: 0x0
// Checksum 0x6e1edb96, Offset: 0x1420
// Size: 0x26
function get_fx(fx_name, fx_state, effects) {
    return effects[fx_name][fx_state];
}

// Namespace control/control
// Params 0, eflags: 0x4
// Checksum 0xe018d3a, Offset: 0x1450
// Size: 0x62
function private get_attacking_team() {
    attackers_key = codegetworlduimodelfield("hudItems.war.attackingTeam");
    attackers = #"allies";
    if (attackers_key == 2) {
        attackers = #"axis";
    }
    return attackers;
}

// Namespace control/control
// Params 0, eflags: 0x0
// Checksum 0xe9482513, Offset: 0x14c0
// Size: 0xdc
function function_6e3affdc() {
    local_client_num = self getlocalclientnumber();
    if (isdefined(local_client_num)) {
        foreach (objid in level.var_2c71eaf8) {
            function_dd2493cc(local_client_num, objid);
        }
        if (isdefined(level.current_zone_state_mask)) {
            setup_warzone_fx(local_client_num);
        }
    }
}

// Namespace control/control
// Params 1, eflags: 0x0
// Checksum 0x5a431c8c, Offset: 0x15a8
// Size: 0x39c
function setup_warzone_fx(local_client_num) {
    for (zi = 0; zi < level.zones.size; zi++) {
        zonestate = level.current_zone_state_mask[local_client_num] >> zi * 2 & 3;
        effects = [];
        if (codcaster::function_b8fe9b52(local_client_num)) {
            effects = function_64ffa588(local_client_num);
        } else {
            effects[#"zoneedgemarker"] = level._effect[#"zoneedgemarker"];
            effects[#"zoneedgemarkerwndw"] = level._effect[#"zoneedgemarkerwndw"];
        }
        if (isdefined(level.warzonefx[local_client_num][zi])) {
            foreach (fx in level.warzonefx[local_client_num][zi]) {
                stopfx(local_client_num, fx);
            }
        }
        level.warzonefx[local_client_num][zi] = [];
        if (level.current_zone_mask[local_client_num] & 1 << zi) {
            if (isdefined(level.visuals[zi])) {
                attackers = get_attacking_team();
                fx_state = get_fx_state(local_client_num, zonestate, attackers, codcaster::function_b8fe9b52(local_client_num));
                foreach (visual in level.visuals[zi]) {
                    if (!isdefined(visual.script_fxid)) {
                        continue;
                    }
                    fxid = get_fx(visual.script_fxid, fx_state, effects);
                    if (isarray(fxid)) {
                        zonestate = 2;
                        function_ca8ebccf(local_client_num, visual, fxid[zonestate], zi, zonestate, attackers);
                        zonestate = 1;
                        function_ca8ebccf(local_client_num, visual, fxid[zonestate], zi, zonestate, attackers);
                        continue;
                    }
                    function_ca8ebccf(local_client_num, visual, fxid, zi, zonestate, attackers);
                }
            }
        }
    }
    thread watch_for_team_change(local_client_num);
}

// Namespace control/control
// Params 6, eflags: 0x4
// Checksum 0xb395b909, Offset: 0x1950
// Size: 0x164
function private function_ca8ebccf(local_client_num, visual, fxid, zi, zonestate, attackers) {
    if (isdefined(visual.angles)) {
        forward = anglestoforward(visual.angles);
    } else {
        forward = (0, 0, 0);
    }
    fxhandle = playfx(local_client_num, fxid, visual.origin, forward);
    level.warzonefx[local_client_num][zi][level.warzonefx[local_client_num][zi].size] = fxhandle;
    if (isdefined(fxhandle)) {
        if (zonestate == 2) {
            setfxteam(local_client_num, fxhandle, attackers);
            return;
        }
        if (zonestate == 1) {
            defenders = util::get_other_team(attackers);
            setfxteam(local_client_num, fxhandle, defenders);
            return;
        }
        setfxteam(local_client_num, fxhandle, #"none");
    }
}

// Namespace control/control
// Params 2, eflags: 0x0
// Checksum 0x618f4ac8, Offset: 0x1ac0
// Size: 0xe8
function compare_zone_indicies(zone_a, zone_b) {
    script_index_a = zone_a.script_index;
    script_index_b = zone_b.script_index;
    if (!isdefined(script_index_a) && !isdefined(script_index_b)) {
        return false;
    }
    if (!isdefined(script_index_a) && isdefined(script_index_b)) {
        println("<unknown string>" + zone_a.origin);
        return true;
    }
    if (isdefined(script_index_a) && !isdefined(script_index_b)) {
        println("<unknown string>" + zone_b.origin);
        return false;
    }
    if (script_index_a > script_index_b) {
        return true;
    }
    return false;
}

// Namespace control/control
// Params 0, eflags: 0x0
// Checksum 0x1ce9d806, Offset: 0x1bb0
// Size: 0x29e
function get_zone_array() {
    allzones = struct::get_array("control_zone_center", "targetname");
    if (allzones.size > 1) {
        if (!isdefined(allzones)) {
            return;
        }
        zoneindices = [];
        numberofzones = allzones.size;
        for (i = 0; i < numberofzones; i++) {
            fieldname = "zoneinfo" + numberofzones + i + 1;
            index = isdefined(level.mission_bundle.(fieldname)) ? level.mission_bundle.(fieldname) : 0;
            zoneindices[zoneindices.size] = index;
        }
        zones = [];
        for (i = 0; i < allzones.size; i++) {
            ind = allzones[i].script_index;
            if (isdefined(ind)) {
                for (j = 0; j < zoneindices.size; j++) {
                    if (zoneindices[j] == ind) {
                        zones[zones.size] = allzones[i];
                        break;
                    }
                }
            }
        }
    } else {
        zones = struct::get_array("control_zone_center", "targetname");
    }
    if (!isdefined(zones)) {
        return undefined;
    }
    swapped = 1;
    for (n = zones.size; swapped; n--) {
        swapped = 0;
        for (i = 0; i < n - 1; i++) {
            if (compare_zone_indicies(zones[i], zones[i + 1])) {
                temp = zones[i];
                zones[i] = zones[i + 1];
                zones[i + 1] = temp;
                swapped = 1;
            }
        }
    }
    for (i = 0; i < zones.size; i++) {
        zones[i].zone_index = i;
    }
    return zones;
}

// Namespace control/control
// Params 7, eflags: 0x0
// Checksum 0x7b937e89, Offset: 0x1e58
// Size: 0x22c
function warzone(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (level.zones.size == 0) {
        level.zones = get_zone_array();
        for (zi = 0; zi < level.zones.size; zi++) {
            if (isdefined(level.zones[zi].target)) {
                level.visuals[zi] = struct::get_array(level.zones[zi].target, "targetname");
            }
            level.zones[zi].objectiveid = serverobjective_getobjective(binitialsnap, "control_" + zi);
            level.zones[zi].objectiveentity = spawn(0, level.zones[zi].origin, "script_origin");
            level.zones[zi].var_ce6accbd = 0;
        }
        level notify(#"zone_initialization");
    }
    level.current_zone_mask[binitialsnap] = bwastimejump;
    for (zi = 0; zi < level.zones.size; zi++) {
        if ((fieldname & 1 << zi) != (bwastimejump & 1 << zi)) {
            level.current_zone_state_mask[binitialsnap] = level.current_zone_state_mask[binitialsnap] & ~(3 << zi);
        }
    }
    setup_warzone_fx(binitialsnap);
}

// Namespace control/control
// Params 7, eflags: 0x0
// Checksum 0x16d94fa0, Offset: 0x2090
// Size: 0x74
function warzone_state(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != level.current_zone_state_mask[fieldname]) {
        level.current_zone_state_mask[fieldname] = bwastimejump;
        setup_warzone_fx(fieldname);
    }
}

// Namespace control/control
// Params 1, eflags: 0x0
// Checksum 0xc466e663, Offset: 0x2110
// Size: 0x64
function watch_for_team_change(localclientnum) {
    level notify(#"end_team_change_watch");
    level endon(#"end_team_change_watch");
    level waittill(#"team_changed");
    thread setup_warzone_fx(localclientnum);
}

// Namespace control/control
// Params 3, eflags: 0x0
// Checksum 0x34962394, Offset: 0x2180
// Size: 0x284
function function_185b0894(localclientnum, *oldval, *newval) {
    level endon(#"game_ended");
    self notify("2d51bad247b8c8a1");
    self endon("2d51bad247b8c8a1");
    basepitch = 0.8;
    var_9a7dc638 = 1;
    var_f802a6b1 = 255;
    progresspercentage = 1 / var_f802a6b1;
    waitresult = level waittill(#"zone_initialization");
    while (true) {
        foreach (zone in level.zones) {
            if (!isdefined(zone.objectiveid)) {
                continue;
            }
            progress = serverobjective_getobjectiveprogress(newval, zone.objectiveid);
            change = progress - (isdefined(zone.lastprogress) ? zone.lastprogress : 0);
            if (change <= 0) {
                if (zone.var_ce6accbd) {
                    zone.objectiveentity stoploopsound(zone.soundid);
                    zone.var_ce6accbd = 0;
                }
            } else {
                if (!zone.var_ce6accbd) {
                    zone.soundid = zone.objectiveentity playloopsound(#"hash_5a0b392405d5f148");
                    zone.var_ce6accbd = 1;
                }
                newpitch = basepitch + var_9a7dc638 * progress * progresspercentage;
                setsoundpitch(zone.soundid, newpitch);
            }
            zone.lastprogress = progress;
        }
        wait(0.25);
    }
}

