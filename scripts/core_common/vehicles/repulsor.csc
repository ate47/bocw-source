// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace repulsor;

// Namespace repulsor/repulsor
// Params 0, eflags: 0x5
// Checksum 0xbe4a7885, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"repulsor", &preinit, undefined, undefined, undefined);
}

// Namespace repulsor/repulsor
// Params 0, eflags: 0x6 linked
// Checksum 0x7c28c686, Offset: 0x110
// Size: 0x4c
function private preinit() {
    clientfield::register("vehicle", "pulse_fx", 1, 1, "counter", &function_17f22f23, 0, 0);
}

// Namespace repulsor/repulsor
// Params 7, eflags: 0x6 linked
// Checksum 0x4000254b, Offset: 0x168
// Size: 0x104
function private function_17f22f23(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    self endon(#"death");
    if (!isdefined(self)) {
        return;
    }
    self notify(#"hash_298a10f2ba5bec90");
    self endon(#"hash_298a10f2ba5bec90");
    if (wasdemojump) {
        self playsound(0, #"hash_32a17ce5991f5801");
        self mapshaderconstant(fieldname, 0, "scriptVector2", 0, 1);
        wait(1);
    }
    self mapshaderconstant(fieldname, 0, "scriptVector2", 0, 0.2);
}

