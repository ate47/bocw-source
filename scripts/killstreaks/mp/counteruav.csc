// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace counteruav;

// Namespace counteruav/counteruav
// Params 0, eflags: 0x5
// Checksum 0x77cd4a97, Offset: 0x110
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"counteruav", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace counteruav/counteruav
// Params 0, eflags: 0x6 linked
// Checksum 0x7f558bd5, Offset: 0x160
// Size: 0xd8
function private preinit() {
    clientfield::register("scriptmover", "counteruav", 1, 1, "int", &enabled, 0, 0);
    clientfield::register("scriptmover", "counteruav_fx", 1, 1, "int", &function_5a528883, 0, 0);
    level.var_8c4291cb = [];
    level.var_a03cd507 = getscriptbundle(function_df836293());
    level.counteruavs = [];
}

// Namespace counteruav/counteruav
// Params 0, eflags: 0x6 linked
// Checksum 0x39cc2a50, Offset: 0x240
// Size: 0x2c
function private function_df836293() {
    if (sessionmodeiswarzonegame()) {
        return "killstreak_counteruav_wz";
    }
    return "killstreak_counteruav";
}

// Namespace counteruav/counteruav
// Params 7, eflags: 0x2 linked
// Checksum 0x5ce7da34, Offset: 0x278
// Size: 0xe6
function enabled(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self renderoverridebundle::function_f4eab437(fieldname, 1, #"rob_sonar_set_enemy");
        function_e5a9ae33(fieldname, self getentitynumber(), level.var_a03cd507.var_c23de6e6);
        self thread function_c2aa1607(fieldname);
        self.killstreakbundle = level.var_a03cd507;
        return;
    }
    self notify(#"hash_367b9a7b1a2d9523");
}

// Namespace counteruav/counteruav
// Params 1, eflags: 0x2 linked
// Checksum 0x762555bf, Offset: 0x368
// Size: 0xb4
function function_c2aa1607(localclientnum) {
    arrayremovevalue(level.counteruavs, undefined, 0);
    level.counteruavs[level.counteruavs.size] = self;
    self waittill(#"death", #"hash_367b9a7b1a2d9523");
    function_4236032b(localclientnum, self getentitynumber());
    arrayremovevalue(level.counteruavs, self, 0);
}

// Namespace counteruav/counteruav
// Params 0, eflags: 0x2 linked
// Checksum 0x4a1a3f8f, Offset: 0x428
// Size: 0x64
function function_d8f4d00d() {
    self endon(#"death", #"hash_367b9a7b1a2d9523");
    level waittill("new_cuav_" + self.team);
    if (isdefined(self)) {
        self function_811196d1(1);
    }
}

// Namespace counteruav/counteruav
// Params 7, eflags: 0x2 linked
// Checksum 0xbc6f190b, Offset: 0x498
// Size: 0x164
function function_5a528883(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.killstreakbundle)) {
        self.killstreakbundle = level.var_a03cd507;
    }
    if (!self function_ca024039()) {
        if (bwastimejump) {
            self.var_2695439d = self playloopsound(#"veh_uav_engine_loop", 1);
            self thread fx_think(fieldname);
        } else {
            self notify(#"hash_286d0c022220571a");
        }
    }
    if (bwastimejump) {
        self setcompassicon(self.killstreakbundle.var_cb98fbf7);
        self function_dce2238(1);
        self function_8e04481f();
        level notify("new_cuav_" + self.team);
        self thread function_d8f4d00d();
    }
}

// Namespace counteruav/counteruav
// Params 1, eflags: 0x2 linked
// Checksum 0xe6f9d50, Offset: 0x608
// Size: 0x4c
function fx_think(*localclientnum) {
    self waittill(#"death", #"hash_286d0c022220571a");
    self stoploopsound(self.var_2695439d);
}

