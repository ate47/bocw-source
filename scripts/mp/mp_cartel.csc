// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace mp_cartel;

// Namespace mp_cartel/level_init
// Params 1, eflags: 0x20
// Checksum 0x7c91a4b3, Offset: 0xb0
// Size: 0x12c
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_gameplay_started(&on_gameplay_started);
    load::main();
    level thread function_1ab1b817();
    util::waitforclient(0);
}

// Namespace mp_cartel/mp_cartel
// Params 1, eflags: 0x2 linked
// Checksum 0x3ec57d5b, Offset: 0x1e8
// Size: 0x40
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(500, 2);
    level notify(#"hash_4db7288228e005");
}

// Namespace mp_cartel/mp_cartel
// Params 0, eflags: 0x2 linked
// Checksum 0x2372a91c, Offset: 0x230
// Size: 0x1b4
function function_1ab1b817() {
    level endon(#"hash_6be4b326e81b8240");
    while (true) {
        level waittill(#"hash_7c4c4c5744bdad25");
        foreach (player in getlocalplayers()) {
            if (!player postfx::function_556665f2(#"hash_62902ec0cbc8636b")) {
                player postfx::playpostfxbundle(#"hash_62902ec0cbc8636b");
            }
        }
        level waittill(#"hash_736e2b49ce648221");
        foreach (player in getlocalplayers()) {
            if (player postfx::function_556665f2(#"hash_62902ec0cbc8636b")) {
                player postfx::exitpostfxbundle(#"hash_62902ec0cbc8636b");
            }
        }
    }
}

