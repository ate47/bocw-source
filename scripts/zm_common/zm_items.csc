// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zm_items;

// Namespace zm_items/zm_items
// Params 0, eflags: 0x5
// Checksum 0xdb3bc700, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_items", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace zm_items/zm_items
// Params 0, eflags: 0x4
// Checksum 0x6c95e290, Offset: 0x130
// Size: 0x64
function private function_70a657d8() {
    clientfield::register("item", "highlight_item", 1, 2, "int", &function_39e7c9dd, 0, 0);
    level thread function_f88c74e1();
}

// Namespace zm_items/zm_items
// Params 0, eflags: 0x4
// Checksum 0xc88cb986, Offset: 0x1a0
// Size: 0x70
function private function_f88c74e1() {
    while (isdefined(self)) {
        var_7f729179 = undefined;
        var_7f729179 = level waittill(#"hash_25322cbf364d4d5c");
        function_c79ecd60(var_7f729179.param1, var_7f729179.param2, undefined, undefined, var_7f729179.param3, undefined, undefined, undefined, undefined);
    }
}

// Namespace zm_items/zm_items
// Params 7, eflags: 0x0
// Checksum 0x80307c8b, Offset: 0x218
// Size: 0x84
function function_39e7c9dd(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self playrenderoverridebundle("rob_sonar_set_friendly");
    } else {
        self stoprenderoverridebundle("rob_sonar_set_friendly");
    }
}

