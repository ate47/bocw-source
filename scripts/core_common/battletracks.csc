// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_43f477a6;

// Namespace namespace_43f477a6/namespace_43f477a6
// Params 0, eflags: 0x5
// Checksum 0x3994545d, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_58dfb3361d45bdcf", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_43f477a6/namespace_43f477a6
// Params 0, eflags: 0x6 linked
// Checksum 0x1e7a0463, Offset: 0x100
// Size: 0x4c
function private function_70a657d8() {
    clientfield::register("vehicle", "battletrack_active", 1, 1, "int", &function_14657fe9, 0, 0);
}

// Namespace namespace_43f477a6/namespace_43f477a6
// Params 7, eflags: 0x6 linked
// Checksum 0xa8e9fa10, Offset: 0x158
// Size: 0x15c
function private function_14657fe9(*local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.battletrack_active = bwastimejump;
    waitframe(1);
    players = getlocalplayers();
    foreach (player in players) {
        vehicle = getplayervehicle(player);
        if (isdefined(vehicle)) {
            if (vehicle.battletrack_active !== 0) {
                setdvar(#"hash_30d02c7f5a4acf54", 1);
                return;
            }
        }
    }
    setdvar(#"hash_30d02c7f5a4acf54", 0);
}
