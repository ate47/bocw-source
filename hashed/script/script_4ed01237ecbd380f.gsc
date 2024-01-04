// Atian COD Tools GSC CW decompiler test
#using script_19f3d8b7a687a3f1;
#using script_7e75c6a3429e6a90;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_4b9fccd8;

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x5
// Checksum 0x3091b662, Offset: 0xf0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_794c3bb2e36b3278", &function_70a657d8, &postinit, undefined, undefined);
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x0
// Checksum 0xc22dbd76, Offset: 0x148
// Size: 0x74
function function_70a657d8() {
    level.var_2457162c = namespace_d21eb1ac::register();
    clientfield::register("scriptmover", "weapon_machine_fx", 1, 1, "int", &function_3f010f7a, 0, 0);
    namespace_52c8f34d::function_70a657d8();
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1c8
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 7, eflags: 0x0
// Checksum 0x5f739dfa, Offset: 0x1d8
// Size: 0xae
function function_3f010f7a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_3f010f7a = function_239993de(fieldname, #"hash_6864f1ec3b2c7d2e", self, "sphere_jnt");
    } else if (isdefined(self.var_3f010f7a)) {
        stopfx(fieldname, self.var_3f010f7a);
        self.var_3f010f7a = undefined;
    }
}

