// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;

#namespace nuke;

// Namespace nuke/nuke
// Params 0, eflags: 0x5
// Checksum 0xd62f9f82, Offset: 0xf0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"nuke", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace nuke/nuke
// Params 0, eflags: 0x6 linked
// Checksum 0x833e3a16, Offset: 0x140
// Size: 0x1a4
function private preinit() {
    level.var_bdab9ccd = getscriptbundle("killstreak_nuke");
    clientfield::register("scriptmover", "" + #"hash_494d8af20db4dc73", 1, 1, "int", &function_fd98ff7f, 0, 0);
    clientfield::register("world", "" + #"hash_6a6a21b8c5e1528e", 1, 1, "int", &function_977aa020, 0, 0);
    clientfield::register("world", "" + #"hash_1559e8163efbdb7a", 1, 1, "int", &function_b5fd20b3, 0, 0);
    clientfield::register("world", "" + #"hash_50ae988d8c6973f5", 1, 2, "int", &function_43cfe793, 0, 0);
    callback::on_localplayer_spawned(&on_localplayer_spawned);
}

// Namespace nuke/nuke
// Params 1, eflags: 0x2 linked
// Checksum 0xa4ea23d5, Offset: 0x2f0
// Size: 0x24
function on_localplayer_spawned(localclientnum) {
    self thread function_b2067aca(localclientnum);
}

// Namespace nuke/nuke
// Params 1, eflags: 0x2 linked
// Checksum 0x35855e62, Offset: 0x320
// Size: 0x114
function function_b2067aca(localclientnum) {
    self notify("10969d89536716a2");
    self endon("10969d89536716a2");
    self endon(#"death");
    util::function_89a98f85();
    var_82a0a786 = level clientfield::get("" + #"hash_50ae988d8c6973f5");
    if (var_82a0a786 == 0) {
        if (isdefined(level.var_e1dcc9e7) || isdefined(level.var_8bb199d1)) {
            self function_43cfe793(localclientnum, 0, var_82a0a786);
        }
        return;
    }
    if (!isdefined(level.var_e1dcc9e7) && !isdefined(level.var_8bb199d1)) {
        self function_43cfe793(localclientnum, 0, var_82a0a786);
    }
}

// Namespace nuke/nuke
// Params 7, eflags: 0x2 linked
// Checksum 0x73df765f, Offset: 0x440
// Size: 0x12e
function function_fd98ff7f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (isdefined(level.var_bdab9ccd.var_cef97854) && !isdefined(level.var_667ac9a6)) {
            forward = anglestoforward(self.angles);
            up = anglestoup(self.angles);
            level.var_667ac9a6 = playfx(fieldname, level.var_bdab9ccd.var_cef97854, self.origin, forward, up);
        }
        return;
    }
    if (isdefined(level.var_667ac9a6)) {
        deletefx(fieldname, level.var_667ac9a6);
        level.var_667ac9a6 = undefined;
    }
}

// Namespace nuke/nuke
// Params 7, eflags: 0x2 linked
// Checksum 0x443935a0, Offset: 0x578
// Size: 0xac
function function_977aa020(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_bdab9ccd.var_8e78250d)) {
        return;
    }
    if (bwastimejump) {
        function_a837926b(fieldname, level.var_bdab9ccd.var_8e78250d);
        return;
    }
    codestoppostfxbundlelocal(fieldname, level.var_bdab9ccd.var_8e78250d);
}

// Namespace nuke/nuke
// Params 7, eflags: 0x2 linked
// Checksum 0x780b523b, Offset: 0x630
// Size: 0xac
function function_b5fd20b3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_bdab9ccd.var_5e5fbb8b)) {
        return;
    }
    if (bwastimejump) {
        function_a837926b(fieldname, level.var_bdab9ccd.var_5e5fbb8b);
        return;
    }
    function_24cd4cfb(fieldname, level.var_bdab9ccd.var_5e5fbb8b);
}

// Namespace nuke/nuke
// Params 7, eflags: 0x2 linked
// Checksum 0x7020571c, Offset: 0x6e8
// Size: 0x144
function function_43cfe793(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = function_27673a7(fieldname);
    player util::waittill_dobj(fieldname);
    if (!isdefined(player)) {
        return;
    }
    function_d1208379(fieldname);
    if (bwastimejump == 1) {
        if (isdefined(level.var_bdab9ccd.var_b263d69f)) {
            level.var_e1dcc9e7 = playtagfxset(fieldname, level.var_bdab9ccd.var_b263d69f, player);
        }
        return;
    }
    if (bwastimejump == 2) {
        if (isdefined(level.var_bdab9ccd.var_7daf63f0)) {
            level.var_8bb199d1 = playtagfxset(fieldname, level.var_bdab9ccd.var_7daf63f0, player);
        }
    }
}

// Namespace nuke/nuke
// Params 1, eflags: 0x6 linked
// Checksum 0xc746b046, Offset: 0x838
// Size: 0x17e
function private function_d1208379(localclientnum) {
    if (isdefined(level.var_e1dcc9e7)) {
        foreach (tagfx in level.var_e1dcc9e7) {
            if (isfxplaying(localclientnum, tagfx)) {
                killfx(localclientnum, tagfx);
            }
        }
    }
    if (isdefined(level.var_8bb199d1)) {
        foreach (tagfx in level.var_8bb199d1) {
            if (isfxplaying(localclientnum, tagfx)) {
                killfx(localclientnum, tagfx);
            }
        }
    }
    level.var_e1dcc9e7 = undefined;
    level.var_8bb199d1 = undefined;
}

