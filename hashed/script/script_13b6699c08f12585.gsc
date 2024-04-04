// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicles\driving_fx.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_f36ad2eb;

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x5
// Checksum 0xa66e2282, Offset: 0x1a0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_2838d085012cb7f", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0xfa6b5d4e, Offset: 0x1f0
// Size: 0x74
function private preinit() {
    vehicle::add_vehicletype_callback("player_large_helicopter_armada", &function_38ae4287);
    clientfield::register("scriptmover", "armada_chopper_deathfx", 1, 1, "int", &field_do_deathfx, 0, 0);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 2, eflags: 0x6 linked
// Checksum 0x3f7c129, Offset: 0x270
// Size: 0x5c
function private function_38ae4287(localclientnum, *data) {
    self.var_41860110 = &function_74272495;
    self.var_c6a9216 = &function_8411122e;
    self thread function_69fda304(data);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 7, eflags: 0x6 linked
// Checksum 0x1390283f, Offset: 0x2d8
// Size: 0x6c
function private field_do_deathfx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self util::playfxontag(fieldname, "vehicle/fx8_vdest_heli_fuselage_destroyed", self, "tag_origin");
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 7, eflags: 0x4
// Checksum 0x10690d5, Offset: 0x350
// Size: 0x112
function private function_b4806ee(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
    }
    if (isdefined(self.var_ec515b18)) {
        stopfx(fieldname, self.var_ec515b18);
        self.var_ec515b18 = undefined;
    }
    if (bwastimejump == 1) {
        if (isdefined(self.settings) && isdefined(self.settings.vehicle_turret)) {
            self.var_ec515b18 = self util::playfxontag(fieldname, self.settings.vehicle_turret, self, "tag_gunner_flash1");
        }
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 2, eflags: 0x6 linked
// Checksum 0xf0a769cf, Offset: 0x470
// Size: 0x102
function private function_8411122e(*localclientnum, *owner) {
    surfaces = [];
    if (isdefined(self.trace)) {
        if (self.trace[#"fraction"] != 1) {
            if (!isdefined(surfaces)) {
                surfaces = [];
            } else if (!isarray(surfaces)) {
                surfaces = array(surfaces);
            }
            if (!isinarray(surfaces, driving_fx::function_73e08cca(self.trace[#"surfacetype"]))) {
                surfaces[surfaces.size] = driving_fx::function_73e08cca(self.trace[#"surfacetype"]);
            }
        }
    }
    return surfaces;
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 2, eflags: 0x6 linked
// Checksum 0xb141fadd, Offset: 0x580
// Size: 0x18
function private function_74272495(*localclientnum, *owner) {
    return true;
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0xa4053e7a, Offset: 0x5a0
// Size: 0x106
function private function_69fda304(localclientnum) {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"enter_vehicle");
        if ("right" == "right") {
            self function_4e9da3d7(1);
        }
        if (isdefined(waitresult.player)) {
            if (waitresult.player function_21c0fa55()) {
                waitresult.player thread function_732976d8(localclientnum, self);
                self thread function_ef93e0f5(waitresult.player);
            }
        }
        self thread function_5e7d8e1e();
        waitframe(1);
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0x857d08d1, Offset: 0x6b0
// Size: 0x62
function private function_5e7d8e1e() {
    self notify("5825fc11634841f0");
    self endon("5825fc11634841f0");
    self endon(#"death", #"disconnect", #"exit_vehicle");
    while (true) {
        waitframe(1);
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x4
// Checksum 0xd35c9f2a, Offset: 0x720
// Size: 0x74
function private heli_exit(localclientnum) {
    self endon(#"death");
    self endon(#"disconnect");
    self waittill(#"exit_vehicle");
    self function_d1731820(localclientnum);
    self function_bada59a4();
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0x3af75d96, Offset: 0x7a0
// Size: 0xec
function private function_ef93e0f5(player) {
    seatnum = self getoccupantseat(0, player);
    if (1 && isdefined(seatnum) && seatnum == 0) {
        self setanim(#"hash_290085ad8119acd0");
        self setanim(#"hash_e020f4f0af0aef8");
        return;
    }
    if (0 && isdefined(seatnum) && seatnum != 0) {
        self setanim(#"hash_290085ad8119acd0");
        self setanim(#"hash_e020f4f0af0aef8");
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0x66bc0aae, Offset: 0x898
// Size: 0x44
function private function_bada59a4() {
    self clearanim(#"hash_290085ad8119acd0", 0);
    self clearanim(#"hash_e020f4f0af0aef8", 0);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0x25c40bab, Offset: 0x8e8
// Size: 0x4e
function private function_d1731820(localclientnum) {
    if (isdefined(self) && isdefined(self.var_a9757792)) {
        self stoprumble(localclientnum, self.var_a9757792);
        self.var_a9757792 = undefined;
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 2, eflags: 0x6 linked
// Checksum 0xa4d23561, Offset: 0x940
// Size: 0x84
function private function_ff8d2820(localclientnum, rumble) {
    if (!isdefined(self)) {
        return;
    }
    if (self.var_a9757792 === rumble) {
        return;
    }
    if (isdefined(self.var_a9757792)) {
        self function_d1731820(localclientnum);
    }
    self.var_a9757792 = rumble;
    self playrumblelooponentity(localclientnum, self.var_a9757792);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 2, eflags: 0x6 linked
// Checksum 0x13d1f326, Offset: 0x9d0
// Size: 0x23c
function private function_732976d8(localclientnum, vehicle) {
    self notify("464688c098446c3e");
    self endon("464688c098446c3e");
    self endon(#"death");
    self endon(#"disconnect");
    var_26408b5d = sqr(210);
    offsetorigin = (0, 0, 210 * 2);
    while (true) {
        if (!isdefined(vehicle) || !isinvehicle(localclientnum, vehicle)) {
            break;
        }
        if (!vehicle isdrivingvehicle(self) && self function_21c0fa55()) {
            self function_d1731820(localclientnum);
            wait(1);
            continue;
        }
        trace = bullettrace(vehicle.origin, vehicle.origin - offsetorigin, 0, vehicle, 1);
        distsqr = distancesquared(vehicle.origin, trace[#"position"]);
        if (trace[#"fraction"] == 1) {
            self function_d1731820(localclientnum);
            wait(1);
            continue;
        }
        if (distsqr > var_26408b5d) {
            self function_d1731820(localclientnum);
            wait(0.2);
            continue;
        }
        self function_ff8d2820(localclientnum, "fallwind_loop_slow");
        wait(0.2);
    }
    self function_d1731820(localclientnum);
}

