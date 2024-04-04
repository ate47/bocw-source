// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace hatchet;

// Namespace hatchet/hatchet
// Params 0, eflags: 0x5
// Checksum 0xe362c999, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hatchet", &init_shared, undefined, undefined, undefined);
}

// Namespace hatchet/hatchet
// Params 0, eflags: 0x2 linked
// Checksum 0x721241c0, Offset: 0x118
// Size: 0x3c
function init_shared() {
    weaponobjects::function_e6400478(#"hatchet", &function_1679806a, 1);
}

// Namespace hatchet/hatchet
// Params 1, eflags: 0x2 linked
// Checksum 0xc670620a, Offset: 0x160
// Size: 0xbc
function function_1679806a(s_watcher) {
    s_watcher.onspawn = &function_16a186f;
    s_watcher.ondamage = &util::void;
    s_watcher.onspawnretrievetriggers = &weaponobjects::function_23b0aea9;
    s_watcher.pickup = &weaponobjects::function_d9219ce2;
    s_watcher.ontimeout = &function_27ae0902;
    s_watcher.onfizzleout = &function_27ae0902;
    if (isdefined(level.createhatchetwatcher)) {
        self [[ level.createhatchetwatcher ]](s_watcher);
    }
}

// Namespace hatchet/hatchet
// Params 0, eflags: 0x2 linked
// Checksum 0x2eae4e, Offset: 0x228
// Size: 0x9c
function function_27ae0902() {
    e_fx = spawn("script_model", self.origin);
    e_fx setmodel(#"tag_origin");
    e_fx.angles = self.angles;
    playfxontag(#"hash_522eb6eca07bfe70", e_fx, "tag_origin");
    self delete();
}

// Namespace hatchet/hatchet
// Params 2, eflags: 0x2 linked
// Checksum 0xc5cb4acd, Offset: 0x2d0
// Size: 0x6c
function function_16a186f(*s_watcher, player) {
    self notify("6ccb7151796e717a");
    self endon("6ccb7151796e717a");
    self childthread function_e95b2776();
    if (isdefined(level.playthrowhatchet)) {
        player [[ level.playthrowhatchet ]](self);
    }
}

// Namespace hatchet/hatchet
// Params 0, eflags: 0x2 linked
// Checksum 0x580e7adb, Offset: 0x348
// Size: 0x55a
function function_e95b2776() {
    self endon(#"delete", #"death");
    while (true) {
        waitresult = self waittill(#"stationary");
        if (!isdefined(waitresult.target)) {
            self.angles = angleclamp180(self.angles);
            v_right = anglestoright(self.angles);
            var_6731520b = vectorcross(waitresult.normal, v_right);
            if (lengthsquared(var_6731520b) < 0.1) {
                println("<unknown string>");
                break;
            }
            var_6731520b = vectornormalize(var_6731520b);
            n_angle = acos(var_6731520b[2]) - 90;
            a_safe = [n_angle + 50, n_angle + 160];
            var_19e2c116 = [self.angles[0] - a_safe[0], a_safe[1] - self.angles[0]];
            /#
                if (getdvarint(#"hash_4bdc3028494aedcb", 0)) {
                    line(waitresult.position, waitresult.position + waitresult.normal * 10, (1, 0, 0), 1, 0, 100);
                    line(waitresult.position, waitresult.position + var_6731520b * 10, (0, 1, 0), 1, 0, 100);
                    var_a9f6fc6a = waitresult.position + anglestoforward(self.angles) * 10;
                    line(waitresult.position, var_a9f6fc6a, (1, 0.5, 0), 1, 0, 100);
                    print3d(var_a9f6fc6a, self.angles[0], (1, 0.5, 0), 1, 0.05, 100, 1);
                    line(waitresult.position, waitresult.position + v_right * 10, (0, 0, 1), 1, 0, 100);
                    var_d3d43ca3 = self.angles;
                    var_d3d43ca3 = (a_safe[0], var_d3d43ca3[1], var_d3d43ca3[2]);
                    var_a9f6fc6a = waitresult.position + anglestoforward(var_d3d43ca3) * 10;
                    line(waitresult.position, var_a9f6fc6a, (1, 1, 0), 1, 0, 100);
                    print3d(var_a9f6fc6a, a_safe[0], (1, 1, 0), 1, 0.05, 100, 1);
                    var_d3d43ca3 = (a_safe[1], var_d3d43ca3[1], var_d3d43ca3[2]);
                    var_a9f6fc6a = waitresult.position + anglestoforward(var_d3d43ca3) * 10;
                    line(waitresult.position, var_a9f6fc6a, (1, 1, 0), 1, 0, 100);
                    print3d(var_a9f6fc6a, a_safe[1], (1, 1, 0), 1, 0.05, 100, 1);
                }
            #/
            if (var_19e2c116[0] * var_19e2c116[1] < 0) {
                n_pitch = absangleclamp180(var_19e2c116[0]) > absangleclamp180(var_19e2c116[1]) ? a_safe[1] : a_safe[0];
                self.angles = (n_pitch, self.angles[1], self.angles[2]);
            }
            break;
        }
    }
}

