// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace dropkick;

// Namespace dropkick/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x97f57e5f, Offset: 0xb0
// Size: 0x84
function event_handler[gametype_init] main(*eventstruct) {
    clientfield::register("world", "" + #"hash_69d32ac298f2aa22", 1, 2, "int", &function_311e397d, 0, 0);
    callback::function_56df655f(&function_56df655f);
}

// Namespace dropkick/dropkick
// Params 7, eflags: 0x0
// Checksum 0xd6740b6, Offset: 0x140
// Size: 0x12c
function function_311e397d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1 && level.var_67c8b45f !== 1) {
        level.var_67c8b45f = 1;
        level childthread function_df0960d3(fieldname);
        level childthread function_ef284b9c(fieldname);
        level childthread function_efd48790(fieldname);
        return;
    }
    if (bwastimejump == 2 && level.var_67c8b45f === 1) {
        level.var_67c8b45f = 0;
        function_e8a68a06(fieldname, 0.3);
        return;
    }
    if (bwastimejump == 3) {
        level childthread function_81e1cce7(fieldname);
    }
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x4
// Checksum 0x6c2bc779, Offset: 0x278
// Size: 0x4c
function private function_df0960d3(localclientnum) {
    wait(2);
    if (level.var_67c8b45f === 0) {
        return;
    }
    function_a837926b(localclientnum, #"hash_72d5d84c9d0b25c");
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x4
// Checksum 0xc4da0b0d, Offset: 0x2d0
// Size: 0xa4
function private function_ef284b9c(localclientnum) {
    wait(3.4);
    if (level.var_67c8b45f === 0) {
        return;
    }
    function_a837926b(localclientnum, #"hash_69a53e8913317ecf");
    duration = 6;
    wait(duration);
    if (function_148ccc79(localclientnum, #"hash_69a53e8913317ecf")) {
        function_24cd4cfb(localclientnum, #"hash_69a53e8913317ecf");
    }
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x4
// Checksum 0x8779df79, Offset: 0x380
// Size: 0x134
function private function_efd48790(localclientnum) {
    wait(3.4);
    if (level.var_67c8b45f === 0) {
        return;
    }
    player = function_27673a7(localclientnum);
    player util::waittill_dobj(localclientnum);
    if (!isdefined(player) || level.var_67c8b45f === 0) {
        return;
    }
    level.var_abfcab7a = playtagfxset(localclientnum, #"tagfx9_nuke_dropkick_camera_start", player);
    var_68a17fa6 = 6.6;
    wait(var_68a17fa6);
    player = function_27673a7(localclientnum);
    player util::waittill_dobj(localclientnum);
    if (!isdefined(player) || level.var_67c8b45f === 0) {
        return;
    }
    level.var_2efb73eb = playtagfxset(localclientnum, #"tagfx9_nuke_dropkick_camera", player);
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x0
// Checksum 0x2e18e1de, Offset: 0x4c0
// Size: 0x2c
function function_81e1cce7(localclientnum) {
    function_a837926b(localclientnum, #"hash_65e918e7c65c396b");
}

// Namespace dropkick/dropkick
// Params 2, eflags: 0x4
// Checksum 0x3c0a7e99, Offset: 0x4f8
// Size: 0x1e0
function private function_e8a68a06(localclientnum, waittime) {
    if (isdefined(waittime) && waittime > 0) {
        wait(waittime);
    }
    if (function_148ccc79(localclientnum, #"hash_72d5d84c9d0b25c")) {
        codestoppostfxbundlelocal(localclientnum, #"hash_72d5d84c9d0b25c");
    }
    if (function_148ccc79(localclientnum, #"hash_69a53e8913317ecf")) {
        codestoppostfxbundlelocal(localclientnum, #"hash_69a53e8913317ecf");
    }
    if (isdefined(level.var_abfcab7a)) {
        foreach (tagfx in level.var_abfcab7a) {
            stopfx(localclientnum, tagfx);
        }
    }
    if (isdefined(level.var_2efb73eb)) {
        foreach (tagfx in level.var_2efb73eb) {
            stopfx(localclientnum, tagfx);
        }
    }
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x0
// Checksum 0x4c998c8b, Offset: 0x6e0
// Size: 0x60
function function_56df655f(params) {
    if (gamemodeismode(5) && level.var_67c8b45f === 1) {
        function_e8a68a06(params.localclientnum, 0);
        level.var_67c8b45f = 0;
    }
}

