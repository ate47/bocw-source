// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;

#namespace bot_difficulty;

// Namespace bot_difficulty/bot_difficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x8851bcf3, Offset: 0x88
// Size: 0x24
function preinit() {
    callback::on_joined_team(&function_e161bc77);
}

// Namespace bot_difficulty/bot_difficulty
// Params 1, eflags: 0x6 linked
// Checksum 0x1eaeaaa, Offset: 0xb8
// Size: 0x3c
function private function_e161bc77(*params) {
    if (!isbot(self)) {
        return;
    }
    self assign();
}

// Namespace bot_difficulty/bot_difficulty
// Params 0, eflags: 0x2 linked
// Checksum 0x24657f51, Offset: 0x100
// Size: 0x74
function assign() {
    sessionmode = currentsessionmode();
    switch (sessionmode) {
    case 1:
        self function_d46cc4f5();
        break;
    }
    self callback::callback(#"hash_730d00ef91d71acf");
}

// Namespace bot_difficulty/bot_difficulty
// Params 0, eflags: 0x6 linked
// Checksum 0xf13aa2dd, Offset: 0x180
// Size: 0x9a
function private function_d46cc4f5() {
    team = isdefined(self.pers[#"team"]) ? self.pers[#"team"] : self.team;
    difficulty = level function_c0e2f147(team);
    self.bot.difficulty = level function_abad20c4(difficulty);
}

// Namespace bot_difficulty/bot_difficulty
// Params 1, eflags: 0x6 linked
// Checksum 0x19759196, Offset: 0x228
// Size: 0xda
function private function_c0e2f147(team) {
    if (is_true(getgametypesetting(#"hash_c6a2e6c3e86125a"))) {
        return getgametypesetting(#"bot_difficulty_vs_bots");
    }
    if (!level.teambased) {
        team = #"allies";
    }
    teamstr = level.teams[team];
    if (!isdefined(teamstr)) {
        return undefined;
    }
    return getgametypesetting(#"hash_7a5a6325a6e843b7" + teamstr);
}

// Namespace bot_difficulty/bot_difficulty
// Params 1, eflags: 0x6 linked
// Checksum 0x45941a8f, Offset: 0x310
// Size: 0xfa
function private function_abad20c4(difficulty = 0) {
    switch (difficulty) {
    case 1:
        return getscriptbundle(#"hash_4e14664ff6086a77");
    case 2:
        return getscriptbundle(#"hash_70373311631d808e");
    case 3:
        return getscriptbundle(#"hash_4e151fcf3acee254");
    case 0:
    default:
        return getscriptbundle(#"hash_e8255beefa53aa1");
    }
}

