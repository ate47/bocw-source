// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace missile_turret;

// Namespace missile_turret/namespace_1b611bca
// Params 0, eflags: 0x2 linked
// Checksum 0xac6fd41, Offset: 0x118
// Size: 0x13c
function init_shared() {
    if (!isdefined(level.var_7f854017)) {
        level.var_7f854017 = {};
        clientfield::register("vehicle", "missile_turret_open", 1, 1, "int", &turret_open, 0, 0);
        clientfield::register("vehicle", "missile_turret_init", 1, 1, "int", &turret_init_anim, 0, 0);
        clientfield::register("vehicle", "missile_turret_close", 1, 1, "int", &turret_close_anim, 0, 0);
        clientfield::register("vehicle", "missile_turret_is_jammed_by_cuav", 1, 1, "int", &function_c1c49ac7, 0, 0);
    }
}

// Namespace missile_turret/namespace_1b611bca
// Params 7, eflags: 0x2 linked
// Checksum 0x783284f3, Offset: 0x260
// Size: 0xec
function turret_init_anim(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!bwastimejump) {
        return;
    }
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    self useanimtree("generic");
    self setanimrestart(#"o_turret_mini_deploy", 1, 0, 1);
    self setanimtime(#"o_turret_mini_deploy", 0);
}

// Namespace missile_turret/namespace_1b611bca
// Params 7, eflags: 0x2 linked
// Checksum 0xf25d8b42, Offset: 0x358
// Size: 0xdc
function turret_open(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!bwastimejump) {
        return;
    }
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    self function_1f0c7136(1);
    self useanimtree("generic");
    self setanimrestart(#"o_turret_mini_deploy", 1, 0, 1);
}

// Namespace missile_turret/namespace_1b611bca
// Params 7, eflags: 0x2 linked
// Checksum 0xa9ef9bdc, Offset: 0x440
// Size: 0x3c
function turret_close_anim(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}

// Namespace missile_turret/namespace_1b611bca
// Params 7, eflags: 0x2 linked
// Checksum 0x112b0381, Offset: 0x488
// Size: 0x138
function function_c1c49ac7(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self util::waittill_dobj(fieldname);
    if (!isdefined(self.weapon.var_96850284)) {
        return;
    }
    if (bwastimejump == 1) {
        self.var_37e84ddb = playtagfxset(fieldname, self.weapon.var_96850284, self);
        return;
    }
    if (isdefined(self.var_37e84ddb)) {
        foreach (fx in self.var_37e84ddb) {
            stopfx(fieldname, fx);
        }
    }
}

