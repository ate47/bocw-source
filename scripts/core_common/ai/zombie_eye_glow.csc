// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zombie_eye_glow;

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x5
// Checksum 0xff1186ac, Offset: 0x1b8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zombie_eye_glow", &preinit, &postinit, undefined, undefined);
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x4
// Checksum 0x70e61070, Offset: 0x210
// Size: 0x4c
function private preinit() {
    clientfield::register("actor", "zombie_eye_glow", 1, 3, "int", &zombie_eye_glow, 0, 0);
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function private postinit() {
    
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 7, eflags: 0x0
// Checksum 0x16d5a6dd, Offset: 0x278
// Size: 0x244
function zombie_eye_glow(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self good_barricade_damaged(fieldname);
    if (bwastimejump > 0) {
        if (isdefined(self.var_a63f638a)) {
            self.var_12b59dee = self.var_a63f638a;
        } else {
            switch (bwastimejump) {
            case 2:
                self.var_12b59dee = "rob_zm_eyes_blue";
                break;
            case 3:
                self.var_12b59dee = "rob_zm_eyes_green";
                break;
            case 4:
                self.var_12b59dee = "rob_zm_eyes_orange";
                break;
            case 5:
                self.var_12b59dee = "rob_zm_eyes_red";
                break;
            default:
                self.var_12b59dee = "rob_zm_eyes_orange";
                break;
            }
        }
        if (isdefined(self.var_d5fd20ef)) {
            var_d40cd873 = self.var_d5fd20ef;
        } else {
            switch (bwastimejump) {
            case 2:
                var_d40cd873 = "wz/fx8_zombie_eye_glow_blue_wz";
                break;
            case 3:
                var_d40cd873 = "wz/fx8_zombie_eye_glow_green_wz";
                break;
            case 4:
                var_d40cd873 = "zm_ai/fx8_zombie_eye_glow_orange";
                break;
            case 5:
                var_d40cd873 = "zm_ai/fx8_zombie_eye_glow_red";
                break;
            default:
                var_d40cd873 = "zm_ai/fx8_zombie_eye_glow_orange";
                break;
            }
        }
        self function_fe127aaf(fieldname, self.var_12b59dee, var_d40cd873);
    }
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 1, eflags: 0x0
// Checksum 0x4d2211a4, Offset: 0x4c8
// Size: 0x7e
function good_barricade_damaged(localclientnum) {
    if (isdefined(self.var_12b59dee)) {
        self stoprenderoverridebundle(self.var_12b59dee, "j_head");
        self.var_12b59dee = undefined;
    }
    if (isdefined(self.var_3231a850)) {
        stopfx(localclientnum, self.var_3231a850);
        self.var_3231a850 = undefined;
    }
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 3, eflags: 0x4
// Checksum 0x6ad7e05, Offset: 0x550
// Size: 0xba
function private function_fe127aaf(localclientnum, var_ee6bcd51, str_fx) {
    if (isdefined(var_ee6bcd51)) {
        self playrenderoverridebundle(var_ee6bcd51, "j_head");
        self.var_12b59dee = var_ee6bcd51;
    }
    if (isdefined(str_fx)) {
        if (isdefined(self.var_f87f8fa0)) {
            self.var_3231a850 = util::playfxontag(localclientnum, str_fx, self, self.var_f87f8fa0);
            return;
        }
        self.var_3231a850 = util::playfxontag(localclientnum, str_fx, self, "j_eyeball_le");
    }
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 3, eflags: 0x0
// Checksum 0x3d15c9ae, Offset: 0x618
// Size: 0x74
function function_3a020b0f(localclientnum, var_ee6bcd51 = "rob_zm_eyes_orange", str_fx = "zm_ai/fx8_zombie_eye_glow_orange") {
    self good_barricade_damaged(localclientnum);
    self function_fe127aaf(localclientnum, var_ee6bcd51, str_fx);
}

