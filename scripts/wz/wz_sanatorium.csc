// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace wz_sanatorium;

// Namespace wz_sanatorium/level_init
// Params 1, eflags: 0x20
// Checksum 0x86a6a9bf, Offset: 0x178
// Size: 0x1bc
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    setsaveddvar(#"phys_ragdoll_buoyancy", 1);
    setsaveddvar(#"hash_72106cf1ba066d66", 1);
    setsaveddvar(#"hash_4ce570a0ea61ca76", "-12246 -15508 580");
    callback::on_gameplay_started(&on_gameplay_started);
    callback::on_localclient_connect(&on_player_connected);
    load::main();
    util::waitforclient(0);
    function_103cfebf();
}

// Namespace wz_sanatorium/wz_sanatorium
// Params 0, eflags: 0x6 linked
// Checksum 0x6662250f, Offset: 0x340
// Size: 0x368
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
    foreach (n_decal in findvolumedecalindexarray("mq4_choppercrash")) {
        hidevolumedecal(n_decal);
    }
    foreach (n_decal in findvolumedecalindexarray("end_of_level_corpses")) {
        hidevolumedecal(n_decal);
    }
    foreach (n_decal in findvolumedecalindexarray("end_of_level_exfil_outro_igc_props")) {
        hidevolumedecal(n_decal);
    }
}

// Namespace wz_sanatorium/wz_sanatorium
// Params 1, eflags: 0x2 linked
// Checksum 0x226aa641, Offset: 0x6b0
// Size: 0x6c
function on_player_connected(localclientnum) {
    if (util::get_game_type() === "zsurvival") {
        function_cdbcba12(localclientnum, 1, 1);
        playradiantexploder(localclientnum, "lgtexp_lightstate2");
    }
}

// Namespace wz_sanatorium/wz_sanatorium
// Params 1, eflags: 0x2 linked
// Checksum 0xf37c0495, Offset: 0x728
// Size: 0x6c
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    if (util::get_game_type() === "zsurvival") {
        util::function_8eb5d4b0(4500, 4);
        return;
    }
    util::function_8eb5d4b0(700, 1.5);
}

