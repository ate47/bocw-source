// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_inventory.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace zm_ui_inventory;

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 0, eflags: 0x5
// Checksum 0x4925e959, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ui_inventory", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x235c7a2e, Offset: 0x128
// Size: 0x1a8
function private preinit() {
    clientfield::function_91cd7763("string", "hudItems.zmFeatureDescription", #"hash_6f4b11a0bee9b73d", #"zmfeaturedescription", 1, undefined, 0, 0);
    zm_inventory::function_c7c05a13();
    registeredfields = [];
    foreach (mapping in level.var_a16c38d9) {
        if (!isdefined(registeredfields[mapping.var_cd35dfb2])) {
            registeredfields[mapping.var_cd35dfb2] = 1;
            if (is_true(mapping.ispersonal)) {
                clientfield::register_clientuimodel(mapping.var_cd35dfb2, mapping.var_a88efd0b, mapping.var_2972a1c0, 1, mapping.numbits, "int", undefined, 0, 0);
                continue;
            }
            clientfield::function_5b7d846d(mapping.var_cd35dfb2, mapping.var_a88efd0b, mapping.var_2972a1c0, 1, mapping.numbits, "int", undefined, 0, 0);
        }
    }
}

