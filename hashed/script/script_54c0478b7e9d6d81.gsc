// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;

#namespace namespace_57627cf3;

// Namespace namespace_57627cf3/namespace_57627cf3
// Params 0, eflags: 0x5
// Checksum 0xc5c5dda8, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_a2b7b3869489d94", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_57627cf3/namespace_57627cf3
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0xe8
// Size: 0x4
function private preinit() {
    
}

// Namespace namespace_57627cf3/namespace_57627cf3
// Params 1, eflags: 0x2 linked
// Checksum 0xa8832f75, Offset: 0xf8
// Size: 0xa6
function function_67d3eb46(localclientnum) {
    self endon(#"death");
    self endon(#"hash_43636cae68b91404");
    var_daa5498 = 0;
    while (var_daa5498 < 1) {
        if (isdefined(self)) {
            self mapshaderconstant(localclientnum, 0, "scriptVector3", 1, var_daa5498, 0, 0.04);
        }
        var_daa5498 += 0.04;
        waitframe(1);
    }
}

