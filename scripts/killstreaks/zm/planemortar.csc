// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\killstreaks\zm\airsupport.csc;
#using scripts\killstreaks\planemortar_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace planemortar;

// Namespace planemortar/planemortar
// Params 0, eflags: 0x5
// Checksum 0x93bfc996, Offset: 0x188
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"planemortar", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0x2eb8c8c1, Offset: 0x1d8
// Size: 0xfc
function private preinit() {
    init_shared();
    clientfield::register("scriptmover", "planemortar_contrail", 1, 1, "int", &planemortar_contrail, 0, 0);
    clientfield::register("scriptmover", "planemortar_marker_on", 1, 2, "int", &planemortar_marker_on, 0, 0);
    namespace_bf7415ae::function_fc85e1a("planemortar", &function_85f3e359, &function_e72f1d06, &show_marker, &function_4362abef);
}

// Namespace planemortar/planemortar
// Params 7, eflags: 0x2 linked
// Checksum 0x378e806c, Offset: 0x2e0
// Size: 0xf2
function planemortar_contrail(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    params = getscriptbundle("killstreak_planemortar");
    util::waittill_dobj(fieldname);
    if (bwastimejump) {
        self.fx = util::playfxontag(fieldname, params.var_dcbb40c5, self, params.var_d678978c);
        self.fx = util::playfxontag(fieldname, params.var_2375a152, self, params.var_e5082065);
    }
}

// Namespace planemortar/planemortar
// Params 7, eflags: 0x2 linked
// Checksum 0x3604837a, Offset: 0x3e0
// Size: 0x31c
function planemortar_marker_on(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        player = function_27673a7(fieldname);
        if (!is_true(self.allocated)) {
            namespace_bf7415ae::function_9cb260fd(fieldname, "planemortar", self);
            self.allocated = 1;
        }
        if (isplayer(player) && isdefined(self.var_595cc3a1)) {
            player postfx::function_c8b5f318("pstfx_artillery_strike_bundle", #"hash_1dc8a3cb360b2900" + self.var_595cc3a1, 4);
        }
        return;
    }
    if (bwastimejump == 2) {
        player = function_27673a7(fieldname);
        if (isplayer(player) && isdefined(self.var_595cc3a1)) {
            self notify(#"hash_6cb3344e363fe563");
            player postfx::function_c8b5f318("pstfx_artillery_strike_bundle", #"hash_1dc8a3cb360b2900" + self.var_595cc3a1, 4);
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
            namespace_bf7415ae::function_9cb260fd(fieldname, "planemortar", self);
            self.allocated = 1;
        }
        if (isplayer(player) && isdefined(self.var_595cc3a1)) {
            player postfx::function_c8b5f318("pstfx_artillery_strike_bundle", #"hash_1dc8a3cb360b2900" + self.var_595cc3a1, 3);
        }
        return;
    }
    namespace_bf7415ae::function_f06fadf2(fieldname, "planemortar", self);
    if (isdefined(self.markerfx)) {
        stopfx(fieldname, self.markerfx);
    }
}

// Namespace planemortar/planemortar
// Params 1, eflags: 0x2 linked
// Checksum 0xd38bfecc, Offset: 0x708
// Size: 0x84
function function_85f3e359(localclientnum) {
    player = function_27673a7(localclientnum);
    if (isplayer(player) && !player function_d2cb869e("pstfx_artillery_strike_bundle")) {
        player codeplaypostfxbundle("pstfx_artillery_strike_bundle");
    }
}

// Namespace planemortar/planemortar
// Params 1, eflags: 0x2 linked
// Checksum 0x17d8f187, Offset: 0x798
// Size: 0x84
function function_e72f1d06(localclientnum) {
    player = function_27673a7(localclientnum);
    if (isplayer(player) && player function_d2cb869e("pstfx_artillery_strike_bundle")) {
        player codestoppostfxbundle("pstfx_artillery_strike_bundle");
    }
}

// Namespace planemortar/planemortar
// Params 2, eflags: 0x2 linked
// Checksum 0x7fcab474, Offset: 0x828
// Size: 0xdc
function show_marker(localclientnum, marker) {
    level thread function_6a08eb03(localclientnum, marker);
    player = function_27673a7(localclientnum);
    if (isplayer(player)) {
        player postfx::function_c8b5f318("pstfx_artillery_strike_bundle", #"hash_1dc8a3cb360b2900" + marker.var_595cc3a1, 4);
        player postfx::function_c8b5f318("pstfx_artillery_strike_bundle", #"radius " + marker.var_595cc3a1, 64);
    }
}

// Namespace planemortar/planemortar
// Params 2, eflags: 0x2 linked
// Checksum 0x8b499f88, Offset: 0x910
// Size: 0x9c
function function_4362abef(localclientnum, marker) {
    level notify(#"hash_29465a022d1a0d3d" + marker.var_595cc3a1);
    player = function_27673a7(localclientnum);
    if (isplayer(player)) {
        player postfx::function_c8b5f318("pstfx_artillery_strike_bundle", #"hash_1dc8a3cb360b2900" + marker.var_595cc3a1, 0);
    }
}

// Namespace planemortar/planemortar
// Params 1, eflags: 0x6 linked
// Checksum 0x9e7ddf0, Offset: 0x9b8
// Size: 0x84
function private function_f43fb0d3(marker) {
    if (isdefined(marker.origin) && isdefined(marker.var_595cc3a1)) {
        viewpos = marker.origin;
        self function_116b95e5("pstfx_artillery_strike_bundle", "Position " + marker.var_595cc3a1, viewpos[0], viewpos[1], viewpos[2]);
    }
}

// Namespace planemortar/planemortar
// Params 2, eflags: 0x2 linked
// Checksum 0xafa2e860, Offset: 0xa48
// Size: 0xc6
function function_6a08eb03(localclientnum, marker) {
    level endon(#"end_game", #"hash_29465a022d1a0d3d" + marker.var_595cc3a1);
    marker endon(#"death", #"hash_5b54de1881a4b84e");
    while (true) {
        player = function_27673a7(localclientnum);
        if (isplayer(player)) {
            player function_f43fb0d3(marker);
        }
        waitframe(1);
    }
}

