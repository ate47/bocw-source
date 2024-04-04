// Atian COD Tools GSC CW decompiler test
#using scripts\zm\ai\zm_ai_hulk.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_45b55437;

// Namespace namespace_45b55437/namespace_45b55437
// Params 0, eflags: 0x5
// Checksum 0x42f9558a, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7d755ebddd333af6", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 0, eflags: 0x2 linked
// Checksum 0x8778dd60, Offset: 0x120
// Size: 0x7c
function preinit() {
    ai::add_archetype_spawn_function(#"hulk", &function_6f88ed29);
    clientfield::register("scriptmover", "hs_heal_station_cf", 1, 1, "int", &function_41cca91a, 0, 0);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x6 linked
// Checksum 0xe120fc3e, Offset: 0x1a8
// Size: 0xc
function private function_6f88ed29(*localclientnum) {
    
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 7, eflags: 0x6 linked
// Checksum 0x47a2e33f, Offset: 0x1c0
// Size: 0x11c
function private function_41cca91a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        self.fx = playfx(fieldname, #"hash_5e283544fff6e3d0", self.origin);
        soundloopemitter(#"hash_50ad83fb3ade2891", self.origin + (0, 0, 20));
        return;
    }
    if (isdefined(self.fx)) {
        stopfx(fieldname, self.fx);
    }
    soundstoploopemitter(#"hash_50ad83fb3ade2891", self.origin + (0, 0, 20));
}

