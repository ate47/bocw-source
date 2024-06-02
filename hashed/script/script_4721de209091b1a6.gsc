// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.gsc;

#namespace namespace_f9b02f80;

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 0, eflags: 0x2 linked
// Checksum 0x66d6f82a, Offset: 0xf8
// Size: 0x9e
function function_196f2c38() {
    level.play_killstreak_firewall_being_hacked_dialog = undefined;
    level.play_killstreak_firewall_hacked_dialog = undefined;
    level.play_killstreak_being_hacked_dialog = undefined;
    level.play_killstreak_hacked_dialog = undefined;
    level.play_pilot_dialog_on_owner = undefined;
    level.play_pilot_dialog = undefined;
    level.play_taacom_dialog_response_on_owner = undefined;
    level.play_taacom_dialog = undefined;
    level.var_daaa6db3 = undefined;
    level.var_514f9d20 = undefined;
    level.var_992ad5b3 = undefined;
    level.var_6d7da491 = undefined;
    level.var_9f8e080d = undefined;
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 3, eflags: 0x2 linked
// Checksum 0x7cfa46c7, Offset: 0x1a0
// Size: 0x112
function killstreak_dialog_queued(dialogkey, killstreaktype, killstreakid) {
    if (!isdefined(dialogkey) || !isdefined(killstreaktype)) {
        return;
    }
    if (isdefined(self.currentkillstreakdialog)) {
        if (dialogkey === self.currentkillstreakdialog.dialogkey && killstreaktype === self.currentkillstreakdialog.killstreaktype && killstreakid === self.currentkillstreakdialog.killstreakid) {
            return 1;
        }
    }
    for (i = 0; i < self.killstreakdialogqueue.size; i++) {
        if (dialogkey === self.killstreakdialogqueue[i].dialogkey && killstreaktype === self.killstreakdialogqueue[i].killstreaktype && killstreaktype === self.killstreakdialogqueue[i].killstreaktype) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 2, eflags: 0x2 linked
// Checksum 0xe14091bb, Offset: 0x2c0
// Size: 0xcc
function play_killstreak_ready_dialog(killstreaktype, taacomwaittime) {
    self notify("killstreak_ready_" + killstreaktype);
    self endon(#"death", "killstreak_start_" + killstreaktype, "killstreak_ready_" + killstreaktype);
    level endon(#"game_ended");
    if (isdefined(level.gameended) && level.gameended) {
        return;
    }
    if (killstreak_dialog_queued("ready", killstreaktype)) {
        return;
    }
    if (isdefined(taacomwaittime)) {
        wait(taacomwaittime);
    }
    self play_taacom_dialog("ready", killstreaktype);
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 4, eflags: 0x2 linked
// Checksum 0x43c028f2, Offset: 0x398
// Size: 0x7c
function play_taacom_dialog_response(dialogkey, killstreaktype, killstreakid, pilotindex) {
    assert(isdefined(dialogkey));
    assert(isdefined(killstreaktype));
    if (!isdefined(pilotindex)) {
        return;
    }
    self play_taacom_dialog(dialogkey + pilotindex, killstreaktype, killstreakid);
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 7, eflags: 0x2 linked
// Checksum 0xb61125e1, Offset: 0x420
// Size: 0x6c
function play_taacom_dialog(dialogkey, killstreaktype, killstreakid, soundevent, var_8a6b001a, weapon, priority) {
    if (isdefined(level.play_taacom_dialog)) {
        self [[ level.play_taacom_dialog ]](dialogkey, killstreaktype, killstreakid, soundevent, var_8a6b001a, weapon, priority);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 3, eflags: 0x0
// Checksum 0x628767d7, Offset: 0x498
// Size: 0x44
function function_daaa6db3(weapon, var_df17fa82, var_53c10ed8) {
    if (isdefined(level.var_daaa6db3)) {
        self [[ level.var_daaa6db3 ]](weapon, var_df17fa82, var_53c10ed8);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 3, eflags: 0x2 linked
// Checksum 0x15ea122c, Offset: 0x4e8
// Size: 0x44
function play_taacom_dialog_response_on_owner(dialogkey, killstreaktype, killstreakid) {
    if (isdefined(level.play_taacom_dialog_response_on_owner)) {
        self [[ level.play_taacom_dialog_response_on_owner ]](dialogkey, killstreaktype, killstreakid);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 5, eflags: 0x0
// Checksum 0xda26bf6b, Offset: 0x538
// Size: 0x58
function leader_dialog_for_other_teams(dialogkey, skipteam, objectivekey, killstreakid, dialogbufferkey) {
    if (isdefined(level.var_9f8e080d)) {
        [[ level.var_9f8e080d ]](dialogkey, skipteam, objectivekey, killstreakid, dialogbufferkey);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 5, eflags: 0x0
// Checksum 0x4523008b, Offset: 0x598
// Size: 0x58
function leader_dialog(dialogkey, team, objectivekey, killstreakid, dialogbufferkey) {
    if (isdefined(level.var_514f9d20)) {
        [[ level.var_514f9d20 ]](dialogkey, team, objectivekey, killstreakid, dialogbufferkey);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 6, eflags: 0x0
// Checksum 0xbd7a35ce, Offset: 0x5f8
// Size: 0x64
function function_b4319f8e(dialogkey, team, exclusion, objectivekey, killstreakid, dialogbufferkey) {
    if (isdefined(level.var_992ad5b3)) {
        [[ level.var_992ad5b3 ]](dialogkey, team, exclusion, objectivekey, killstreakid, dialogbufferkey);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 6, eflags: 0x0
// Checksum 0xb8141cf0, Offset: 0x668
// Size: 0x64
function function_248fc9f7(dialogkey, team, exclusions, objectivekey, killstreakid, dialogbufferkey) {
    if (isdefined(level.var_6d7da491)) {
        [[ level.var_6d7da491 ]](dialogkey, team, exclusions, objectivekey, killstreakid, dialogbufferkey);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 2, eflags: 0x2 linked
// Checksum 0xd7c98a5e, Offset: 0x6d8
// Size: 0x3c
function play_killstreak_firewall_being_hacked_dialog(killstreaktype, killstreakid) {
    if (isdefined(level.play_killstreak_firewall_being_hacked_dialog)) {
        self [[ level.play_killstreak_firewall_being_hacked_dialog ]](killstreaktype, killstreakid);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 2, eflags: 0x2 linked
// Checksum 0x59daf57f, Offset: 0x720
// Size: 0x3c
function play_killstreak_firewall_hacked_dialog(killstreaktype, killstreakid) {
    if (isdefined(level.play_killstreak_firewall_hacked_dialog)) {
        self [[ level.play_killstreak_firewall_hacked_dialog ]](killstreaktype, killstreakid);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 2, eflags: 0x2 linked
// Checksum 0x9032971c, Offset: 0x768
// Size: 0x3c
function play_killstreak_being_hacked_dialog(killstreaktype, killstreakid) {
    if (isdefined(level.play_killstreak_being_hacked_dialog)) {
        self [[ level.play_killstreak_being_hacked_dialog ]](killstreaktype, killstreakid);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 3, eflags: 0x2 linked
// Checksum 0xbda802d5, Offset: 0x7b0
// Size: 0x44
function play_killstreak_hacked_dialog(killstreaktype, killstreakid, hacker) {
    if (isdefined(level.play_killstreak_hacked_dialog)) {
        self [[ level.play_killstreak_hacked_dialog ]](killstreaktype, killstreakid, hacker);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 3, eflags: 0x2 linked
// Checksum 0x907658de, Offset: 0x800
// Size: 0x44
function play_killstreak_start_dialog(hardpointtype, team, killstreak_id) {
    if (isdefined(level.play_killstreak_start_dialog)) {
        self [[ level.play_killstreak_start_dialog ]](hardpointtype, team, killstreak_id);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 4, eflags: 0x2 linked
// Checksum 0x83282755, Offset: 0x850
// Size: 0x50
function play_pilot_dialog(dialogkey, killstreaktype, killstreakid, pilotindex) {
    if (isdefined(level.play_pilot_dialog)) {
        self [[ level.play_pilot_dialog ]](dialogkey, killstreaktype, killstreakid, pilotindex);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 3, eflags: 0x2 linked
// Checksum 0x13c25e38, Offset: 0x8a8
// Size: 0x44
function play_pilot_dialog_on_owner(dialogkey, killstreaktype, killstreakid) {
    if (isdefined(level.play_pilot_dialog_on_owner)) {
        self [[ level.play_pilot_dialog_on_owner ]](dialogkey, killstreaktype, killstreakid);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 2, eflags: 0x2 linked
// Checksum 0xed639306, Offset: 0x8f8
// Size: 0x3c
function play_destroyed_dialog_on_owner(killstreaktype, killstreakid) {
    if (isdefined(level.play_destroyed_dialog_on_owner)) {
        self [[ level.play_destroyed_dialog_on_owner ]](killstreaktype, killstreakid);
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 1, eflags: 0x2 linked
// Checksum 0xbc9a5c1a, Offset: 0x940
// Size: 0x1cc
function function_1110a5de(killstreaktype) {
    assert(isdefined(killstreaktype), "<unknown string>");
    assert(isdefined(level.killstreaks[killstreaktype]), "<unknown string>");
    pilotdialogarraykey = level.killstreaks[killstreaktype].script_bundle.var_b7bd2ff9;
    if (isdefined(pilotdialogarraykey)) {
        taacombundles = getscriptbundles("mpdialog_taacom");
        foreach (bundle in taacombundles) {
            if (!isdefined(bundle.pilotbundles)) {
                bundle.pilotbundles = [];
            }
            bundle.pilotbundles[killstreaktype] = [];
            i = 0;
            field = pilotdialogarraykey + i;
            for (fieldvalue = bundle.(field); isdefined(fieldvalue); fieldvalue = bundle.(field)) {
                bundle.pilotbundles[killstreaktype][i] = fieldvalue;
                i++;
                field = pilotdialogarraykey + i;
            }
        }
        level.tacombundles = taacombundles;
    }
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 1, eflags: 0x2 linked
// Checksum 0x65a11931, Offset: 0xb18
// Size: 0x56
function get_killstreak_inform_dialog(killstreaktype) {
    if (isdefined(level.killstreaks[killstreaktype].script_bundle.var_5fbfc70d)) {
        return level.killstreaks[killstreaktype].script_bundle.var_5fbfc70d;
    }
    return "";
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 1, eflags: 0x2 linked
// Checksum 0xe825c2db, Offset: 0xb78
// Size: 0x30
function get_mpdialog_tacom_bundle(name) {
    if (!isdefined(level.tacombundles)) {
        return undefined;
    }
    return level.tacombundles[name];
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 1, eflags: 0x2 linked
// Checksum 0x45cce7e6, Offset: 0xbb0
// Size: 0x4c
function function_d2219b7d(type) {
    self play_pilot_dialog_on_owner("timeout", type);
    self play_taacom_dialog_response_on_owner("timeoutConfirmed", type);
}

// Namespace namespace_f9b02f80/namespace_f9b02f80
// Params 1, eflags: 0x2 linked
// Checksum 0x5b52c96a, Offset: 0xc08
// Size: 0xda
function get_random_pilot_index(killstreaktype) {
    if (!isdefined(killstreaktype)) {
        return undefined;
    }
    if (!isdefined(self.pers[level.var_bc01f047])) {
        return undefined;
    }
    taacombundle = get_mpdialog_tacom_bundle(self.pers[level.var_bc01f047]);
    if (!isdefined(taacombundle) || !isdefined(taacombundle.pilotbundles)) {
        return undefined;
    }
    if (!isdefined(taacombundle.pilotbundles[killstreaktype])) {
        return undefined;
    }
    numpilots = taacombundle.pilotbundles[killstreaktype].size;
    if (numpilots <= 0) {
        return undefined;
    }
    return randomint(numpilots);
}

