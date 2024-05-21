// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreak_detect.csc;
#using scripts\mp_common\player\player.csc;
#using script_67e430791b8fcb93;
#using scripts\mp_common\gametypes\display_transition.csc;
#using script_1bd5a845bf9ba498;
#using scripts\core_common\dogtags.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\animation_shared.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\killcam_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace globallogic;

// Namespace globallogic/globallogic
// Params 0, eflags: 0x5
// Checksum 0x266dad23, Offset: 0x490
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"globallogic", &preinit, undefined, undefined, #"visionset_mgr");
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x6 linked
// Checksum 0xaca5bde8, Offset: 0x4e0
// Size: 0xd6c
function private preinit() {
    visionset_mgr::register_visionset_info("mpintro", 1, 31, undefined, "mpintro");
    visionset_mgr::register_visionset_info("crithealth", 1, 25, undefined, "critical_health");
    animation::add_notetrack_func(#"globallogic::play_plant_sound", &play_plant_sound);
    clientfield::register("world", "game_ended", 1, 1, "int", &on_end_game, 1, 1);
    clientfield::register("world", "post_game", 1, 1, "int", &post_game, 1, 1);
    registerclientfield("playercorpse", "firefly_effect", 1, 2, "int", &firefly_effect_cb, 0);
    registerclientfield("playercorpse", "annihilate_effect", 1, 1, "int", &annihilate_effect_cb, 0);
    registerclientfield("playercorpse", "pineapplegun_effect", 1, 1, "int", &pineapplegun_effect_cb, 0);
    registerclientfield("actor", "annihilate_effect", 1, 1, "int", &annihilate_effect_cb, 0);
    registerclientfield("actor", "pineapplegun_effect", 1, 1, "int", &pineapplegun_effect_cb, 0);
    clientfield::function_5b7d846d("hudItems.team1.roundsWon", #"hash_410fe12a68d6e801", [#"team1", #"roundswon"], 1, 4, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.team2.roundsWon", #"hash_410fe12a68d6e801", [#"team2", #"roundswon"], 1, 4, "int", undefined, 0, 0);
    teamcount = getgametypesetting(#"teamcount");
    for (i = 1; i <= teamcount; i++) {
        clientfield::function_5b7d846d("hudItems.team" + i + ".livesCount", #"hash_410fe12a68d6e801", [#"team" + i, #"livescount"], 1, 8, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.team" + i + ".noRespawnsLeft", #"hash_410fe12a68d6e801", [#"team" + i, #"norespawnsleft"], 1, 1, "int", undefined, 0, 0);
    }
    clientfield::register_clientuimodel("hudItems.armorIsOnCooldown", #"hash_6f4b11a0bee9b73d", #"armorisoncooldown", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.hideOutcomeUI", #"hash_6f4b11a0bee9b73d", #"hideoutcomeui", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.captureCrateState", #"hash_6f4b11a0bee9b73d", #"capturecratestate", 1, 2, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.captureCrateTotalTime", #"hash_6f4b11a0bee9b73d", #"capturecratetotaltime", 1, 13, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.playerLivesCount", #"hash_6f4b11a0bee9b73d", #"playerlivescount", 1, 8, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByEntNum", #"hash_6f4b11a0bee9b73d", #"killedbyentnum", 1, 4, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByAttachmentCount", #"hash_6f4b11a0bee9b73d", #"killedbyattachmentcount", 1, 4, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByItemIndex", #"hash_6f4b11a0bee9b73d", #"killedbyitemindex", 1, 10, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByMOD", #"hash_6f4b11a0bee9b73d", #"killedbymod", 1, 8, "int", undefined, 0, 0);
    for (index = 0; index < 5; index++) {
        clientfield::register_clientuimodel("huditems.killedByAttachment" + index, #"hash_6f4b11a0bee9b73d", #"killedbyattachment" + (isdefined(index) ? "" + index : ""), 1, 6, "int", undefined, 0, 0);
    }
    clientfield::register("toplayer", "thermal_sight", 1, 1, "int", &function_765b7c63, 0, 0);
    clientfield::register("toplayer", "strobe_light", 1, 1, "int", &fireflykillcam, 0, 0);
    clientfield::register("allplayers", "cold_blooded", 1, 1, "int", &function_194072a7, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByMasteryBadgeMarksman", #"hash_6f4b11a0bee9b73d", #"hash_211941ad042d5253", 12000, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByMasteryBadgeSharpshooter", #"hash_6f4b11a0bee9b73d", #"hash_8cf83c1c40a25bd", 12000, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByMasteryBadgeExpert", #"hash_6f4b11a0bee9b73d", #"hash_6134a4ba19a50d19", 12000, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByMasteryBadgeMaster", #"hash_6f4b11a0bee9b73d", #"hash_3102c376e7775b5b", 12000, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.killedByClassMasteryBadge", #"hash_6f4b11a0bee9b73d", #"hash_4f5347191b4b69f7", 12000, 2, "int", undefined, 0, 0);
    level._effect[#"pineapplegun_explosion"] = undefined;
    level.gamestarted = 0;
    level.gameended = 0;
    level.postgame = 0;
    level.new_health_model = getdvarint(#"new_health_model", 1) > 0;
    level.var_90bb9821 = getgametypesetting(#"playermaxhealth") - 150;
    setdvar(#"bg_boastenabled", getgametypesetting(#"boastenabled"));
    boastallowcam = getgametypesetting(#"boastallowcam");
    setdvar(#"hash_23c5d7207ebc0bf9", boastallowcam);
    setdvar(#"hash_62833d3c5e6d7380", boastallowcam);
    setdvar(#"hash_e099986c072eb0f", getgametypesetting(#"hash_104f124f56f0f20a"));
    setdvar(#"hash_553ad8f9db24bf22", int(1000 * getgametypesetting(#"hash_1614b9cbe0df6f75")));
    setdvar(#"cg_healthperbar", 25);
    callback::on_spawned(&on_player_spawned);
    callback::add_callback(#"on_game_playing", &function_977fa24b);
    display_transition::init_shared();
    level.droppedtagrespawn = getgametypesetting(#"droppedtagrespawn");
    if (is_true(level.droppedtagrespawn)) {
        dogtags::init();
    }
    level.var_ac25d260 = getgametypesetting(#"hash_66b6ee89ac1ad152");
    if (is_true(level.var_ac25d260)) {
        cranked::init();
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x2a08f6b7, Offset: 0x1258
// Size: 0x24
function on_player_spawned(*localclientnum) {
    self function_36b630a3(1);
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xd40a5243, Offset: 0x1288
// Size: 0x1c
function function_977fa24b(*localclientnum) {
    level.gamestarted = 1;
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0xe9236ce6, Offset: 0x12b0
// Size: 0xa0
function on_end_game(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && !level.gameended) {
        callback::callback(#"on_end_game", fieldname);
        level notify(#"game_ended");
        level.gameended = 1;
    }
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0x2126a8ff, Offset: 0x1358
// Size: 0x78
function post_game(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && !level.postgame) {
        level notify(#"post_game");
        level.postgame = 1;
    }
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0x2d108ea, Offset: 0x13d8
// Size: 0x4e
function firefly_effect_cb(*localclientnum, *oldval, newval, bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && fieldname) {
    }
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0xefbb0f30, Offset: 0x1430
// Size: 0x16c
function annihilate_effect_cb(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && !fieldname) {
        character_index = self getcharacterbodytype();
        fields = getcharacterfields(character_index, currentsessionmode());
        if (isdefined(fields.fullbodyexplosion) && fields.fullbodyexplosion != "") {
            if (util::is_mature() && !util::is_gib_restricted_build()) {
                where = self gettagorigin("J_SpineLower");
                if (!isdefined(where)) {
                    where = self.origin;
                    where += (0, 0, 40);
                }
                playfx(binitialsnap, fields.fullbodyexplosion, where);
            }
        }
    }
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0x4b99f8e, Offset: 0x15a8
// Size: 0xec
function pineapplegun_effect_cb(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && !fieldname) {
        if (isdefined(level._effect[#"pineapplegun_explosion"])) {
            where = self gettagorigin("J_SpineLower");
            if (!isdefined(where)) {
                where = self.origin;
                where += (0, 0, 40);
            }
            playfx(binitialsnap, level._effect[#"pineapplegun_explosion"], where);
        }
    }
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0x578280f8, Offset: 0x16a0
// Size: 0x8c
function play_plant_sound(*param1, *param2) {
    if (function_1e6822f(self, "No Plant Sounds")) {
        return;
    }
    tagpos = self gettagorigin("j_ring_ri_2");
    self playsound(self.localclientnum, #"hash_769978b2a32a4d77", tagpos);
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0xba41fb5f, Offset: 0x1738
// Size: 0x194
function updateenemyequipment(local_client_num, *newval) {
    if (codcaster::function_b8fe9b52(newval)) {
        var_7eda7144 = self codcaster::is_friendly(newval) ? #"friendly" : #"enemy";
        robkey = self codcaster::is_friendly(newval) ? #"hash_2476e7ae62469f70" : #"hash_2476eaae6246a489";
        self renderoverridebundle::function_c8d97b8e(newval, var_7eda7144, robkey);
        return;
    }
    if (isdefined(level.var_58253868)) {
        self renderoverridebundle::function_c8d97b8e(newval, #"friendly", #"hash_66ac79c57723c169");
    }
    if (isdefined(level.var_420d7d7e)) {
        self renderoverridebundle::function_c8d97b8e(newval, #"enemy", #"hash_691f7dc47ae8aa08");
    }
    self renderoverridebundle::function_c8d97b8e(newval, #"friendly", #"hash_ebb37dab2ee0ae3");
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0xad922e6e, Offset: 0x18d8
// Size: 0x2c
function function_116b413e(local_client_num, newval) {
    self killstreak_detect::function_d859c344(local_client_num, newval);
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0xab30317d, Offset: 0x1910
// Size: 0x26c
function function_765b7c63(local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    if (newval) {
        if (!is_true(self.var_33b61b6f)) {
            self.var_8e7f416f = self playloopsound(#"hash_a93a3bf58dbd89d");
            self.var_33b61b6f = 1;
        }
    } else if (is_true(self.var_33b61b6f)) {
        self stoploopsound(self.var_8e7f416f);
        self.var_33b61b6f = 0;
    }
    level notify(#"thermal_toggle");
    players = getplayers(local_client_num);
    foreach (player in players) {
        if (util::function_fbce7263(player.team, self.team) && player hasperk(local_client_num, #"specialty_immunenvthermal")) {
            player function_194072a7(local_client_num, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
        }
    }
    util::clean_deleted(level.enemyequip);
    array::thread_all(level.enemyequip, &updateenemyequipment, local_client_num, newval);
    util::clean_deleted(level.enemyvehicles);
    array::thread_all(level.enemyvehicles, &function_116b413e, local_client_num, newval);
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0x1bc9899c, Offset: 0x1b88
// Size: 0xcc
function fireflykillcam(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (function_1cbf351b(fieldname)) {
        return;
    }
    if (bwastimejump && !self function_6c32d092(fieldname, #"talent_resistance")) {
        self function_36b630a3(0);
        return;
    }
    self function_36b630a3(1);
}

// Namespace globallogic/globallogic
// Params 7, eflags: 0x2 linked
// Checksum 0x372966c, Offset: 0x1c60
// Size: 0xe4
function function_194072a7(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!function_4e3684f2(fieldname)) {
        if (bwastimejump) {
            self stoprenderoverridebundle(#"rob_sonar_set_enemy");
            self playrenderoverridebundle(#"rob_sonar_set_enemy_cold");
            return;
        }
        self stoprenderoverridebundle(#"rob_sonar_set_enemy_cold");
        self playrenderoverridebundle(#"rob_sonar_set_enemy");
    }
}

