#using script_56425d966f55375d;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_firebase;

// Namespace mp_firebase/level_init
// Params 1, eflags: 0x20
// Checksum 0xb3b245a2, Offset: 0xb0
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

// Namespace mp_firebase/mp_firebase
// Params 1, eflags: 0x0
// Checksum 0xef5fe53f, Offset: 0x1d0
// Size: 0x34
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(500, 0.8);
}

