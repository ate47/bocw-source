// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace supplypod;

// Namespace supplypod/supplypod
// Params 0, eflags: 0x5
// Checksum 0x3a5e43a3, Offset: 0xd0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"supplypod", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace supplypod/supplypod
// Params 0, eflags: 0x6 linked
// Checksum 0x4aab6045, Offset: 0x120
// Size: 0x4c
function private preinit() {
    clientfield::register("scriptmover", "supplypod_placed", 1, 1, "int", &supplypod_placed, 0, 0);
}

// Namespace supplypod/supplypod
// Params 7, eflags: 0x6 linked
// Checksum 0xf4a6d3f0, Offset: 0x178
// Size: 0xa4
function private supplypod_placed(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(bwastimejump);
    if (!isdefined(self)) {
        return;
    }
    self function_1f0c7136(4);
    self useanimtree("generic");
}

