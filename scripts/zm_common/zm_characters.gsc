// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_maptable.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_characters;

// Namespace zm_characters/zm_characters
// Params 0, eflags: 0x5
// Checksum 0xe08cc77a, Offset: 0x790
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_characters", &preinit, undefined, undefined, undefined);
}

// Namespace zm_characters/zm_characters
// Params 0, eflags: 0x6 linked
// Checksum 0x49670886, Offset: 0x7d8
// Size: 0x7c
function private preinit() {
    if (!isdefined(level.var_e52a681)) {
        level.var_e52a681 = 0;
    }
    level.var_e824f826 = 1;
    level.precachecustomcharacters = &precachecustomcharacters;
    initcharacterstartindex();
    /#
        zm_devgui::add_custom_devgui_callback(&function_9436b105);
    #/
}

/#

    // Namespace zm_characters/zm_characters
    // Params 1, eflags: 0x4
    // Checksum 0xfcdb592a, Offset: 0x860
    // Size: 0x94
    function private zombie_force_char(n_char) {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        set_character(n_char);
    }

    // Namespace zm_characters/zm_characters
    // Params 1, eflags: 0x4
    // Checksum 0x56474fd7, Offset: 0x900
    // Size: 0x104
    function private function_9436b105(cmd) {
        if (issubstr(cmd, "vox_plr_3_exert_pain_high_3")) {
            tokens = strtok(cmd, "<unknown string>");
            player = int(getsubstr(tokens[0], "<unknown string>".size));
            character = int(tokens[tokens.size - 1]);
            players = getplayers();
            players[player - 1] thread zombie_force_char(character);
        }
    }

#/

// Namespace zm_characters/zm_characters
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xa10
// Size: 0x4
function precachecustomcharacters() {
    
}

// Namespace zm_characters/zm_characters
// Params 0, eflags: 0x2 linked
// Checksum 0x27c88a1f, Offset: 0xa20
// Size: 0x24
function initcharacterstartindex() {
    level.characterstartindex = randomint(4);
}

// Namespace zm_characters/zm_characters
// Params 0, eflags: 0x0
// Checksum 0x91ef621f, Offset: 0xa50
// Size: 0x46
function selectcharacterindextouse() {
    if (level.characterstartindex >= 4) {
        level.characterstartindex = 0;
    }
    self.characterindex = level.characterstartindex;
    level.characterstartindex++;
    return self.characterindex;
}

// Namespace zm_characters/zm_characters
// Params 0, eflags: 0x2 linked
// Checksum 0xc8783f8b, Offset: 0xaa0
// Size: 0x212
function function_b04c6f1f() {
    playerroletemplatecount = getplayerroletemplatecount(currentsessionmode());
    var_36918d27 = [];
    var_e7d30c12 = undefined;
    for (i = 0; i < playerroletemplatecount; i++) {
        /#
            if (isbot(self)) {
                if (function_f4bf7e3f(i, currentsessionmode())) {
                    if (!isdefined(var_36918d27)) {
                        var_36918d27 = [];
                    } else if (!isarray(var_36918d27)) {
                        var_36918d27 = array(var_36918d27);
                    }
                    var_36918d27[var_36918d27.size] = i;
                }
                continue;
            }
        #/
        rf = getplayerrolefields(i, currentsessionmode());
        if (isdefined(rf) && is_true(rf.isdefaultcharacter)) {
            if (!isdefined(var_36918d27)) {
                var_36918d27 = [];
            } else if (!isarray(var_36918d27)) {
                var_36918d27 = array(var_36918d27);
            }
            var_36918d27[var_36918d27.size] = i;
        }
        if (isdefined(rf)) {
            if (!isdefined(var_e7d30c12)) {
                var_e7d30c12 = i;
            }
        }
    }
    var_72964a59 = isdefined(array::random(var_36918d27)) ? array::random(var_36918d27) : 0;
    if (var_72964a59 == 0) {
        return var_e7d30c12;
    }
    return var_72964a59;
}

