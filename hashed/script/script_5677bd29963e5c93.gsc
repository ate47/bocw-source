// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\animation_shared.csc;

#namespace namespace_80c07c34;

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 0, eflags: 0x5
// Checksum 0x53ad9a02, Offset: 0x118
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_75bfc88140adb680", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 0, eflags: 0x6 linked
// Checksum 0x60ecd5fe, Offset: 0x170
// Size: 0x44
function private _preload() {
    function_ad272ef4();
    function_90ceecf8();
    function_7c9b0132();
    function_bc948200();
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x1c0
// Size: 0x4
function private function_fa076c68() {
    
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 0, eflags: 0x6 linked
// Checksum 0xdd5a48d7, Offset: 0x1d0
// Size: 0x20
function private function_ad272ef4() {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 0, eflags: 0x6 linked
// Checksum 0x40edb4ae, Offset: 0x1f8
// Size: 0x7c
function private function_90ceecf8() {
    animation::add_notetrack_func("vfx_cp_util::fire_weapon", &fire_weapon);
    animation::add_notetrack_func("vfx_cp_util::start_firing_weapon", &function_7b038ec3);
    animation::add_notetrack_func("vfx_cp_util::stop_firing_weapon", &function_e6084ba1);
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x280
// Size: 0x4
function private function_7c9b0132() {
    
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x290
// Size: 0x4
function private function_bc948200() {
    
}

/#

    // Namespace namespace_80c07c34/namespace_80c07c34
    // Params 2, eflags: 0x4
    // Checksum 0x354109f0, Offset: 0x2a0
    // Size: 0x12c
    function private function_5da462f3(startpos, angles) {
        forward = anglestoforward(angles);
        right = anglestoright(angles);
        up = anglestoup(angles);
        endpos = startpos + vectorscale(forward, 1000);
        line(startpos, endpos, (1, 0, 0), 1, 1, 10);
        endpos = startpos + vectorscale(right, 250);
        line(startpos, endpos, (0, 1, 0), 1, 1, 10);
        endpos = startpos + vectorscale(up, 250);
        line(startpos, endpos, (0, 0, 1), 1, 1, 10);
    }

#/

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 1, eflags: 0x2 linked
// Checksum 0x5fd963ee, Offset: 0x3d8
// Size: 0x11c
function fire_weapon(*parms) {
    self endon(#"death");
    if (!isdefined(self.localclientnum) || !isdefined(self.weapon)) {
        println("<unknown string>");
        return;
    }
    startpos = self gettagorigin("tag_flash");
    angles = self gettagangles("tag_flash");
    if (isdefined(startpos) && isdefined(self.weapon.name) && isdefined(angles) && self.weapon.name != #"none") {
        self magicbullet(self.weapon, startpos, angles);
    }
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 1, eflags: 0x2 linked
// Checksum 0x5f631b56, Offset: 0x500
// Size: 0xee
function function_7b038ec3(parms) {
    self notify("cc0866372ca2bf9");
    self endon("cc0866372ca2bf9");
    self endon(#"death", #"hash_53fdcb0020b4588c");
    if (!isdefined(self.localclientnum) || !isdefined(self.weapon)) {
        println("<unknown string>");
        return;
    }
    delay = isdefined(self.weapon.firetime) ? self.weapon.firetime : 0.09;
    while (true) {
        self fire_weapon(parms);
        wait(delay);
    }
}

// Namespace namespace_80c07c34/namespace_80c07c34
// Params 1, eflags: 0x2 linked
// Checksum 0x6abcd9dd, Offset: 0x5f8
// Size: 0x1e
function function_e6084ba1(*parms) {
    self notify(#"hash_53fdcb0020b4588c");
}

