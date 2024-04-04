// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_52c8f34d;

// Namespace namespace_52c8f34d/namespace_52c8f34d
// Params 0, eflags: 0x2 linked
// Checksum 0x907fc036, Offset: 0xb8
// Size: 0x6c
function preinit() {
    if (isdefined(level.var_6b33db60)) {
        return;
    }
    level.var_6b33db60 = 1;
    level clientfield::register("scriptmover", "item_machine_spawn_rob", 1, 1, "int", &function_c30c297c, 0, 0);
}

// Namespace namespace_52c8f34d/namespace_52c8f34d
// Params 7, eflags: 0x2 linked
// Checksum 0x444723f0, Offset: 0x130
// Size: 0x9c
function function_c30c297c(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self)) {
        self playrenderoverridebundle(#"hash_1528dae63f55fcde");
        playsound(bwastimejump, #"hash_20c4f0485930af2a", self.origin + (0, 0, 35));
    }
}

