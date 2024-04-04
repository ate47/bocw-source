// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_52c8f34d;

// Namespace namespace_52c8f34d/namespace_52c8f34d
// Params 0, eflags: 0x2 linked
// Checksum 0x6e23a5ea, Offset: 0xb8
// Size: 0x5c
function preinit() {
    if (isdefined(level.var_6b33db60)) {
        return;
    }
    level.var_6b33db60 = 1;
    level clientfield::register("scriptmover", "item_machine_spawn_rob", 1, 1, "int");
}

