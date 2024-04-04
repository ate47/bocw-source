// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_2d7ccca3;

// Namespace namespace_2d7ccca3/namespace_2d7ccca3
// Params 0, eflags: 0x5
// Checksum 0x80e41a09, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3dcfc06bf6bfc5f5", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_2d7ccca3/namespace_2d7ccca3
// Params 0, eflags: 0x6 linked
// Checksum 0xd9fb9dd8, Offset: 0x130
// Size: 0xbc
function private preinit() {
    clientfield::register_clientuimodel("hudItems.ammoCooldowns.fieldUpgrade", #"hash_6f4b11a0bee9b73d", [#"hash_2f126bd99a74de8b", #"fieldupgrade"], 1, 5, "float", undefined, 0, 0);
    clientfield::register("missile", "fieldUpgradeActive", 1, 1, "int", &function_5fbd38e2, 0, 0);
}

// Namespace namespace_2d7ccca3/namespace_2d7ccca3
// Params 7, eflags: 0x6 linked
// Checksum 0x25153585, Offset: 0x1f8
// Size: 0x64
function private function_5fbd38e2(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self function_1f0c7136(1);
    }
}

