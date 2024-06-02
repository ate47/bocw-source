// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace mp_hijacked_rm;

// Namespace mp_hijacked_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0xbae5fff7, Offset: 0xa8
// Size: 0x164
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_gameplay_started(&on_gameplay_started);
    load::main();
    util::waitforclient(0);
    setdvar(#"phys_buoyancy", 1);
    setdvar(#"phys_ragdoll_buoyancy", 1);
}

// Namespace mp_hijacked_rm/mp_hijacked_rm
// Params 1, eflags: 0x2 linked
// Checksum 0x83edee76, Offset: 0x218
// Size: 0x54
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    setdvar(#"phys_ragdoll_buoyancy", 1);
    util::function_8eb5d4b0(750, 1.125);
}

