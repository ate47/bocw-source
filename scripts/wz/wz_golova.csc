// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace wz_golova;

// Namespace wz_golova/level_init
// Params 1, eflags: 0x20
// Checksum 0xd9b499b, Offset: 0xe8
// Size: 0x124
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_gameplay_started(&on_gameplay_started);
    load::main();
    util::waitforclient(0);
    function_103cfebf();
}

// Namespace wz_golova/wz_golova
// Params 0, eflags: 0x6 linked
// Checksum 0x14d1ac7a, Offset: 0x218
// Size: 0x1b8
function private function_103cfebf() {
    foreach (n_decal in findvolumedecalindexarray("hordehunt_corpses_1")) {
        hidevolumedecal(n_decal);
    }
    foreach (n_decal in findvolumedecalindexarray("hordehunt_corpses_2")) {
        hidevolumedecal(n_decal);
    }
    foreach (n_decal in findvolumedecalindexarray("hordehunt_corpses_3")) {
        hidevolumedecal(n_decal);
    }
}

// Namespace wz_golova/wz_golova
// Params 1, eflags: 0x2 linked
// Checksum 0x24055392, Offset: 0x3d8
// Size: 0x2c
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(700, 1.5);
}

