// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace recon_plane;

// Namespace recon_plane/recon_plane
// Params 0, eflags: 0x5
// Checksum 0xb0e45c56, Offset: 0x150
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"recon_plane", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace recon_plane/recon_plane
// Params 0, eflags: 0x6 linked
// Checksum 0x7eba145a, Offset: 0x1a0
// Size: 0x160
function private preinit() {
    clientfield::register("scriptmover", "recon_plane", 1, 1, "int", &function_1f842f91, 0, 0);
    clientfield::register("scriptmover", "recon_plane_reveal", 1, 1, "int", &recon_plane_reveal, 0, 0);
    clientfield::register("scriptmover", "recon_plane_damage_fx", 1, 2, "int", &recon_plane_damage_fx, 0, 0);
    callback::on_localclient_connect(&player_init);
    bundlename = "killstreak_recon_plane";
    if (sessionmodeiswarzonegame()) {
        bundlename += "_wz";
    }
    level.var_d9ef3e7c = getscriptbundle(bundlename);
    level.var_d84f0c02 = [];
}

// Namespace recon_plane/recon_plane
// Params 1, eflags: 0x2 linked
// Checksum 0x53be41fe, Offset: 0x308
// Size: 0x24
function player_init(localclientnum) {
    self thread on_game_ended(localclientnum);
}

// Namespace recon_plane/recon_plane
// Params 0, eflags: 0x2 linked
// Checksum 0x1af578c5, Offset: 0x338
// Size: 0x4c
function function_6a7f9809() {
    self endon(#"death");
    level waittill(#"hash_67a5748755bfcfb0");
    if (isdefined(self)) {
        self function_811196d1(1);
    }
}

// Namespace recon_plane/recon_plane
// Params 7, eflags: 0x2 linked
// Checksum 0x89304e42, Offset: 0x390
// Size: 0x1fc
function function_1f842f91(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (!isdefined(self.killstreakbundle)) {
        self.killstreakbundle = level.var_d9ef3e7c;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump == 1) {
        self function_1f0c7136(2);
        var_2c9baa0c = level.var_d9ef3e7c.var_7249d50f;
        if (isdefined(var_2c9baa0c) && var_2c9baa0c > 0) {
            self enablevisioncircle(fieldname, var_2c9baa0c);
            if (!self function_ca024039()) {
                self.var_2695439d = self playloopsound(#"hash_539cae233d8f2036", 1);
            }
            self thread function_4ee8c344(fieldname);
            self setcompassicon(self.killstreakbundle.var_cb98fbf7);
            self function_dce2238(1);
            self function_8e04481f();
            self function_27351ff6();
            level notify(#"hash_67a5748755bfcfb0");
            self thread function_6a7f9809();
        }
    }
}

// Namespace recon_plane/recon_plane
// Params 1, eflags: 0x6 linked
// Checksum 0x558c4ee5, Offset: 0x598
// Size: 0x84
function private function_4ee8c344(localclientnum) {
    entnum = self getentitynumber();
    self waittill(#"death");
    if (isdefined(self.var_2695439d)) {
        self stoploopsound(self.var_2695439d);
    }
    disablevisioncirclebyentnum(localclientnum, entnum);
}

// Namespace recon_plane/recon_plane
// Params 1, eflags: 0x6 linked
// Checksum 0x22e2578f, Offset: 0x628
// Size: 0x3c
function private on_game_ended(localclientnum) {
    level waittill(#"game_ended");
    disableallvisioncircles(localclientnum);
}

// Namespace recon_plane/recon_plane
// Params 7, eflags: 0x2 linked
// Checksum 0xcdb20d4f, Offset: 0x670
// Size: 0xec
function recon_plane_reveal(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (self function_ca024039()) {
            entnum = self getentitynumber();
            function_947d2fc2(fieldname, entnum, level.var_d9ef3e7c.var_e77ca4a1);
            self thread function_af19a98(fieldname, entnum);
            return;
        }
        level.var_d84f0c02[level.var_d84f0c02.size] = self;
        self thread function_6f689c85(fieldname);
    }
}

// Namespace recon_plane/recon_plane
// Params 1, eflags: 0x6 linked
// Checksum 0x679afe4c, Offset: 0x768
// Size: 0x28e
function private function_6f689c85(localclientnum) {
    self notify("2af01c1ea30ce119");
    self endon("2af01c1ea30ce119");
    var_c2b8dfe0 = sqr((isdefined(level.var_d9ef3e7c.var_e77ca4a1) ? level.var_d9ef3e7c.var_e77ca4a1 : 0) / 2);
    arrayremovevalue(level.var_d84f0c02, undefined);
    while (level.var_d84f0c02.size) {
        player = function_27673a7(localclientnum);
        var_6685c065 = 0;
        if (isalive(player)) {
            foreach (var_82d4c496 in level.var_d84f0c02) {
                if (distance2dsquared(player.origin, var_82d4c496.origin) <= var_c2b8dfe0) {
                    var_6685c065 = 1;
                    break;
                }
            }
        }
        if (var_6685c065) {
            if (!isdefined(player.var_59f39e8a)) {
                player.var_59f39e8a = player playloopsound(#"hash_4665942676cd6feb");
            }
        } else if (isdefined(player.var_59f39e8a)) {
            player stoploopsound(player.var_59f39e8a);
            player.var_59f39e8a = undefined;
        }
        wait(0.25);
        arrayremovevalue(level.var_d84f0c02, undefined);
    }
    player = function_27673a7(localclientnum);
    if (isdefined(player.var_59f39e8a)) {
        player stoploopsound(player.var_59f39e8a);
        player.var_59f39e8a = undefined;
    }
}

// Namespace recon_plane/recon_plane
// Params 2, eflags: 0x6 linked
// Checksum 0xa634ba18, Offset: 0xa00
// Size: 0x44
function private function_af19a98(localclientnum, entnum) {
    self waittill(#"death");
    function_1e5c5bb9(localclientnum, entnum);
}

// Namespace recon_plane/recon_plane
// Params 7, eflags: 0x2 linked
// Checksum 0x6379f8c1, Offset: 0xa50
// Size: 0xbc
function recon_plane_damage_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        util::playfxontag(fieldname, level.var_d9ef3e7c.fxlowhealth, self, "tag_fx_engine_exhaust_back");
        return;
    }
    if (bwastimejump == 2) {
        util::playfxontag(fieldname, level.var_d9ef3e7c.var_277154f7, self, "tag_fx_engine_exhaust_back");
    }
}

