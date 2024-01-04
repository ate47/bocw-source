// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_2c949ef8;

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xa0
// Size: 0x4
function init() {
    
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 7, eflags: 0x0
// Checksum 0xf5d27417, Offset: 0xb0
// Size: 0xac
function function_ac525f72(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    self endon(#"death", #"disconnect");
    self postfx::playpostfxbundle(#"hash_66a9fee7028a1e13");
    wait(8);
    self postfx::exitpostfxbundle(#"hash_66a9fee7028a1e13");
}

