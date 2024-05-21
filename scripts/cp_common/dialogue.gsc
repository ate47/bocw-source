// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\face.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace dialogue;

// Namespace dialogue/dialogue
// Params 3, eflags: 0x2 linked
// Checksum 0x1aa12232, Offset: 0xe0
// Size: 0x17c
function queue(alias, timeout, var_bcc3bb15) {
    /#
        if (getdvarint(#"hash_c994d2af0329db3", 0) != 0) {
            var_88f2fd1a = function_9119c373(alias, "<unknown string>");
            if (isstring(var_88f2fd1a) && var_88f2fd1a != "<unknown string>") {
                txt = "<unknown string>" + alias + "<unknown string>";
                iprintlnbold(txt);
                println(txt);
            }
        }
    #/
    if (isdefined(self)) {
        if (is_true(var_bcc3bb15)) {
            self function_47b06180();
        }
        if (!isdefined(timeout)) {
            self util::function_stack(&function_8026ba41, alias);
            return;
        }
        self util::function_stack_timeout(timeout, &function_8026ba41, alias);
    }
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x2 linked
// Checksum 0x1e562d07, Offset: 0x268
// Size: 0x56
function function_47b06180() {
    if (isscriptfunctionptr(level.var_4ceaaaf5)) {
        self thread [[ level.var_4ceaaaf5 ]]();
        return;
    }
    self util::function_stack_clear();
    self notify(#"cancel speaking");
}

// Namespace dialogue/dialogue
// Params 4, eflags: 0x2 linked
// Checksum 0x46825204, Offset: 0x2c8
// Size: 0x23c
function radio(alias, timeout, var_1ccdc84c, var_bcc3bb15) {
    /#
        if (getdvarint(#"hash_c994d2af0329db3", 0) != 0) {
            var_88f2fd1a = function_9119c373(alias, "<unknown string>");
            if (isstring(var_88f2fd1a) && var_88f2fd1a != "<unknown string>") {
                txt = "<unknown string>" + alias + "<unknown string>";
                iprintlnbold(txt);
                println(txt);
            }
        }
    #/
    if (is_true(var_bcc3bb15)) {
        self function_9e580f95();
        waitframe(1);
    }
    notifystring = "dialogue::radio " + alias;
    if (isscriptfunctionptr(level.var_94934cfc)) {
        self [[ level.var_94934cfc ]](alias, notifystring);
        return;
    }
    player_radio_emitter = self function_dc8dd8fa();
    if (!isdefined(player_radio_emitter)) {
        return;
    }
    if (is_true(var_1ccdc84c)) {
        player_radio_emitter sound::play_on_tag(alias, undefined, 1, notifystring);
        return;
    }
    if (!isdefined(timeout)) {
        player_radio_emitter util::function_stack(&sound::play_on_tag, alias, undefined, 1, notifystring);
        return;
    }
    player_radio_emitter util::function_stack_timeout(timeout, &sound::play_on_tag, alias, undefined, 1, notifystring);
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x2 linked
// Checksum 0x36cb8744, Offset: 0x510
// Size: 0x114
function function_9e580f95() {
    if (isscriptfunctionptr(level.var_4ceaaaf5)) {
        self thread [[ level.var_4ceaaaf5 ]]();
        return;
    }
    player_radio_emitter = self function_dc8dd8fa();
    if (!isdefined(player_radio_emitter)) {
        return;
    }
    var_90c2cde7 = player_radio_emitter getlinkedchildren(1);
    foreach (ent in var_90c2cde7) {
        ent thread function_d708473a();
    }
    player_radio_emitter thread function_d708473a();
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x6 linked
// Checksum 0x7b85b140, Offset: 0x630
// Size: 0x44
function private function_d708473a() {
    self endon(#"death");
    self stopsounds();
    waitframe(1);
    self delete();
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x0
// Checksum 0xd417128a, Offset: 0x680
// Size: 0x44
function function_dcdd0cb6() {
    player_radio_emitter = self function_dc8dd8fa();
    if (!isdefined(player_radio_emitter)) {
        return;
    }
    player_radio_emitter util::function_stack_clear();
}

// Namespace dialogue/dialogue
// Params 1, eflags: 0x0
// Checksum 0x93166dfb, Offset: 0x6d0
// Size: 0x52
function function_952d1770(alias) {
    return radio(alias, float(function_60d95f53()) / 1000);
}

// Namespace dialogue/dialogue
// Params 3, eflags: 0x2 linked
// Checksum 0xd8016b9d, Offset: 0x730
// Size: 0x44
function function_96171f6d(alias, timeout, var_bcc3bb15) {
    player_gesture(alias, 0, undefined, undefined, undefined, timeout, var_bcc3bb15);
}

// Namespace dialogue/dialogue
// Params 7, eflags: 0x2 linked
// Checksum 0xac517cf6, Offset: 0x780
// Size: 0xfc
function player_gesture(alias, var_9a8be594, gestures, var_e01a79b9, targetents, timeout, var_bcc3bb15) {
    if (is_true(var_bcc3bb15)) {
        self function_3db52a33();
    }
    player_dialogue_emitter = self function_7ddb5aa3();
    if (!isdefined(player_dialogue_emitter)) {
        return;
    }
    if (!isdefined(timeout)) {
        player_dialogue_emitter util::function_stack(&_play_player_dialogue, alias, var_9a8be594, gestures, var_e01a79b9, targetents);
        return;
    }
    player_dialogue_emitter util::function_stack_timeout(timeout, &_play_player_dialogue, alias, var_9a8be594, gestures, var_e01a79b9, targetents);
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x2 linked
// Checksum 0x358b9e0d, Offset: 0x888
// Size: 0xec
function function_3db52a33() {
    player_dialogue_emitter = self function_7ddb5aa3();
    if (!isdefined(player_dialogue_emitter)) {
        return;
    }
    var_6ceb99a = player_dialogue_emitter getlinkedchildren(1);
    foreach (ent in var_6ceb99a) {
        ent thread function_d708473a();
    }
    player_dialogue_emitter thread function_d708473a();
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x0
// Checksum 0xb4b1fd53, Offset: 0x980
// Size: 0x44
function function_d37e4893() {
    player_dialogue_emitter = self function_7ddb5aa3();
    if (!isdefined(player_dialogue_emitter)) {
        return;
    }
    player_dialogue_emitter util::function_stack_clear();
}

// Namespace dialogue/dialogue
// Params 5, eflags: 0x6 linked
// Checksum 0xf440e0c6, Offset: 0x9d0
// Size: 0x364
function private _play_player_dialogue(alias, var_9a8be594, gestures, var_e01a79b9, var_9e354358) {
    if (ai::is_dead_sentient()) {
        return;
    }
    org = spawn("script_origin", (0, 0, 0));
    org endon(#"death");
    org.origin = self.origin;
    org.angles = self.angles;
    org linkto(self);
    player = self function_bbd6c05b();
    player_dialogue_emitter = self function_7ddb5aa3();
    /#
        if (isdefined(player_dialogue_emitter) && self == player_dialogue_emitter) {
            println("<unknown string>" + alias);
        }
    #/
    if (var_9a8be594 > 0) {
        org util::delay(var_9a8be594, undefined, &playsoundwithnotify, alias, "sounddone");
    } else {
        org playsoundwithnotify(alias, "sounddone");
    }
    if (isdefined(gestures)) {
        assert(isdefined(var_e01a79b9), "<unknown string>");
        if (isarray(gestures)) {
            assert(gestures.size == var_e01a79b9.size, "<unknown string>");
            for (i = 0; i < gestures.size; i++) {
                if (isdefined(var_9e354358) && isdefined(var_9e354358[i])) {
                    player util::delay(var_e01a79b9[i], undefined, &function_ef63262c, gestures[i], var_9e354358[i]);
                    continue;
                }
                player util::delay(var_e01a79b9[i], undefined, &function_ef63262c, gestures[i]);
            }
        } else if (isdefined(var_9e354358)) {
            player util::delay(var_e01a79b9, undefined, &function_ef63262c, gestures, var_9e354358);
        } else {
            player util::delay(var_e01a79b9, undefined, &function_ef63262c, gestures);
        }
    }
    if (var_9a8be594 > 0) {
        wait(var_9a8be594);
    }
    if (!isdefined(sound::wait_for_sounddone_or_death(org, player))) {
        org stopsounds();
    }
    wait(0.05);
    org delete();
}

// Namespace dialogue/dialogue
// Params 2, eflags: 0x2 linked
// Checksum 0xbbf279e8, Offset: 0xd40
// Size: 0xf2
function function_ef63262c(var_ee58f129, lookatent) {
    assert(self == level.player, "<unknown string>");
    self endon(#"death");
    var_cdd69f44 = 0;
    blendtime = undefined;
    var_85e88aeb = 0;
    if (isdefined(lookatent) && isentity(lookatent)) {
        var_cdd69f44 = self playgestureviewmodel(var_ee58f129, lookatent, 1, blendtime);
    } else {
        var_cdd69f44 = self playgestureviewmodel(var_ee58f129, undefined, 1, blendtime);
    }
    if (var_cdd69f44) {
    }
    return var_cdd69f44;
}

// Namespace dialogue/dialogue
// Params 1, eflags: 0x6 linked
// Checksum 0x97b4570d, Offset: 0xe40
// Size: 0x7c
function private function_8026ba41(alias) {
    if (isdefined(getscriptbundle(alias))) {
        self thread scene::play(alias, self);
    }
    if (soundexists(alias)) {
        self face::playfacethread(undefined, alias, 1);
    }
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x6 linked
// Checksum 0x608ff950, Offset: 0xec8
// Size: 0x54
function private function_bbd6c05b() {
    if (isplayer(self)) {
        return self;
    }
    players = getplayers();
    if (players.size > 0) {
        return players[0];
    }
    return undefined;
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x6 linked
// Checksum 0x8d40aa63, Offset: 0xf28
// Size: 0xa6
function private function_7ddb5aa3() {
    player = self function_bbd6c05b();
    if (isdefined(player)) {
        if (!isdefined(player.player_dialogue_emitter)) {
            ent = spawn("script_origin", player.origin);
            ent linkto(player, "", (0, 0, 0), (0, 0, 0));
            player.player_dialogue_emitter = ent;
        }
        return player.player_dialogue_emitter;
    }
    return undefined;
}

// Namespace dialogue/dialogue
// Params 0, eflags: 0x6 linked
// Checksum 0xf73f9eb9, Offset: 0xfd8
// Size: 0xb6
function private function_dc8dd8fa() {
    player = self function_bbd6c05b();
    if (isdefined(player)) {
        if (!isdefined(player.player_radio_emitter)) {
            ent = spawn("script_origin", player getplayercamerapos());
            ent linkto(player, "", (0, 0, 0), (0, 0, 0));
            player.player_radio_emitter = ent;
        }
        return player.player_radio_emitter;
    }
    return undefined;
}

