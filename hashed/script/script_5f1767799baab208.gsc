// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_ping.csc;
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_dedc3cb9;

// Namespace namespace_dedc3cb9/namespace_2291eec4
// Params 0, eflags: 0x5
// Checksum 0xdc767970, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_fb0b00f613ec7da", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_dedc3cb9/namespace_2291eec4
// Params 0, eflags: 0x2 linked
// Checksum 0xd05b7ecd, Offset: 0x170
// Size: 0x16c
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_7732e7b9e5c4e0e")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    clientfield::register("scriptmover", "supply_drop_parachute_rob", 1, 1, "int", &supply_drop_parachute, 0, 0);
    callback::on_vehicle_spawned(&on_vehicle_spawned);
    zm_ping::function_5ae4a10c(undefined, "helicopter_escape_heli", #"hash_5783e6ae1065d00", "pingVehicle");
    zm_ping::function_5ae4a10c(#"hash_533e3e6045e2603d", "helicopter_escape_crate", #"hash_12f3d2dc40a1670e", #"hash_49f4ae06ae4af262", #"hash_50bc9e26c4837c85");
}

// Namespace namespace_dedc3cb9/namespace_2291eec4
// Params 7, eflags: 0x2 linked
// Checksum 0x161bbe36, Offset: 0x2e8
// Size: 0x94
function supply_drop_parachute(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playrenderoverridebundle(#"hash_336cece53ae2342f");
        return;
    }
    self stoprenderoverridebundle(#"hash_336cece53ae2342f");
}

// Namespace namespace_dedc3cb9/namespace_2291eec4
// Params 1, eflags: 0x2 linked
// Checksum 0xfab92085, Offset: 0x388
// Size: 0x52
function on_vehicle_spawned(*localclientnum) {
    if (self.vehicletype === #"hash_669d01ea5db4e10c") {
        self function_1f0c7136(3);
        self.var_fc558e74 = "helicopter_escape_heli";
    }
}

