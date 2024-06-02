// Atian COD Tools GSC CW decompiler test
#using script_59f62971655f7103;
#using scripts\core_common\struct.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\map.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace battlechatter;

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x5
// Checksum 0x6f4de03c, Offset: 0x408
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"battlechatter", &preinit, undefined, undefined, undefined);
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x6 linked
// Checksum 0xdbab748, Offset: 0x450
// Size: 0xec
function private preinit() {
    level.var_2829c23d = &function_50e36ba7;
    level.var_44e74ef4 = &function_f1d27638;
    level.allowbattlechatter[#"bc"] = is_true(getgametypesetting(#"allowbattlechatter"));
    level.allowspecialistdialog = mpdialog_value("enableHeroDialog", 0) && is_true(level.allowbattlechatter[#"bc"]);
    level.var_e444d44 = 1;
    level thread function_4bc12499();
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0xdeaefc8a, Offset: 0x548
// Size: 0x120
function function_4bc12499() {
    level endon(#"death");
    while (true) {
        wait_result = level waittill(#"play_death_vox");
        if (!isdefined(wait_result.body)) {
            return;
        }
        bundlename = wait_result.body getmpdialogname();
        if (!isdefined(bundlename)) {
            return;
        }
        playerbundle = getscriptbundle(bundlename);
        voiceprefix = playerbundle.voiceprefix;
        deathalias = get_death_vox(playerbundle, wait_result.mod);
        if (isdefined(voiceprefix) && isdefined(deathalias)) {
            wait_result.body playsound(0, voiceprefix + deathalias);
        }
    }
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0xbecc7057, Offset: 0x670
// Size: 0x322
function function_f1d27638(var_f7f4481f) {
    if (!isdefined(var_f7f4481f) || !isdefined(var_f7f4481f.eventid)) {
        return;
    }
    switch (var_f7f4481f.eventid) {
    case 0:
        thread function_50e36ba7(var_f7f4481f.var_40209f44, var_f7f4481f.weapon, var_f7f4481f.var_3d136cd9, var_f7f4481f.var_7e98b410);
        break;
    case 2:
        thread function_ee8935da(var_f7f4481f.var_3d136cd9);
        break;
    case 3:
    case 4:
    case 5:
        thread function_bf569dab(var_f7f4481f.var_40209f44, var_f7f4481f.var_3d136cd9, var_f7f4481f.eventid, var_f7f4481f.weapon);
        break;
    case 6:
        thread function_6bed8fc0(var_f7f4481f.var_40209f44, var_f7f4481f.var_3d136cd9, var_f7f4481f.var_7e98b410);
        break;
    case 7:
        thread function_6afb2bd4(var_f7f4481f.var_40209f44, var_f7f4481f.weapon, var_f7f4481f.localclientnum, var_f7f4481f.var_7e98b410);
        break;
    case 8:
        thread function_22ea6c18(var_f7f4481f.var_40209f44, var_f7f4481f.weapon, var_f7f4481f.localclientnum, var_f7f4481f.var_7e98b410);
        break;
    case 9:
        thread function_7d29bb1e(var_f7f4481f.var_40209f44, var_f7f4481f.weapon, var_f7f4481f.localclientnum, var_f7f4481f.var_7e98b410);
        break;
    case 10:
        thread equipcallback(var_f7f4481f.var_40209f44, var_f7f4481f.weapon, var_f7f4481f.localclientnum, var_f7f4481f.var_7e98b410);
        break;
    case 11:
        thread function_afa6ac4b(var_f7f4481f.var_40209f44, var_f7f4481f.weapon, var_f7f4481f.var_3d136cd9, var_f7f4481f.var_7e98b410);
        break;
    case 12:
    case 13:
    case 14:
        thread game_end_vox(var_f7f4481f.var_40209f44, var_f7f4481f.eventid);
        break;
    }
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x84f625d6, Offset: 0x9a0
// Size: 0x1c2
function get_death_vox(playerbundle, meansofdeath) {
    if (isdefined(meansofdeath)) {
        switch (meansofdeath) {
        case #"mod_unknown":
            return playerbundle.exertdeath;
        case #"mod_burned":
            if (function_fc261b83()) {
                return "";
            } else {
                return playerbundle.exertdeathburned;
            }
        case #"mod_melee_weapon_butt":
            return playerbundle.var_53f25688;
        case #"mod_head_shot":
            return playerbundle.var_207908de;
        case #"mod_falling":
            return playerbundle.var_1dfcabbd;
        case #"mod_drown":
            return playerbundle.exertdeathdrowned;
        case #"mod_explosive":
            return playerbundle.var_44d86dec;
        case #"mod_dot_self":
            return playerbundle.var_48305ed9;
        case #"mod_dot":
            return playerbundle.var_f8b4bcc1;
        case #"mod_melee_assassinate":
            return playerbundle.exertdeathstabbed;
        case #"mod_gas":
            return playerbundle.var_7a45f37b;
        case #"mod_electrocuted":
            return playerbundle.exertdeathelectrocuted;
        case #"mod_crush":
            return playerbundle.var_35f92256;
        }
    }
    return playerbundle.exertdeath;
}

// Namespace battlechatter/battlechatter
// Params 6, eflags: 0x2 linked
// Checksum 0x4dd7f090, Offset: 0xb70
// Size: 0x1d4
function function_d2f35e13(localclientnum, successplayer, weapon, var_6ac148bc, var_5d738b56, seed) {
    while (isdefined(var_6ac148bc) && soundplaying(var_6ac148bc)) {
        waitframe(1);
    }
    wait(0.4);
    if (!isdefined(successplayer)) {
        return;
    }
    var_5c238c21 = function_cdd81094(weapon);
    if (!isdefined(var_5c238c21.var_48b8bd2c)) {
        return;
    }
    successreactionradius = mpdialog_value("SuccessReactionRadius", 500);
    if ((isdefined(var_5c238c21.var_506f762f) ? var_5c238c21.var_506f762f : 0) && isdefined(var_5d738b56) && isplayer(var_5d738b56)) {
        if (function_d804d2f0(localclientnum, successplayer, var_5d738b56, successreactionradius * successreactionradius)) {
            var_8a6b001a = var_5d738b56;
        }
    } else {
        var_8a6b001a = function_db89c38f(localclientnum, successplayer, successreactionradius * successreactionradius);
    }
    if (!isdefined(var_8a6b001a)) {
        return;
    }
    var_9f84e4a9 = function_b59a25c5(var_8a6b001a);
    if (!isdefined(var_9f84e4a9)) {
        return;
    }
    var_81485093 = var_9f84e4a9 + var_5c238c21.var_48b8bd2c;
    var_8a6b001a function_4b126e4c(localclientnum, var_81485093, seed);
}

// Namespace battlechatter/battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0xd58cc530, Offset: 0xd50
// Size: 0x16c
function function_50e36ba7(attacker, weapon, var_5d738b56, seed) {
    if (!isdefined(attacker) || !isplayer(attacker)) {
        return;
    }
    var_9f84e4a9 = function_b59a25c5(attacker);
    if (!isdefined(var_9f84e4a9)) {
        return;
    }
    var_5c238c21 = function_cdd81094(weapon);
    if (!isdefined(var_5c238c21.var_c8d8482c)) {
        return;
    }
    var_17a094cf = var_9f84e4a9 + var_5c238c21.var_c8d8482c;
    var_57c1e152 = isdefined(var_5c238c21.var_57c1e152) ? var_5c238c21.var_57c1e152 : 0;
    wait(var_57c1e152);
    if (!isdefined(attacker) || !isplayer(attacker)) {
        return;
    }
    var_a874c58 = attacker function_4b126e4c(0, var_17a094cf, seed);
    if (!isdefined(var_a874c58)) {
        return;
    }
    thread function_d2f35e13(0, attacker, weapon, var_a874c58, var_5d738b56, seed);
}

// Namespace battlechatter/battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0xaa1f937d, Offset: 0xec8
// Size: 0x18c
function function_afa6ac4b(attacker, weapon, var_5d738b56, seed) {
    if (!isdefined(attacker) || !isplayer(attacker)) {
        return;
    }
    if (attacker === var_5d738b56) {
        var_5d738b56 = undefined;
    }
    var_9f84e4a9 = function_b59a25c5(attacker);
    if (!isdefined(var_9f84e4a9)) {
        return;
    }
    var_5c238c21 = function_cdd81094(weapon);
    if (!isdefined(var_5c238c21.destroyedalias)) {
        return;
    }
    var_9c00ad8b = var_9f84e4a9 + var_5c238c21.destroyedalias;
    if (!isdefined(attacker) || !isplayer(attacker)) {
        return;
    }
    var_d1927bab = attacker function_4b126e4c(0, var_9c00ad8b, seed);
    if (!isdefined(var_d1927bab)) {
        return;
    }
    if (isdefined(var_5c238c21.var_eefecef8) && randomfloatrange(0, 1) < 0.25) {
        thread function_29f600fe(0, attacker, var_5c238c21.var_eefecef8, var_d1927bab, var_5d738b56, seed);
    }
}

// Namespace battlechatter/battlechatter
// Params 6, eflags: 0x2 linked
// Checksum 0x11e334bb, Offset: 0x1060
// Size: 0x17c
function function_29f600fe(localclientnum, attacker, var_eefecef8, var_d1927bab, var_5d738b56, seed) {
    while (isdefined(var_d1927bab) && soundplaying(var_d1927bab)) {
        waitframe(1);
    }
    wait(0.25);
    if (!isdefined(attacker)) {
        return;
    }
    successreactionradius = mpdialog_value("SuccessReactionRadius", 500);
    if (isdefined(var_5d738b56) && isplayer(var_5d738b56)) {
        if (function_d804d2f0(localclientnum, attacker, var_5d738b56, successreactionradius * successreactionradius)) {
            var_8a6b001a = var_5d738b56;
        }
    } else {
        var_8a6b001a = function_db89c38f(localclientnum, attacker, successreactionradius * successreactionradius);
    }
    if (!isdefined(var_8a6b001a)) {
        return;
    }
    var_9f84e4a9 = function_b59a25c5(var_8a6b001a);
    if (!isdefined(var_9f84e4a9)) {
        return;
    }
    var_81485093 = var_9f84e4a9 + var_eefecef8;
    var_8a6b001a function_4b126e4c(localclientnum, var_81485093, seed);
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x34a7499, Offset: 0x11e8
// Size: 0x3ec
function game_end_vox(player, eventid) {
    if (!isplayer(player)) {
        return;
    }
    localclientnum = player getlocalclientnumber();
    if (!isdefined(localclientnum) || issplitscreen()) {
        return;
    }
    switch (eventid) {
    case 12:
        var_6e32f147 = "gameDraw";
        var_135807f9 = "boostDraw";
        break;
    case 13:
        var_6e32f147 = "gameLost";
        var_135807f9 = "boostLoss";
        break;
    case 14:
        var_6e32f147 = "gameWon";
        var_135807f9 = "boostWin";
        break;
    }
    factionlist = map::function_596f8772();
    teammask = getteammask(player.team);
    for (teamindex = 0; teammask > 1; teamindex++) {
        teammask >>= 1;
    }
    if (teamindex % 2) {
        faction = getscriptbundle(isdefined(factionlist.faction[teamindex].var_d2446fa0) ? factionlist.faction[teamindex].var_d2446fa0 : #"");
        commander = isdefined(faction.var_ccc3e5ba) ? faction.var_ccc3e5ba : "blops_commander";
    } else {
        faction = getscriptbundle(isdefined(factionlist.faction[teamindex].var_d2446fa0) ? factionlist.faction[teamindex].var_d2446fa0 : #"");
        commander = isdefined(faction.var_ccc3e5ba) ? faction.var_ccc3e5ba : "cdp_commander";
    }
    commanderbundle = getscriptbundle(commander);
    if (!(isdefined(commanderbundle.voiceprefix) && isdefined(commanderbundle.(var_6e32f147)))) {
        return;
    }
    var_2e00736a = isdefined(faction.var_ce1913bd) ? faction.var_ce1913bd : "";
    var_bf147cb1 = commanderbundle.voiceprefix + var_2e00736a + commanderbundle.(var_6e32f147);
    var_b7095947 = player playsound(localclientnum, var_bf147cb1);
    if (!isdefined(var_b7095947)) {
        return;
    }
    playerbundle = function_58c93260(player);
    if (!(isdefined(playerbundle.voiceprefix) && isdefined(playerbundle.(var_135807f9)))) {
        return;
    }
    var_81485093 = playerbundle.voiceprefix + playerbundle.(var_135807f9);
    thread function_cc6f6e09(player, var_81485093, var_b7095947);
}

// Namespace battlechatter/battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0xc78e45d0, Offset: 0x15e0
// Size: 0x7c
function function_cc6f6e09(player, var_81485093, var_b7095947) {
    while (isdefined(var_b7095947) && soundplaying(var_b7095947)) {
        waitframe(1);
    }
    wait(0.25);
    if (!isdefined(player)) {
        return;
    }
    player playsound(0, var_81485093);
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x633403b7, Offset: 0x1668
// Size: 0x4ea
function function_c8663dbc(weapon, player) {
    taacombundle = function_84eb6127(player);
    if (!isdefined(taacombundle)) {
        return undefined;
    }
    switch (weapon.name) {
    case #"eq_emp_grenade":
        taacomdialog = "jammerWeaponHacked";
        break;
    case #"eq_tripwire":
        taacomdialog = "meshMineWeaponHacked";
        break;
    case #"eq_seeker_mine":
        taacomdialog = "seekerMineWeaponHacked";
        break;
    case #"eq_sensor":
        taacomdialog = "sensorDartHacked";
        break;
    case #"ability_smart_cover":
    case #"gadget_smart_cover":
        taacomdialog = "smartCoverHacked";
        break;
    case #"gadget_spawnbeacon":
        taacomdialog = "spawnBeaconHacked";
        break;
    case #"gadget_supplypod":
        taacomdialog = "supplyPodHacked";
        break;
    case #"trophy_system":
        taacomdialog = "trophyWeaponHacked";
        break;
    case #"ac130":
    case #"inventory_ac130":
        taacomdialog = "ac130Hacked";
        break;
    case #"inventory_chopper_gunner":
    case #"chopper_gunner":
        taacomdialog = "chopperGunnerHacked";
        break;
    case #"inventory_tank_robot":
    case #"tank_robot":
    case #"ai_tank_marker":
        taacomdialog = "aiTankHacked";
        break;
    case #"cobra_20mm_comlink":
    case #"helicopter_comlink":
    case #"inventory_helicopter_comlink":
        taacomdialog = "attackChopperHacked";
        break;
    case #"inventory_helicopter_guard":
    case #"helicopter_guard":
        taacomdialog = "heavyAttackChopperHacked";
        break;
    case #"counteruav":
        taacomdialog = "cuavHacked";
        break;
    case #"dart":
    case #"inventory_dart":
        taacomdialog = "dartHacked";
        break;
    case #"inventory_drone_squadron":
    case #"drone_squadron":
        taacomdialog = "droneSquadHacked";
        break;
    case #"hoverjet":
    case #"inventory_hoverjet":
        taacomdialog = "hoverJetHacked";
        break;
    case #"recon_car":
    case #"inventory_recon_car":
        taacomdialog = "reconCarHacked";
        break;
    case #"recon_plane":
    case #"inventory_recon_plane":
        taacomdialog = "reconPlaneHacked";
        break;
    case #"remote_missile":
    case #"inventory_remote_missile":
        taacomdialog = "hellstormHacked";
        break;
    case #"inventory_planemortar":
    case #"planemortar":
        taacomdialog = "lightningStrikeHacked";
        break;
    case #"overwatch_helicopter":
    case #"inventory_overwatch_helicopter":
        taacomdialog = "overwatchHelicopterHacked";
        break;
    case #"straferun":
    case #"inventory_straferun":
        taacomdialog = "strafeRunHacked";
        break;
    case #"supplydrop":
        taacomdialog = "supplyDropHacked";
        break;
    case #"uav":
        taacomdialog = "uavHacked";
        break;
    case #"inventory_ultimate_turret":
    case #"ultimate_turret":
        taacomdialog = "sentryHacked";
        break;
    }
    if (!isdefined(taacomdialog)) {
        return undefined;
    }
    dialogalias = taacombundle.(taacomdialog);
    return dialogalias;
}

// Namespace battlechatter/battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0x548209e8, Offset: 0x1b60
// Size: 0x1bc
function function_bf569dab(hacker, originalowner, eventid, weapon) {
    if (!function_5d7ad9a9(hacker, originalowner)) {
        return;
    }
    var_a8aa2745 = function_c8663dbc(weapon, originalowner);
    if (!isdefined(var_a8aa2745)) {
        return;
    }
    var_6ae4c5af = playsound(0, var_a8aa2745);
    if (!isdefined(var_6ae4c5af)) {
        return;
    }
    while (isdefined(var_6ae4c5af) && soundplaying(var_6ae4c5af)) {
        waitframe(1);
    }
    wait(0.1);
    if (!function_5d7ad9a9(hacker, originalowner)) {
        return;
    }
    bundlename = hacker getmpdialogname();
    if (!isdefined(bundlename)) {
        return;
    }
    playerbundle = getscriptbundle(bundlename);
    if (!isdefined(playerbundle)) {
        return;
    }
    if (eventid === 3) {
        var_2131493 = playerbundle.var_489ef66b;
    } else if (eventid === 4) {
        var_2131493 = playerbundle.var_5545b3a1;
    } else if (eventid === 5) {
        var_2131493 = playerbundle.var_1037850d;
    }
    if (!isdefined(var_2131493)) {
        return;
    }
    originalowner playsound(0, var_2131493);
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x3bc16eb6, Offset: 0x1d28
// Size: 0x104
function function_ee8935da(player) {
    if (function_fc261b83()) {
        return;
    }
    commander = "blops_commander";
    if (player.team === #"axis") {
        commander = "cdp_commander";
    }
    commanderbundle = getscriptbundle(commander);
    if (!isdefined(commanderbundle) || !isdefined("gamePlayerKicked")) {
        return;
    }
    dialogalias = commanderbundle.("gamePlayerKicked");
    if (!isdefined(dialogalias)) {
        return;
    }
    voiceprefix = commanderbundle.("voiceprefix");
    if (isdefined(voiceprefix)) {
        dialogalias = voiceprefix + dialogalias;
    }
    if (isdefined(dialogalias)) {
        player playsound(0, dialogalias);
    }
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x973fdcaa, Offset: 0x1e38
// Size: 0xcc
function function_ad01601e(localclientnum, characterindex) {
    characterfields = getcharacterfields(characterindex, currentsessionmode());
    if (isdefined(characterfields) && isdefined(characterfields.mpdialog)) {
        dialogbundle = getscriptbundle(characterfields.mpdialog);
        alias = get_dialog_bundle_alias(dialogbundle, "characterSelect");
        if (isdefined(alias)) {
            playsound(localclientnum, alias);
        }
    }
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x44ab651f, Offset: 0x1f10
// Size: 0x14a
function play_dialog(dialogkey, localclientnum) {
    if (!isdefined(dialogkey) || !isdefined(localclientnum)) {
        return -1;
    }
    dialogalias = self get_player_dialog_alias(dialogkey);
    if (!isdefined(dialogalias)) {
        return -1;
    }
    soundpos = (self.origin[0], self.origin[1], self.origin[2] + 60);
    if (!function_65b9eb0f(localclientnum)) {
        return self playsound(undefined, dialogalias, soundpos);
    }
    voicebox = spawn(localclientnum, self.origin, "script_model");
    self thread update_voice_origin(voicebox);
    voicebox thread delete_after(10);
    return voicebox playsound(undefined, dialogalias, soundpos);
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x1ce06d65, Offset: 0x2068
// Size: 0x32
function update_voice_origin(voicebox) {
    while (true) {
        wait(0.1);
        return;
    }
}

// Namespace battlechatter/battlechatter
// Params 5, eflags: 0x6 linked
// Checksum 0x5117f609, Offset: 0x20a8
// Size: 0x126
function private function_edf14b78(var_726a8c2e, *var_cc6c1b8f, localclientnum, weapon, seed) {
    if (!isdefined(self)) {
        return;
    }
    voiceprefix = function_b59a25c5(self);
    if (!isdefined(voiceprefix)) {
        return;
    }
    var_5c238c21 = function_cdd81094(weapon);
    if (!isdefined(var_5c238c21)) {
        return;
    }
    if (!isdefined(var_cc6c1b8f) || !isdefined(var_5c238c21.(var_cc6c1b8f))) {
        return;
    }
    if (self hasperk(localclientnum, #"specialty_quieter")) {
        return;
    }
    var_9a73928b = var_5c238c21.(var_cc6c1b8f);
    dialogkey = voiceprefix + var_9a73928b;
    var_ca5ab3a7 = self function_4b126e4c(0, dialogkey, seed);
}

// Namespace battlechatter/battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0x36433f0d, Offset: 0x21d8
// Size: 0x116
function function_6bed8fc0(speakingplayer, var_76787d10, seed) {
    if (!isdefined(speakingplayer) || !isplayer(speakingplayer)) {
        return;
    }
    if (!isdefined(var_76787d10) || !isplayer(var_76787d10)) {
        return;
    }
    var_20fbd263 = function_b59a25c5(speakingplayer);
    if (!isdefined(var_20fbd263)) {
        return;
    }
    var_2708cdb2 = function_58c93260(var_76787d10);
    if (!isdefined(var_2708cdb2) || !isdefined(var_2708cdb2.var_ff5e0d8e)) {
        return;
    }
    dialogkey = var_20fbd263 + var_2708cdb2.var_ff5e0d8e;
    var_a874c58 = speakingplayer function_4b126e4c(0, dialogkey, seed);
}

// Namespace battlechatter/battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0xb1324cc, Offset: 0x22f8
// Size: 0x54
function function_6afb2bd4(speakingplayer, weapon, *localclientnum, seed) {
    weapon function_edf14b78("useAlias", "useFutzAlias", 0, localclientnum, seed);
}

// Namespace battlechatter/battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0xf9679d1d, Offset: 0x2358
// Size: 0x4c
function equipcallback(speakingplayer, weapon, *localclientnum, seed) {
    weapon function_edf14b78("equipAlias", undefined, 0, localclientnum, seed);
}

// Namespace battlechatter/battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0xf563a784, Offset: 0x23b0
// Size: 0x54
function function_22ea6c18(speakingplayer, weapon, *localclientnum, seed) {
    weapon function_edf14b78("deployAlias", "deployFutzAlias", 0, localclientnum, seed);
}

// Namespace battlechatter/battlechatter
// Params 4, eflags: 0x2 linked
// Checksum 0x7f1fb85e, Offset: 0x2410
// Size: 0x54
function function_7d29bb1e(speakingplayer, weapon, *localclientnum, seed) {
    weapon function_edf14b78("destroyedAlias", "deployFutzAlias", 0, localclientnum, seed);
}

// Namespace battlechatter/battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0x50b90e10, Offset: 0x2470
// Size: 0x25e
function function_f47a0e3b(localclientnum, speakingplayer, dialogkey) {
    if (!isdefined(dialogkey) || dialogkey == "" || !isalive(speakingplayer) || speakingplayer inlaststand() || (isdefined(speakingplayer.var_20af9a03) ? speakingplayer.var_20af9a03 : 0) + 5000 > gettime()) {
        return;
    }
    playerbundle = function_58c93260(speakingplayer);
    if (ishash(dialogkey) || sessionmodeiszombiesgame()) {
        if (isdefined(level.var_4edd846)) {
            dialogalias = self [[ level.var_4edd846 ]](playerbundle, dialogkey);
            if (!isdefined(dialogalias) && isstring(dialogkey) && isdefined(playerbundle.(dialogkey))) {
                dialogalias = playerbundle.(dialogkey);
                if (isstring(dialogalias) && isstring(playerbundle.voiceprefix)) {
                    dialogalias = playerbundle.voiceprefix + dialogalias;
                }
            }
        } else {
            /#
                iprintlnbold("<unknown string>" + function_9e72a96(dialogkey) + "<unknown string>");
            #/
        }
    } else if (isdefined(playerbundle.voiceprefix) && isdefined(playerbundle.(dialogkey))) {
        dialogalias = playerbundle.voiceprefix + playerbundle.(dialogkey);
    }
    if (!isdefined(dialogalias)) {
        return;
    }
    speakingplayer playsound(localclientnum, dialogalias);
    speakingplayer.var_20af9a03 = gettime();
}

