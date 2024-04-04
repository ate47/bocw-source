// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreak_vehicle.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\killstreaks\remote_weapons.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreak_detect.gsc;

#namespace recon_car;

// Namespace recon_car/recon_car
// Params 0, eflags: 0x5
// Checksum 0x8f0c4bb3, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register("recon_car", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x6 linked
// Checksum 0x51fac6d4, Offset: 0x170
// Size: 0x44
function private preinit() {
    killstreak_detect::init_shared();
    remote_weapons::init_shared();
    killstreaks::function_b5b6ef3e(&init_killstreak);
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x59c35f13, Offset: 0x1c0
// Size: 0x94
function init_killstreak() {
    if (sessionmodeiswarzonegame()) {
        bundle = getscriptbundle("killstreak_recon_car_wz");
    } else {
        bundle = getscriptbundle("killstreak_recon_car");
    }
    killstreak_vehicle::init_killstreak(bundle);
    vehicle::add_main_callback("vehicle_t9_rcxd_racing", &function_d1661ada);
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0xc5a8a483, Offset: 0x260
// Size: 0x154
function function_d1661ada() {
    self killstreak_vehicle::init_vehicle(&function_d4789bf5);
    self util::make_sentient();
    self.var_7d4f75e = 1;
    self.ignore_death_jolt = 1;
    self.var_92043a49 = 1;
    self.var_20c65a3e = 0;
    self disabledriverfiring(1);
    self.var_a6ab9a09 = 1;
    self.var_5ab0177c = 1;
    bundle = killstreaks::get_script_bundle("recon_car");
    if (is_true(bundle.var_dad2e3a2)) {
        self.predictedcollisiontime = 0.1;
        self thread function_819fff9d();
    }
    if (isdefined(bundle.var_1c30ba81)) {
        self.var_a0f50ca8 = &function_2087b17f;
    }
    self.var_62b033f0 = &function_76817ccc;
    self thread function_f3170551();
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x3a9cf7dc, Offset: 0x3c0
// Size: 0x12
function function_d4789bf5() {
    self.var_99c7a1bc = self.weapon;
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x8012e615, Offset: 0x3e0
// Size: 0x108
function function_819fff9d() {
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"veh_predictedcollision");
        if (isplayer(waitresult.target) && util::function_fbce7263(self.team, waitresult.target.team)) {
            if (isdefined(self.owner) && isdefined(self.var_22a05c26.var_d3413870)) {
                self.owner killstreaks::function_e9873ef7(self.var_22a05c26.var_d3413870, self.killstreak_id, #"hash_20e53d0989f408e6");
            }
            self killstreak_vehicle::function_1f46c433();
        }
    }
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x95d6cf5e, Offset: 0x4f0
// Size: 0x128
function function_f3170551() {
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"veh_landed");
        bundle = killstreaks::get_script_bundle("recon_car");
        if (isdefined(bundle.var_b771831a)) {
            a_trace = groundtrace(self.origin + (0, 0, 70), self.origin + (0, 0, -100), 0, self);
            str_fx = self getfxfromsurfacetable(bundle.var_b771831a, a_trace[#"surfacetype"]);
            playfx(str_fx, a_trace[#"position"], (0, 0, 1));
        }
    }
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x1638fa36, Offset: 0x620
// Size: 0x134
function function_2087b17f() {
    bundle = killstreaks::get_script_bundle("recon_car");
    trace = groundtrace(self.origin + (0, 0, 70), self.origin + (0, 0, -100), 0, self);
    explosionfx = self getfxfromsurfacetable(bundle.var_1c30ba81, trace[#"surfacetype"]);
    if (isdefined(explosionfx)) {
        fxorigin = self gettagorigin("tag_body");
        if (!isdefined(fxorigin)) {
            fxorigin = self.origin;
        }
        playfx(explosionfx, fxorigin, (0, 0, 1));
    }
    playsoundatposition(#"hash_2d5cdc03d392d5ec", self.origin);
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x58ee5b75, Offset: 0x760
// Size: 0x64
function function_76817ccc() {
    if (isdefined(self.owner) && isdefined(self.var_22a05c26.var_d3413870)) {
        self.owner killstreaks::function_e9873ef7(self.var_22a05c26.var_d3413870, self.killstreak_id, #"hash_b7109f8dd0ceb9");
    }
}

