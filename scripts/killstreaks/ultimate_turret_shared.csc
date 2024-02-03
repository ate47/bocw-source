// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace ultimate_turret;

// Namespace ultimate_turret/ultimate_turret_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc299e103, Offset: 0x118
// Size: 0x144
function init_shared() {
    if (!isdefined(level.var_1427245)) {
        level.var_1427245 = {};
        clientfield::register("vehicle", "ultimate_turret_open", 1, 1, "int", &turret_open, 0, 0);
        clientfield::register("vehicle", "ultimate_turret_init", 1, 1, "int", &turret_init_anim, 0, 0);
        clientfield::register("vehicle", "ultimate_turret_close", 1, 1, "int", &turret_close_anim, 0, 0);
        clientfield::register_clientuimodel("hudItems.ultimateTurretCount", #"hash_6f4b11a0bee9b73d", #"ultimateturretcount", 1, 3, "int", undefined, 0, 0);
    }
}

// Namespace ultimate_turret/ultimate_turret_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x963dbd6a, Offset: 0x268
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

// Namespace ultimate_turret/ultimate_turret_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xf20ace2d, Offset: 0x360
// Size: 0xc4
function turret_open(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!bwastimejump) {
        return;
    }
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    self useanimtree("generic");
    self setanimrestart(#"o_turret_mini_deploy", 1, 0, 1);
}

// Namespace ultimate_turret/ultimate_turret_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x1e034281, Offset: 0x430
// Size: 0x3c
function turret_close_anim(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}

