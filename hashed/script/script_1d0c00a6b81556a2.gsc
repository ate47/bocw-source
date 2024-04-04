// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_543dc48f;

// Namespace namespace_543dc48f/namespace_543dc48f
// Params 0, eflags: 0x5
// Checksum 0x148abff9, Offset: 0x90
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_2e174447c1bc5bd6", &preinit, undefined, undefined, #"zm_weapons");
}

// Namespace namespace_543dc48f/namespace_543dc48f
// Params 0, eflags: 0x6 linked
// Checksum 0xe75dadd5, Offset: 0xe0
// Size: 0x4c
function private preinit() {
    level.var_5714f442 = 25;
    level.var_a77fcfbe = &function_dafd9cd;
    callback::on_connect(&on_connect);
}

// Namespace namespace_543dc48f/namespace_543dc48f
// Params 0, eflags: 0x6 linked
// Checksum 0x8bf6c30d, Offset: 0x138
// Size: 0x34
function private on_connect() {
    callback::function_d8abfc3d(#"hash_4b807b1167b4a811", &function_c5b14b2f);
}

// Namespace namespace_543dc48f/namespace_543dc48f
// Params 0, eflags: 0x6 linked
// Checksum 0xe6ee9ab, Offset: 0x178
// Size: 0x4e
function private function_c5b14b2f() {
    callback::function_d8abfc3d(#"done_healing", &function_afade0d0);
    self.var_f7500d42 = self.health;
    self.ignore_health_regen_delay = 1;
}

// Namespace namespace_543dc48f/namespace_543dc48f
// Params 0, eflags: 0x6 linked
// Checksum 0x6ae13101, Offset: 0x1d0
// Size: 0x92
function private function_afade0d0() {
    callback::function_52ac9652(#"done_healing", &function_afade0d0);
    if (isdefined(self.var_f7500d42)) {
        self.var_c2b7641c = self.health - self.var_f7500d42;
        self notify(#"hash_18e59631bf777496", {#heal_amount:self.var_c2b7641c});
    }
    self.ignore_health_regen_delay = 0;
}

// Namespace namespace_543dc48f/namespace_543dc48f
// Params 2, eflags: 0x2 linked
// Checksum 0xfe596ea9, Offset: 0x270
// Size: 0xca
function function_dafd9cd(attacker, damage) {
    if (gettime() < self.heal.var_a1cac2f1) {
        return false;
    }
    if (!is_true(self.heal.var_f0f1ff36) && damage < getdvarfloat(#"hash_3671f84e911fb747", isdefined(level.var_5714f442) ? level.var_5714f442 : 0)) {
        return false;
    }
    if (isdefined(level.deathcircle) && level.deathcircle === attacker) {
        return false;
    }
    return true;
}

