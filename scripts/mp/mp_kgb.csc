// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace mp_kgb;

// Namespace mp_kgb/level_init
// Params 1, eflags: 0x20
// Checksum 0xb3b245a2, Offset: 0xa8
// Size: 0x114
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_gameplay_started(&on_gameplay_started);
    load::main();
    util::waitforclient(0);
}

// Namespace mp_kgb/mp_kgb
// Params 1, eflags: 0x2 linked
// Checksum 0x9e459e6, Offset: 0x1c8
// Size: 0x2c
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(700, 1.5);
}

