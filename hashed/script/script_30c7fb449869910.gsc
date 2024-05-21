// Atian COD Tools GSC CW decompiler test
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_6b71c9befed901f2;
#using script_75c3996cce8959f7;
#using script_71603a58e2da0698;
#using script_37bec8bde3259abd;
#using script_30c7fb449869910;
#using script_d3ced43465e5aec;
#using script_771f5bff431d8d57;
#using script_42cbbdcd1e160063;
#using script_3314b730521b9666;
#using script_77163d5a569e2071;
#using script_38635d174016f682;
#using script_18910f59cc847b42;
#using scripts\core_common\struct.csc;
#using scripts\core_common\spawning_shared.csc;
#using scripts\core_common\spawner_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_dfc652ee;

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 0, eflags: 0x2 linked
// Checksum 0xf69ef0a1, Offset: 0x1f8
// Size: 0x1b4
function init() {
    clientfield::register("scriptmover", "pickuprotate", 1, 1, "int", &pickuprotate, 0, 0);
    clientfield::register("scriptmover", "pickupsettype", 1, 6 + 3, "int", &pickupsettype, 0, 0);
    clientfield::register("scriptmover", "pickupvisibility", 1, 1, "int", &function_d04f663, 0, 0);
    clientfield::register("scriptmover", "pickuptimeout", 1, 1, "int", &function_727ce85b, 0, 0);
    clientfield::register("scriptmover", "pickupmoveto", 1, 4, "int", &function_3577c445, 0, 0);
    level.doa.pickups = [];
    namespace_c501aa2e::init();
    namespace_5d515bd5::init();
    function_32d5e898();
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 1, eflags: 0x2 linked
// Checksum 0x842c7d6e, Offset: 0x3b8
// Size: 0xc
function function_32d5e898(*localclientnum) {
    
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 2, eflags: 0x2 linked
// Checksum 0x4241b344, Offset: 0x3d0
// Size: 0xb6
function function_c9502d74(type, variant) {
    foreach (pickup in level.doa.pickups) {
        if (pickup.type == type) {
            if (variant == pickup.variant) {
                return pickup;
            }
        }
    }
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 8, eflags: 0x2 linked
// Checksum 0x3b10c5a5, Offset: 0x490
// Size: 0xb8
function function_c1018360(modelname, type, variant, *rarity, modelscale, *angles, *data, *unused) {
    pickup = spawnstruct();
    pickup.modelname = modelscale;
    pickup.scale = unused;
    pickup.type = angles;
    pickup.variant = data;
    level.doa.pickups[level.doa.pickups.size] = pickup;
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 0, eflags: 0x2 linked
// Checksum 0x9642d291, Offset: 0x550
// Size: 0xe6
function function_3c872f01() {
    self notify("18efc16b8ff7b50c");
    self endon("18efc16b8ff7b50c");
    self endon(#"hash_326008b133edf46a", #"death", #"entityshutdown");
    dir = 180;
    if (randomint(100) > 50) {
        dir = -180;
    }
    time = randomfloatrange(3, 7);
    while (isdefined(self)) {
        self rotateto(self.angles + (0, dir, 0), time);
        wait(time);
    }
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 7, eflags: 0x2 linked
// Checksum 0xd4a12417, Offset: 0x640
// Size: 0x1ec
function pickupsettype(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.pickuptype = bwastimejump & (1 << 6) - 1;
    self.variant = bwastimejump >> 6;
    def = function_c9502d74(self.pickuptype, self.variant);
    assert(isdefined(def), "<unknown string>");
    if (!isdefined(def) || !isdefined(def.modelname)) {
        return;
    }
    self.var_f3b82c6d = namespace_ec06fe4a::spawnmodel(fieldname, self.origin, "tag_origin", self.angles, "pickup fakemodel");
    if (isdefined(self.var_f3b82c6d)) {
        self.var_f3b82c6d setmodel(def.modelname);
        self.var_f3b82c6d notsolid();
        self.var_f3b82c6d setscale(isdefined(self.scale) ? self.scale : 1);
        self.var_f3b82c6d linkto(self);
        self.var_f3b82c6d.angles = self.angles;
        self.var_f3b82c6d.pickup = self;
        self.var_f3b82c6d thread namespace_ec06fe4a::function_d55f042c(self, "death");
    }
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 7, eflags: 0x2 linked
// Checksum 0x404a3a1f, Offset: 0x838
// Size: 0xa4
function pickuprotate(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.var_f3b82c6d)) {
        return;
    }
    self.var_f3b82c6d.angles = self.angles;
    if (bwastimejump) {
        self.var_f3b82c6d thread function_3c872f01();
        return;
    }
    self.var_f3b82c6d notify(#"hash_326008b133edf46a");
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 7, eflags: 0x2 linked
// Checksum 0xd67aab11, Offset: 0x8e8
// Size: 0x94
function function_d04f663(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.var_f3b82c6d)) {
        return;
    }
    if (bwastimejump == 0) {
        self.var_f3b82c6d show();
        return;
    }
    if (bwastimejump == 1) {
        self.var_f3b82c6d hide();
    }
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 7, eflags: 0x2 linked
// Checksum 0x447aea9c, Offset: 0x988
// Size: 0x8c
function function_727ce85b(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.var_f3b82c6d)) {
        return;
    }
    if (bwastimejump) {
        self.var_f3b82c6d thread pickuptimeout(10);
        return;
    }
    self.var_f3b82c6d notify(#"hash_2a866f50cc161ca8");
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 1, eflags: 0x2 linked
// Checksum 0xb8b3f3a8, Offset: 0xa20
// Size: 0xe4
function pickuptimeout(timetowait) {
    if (timetowait <= 0) {
        return;
    }
    self endon(#"death", #"hash_2a866f50cc161ca8");
    wait(timetowait);
    for (i = 0; i < 40; i++) {
        if (!isdefined(self)) {
            break;
        }
        if (i % 2) {
            self hide();
        } else {
            self show();
        }
        if (i < 15) {
            wait(0.5);
            continue;
        }
        if (i < 25) {
            wait(0.25);
            continue;
        }
        wait(0.1);
    }
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 7, eflags: 0x2 linked
// Checksum 0xe43dc51b, Offset: 0xb10
// Size: 0x274
function function_3577c445(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.var_f3b82c6d)) {
        return;
    }
    player = undefined;
    bwastimejump -= 1;
    if (bwastimejump > 0) {
        if (bwastimejump == 15) {
            player = undefined;
        } else {
            entnum = (bwastimejump >> 1) - 1;
            players = getplayers(fieldname);
            foreach (guy in players) {
                if (guy getentitynumber() == entnum) {
                    player = guy;
                    break;
                }
            }
        }
    }
    self.var_f3b82c6d unlink();
    self.var_f3b82c6d notify(#"hash_2a866f50cc161ca8");
    flipped = 0;
    foreach (localplayer in getlocalplayers()) {
        if (localplayer getlocalclientnumber() === fieldname) {
            flipped = level.doa.var_f65cb6ee[localplayer.entnum];
            break;
        }
    }
    self.var_f3b82c6d thread function_4ecd84a8(player, flipped);
}

// Namespace namespace_dfc652ee/namespace_dfc652ee
// Params 2, eflags: 0x2 linked
// Checksum 0x3d816351, Offset: 0xd90
// Size: 0x18c
function function_4ecd84a8(player, flipped = 0) {
    self endon(#"death");
    self show();
    if (isdefined(player)) {
        x = 2000;
        y = 3000;
        z = 1000;
        if (flipped) {
            x = 0 - x;
            y = 0 - y;
        }
        var_a3046af4 = player.origin;
        entnum = player getentitynumber();
        if (entnum == 1) {
            y = 0 - y;
        } else if (entnum == 2) {
            x = 0 - x;
        } else if (entnum == 3) {
            y = 0 - y;
            x = 0 - x;
        }
        var_a3046af4 += (x, y, z);
    } else {
        var_a3046af4 = self.origin + (0, 0, 3000);
    }
    waitframe(1);
    self moveto(var_a3046af4, 2, 0, 0);
}

