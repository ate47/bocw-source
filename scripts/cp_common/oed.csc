// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace oed;

// Namespace oed/oed
// Params 0, eflags: 0x5
// Checksum 0xb9a86276, Offset: 0x1c0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"oed", &preinit, undefined, undefined, undefined);
}

// Namespace oed/oed
// Params 0, eflags: 0x6 linked
// Checksum 0xd168f300, Offset: 0x208
// Size: 0x2cc
function private preinit() {
    clientfield::register("toplayer", "sitrep_toggle", 1, 1, "int", &function_8305981d, 0, 0);
    clientfield::register("toplayer", "active_dni_fx", 1, 1, "counter", &function_81c8f4da, 0, 0);
    clientfield::register("toplayer", "hack_dni_fx", 1, 1, "counter", &hack_dni_fx, 0, 0);
    clientfield::register("actor", "sitrep_material", 1, 1, "int", &function_fb942d18, 0, 0);
    clientfield::register("vehicle", "sitrep_material", 1, 1, "int", &function_fb942d18, 0, 0);
    clientfield::register("scriptmover", "sitrep_material", 1, 1, "int", &function_fb942d18, 0, 0);
    clientfield::register("item", "sitrep_material", 1, 1, "int", &function_fb942d18, 0, 0);
    clientfield::register("vehicle", "turret_keyline_render", 1, 1, "int", &function_c2b3ec13, 0, 0);
    clientfield::register("vehicle", "vehicle_keyline_toggle", 1, 1, "int", &vehicle_keyline_toggle, 0, 0);
    callback::on_spawned(&on_player_spawned);
    callback::on_localclient_shutdown(&on_localplayer_shutdown);
}

// Namespace oed/oed
// Params 1, eflags: 0x2 linked
// Checksum 0x2e3d9524, Offset: 0x4e0
// Size: 0x7c
function on_player_spawned(localclientnum) {
    var_1d3b43d0 = 10500;
    var_9abc8c03 = 3000;
    if (isdefined(level.var_8df232be)) {
        var_1d3b43d0 = level.var_8df232be;
    }
    if (isdefined(level.var_9f5b2c84)) {
        var_9abc8c03 = level.var_9f5b2c84;
    }
    self thread function_66d9f518(localclientnum);
}

// Namespace oed/oed
// Params 1, eflags: 0x2 linked
// Checksum 0xeb07c57, Offset: 0x568
// Size: 0xc
function on_localplayer_shutdown(*localclientnum) {
    
}

