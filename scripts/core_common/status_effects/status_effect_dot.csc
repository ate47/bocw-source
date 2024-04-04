// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace status_effect_dot;

// Namespace status_effect_dot/status_effect_dot
// Params 0, eflags: 0x5
// Checksum 0x8dc7e2b7, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_dot", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_dot/status_effect_dot
// Params 0, eflags: 0x6 linked
// Checksum 0xd35cf6f1, Offset: 0x118
// Size: 0x94
function private preinit() {
    clientfield::register("toplayer", "dot_splatter", 1, 1, "counter", &on_dot_splatter, 0, 0);
    clientfield::register("toplayer", "dot_no_splatter", 1, 1, "counter", &on_dot_no_splatter, 0, 0);
}

// Namespace status_effect_dot/status_effect_dot
// Params 7, eflags: 0x2 linked
// Checksum 0x7d8197d7, Offset: 0x1b8
// Size: 0x4a
function on_dot_splatter(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.dot_damaged = 1;
}

// Namespace status_effect_dot/status_effect_dot
// Params 7, eflags: 0x2 linked
// Checksum 0x85f6903f, Offset: 0x210
// Size: 0x4a
function on_dot_no_splatter(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.dot_no_splatter = 1;
}