// Namespace zm_characters/zm_characters
// Params 1, eflags: 0x2 linked
// Checksum 0x735dc5df, Offset: 0xcc0
// Size: 0x27c
function set_character(character) {
    self detachall();
    if (isdefined(character)) {
        if (isarray(character)) {
            self.characterindex = get_character_index(character);
        } else {
            self.characterindex = character;
        }
    }
    if (!isdefined(self.characterindex) || !player_role::is_valid(self.characterindex)) {
        self.characterindex = self player_role::function_2a911680();
        /#
            if (self ishost() && getdvarstring(#"force_char") != "<unknown string>") {
                self.characterindex = getdvarint(#"force_char", 0);
            }
        #/
        if (self.characterindex == 0) {
            self.characterindex = function_b04c6f1f();
        }
        self.pers[#"characterindex"] = self.characterindex;
    }
    player_role::set(self.characterindex);
    self.favorite_wall_weapons_list = [];
    self.talks_in_danger = 0;
    if (!isdefined(level.var_6f14e9e1)) {
        level.var_6f14e9e1 = [];
    } else if (!isarray(level.var_6f14e9e1)) {
        level.var_6f14e9e1 = array(level.var_6f14e9e1);
    }
    if (!isinarray(level.var_6f14e9e1, self)) {
        level.var_6f14e9e1[level.var_6f14e9e1.size] = self;
    }
    characterindex = function_dc232a80();
    if (isdefined(characterindex)) {
        zm_audio::setexertvoice(characterindex);
    }
}

// Namespace zm_characters/zm_characters
// Params 0, eflags: 0x0
// Checksum 0x633f684e, Offset: 0xf48
// Size: 0x8ec
function setup_personality_character_exerts() {
    level.exert_sounds[1][#"burp"][0] = "vox_plr_0_exert_burp_0";
    level.exert_sounds[1][#"burp"][1] = "vox_plr_0_exert_burp_1";
    level.exert_sounds[1][#"burp"][2] = "vox_plr_0_exert_burp_2";
    level.exert_sounds[1][#"burp"][3] = "vox_plr_0_exert_burp_3";
    level.exert_sounds[1][#"burp"][4] = "vox_plr_0_exert_burp_4";
    level.exert_sounds[1][#"burp"][5] = "vox_plr_0_exert_burp_5";
    level.exert_sounds[1][#"burp"][6] = "vox_plr_0_exert_burp_6";
    level.exert_sounds[2][#"burp"][0] = "vox_plr_1_exert_burp_0";
    level.exert_sounds[2][#"burp"][1] = "vox_plr_1_exert_burp_1";
    level.exert_sounds[2][#"burp"][2] = "vox_plr_1_exert_burp_2";
    level.exert_sounds[2][#"burp"][3] = "vox_plr_1_exert_burp_3";
    level.exert_sounds[3][#"burp"][0] = "vox_plr_2_exert_burp_0";
    level.exert_sounds[3][#"burp"][1] = "vox_plr_2_exert_burp_1";
    level.exert_sounds[3][#"burp"][2] = "vox_plr_2_exert_burp_2";
    level.exert_sounds[3][#"burp"][3] = "vox_plr_2_exert_burp_3";
    level.exert_sounds[3][#"burp"][4] = "vox_plr_2_exert_burp_4";
    level.exert_sounds[3][#"burp"][5] = "vox_plr_2_exert_burp_5";
    level.exert_sounds[3][#"burp"][6] = "vox_plr_2_exert_burp_6";
    level.exert_sounds[4][#"burp"][0] = "vox_plr_3_exert_burp_0";
    level.exert_sounds[4][#"burp"][1] = "vox_plr_3_exert_burp_1";
    level.exert_sounds[4][#"burp"][2] = "vox_plr_3_exert_burp_2";
    level.exert_sounds[4][#"burp"][3] = "vox_plr_3_exert_burp_3";
    level.exert_sounds[4][#"burp"][4] = "vox_plr_3_exert_burp_4";
    level.exert_sounds[4][#"burp"][5] = "vox_plr_3_exert_burp_5";
    level.exert_sounds[4][#"burp"][6] = "vox_plr_3_exert_burp_6";
    level.exert_sounds[1][#"hitmed"][0] = "vox_plr_0_exert_pain_medium_0";
    level.exert_sounds[1][#"hitmed"][1] = "vox_plr_0_exert_pain_medium_1";
    level.exert_sounds[1][#"hitmed"][2] = "vox_plr_0_exert_pain_medium_2";
    level.exert_sounds[1][#"hitmed"][3] = "vox_plr_0_exert_pain_medium_3";
    level.exert_sounds[2][#"hitmed"][0] = "vox_plr_1_exert_pain_medium_0";
    level.exert_sounds[2][#"hitmed"][1] = "vox_plr_1_exert_pain_medium_1";
    level.exert_sounds[2][#"hitmed"][2] = "vox_plr_1_exert_pain_medium_2";
    level.exert_sounds[2][#"hitmed"][3] = "vox_plr_1_exert_pain_medium_3";
    level.exert_sounds[3][#"hitmed"][0] = "vox_plr_2_exert_pain_medium_0";
    level.exert_sounds[3][#"hitmed"][1] = "vox_plr_2_exert_pain_medium_1";
    level.exert_sounds[3][#"hitmed"][2] = "vox_plr_2_exert_pain_medium_2";
    level.exert_sounds[3][#"hitmed"][3] = "vox_plr_2_exert_pain_medium_3";
    level.exert_sounds[4][#"hitmed"][0] = "vox_plr_3_exert_pain_medium_0";
    level.exert_sounds[4][#"hitmed"][1] = "vox_plr_3_exert_pain_medium_1";
    level.exert_sounds[4][#"hitmed"][2] = "vox_plr_3_exert_pain_medium_2";
    level.exert_sounds[4][#"hitmed"][3] = "vox_plr_3_exert_pain_medium_3";
    level.exert_sounds[1][#"hitlrg"][0] = "vox_plr_0_exert_pain_high_0";
    level.exert_sounds[1][#"hitlrg"][1] = "vox_plr_0_exert_pain_high_1";
    level.exert_sounds[1][#"hitlrg"][2] = "vox_plr_0_exert_pain_high_2";
    level.exert_sounds[1][#"hitlrg"][3] = "vox_plr_0_exert_pain_high_3";
    level.exert_sounds[2][#"hitlrg"][0] = "vox_plr_1_exert_pain_high_0";
    level.exert_sounds[2][#"hitlrg"][1] = "vox_plr_1_exert_pain_high_1";
    level.exert_sounds[2][#"hitlrg"][2] = "vox_plr_1_exert_pain_high_2";
    level.exert_sounds[2][#"hitlrg"][3] = "vox_plr_1_exert_pain_high_3";
    level.exert_sounds[3][#"hitlrg"][0] = "vox_plr_2_exert_pain_high_0";
    level.exert_sounds[3][#"hitlrg"][1] = "vox_plr_2_exert_pain_high_1";
    level.exert_sounds[3][#"hitlrg"][2] = "vox_plr_2_exert_pain_high_2";
    level.exert_sounds[3][#"hitlrg"][3] = "vox_plr_2_exert_pain_high_3";
    level.exert_sounds[4][#"hitlrg"][0] = "vox_plr_3_exert_pain_high_0";
    level.exert_sounds[4][#"hitlrg"][1] = "vox_plr_3_exert_pain_high_1";
    level.exert_sounds[4][#"hitlrg"][2] = "vox_plr_3_exert_pain_high_2";
    level.exert_sounds[4][#"hitlrg"][3] = "vox_plr_3_exert_pain_high_3";
}

// Namespace zm_characters/zm_characters
// Params 1, eflags: 0x2 linked
// Checksum 0x3319a7dd, Offset: 0x1840
// Size: 0xce
function get_character_index(character) {
    var_ba015ed = getplayerroletemplatecount(currentsessionmode());
    for (i = 0; i < var_ba015ed; i++) {
        name = function_ac0419ac(i, currentsessionmode());
        if (isinarray(character, name)) {
            return i;
        }
    }
    assertmsg("<unknown string>");
    return 0;
}

// Namespace zm_characters/zm_characters
// Params 2, eflags: 0x0
// Checksum 0x927232ef, Offset: 0x1918
// Size: 0x12a
function function_d35e4c92(characterindex, var_fdf0f13d = 0) {
    if (isdefined(characterindex)) {
        if (var_fdf0f13d || player_role::is_valid(characterindex)) {
            fields = getplayerrolefields(characterindex, currentsessionmode());
            if (isdefined(fields)) {
                return fields.var_2a42c5e0;
            }
        }
    } else if (isdefined(self) && isplayer(self)) {
        characterindex = player_role::get();
        if (player_role::is_valid(characterindex)) {
            fields = getplayerrolefields(player_role::get(), currentsessionmode());
            if (isdefined(fields)) {
                return fields.var_2a42c5e0;
            }
        }
    }
    return 0;
}

// Namespace zm_characters/zm_characters
// Params 1, eflags: 0x2 linked
// Checksum 0xe1ec835d, Offset: 0x1a50
// Size: 0x126
function function_dc232a80(character) {
    if (isdefined(self) && isplayer(self)) {
        characterindex = player_role::get();
    } else if (isarray(character)) {
        characterindex = get_character_index(character);
    }
    if (isdefined(characterindex)) {
        if (player_role::is_valid(characterindex)) {
            fields = getplayerrolefields(player_role::get(), currentsessionmode());
            if (isdefined(fields.var_3e570307)) {
                return fields.var_3e570307;
            } else {
                return 0;
            }
        }
        assertmsg("<unknown string>" + characterindex);
    }
    return 0;
}

// Namespace zm_characters/zm_characters
// Params 1, eflags: 0x0
// Checksum 0x9238e7, Offset: 0x1b80
// Size: 0xe6
function is_character(character) {
    assert(isplayer(self));
    if (isdefined(self) && isplayer(self)) {
        characterindex = player_role::get();
        if (player_role::is_valid(characterindex)) {
            name = function_b14806c6(player_role::get(), currentsessionmode());
            return isinarray(character, name);
        }
    }
    return 0;
}

