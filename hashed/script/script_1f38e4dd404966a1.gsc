// Atian COD Tools GSC CW decompiler test
#using script_312c65d6c946308;
#using scripts\core_common\lightning_chain.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\aat_shared.csc;

#namespace namespace_86c9684b;

// Namespace namespace_86c9684b/namespace_86c9684b
// Params 0, eflags: 0x0
// Checksum 0x93607567, Offset: 0x2d0
// Size: 0x2ac
function function_af1f180() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    aat::register("ammomod_deadwire", #"zmui/zm_ammomod_deadwire", "ui_icon_zombie_ammomod_deadwire_stacked");
    aat::register("ammomod_deadwire_1", #"zmui/zm_ammomod_deadwire", "ui_icon_zombie_ammomod_deadwire_stacked");
    aat::register("ammomod_deadwire_2", #"zmui/zm_ammomod_deadwire", "ui_icon_zombie_ammomod_deadwire_stacked");
    aat::register("ammomod_deadwire_3", #"zmui/zm_ammomod_deadwire", "ui_icon_zombie_ammomod_deadwire_stacked");
    aat::register("ammomod_deadwire_4", #"zmui/zm_ammomod_deadwire", "ui_icon_zombie_ammomod_deadwire_stacked");
    aat::register("ammomod_deadwire_5", #"zmui/zm_ammomod_deadwire", "ui_icon_zombie_ammomod_deadwire_stacked");
    clientfield::register("actor", "zm_ammomod_deadwire_explosion", 1, 1, "counter", &function_4e26277b, 0, 0);
    clientfield::register("vehicle", "zm_ammomod_deadwire_explosion", 1, 1, "counter", &function_4e26277b, 0, 0);
    clientfield::register("actor", "zm_ammomod_deadwire_zap", 1, 4, "int", &function_1a3ad2d7, 0, 0);
    clientfield::register("vehicle", "zm_ammomod_deadwire_zap", 1, 4, "int", &function_1a3ad2d7, 0, 0);
    clientfield::register("toplayer", "ammomod_deadwire_proc", 1, 1, "counter", &function_9e014d56, 1, 0);
}

// Namespace namespace_86c9684b/namespace_86c9684b
// Params 7, eflags: 0x0
// Checksum 0xca45f0d2, Offset: 0x588
// Size: 0x64
function function_9e014d56(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playviewmodelfx(bwastimejump, #"hash_27f96ae62c620a7f", "tag_fx1", 0);
}

// Namespace namespace_86c9684b/namespace_86c9684b
// Params 7, eflags: 0x0
// Checksum 0x21d5646c, Offset: 0x5f8
// Size: 0x246
function function_1a3ad2d7(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        str_fx_tag = isdefined(self gettagorigin("j_spine4")) ? "j_spine4" : "tag_origin";
        if (bwastimejump > 5) {
            self.var_5900d892 = util::playfxontag(fieldname, "zm_weapons/fx9_aat_dead_wire_lvl5_aoe", self, str_fx_tag);
        } else if (bwastimejump >= 2 && bwastimejump <= 5) {
            self.var_5900d892 = util::playfxontag(fieldname, "zm_weapons/fx9_aat_dead_wire_lvl2_aoe", self, str_fx_tag);
        }
        self.var_43835d52 = util::playfxontag(fieldname, "zm_weapons/fx9_aat_dead_wire_lvl1_stun", self, str_fx_tag);
        if (!isdefined(self.var_8d3dbdcc)) {
            self playsound(0, #"hash_20d0ecdd50323b09", self.origin + vectorscale((0, 0, 1), 50));
            self.var_8d3dbdcc = self playloopsound("zmb_ammomod_deadwire_stunned_lp");
        }
    } else {
        if (isdefined(self.var_43835d52)) {
            stopfx(fieldname, self.var_43835d52);
            self.var_43835d52 = undefined;
        }
        if (isdefined(self.var_5900d892)) {
            stopfx(fieldname, self.var_5900d892);
            self.var_5900d892 = undefined;
        }
        if (isdefined(self.var_8d3dbdcc)) {
            self stoploopsound(self.var_8d3dbdcc);
            self.var_8d3dbdcc = undefined;
        }
    }
}

// Namespace namespace_86c9684b/namespace_86c9684b
// Params 7, eflags: 0x0
// Checksum 0xf02786a3, Offset: 0x848
// Size: 0xac
function function_4e26277b(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isalive(self)) {
        self thread function_d84b2bab(bwastimejump);
        self playsound(bwastimejump, #"hash_20d0ecdd50323b09", self.origin + vectorscale((0, 0, 1), 50));
    }
}

// Namespace namespace_86c9684b/namespace_86c9684b
// Params 1, eflags: 0x0
// Checksum 0x965537ed, Offset: 0x900
// Size: 0x2e
function function_a4b3da97(trace) {
    if (trace[#"fraction"] < 1) {
        return 0;
    }
    return 1;
}

// Namespace namespace_86c9684b/namespace_86c9684b
// Params 1, eflags: 0x0
// Checksum 0xc81a707f, Offset: 0x938
// Size: 0x2a8
function function_d84b2bab(localclientnum) {
    player = function_5c10bd79(localclientnum);
    n_range = player namespace_e86ffa8::function_cd6787b(localclientnum, 2) ? 288 : 144;
    zombies = getentitiesinradius(localclientnum, self.origin, n_range, 15);
    waittime = float(150) / 1000;
    var_6e75c10a = "beam9_zm_aat_dead_wire_arc";
    pos = (self.origin[0], self.origin[1], self.origin[2] + 50);
    foreach (zombie in zombies) {
        if (zombie != self && distance2d(self.origin, zombie.origin) < n_range && isalive(zombie)) {
            var_ccfd8635 = zombie.origin;
            trace = beamtrace(pos, var_ccfd8635, 1, self, 1);
            str_fx_tag = isdefined(self gettagorigin("j_spine4")) ? "j_spine4" : "tag_origin";
            if (self function_a4b3da97(trace)) {
                beam_id = self beam::launch(self, str_fx_tag, zombie, str_fx_tag, var_6e75c10a);
                level thread function_149bbdd9(localclientnum, waittime, beam_id);
            }
        }
    }
}

// Namespace namespace_86c9684b/namespace_86c9684b
// Params 3, eflags: 0x0
// Checksum 0xb27c6f4c, Offset: 0xbe8
// Size: 0x54
function function_149bbdd9(localclientnum, waittime, beam_id) {
    level endon(#"game_ended");
    wait(waittime);
    self beam::function_47deed80(localclientnum, beam_id);
}
