// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zombie_eye_glow;

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x5
// Checksum 0x39968b63, Offset: 0xd0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zombie_eye_glow", &preinit, &postinit, undefined, undefined);
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x4
// Checksum 0xba9784a7, Offset: 0x128
// Size: 0x74
function private preinit() {
    clientfield::register("actor", "zombie_eye_glow", 1, 3, "int");
    callback::on_ai_spawned(&on_ai_spawned);
    callback::on_ai_killed(&on_ai_killed);
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x1a8
// Size: 0x4
function private postinit() {
    
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x0
// Checksum 0xa5b349b7, Offset: 0x1b8
// Size: 0x74
function on_ai_spawned() {
    self endon(#"death");
    if (self.archetype === #"zombie") {
        self thread delayed_zombie_eye_glow();
        callback::function_d8abfc3d(#"head_gibbed", &function_95cae3e3);
    }
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 1, eflags: 0x0
// Checksum 0x197c5626, Offset: 0x238
// Size: 0x3c
function on_ai_killed(*params) {
    if (self.archetype === #"zombie") {
        self function_95cae3e3();
    }
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 1, eflags: 0x0
// Checksum 0xde1878db, Offset: 0x280
// Size: 0xac
function delayed_zombie_eye_glow(var_64959d6d) {
    self notify("4ce8b1e0390be791");
    self endon("4ce8b1e0390be791");
    self endon(#"death");
    if (is_true(self.in_the_ground) || is_true(self.in_the_ceiling)) {
        while (!isdefined(self.create_eyes)) {
            wait(0.1);
        }
    } else {
        wait(0.5);
    }
    self function_b43f92cd(var_64959d6d);
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 1, eflags: 0x0
// Checksum 0x69645857, Offset: 0x338
// Size: 0xdc
function function_b43f92cd(var_64959d6d = 1) {
    if (!isdefined(self) || !isactor(self)) {
        return;
    }
    if (isdefined(self.var_1f966535)) {
        var_64959d6d = self.var_1f966535;
    } else if (isdefined(level.var_1f966535)) {
        var_64959d6d = level.var_1f966535;
    }
    if (!is_true(self.no_eye_glow) && !is_true(self.is_inert)) {
        self clientfield::set("zombie_eye_glow", var_64959d6d);
    }
}

// Namespace zombie_eye_glow/zombie_eye_glow
// Params 0, eflags: 0x0
// Checksum 0x2f487e88, Offset: 0x420
// Size: 0x4c
function function_95cae3e3() {
    if (!isdefined(self) || !isactor(self)) {
        return;
    }
    self clientfield::set("zombie_eye_glow", 0);
}

