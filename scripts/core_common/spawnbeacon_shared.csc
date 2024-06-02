// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace spawn_beacon;

// Namespace spawn_beacon/spawnbeacon_shared
// Params 0, eflags: 0x0
// Checksum 0x8f0fc5a9, Offset: 0x120
// Size: 0x14
function init_shared() {
    setupclientfields();
}

// Namespace spawn_beacon/spawnbeacon_shared
// Params 0, eflags: 0x0
// Checksum 0xda091366, Offset: 0x140
// Size: 0xbc
function setupclientfields() {
    clientfield::register("scriptmover", "spawnbeacon_placed", 1, 1, "int", &spawnbeacon_placed, 0, 0);
    clientfield::register_clientuimodel("hudItems.spawnbeacon.active", #"hash_6f4b11a0bee9b73d", [#"spawnbeacon", #"active"], 1, 1, "int", undefined, 0, 0);
}

// Namespace spawn_beacon/spawnbeacon_shared
// Params 7, eflags: 0x4
// Checksum 0xbc7798f6, Offset: 0x208
// Size: 0xe4
function private spawnbeacon_placed(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(bwastimejump);
    if (!isdefined(self)) {
        return;
    }
    playtagfxset(bwastimejump, "gadget_spawnbeacon_teamlight", self);
    self useanimtree("generic");
    self setanimrestart("o_spawn_beacon_deploy", 1, 0, 1);
}

