// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_77b8863;

// Namespace namespace_77b8863/namespace_77b8863
// Params 0, eflags: 0x1
// Checksum 0xa6dbd884, Offset: 0x190
// Size: 0x5c
function autoexec main() {
    clientfield::register("scriptmover", "towers_boss_dust_ball_fx", 1, getminbitcountfornum(4), "int", &function_72955447, 0, 0);
}

// Namespace namespace_77b8863/namespace_77b8863
// Params 7, eflags: 0x2 linked
// Checksum 0xac1c320, Offset: 0x1f8
// Size: 0x19c
function function_72955447(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.fx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_attack_slam_trail_lg", self, "tag_origin");
        return;
    }
    if (bwastimejump == 2) {
        if (isdefined(self.fx)) {
            stopfx(fieldname, self.fx);
        }
        self.fx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_attack_slam_trail", self, "tag_origin");
        return;
    }
    if (bwastimejump == 3) {
        if (isdefined(self.fx)) {
            stopfx(fieldname, self.fx);
        }
        self.fx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_death_soul_trail", self, "tag_origin");
        return;
    }
    if (isdefined(self.fx)) {
        self.fx = util::playfxontag(fieldname, "maps/zm_towers/fx8_boss_attack_slam_trail_end", self, "tag_origin");
        stopfx(fieldname, self.fx);
    }
}

