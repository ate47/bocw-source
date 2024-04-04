// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_ping.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_9d3ef6c5;

// Namespace namespace_9d3ef6c5/namespace_9d3ef6c5
// Params 0, eflags: 0x5
// Checksum 0xa0d3c45f, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3c412421c33b7764", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_9d3ef6c5/namespace_9d3ef6c5
// Params 0, eflags: 0x2 linked
// Checksum 0xe61faa99, Offset: 0x140
// Size: 0x4c
function preinit() {
    init_clientfields();
    zm_ping::function_5ae4a10c(undefined, "aether_tunnel", #"hash_4a0616e4966dcff5", undefined, #"hash_7d007703c89ea64a");
}

// Namespace namespace_9d3ef6c5/namespace_9d3ef6c5
// Params 0, eflags: 0x2 linked
// Checksum 0x2ce2bbe3, Offset: 0x198
// Size: 0x5c
function init_clientfields() {
    clientfield::register("scriptmover", "" + #"hash_56ce10c39906bf70", 1, 2, "int", &function_1fad5dd0, 0, 0);
}

// Namespace namespace_9d3ef6c5/namespace_9d3ef6c5
// Params 7, eflags: 0x2 linked
// Checksum 0x3f85cfff, Offset: 0x200
// Size: 0x1ec
function function_1fad5dd0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.fx = util::playfxontag(fieldname, #"hash_76a47d3490330bb6", self, "tag_origin");
        self.sfx = self playloopsound("zmb_darkaether_portal_lp", undefined, (25, 0, 0));
        self function_bc183609(fieldname);
        return;
    }
    if (bwastimejump == 2) {
        self.fx = util::playfxontag(fieldname, #"hash_11996c3130b523ff", self, "tag_origin");
        self.sfx = self playloopsound("zmb_darkaether_portal_lp", undefined, (25, 0, 0));
        self function_bc183609(fieldname);
        return;
    }
    if (bwastimejump == 0) {
        if (isdefined(self.fx)) {
            stopfx(fieldname, self.fx);
            self.fx = undefined;
        }
        if (isdefined(self.sfx)) {
            self stoploopsound(self.sfx);
            self.sfx = undefined;
        }
        if (isdefined(self.var_520069d0)) {
            self.var_520069d0 delete();
        }
    }
}

// Namespace namespace_9d3ef6c5/namespace_9d3ef6c5
// Params 1, eflags: 0x6 linked
// Checksum 0xf88ef3b7, Offset: 0x3f8
// Size: 0x7c
function private function_bc183609(localclientnum) {
    if (isdefined(self.var_520069d0)) {
        return;
    }
    self.var_520069d0 = util::spawn_model(localclientnum, #"hash_753879ed23d447bb", self.origin);
    self.var_520069d0.var_fc558e74 = "aether_tunnel";
    self.var_520069d0 function_619a5c20();
}

