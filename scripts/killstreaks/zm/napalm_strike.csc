// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\killstreaks\zm\airsupport.csc;
#using script_1568a517f901b845;

#namespace napalm_strike;

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x5
// Checksum 0x84db1e18, Offset: 0x180
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"napalm_strike", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x6 linked
// Checksum 0x30382f07, Offset: 0x1d0
// Size: 0xcc
function private preinit() {
    init_shared("killstreak_napalm_strike" + "_zm");
    clientfield::register("scriptmover", "napalm_strike_marker_on", 1, 2, "int", &napalm_strike_marker_on, 0, 0);
    namespace_bf7415ae::function_fc85e1a("napalm_strike", &function_85f3e359, &function_e72f1d06, &show_marker, &function_4362abef);
}

// Namespace napalm_strike/napalm_strike
// Params 7, eflags: 0x2 linked
// Checksum 0x27ea7ea9, Offset: 0x2a8
// Size: 0x31c
function napalm_strike_marker_on(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        player = function_27673a7(fieldname);
        if (!is_true(self.allocated)) {
            namespace_bf7415ae::function_9cb260fd(fieldname, "napalm_strike", self);
            self.allocated = 1;
        }
        if (isplayer(player) && isdefined(self.var_595cc3a1)) {
            player postfx::function_c8b5f318("pstfx_napalm_strike_bundle", #"hash_1dc8a3cb360b2900" + self.var_595cc3a1, 4);
        }
        return;
    }
    if (bwastimejump == 2) {
        player = function_27673a7(fieldname);
        if (isplayer(player) && isdefined(self.var_595cc3a1)) {
            self notify(#"hash_6cb3344e363fe563");
            player postfx::function_c8b5f318("pstfx_napalm_strike_bundle", #"hash_1dc8a3cb360b2900" + self.var_595cc3a1, 4);
            if (isdefined(self.markerfx)) {
                stopfx(fieldname, self.markerfx);
            }
            player function_f43fb0d3(self);
            self.markerfx = function_239993de(fieldname, "sr/fx9_kill_streak_marker_activate", self, "tag_origin");
        }
        return;
    }
    if (bwastimejump == 3) {
        player = function_27673a7(fieldname);
        if (!is_true(self.allocated)) {
            namespace_bf7415ae::function_9cb260fd(fieldname, "napalm_strike", self);
            self.allocated = 1;
        }
        if (isplayer(player) && isdefined(self.var_595cc3a1)) {
            player postfx::function_c8b5f318("pstfx_napalm_strike_bundle", #"hash_1dc8a3cb360b2900" + self.var_595cc3a1, 3);
        }
        return;
    }
    namespace_bf7415ae::function_f06fadf2(fieldname, "napalm_strike", self);
    if (isdefined(self.markerfx)) {
        stopfx(fieldname, self.markerfx);
    }
}

// Namespace napalm_strike/napalm_strike
// Params 1, eflags: 0x2 linked
// Checksum 0xf5831531, Offset: 0x5d0
// Size: 0x84
function function_85f3e359(localclientnum) {
    player = function_27673a7(localclientnum);
    if (isplayer(player) && !player function_d2cb869e("pstfx_napalm_strike_bundle")) {
        player codeplaypostfxbundle("pstfx_napalm_strike_bundle");
    }
}

// Namespace napalm_strike/napalm_strike
// Params 1, eflags: 0x2 linked
// Checksum 0xa7aa3105, Offset: 0x660
// Size: 0x84
function function_e72f1d06(localclientnum) {
    player = function_27673a7(localclientnum);
    if (isplayer(player) && player function_d2cb869e("pstfx_napalm_strike_bundle")) {
        player codestoppostfxbundle("pstfx_napalm_strike_bundle");
    }
}

// Namespace napalm_strike/napalm_strike
// Params 2, eflags: 0x2 linked
// Checksum 0x7cab6253, Offset: 0x6f0
// Size: 0xdc
function show_marker(localclientnum, marker) {
    level thread function_6a08eb03(localclientnum, marker);
    player = function_27673a7(localclientnum);
    if (isplayer(player)) {
        player postfx::function_c8b5f318("pstfx_napalm_strike_bundle", #"hash_1dc8a3cb360b2900" + marker.var_595cc3a1, 4);
        player postfx::function_c8b5f318("pstfx_napalm_strike_bundle", #"radius " + marker.var_595cc3a1, 290);
    }
}

// Namespace napalm_strike/napalm_strike
// Params 2, eflags: 0x2 linked
// Checksum 0x842d6ac6, Offset: 0x7d8
// Size: 0x9c
function function_4362abef(localclientnum, marker) {
    level notify(#"hash_14d956289c0e8ff0" + marker.var_595cc3a1);
    player = function_27673a7(localclientnum);
    if (isplayer(player)) {
        player postfx::function_c8b5f318("pstfx_napalm_strike_bundle", #"hash_1dc8a3cb360b2900" + marker.var_595cc3a1, 0);
    }
}

// Namespace napalm_strike/napalm_strike
// Params 1, eflags: 0x6 linked
// Checksum 0x9ff13672, Offset: 0x880
// Size: 0x114
function private function_f43fb0d3(marker) {
    if (isdefined(marker.origin) && isdefined(marker.var_595cc3a1)) {
        viewpos = marker.origin;
        var_c3515577 = anglestoright((0, marker.angles[1], 0));
        var_3ed2a1cf = vectortoangles(var_c3515577);
        self function_116b95e5("pstfx_napalm_strike_bundle", "Position " + marker.var_595cc3a1, viewpos[0], viewpos[1], viewpos[2]);
        self function_116b95e5("pstfx_napalm_strike_bundle", "Rotation Angle " + marker.var_595cc3a1, var_3ed2a1cf[1]);
    }
}

// Namespace napalm_strike/napalm_strike
// Params 2, eflags: 0x2 linked
// Checksum 0xdf8838bf, Offset: 0x9a0
// Size: 0xc6
function function_6a08eb03(localclientnum, marker) {
    level endon(#"end_game", #"hash_14d956289c0e8ff0" + marker.var_595cc3a1);
    marker endon(#"death", #"hash_5b54de1881a4b84e");
    while (true) {
        player = function_27673a7(localclientnum);
        if (isplayer(player)) {
            player function_f43fb0d3(marker);
        }
        waitframe(1);
    }
}

