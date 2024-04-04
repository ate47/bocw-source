// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace uav;

// Namespace uav/uav
// Params 0, eflags: 0x5
// Checksum 0x698f904a, Offset: 0xe8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"uav", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace uav/uav
// Params 0, eflags: 0x6 linked
// Checksum 0x82347b30, Offset: 0x138
// Size: 0xd0
function private preinit() {
    clientfield::register("scriptmover", "uav", 1, 1, "int", &spawned, 0, 0);
    clientfield::register("scriptmover", "uav_fx", 1, 1, "int", &function_5a528883, 0, 0);
    level.uav_bundle = getscriptbundle(function_6fe2ffad());
    level.var_ac260ded = [];
}

// Namespace uav/uav
// Params 7, eflags: 0x2 linked
// Checksum 0x38251c35, Offset: 0x210
// Size: 0xe6
function spawned(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        function_1877b7a1(fieldname, self getentitynumber(), level.uav_bundle.var_dd0e1146, level.uav_bundle.var_dd0e1146);
        self thread uav_think(fieldname);
        self renderoverridebundle::function_f4eab437(fieldname, 1, #"rob_sonar_set_enemy");
        return;
    }
    self notify(#"hash_6ff151958b7d1075");
}

// Namespace uav/uav
// Params 0, eflags: 0x6 linked
// Checksum 0xa63788a, Offset: 0x300
// Size: 0x2c
function private function_6fe2ffad() {
    if (sessionmodeiswarzonegame()) {
        return "killstreak_uav_wz";
    }
    return "killstreak_uav";
}

// Namespace uav/uav
// Params 1, eflags: 0x2 linked
// Checksum 0xf8976eb9, Offset: 0x338
// Size: 0xb4
function uav_think(localclientnum) {
    arrayremovevalue(level.var_ac260ded, undefined, 0);
    level.var_ac260ded[level.var_ac260ded.size] = self;
    self waittill(#"death", #"hash_6ff151958b7d1075");
    function_74ef482c(localclientnum, self getentitynumber());
    arrayremovevalue(level.var_ac260ded, self, 0);
}

// Namespace uav/uav
// Params 0, eflags: 0x2 linked
// Checksum 0xf3a8ab25, Offset: 0x3f8
// Size: 0x5c
function function_9784b3bf() {
    self endon(#"death", #"hash_6ff151958b7d1075");
    level waittill(#"hash_1b7241563645e156");
    if (isdefined(self)) {
        self function_811196d1(1);
    }
}

// Namespace uav/uav
// Params 7, eflags: 0x2 linked
// Checksum 0xb7565b9d, Offset: 0x460
// Size: 0x17e
function function_5a528883(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.killstreakbundle)) {
        self.killstreakbundle = level.uav_bundle;
    }
    if (!self function_ca024039()) {
        if (bwastimejump) {
            self.var_2695439d = self playloopsound(#"veh_uav_engine_loop", 1);
            self thread fx_think(fieldname);
            self.killstreakbundle = level.uav_bundle;
            self setcompassicon(self.killstreakbundle.var_cb98fbf7);
            self function_dce2238(1);
            self function_8e04481f();
            self function_27351ff6();
            level notify(#"hash_1b7241563645e156");
            self thread function_9784b3bf();
            return;
        }
        self notify(#"hash_780b1fb5c050cdc0");
    }
}

// Namespace uav/uav
// Params 1, eflags: 0x2 linked
// Checksum 0xc32e4c6c, Offset: 0x5e8
// Size: 0x4c
function fx_think(*localclientnum) {
    self waittill(#"death", #"hash_780b1fb5c050cdc0");
    self stoploopsound(self.var_2695439d);
}

