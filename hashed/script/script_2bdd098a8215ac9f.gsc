// Atian COD Tools GSC CW decompiler test
#using script_19f3d8b7a687a3f1;
#using script_36e0a146280ae23a;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_1cc7b406;

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 0, eflags: 0x5
// Checksum 0xb3000e82, Offset: 0x118
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_49e3cc2797ad6fbc", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 0, eflags: 0x2 linked
// Checksum 0x4f6fd33c, Offset: 0x170
// Size: 0x74
function preinit() {
    clientfield::register("scriptmover", "crafting_Table_spawn_fx", 1, 1, "int", &crafting_table_spawn_fx, 0, 0);
    level.var_3ed9fd33 = sr_crafting_table_menu::register();
    namespace_52c8f34d::preinit();
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1f0
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 7, eflags: 0x2 linked
// Checksum 0xa4018a6e, Offset: 0x200
// Size: 0x6c
function crafting_table_spawn_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        function_239993de(fieldname, "zombie/fx9_crafting_table_lantern", self, "lantern_jnt");
    }
}