// Namespace oed/oed
// Params 7, eflags: 0x2 linked
// Checksum 0xb8ce98fe, Offset: 0x580
// Size: 0x5c
function function_81c8f4da(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self thread postfx::playpostfxbundle(#"hash_2ffa41d555c1e46e");
}

// Namespace oed/oed
// Params 7, eflags: 0x2 linked
// Checksum 0x5b858e8a, Offset: 0x5e8
// Size: 0x7c
function hack_dni_fx(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self thread postfx::playpostfxbundle(#"hash_28506c424004a886");
    self playsound(0, #"hash_3afb4f0542190053");
}

// Namespace oed/oed
// Params 7, eflags: 0x2 linked
// Checksum 0x1d81043f, Offset: 0x670
// Size: 0x94
function function_8305981d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!self function_21c0fa55()) {
        return;
    }
    if (!isdefined(self.localclientnum)) {
        return;
    }
    if (self.localclientnum != fieldname) {
        return;
    }
    self thread function_182c5d6b(fieldname, bwastimejump);
}

// Namespace oed/oed
// Params 2, eflags: 0x2 linked
// Checksum 0x3c34074f, Offset: 0x710
// Size: 0x38
function function_182c5d6b(*lcn, newval) {
    self.var_bef05351 = newval;
    level notify(#"player_sitrep_toggle");
}

// Namespace oed/oed
// Params 7, eflags: 0x2 linked
// Checksum 0x6db07d8b, Offset: 0x750
// Size: 0xb4
function function_fb942d18(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    assert(isdefined(self), "<unknown string>");
    if (bwastimejump == 1) {
        self thread function_88883a8f(fieldname);
        return;
    }
    self notify(#"hash_16a083f97a5204f3");
    self function_e4f63ce7(fieldname);
}

// Namespace oed/oed
// Params 1, eflags: 0x6 linked
// Checksum 0x316d10bc, Offset: 0x810
// Size: 0x10c
function private function_88883a8f(localclientnum) {
    self endon(#"hash_16a083f97a5204f3");
    if (function_73f4b33(localclientnum) === self.team || self.team === #"none" || self.script_team === #"any") {
        self function_67243557(localclientnum);
        if (isdefined(self)) {
            self thread function_f8588df3(localclientnum, &function_67243557, &function_e4f63ce7);
            self waittill(#"death");
            if (isdefined(self)) {
                self function_e4f63ce7(localclientnum);
            }
        }
    }
}

// Namespace oed/oed
// Params 1, eflags: 0x6 linked
// Checksum 0x452908c6, Offset: 0x928
// Size: 0x84
function private function_67243557(localclientnum) {
    self endon(#"death", #"hash_16a083f97a5204f3");
    while (is_true(isigcactive(localclientnum))) {
        waitframe(1);
    }
    self playrenderoverridebundle(#"hash_44a7b967f9f18d4f");
}

// Namespace oed/oed
// Params 1, eflags: 0x6 linked
// Checksum 0x277cc3ae, Offset: 0x9b8
// Size: 0x34
function private function_e4f63ce7(*localclientnum) {
    if (isdefined(self)) {
        self stoprenderoverridebundle(#"hash_44a7b967f9f18d4f");
    }
}

// Namespace oed/oed
// Params 3, eflags: 0x2 linked
// Checksum 0x67b7f431, Offset: 0x9f8
// Size: 0x222
function function_f8588df3(localclientnum, var_80583f56, var_1ca727c) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death", #"disconnect", #"hash_16a083f97a5204f3");
    e_player = function_5c10bd79(localclientnum);
    self.var_cc9b9440 = 1;
    while (true) {
        waitresult = level waittill(#"igc_activated", #"player_sitrep_toggle");
        if (isigcactive(localclientnum)) {
            if (self.var_cc9b9440) {
                self [[ var_1ca727c ]](localclientnum);
                self.var_cc9b9440 = 0;
            }
            continue;
        }
        if (isdefined(e_player)) {
            if (waitresult._notify == "igc_activated" && is_true(e_player.var_bef05351)) {
                if (!waitresult.b_active && !self.var_cc9b9440) {
                    self [[ var_80583f56 ]](localclientnum);
                    self.var_cc9b9440 = 1;
                }
                continue;
            }
            if (waitresult._notify == "player_sitrep_toggle" && is_true(e_player.var_bef05351)) {
                if (!self.var_cc9b9440) {
                    self [[ var_80583f56 ]](localclientnum);
                    self.var_cc9b9440 = 1;
                }
                continue;
            }
            if (!is_true(e_player.var_bef05351)) {
                if (self.var_cc9b9440) {
                    self [[ var_1ca727c ]](localclientnum);
                    self.var_cc9b9440 = 0;
                }
            }
        }
    }
}

// Namespace oed/oed
// Params 1, eflags: 0x2 linked
// Checksum 0xf4f2acc1, Offset: 0xc28
// Size: 0xe4
function function_66d9f518(localclientnum) {
    self endon(#"disconnect");
    if (function_73f4b33(localclientnum) != self.team) {
        return;
    }
    self function_a47e049d(localclientnum);
    if (isdefined(self)) {
        self thread function_f8588df3(localclientnum, &function_a47e049d, &function_ac5dfb21);
        self waittill(#"death", #"hash_16a083f97a5204f3");
        if (isdefined(self)) {
            self function_ac5dfb21(localclientnum);
        }
    }
}

// Namespace oed/oed
// Params 1, eflags: 0x6 linked
// Checksum 0xf4b87658, Offset: 0xd18
// Size: 0xf4
function private function_a47e049d(localclientnum) {
    self endon(#"death", #"disconnect");
    localclient = function_5c10bd79(localclientnum);
    if (self.team == function_73f4b33(localclientnum) && localclient != self && !is_true(self.var_d676dcaa)) {
        while (is_true(isigcactive(localclientnum))) {
            waitframe(1);
        }
        self playrenderoverridebundle(#"hash_1cbf6d26721c59a7");
    }
}

// Namespace oed/oed
// Params 1, eflags: 0x6 linked
// Checksum 0x764f23c8, Offset: 0xe18
// Size: 0x64
function private function_ac5dfb21(localclientnum) {
    localclient = function_5c10bd79(localclientnum);
    if (isdefined(self) && localclient != self) {
        self stoprenderoverridebundle(#"hash_1cbf6d26721c59a7");
    }
}

// Namespace oed/oed
// Params 7, eflags: 0x2 linked
// Checksum 0x3f01ff41, Offset: 0xe88
// Size: 0x96
function function_c2b3ec13(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && self.team == function_73f4b33(fieldname)) {
        self thread function_66d9f518(fieldname);
        return;
    }
    self notify(#"hash_16a083f97a5204f3");
}

// Namespace oed/oed
// Params 7, eflags: 0x2 linked
// Checksum 0x3e4bf0bd, Offset: 0xf28
// Size: 0x2ee
function vehicle_keyline_toggle(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    e_player = function_5c10bd79(fieldname);
    e_player endon(#"death", #"disconnect");
    self endon(#"death");
    waitframe(1);
    var_80730518 = getplayervehicle(e_player);
    if (bwastimejump == 1) {
        foreach (var_ac85c33a in getplayers(fieldname)) {
            if (isbot(var_ac85c33a) && var_ac85c33a.owner === e_player && var_80730518 === self && (self.archetype === "fighter" || self.scriptvehicletype === "player_fav")) {
                var_ac85c33a thread function_39273849(1);
            }
        }
        if (self !== var_80730518 && self.team === function_73f4b33(fieldname)) {
            self thread function_66d9f518(fieldname);
        }
        return;
    }
    foreach (var_ac85c33a in getplayers(fieldname)) {
        if (isbot(var_ac85c33a) && var_ac85c33a.owner === e_player && !isdefined(var_80730518)) {
            var_ac85c33a thread function_39273849(0);
        }
    }
    self notify(#"hash_16a083f97a5204f3");
    self.var_4e2bc5fc = undefined;
}

// Namespace oed/oed
// Params 1, eflags: 0x2 linked
// Checksum 0xaeaa14cd, Offset: 0x1220
// Size: 0xd6
function function_39273849(b_disabled) {
    self notify(#"hash_7faffd382697c916");
    self endon(#"death", #"hash_7faffd382697c916");
    while (is_true(self.owner.var_4e2bc5fc)) {
        wait(0.2);
    }
    if (b_disabled) {
        self stoprenderoverridebundle(#"hash_1cbf6d26721c59a7");
        self.var_d676dcaa = 1;
        return;
    }
    self playrenderoverridebundle(#"hash_1cbf6d26721c59a7");
    self.var_d676dcaa = undefined;
}

