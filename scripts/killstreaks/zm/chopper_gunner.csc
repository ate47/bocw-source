// Atian COD Tools GSC CW decompiler test
#using script_57f0934f7e3e3b54;
#using script_4eecbd20dc9a462c;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace chopper_gunner;

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x5
// Checksum 0xa108665f, Offset: 0xd0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"chopper_gunner", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x6 linked
// Checksum 0x70fe7c0c, Offset: 0x120
// Size: 0xc4
function private preinit() {
    namespace_e8c18978::preinit();
    clientfield::register("vehicle", "" + #"hash_164696e86d29988d", 1, 1, "int", &function_d4e58332, 0, 0);
    clientfield::register("toplayer", "" + #"hash_dae8b06d746fac5", 8000, 1, "int", &function_99879bf2, 0, 0);
}

// Namespace chopper_gunner/chopper_gunner
// Params 7, eflags: 0x6 linked
// Checksum 0x97c59fb4, Offset: 0x1f0
// Size: 0x64
function private function_d4e58332(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self thread scene::stop(#"chopper_gunner_door_open_client");
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 7, eflags: 0x2 linked
// Checksum 0x74658d25, Offset: 0x260
// Size: 0x64
function function_99879bf2(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (level.var_a7c8e7d7 === 1) {
        self killstreaks::function_d79281c4(bwastimejump);
    }
}

