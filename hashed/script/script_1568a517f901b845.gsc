// Atian COD Tools GSC CW decompiler test
#using script_7922dc472341c85c;
#using scripts\killstreaks\killstreak_detect.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace napalm_strike;

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x2 linked
// Checksum 0xc490d44a, Offset: 0x120
// Size: 0x150
function init_shared(bundlename) {
    killstreak_detect::init_shared();
    level.var_30e551f4 = getscriptbundle(bundlename);
    clientfield::register("scriptmover", "" + #"hash_72f92383f772d276", 1, 1, "int", &function_e0221c63, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_3d8e05debfa62f2d", 1, 1, "int", &function_818e69da, 0, 0);
    clientfield::register("missile", "" + #"hash_77346335cbe9ecde", 1, 1, "int", &function_344bba9b, 0, 0);
    level.var_a25fd5e1 = [];
}

// Namespace napalm_strike/namespace_b00a727a
// Params 7, eflags: 0x2 linked
// Checksum 0x3a690cc6, Offset: 0x278
// Size: 0x28c
function function_e0221c63(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    util::waittill_dobj(fieldname);
    arrayremovevalue(level.var_a25fd5e1, undefined, 0);
    level.var_a25fd5e1[level.var_a25fd5e1.size] = self;
    if (bwastimejump) {
        util::playfxontag(fieldname, level.var_30e551f4.var_2375a152, self, level.var_30e551f4.var_e5082065);
        util::playfxontag(fieldname, level.var_30e551f4.var_a6f96498, self, "tag_body");
        util::playfxontag(fieldname, level.var_30e551f4.var_ee8aabc3, self, "tag_fx_engine_l");
        util::playfxontag(fieldname, level.var_30e551f4.var_ee8aabc3, self, "tag_fx_engine_r");
        self renderoverridebundle::function_f4eab437(fieldname, 1, #"rob_sonar_set_enemy");
        localplayer = function_5c10bd79(fieldname);
        self function_1f0c7136(2);
        if (localplayer hasperk(fieldname, #"specialty_showscorestreakicons") || self.team == localplayer.team) {
            self setcompassicon(level.var_30e551f4.var_cb98fbf7);
            self function_5e00861(level.var_30e551f4.var_c3e4af00);
            var_b13727dd = getgametypesetting("compassAnchorScorestreakIcons");
            self function_dce2238(var_b13727dd);
        }
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 7, eflags: 0x2 linked
// Checksum 0xb81857eb, Offset: 0x510
// Size: 0xc4
function function_818e69da(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    util::waittill_dobj(fieldname);
    if (bwastimejump) {
        self playrumbleonentity(fieldname, level.var_30e551f4.var_12c482a2);
        return;
    }
    self stoprumble(fieldname, level.var_30e551f4.var_12c482a2);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 7, eflags: 0x2 linked
// Checksum 0xcfd5513d, Offset: 0x5e0
// Size: 0xa4
function function_344bba9b(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    forward = anglestoforward(self.angles);
    playfx(bwastimejump, level.var_30e551f4.var_f6580c0b, self.origin, (0, 0, 1), (forward[0], forward[1], 0));
}

// Namespace napalm_strike/entity_spawned
// Params 1, eflags: 0x20
// Checksum 0x17d04a89, Offset: 0x690
// Size: 0x32
function event_handler[entity_spawned] codecallback_entityspawned(*eventstruct) {
    if (self.weapon.name !== #"napalm_strike") {
        return;
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x4
// Checksum 0x98f5e923, Offset: 0x6d0
// Size: 0x24
function private function_69d7c128() {
    function_3385d776(level.var_30e551f4.var_f6580c0b);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x4
// Checksum 0x5611d318, Offset: 0x700
// Size: 0x24
function private function_a998da59() {
    function_c22a1ca2(level.var_30e551f4.var_f6580c0b);
}

