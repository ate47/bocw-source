// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_2cab06c8;

// Namespace namespace_2cab06c8/namespace_2cab06c8
// Params 0, eflags: 0x5
// Checksum 0xc723db67, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_176447d3860a4b99", undefined, &postinit, undefined, undefined);
}

// Namespace namespace_2cab06c8/namespace_2cab06c8
// Params 0, eflags: 0x2 linked
// Checksum 0x99bcdc16, Offset: 0xe8
// Size: 0x3c
function postinit() {
    /#
        init_devgui();
    #/
    callback::on_vehicle_spawned(&on_vehicle_spawned);
}

// Namespace namespace_2cab06c8/namespace_2cab06c8
// Params 0, eflags: 0x2 linked
// Checksum 0x117bc3b6, Offset: 0x130
// Size: 0x86
function on_vehicle_spawned() {
    vehicle = self;
    if (isalive(vehicle) && isdefined(vehicle.target)) {
        start_spawn = struct::get(vehicle.target);
        if (isdefined(start_spawn)) {
            vehicle.origin = start_spawn.origin;
            vehicle.angles = start_spawn.angles;
        }
    }
}

/#

    // Namespace namespace_2cab06c8/namespace_2cab06c8
    // Params 0, eflags: 0x0
    // Checksum 0xf09eacba, Offset: 0x1c0
    // Size: 0x74
    function init_devgui() {
        mapname = util::get_map_name();
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
    }

#/
