// Atian COD Tools GSC CW decompiler test
#using script_79917113c7593edd;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace ac130;

// Namespace ac130/ac130
// Params 0, eflags: 0x5
// Checksum 0x2036efc4, Offset: 0xe0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"ac130", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace ac130/ac130
// Params 0, eflags: 0x6 linked
// Checksum 0xbe576fdb, Offset: 0x130
// Size: 0x7c
function private preinit() {
    init_shared();
    clientfield::register("toplayer", "inAC130", 1, 1, "int", &function_555656fe, 0, 1);
    callback::function_74f5faf8(&function_74f5faf8);
}

// Namespace ac130/ac130
// Params 7, eflags: 0x2 linked
// Checksum 0xabb52ed7, Offset: 0x1b8
// Size: 0x11c
function function_555656fe(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    postfxbundle = level.var_3e7d252b.var_fa6a1c8c;
    if (!isdefined(postfxbundle)) {
        return;
    }
    self util::function_6d0694af();
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump && codcaster::function_c955fbd1(fieldname)) {
        bwastimejump = 0;
    }
    if (bwastimejump) {
        if (self postfx::function_556665f2(postfxbundle) == 0) {
            self codeplaypostfxbundle(postfxbundle);
        }
        return;
    }
    if (self postfx::function_556665f2(postfxbundle)) {
        self codestoppostfxbundle(postfxbundle);
    }
}

// Namespace ac130/ac130
// Params 1, eflags: 0x2 linked
// Checksum 0x8fcb8764, Offset: 0x2e0
// Size: 0xa4
function function_74f5faf8(eventparams) {
    localclientnum = eventparams.localclientnum;
    if (codcaster::function_b8fe9b52(localclientnum)) {
        player = function_5c10bd79(localclientnum);
        if (player clientfield::get_to_player("inAC130")) {
            function_555656fe(localclientnum, undefined, !codcaster::function_c955fbd1(localclientnum));
        }
    }
}

