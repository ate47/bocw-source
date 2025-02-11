#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\util_shared;

#namespace mp_satellite;

// Namespace mp_satellite/level_init
// Params 1, eflags: 0x20
// Checksum 0x416e863b, Offset: 0xf0
// Size: 0x24c
function event_handler[level_init] main(*eventstruct) {
    if (level.var_87c6c648 !== 1) {
        function_11e3e877(#"surface_enter", #"hash_591f9167b6a7ea8b");
        function_11e3e877(#"hash_6be5853fe57d01b0", #"hash_1f2ced241c9e45bb");
        function_11e3e877(#"hash_6251d9bc015e4542", #"hash_4e8bc503c06e62e3");
        function_11e3e877(#"hash_6a2ccf46147cb7d8", #"hash_eb2febf62337433");
    }
    clientfield::register("toplayer", "force_stream_rappel_ropes", 1, 1, "int", &force_stream_rappel_ropes, 0, 0);
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_gameplay_started(&on_gameplay_started);
    load::main();
    level thread function_e5a1065e();
    util::waitforclient(0);
}

// Namespace mp_satellite/mp_satellite
// Params 1, eflags: 0x0
// Checksum 0xa024804c, Offset: 0x348
// Size: 0x64
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(250, 2.25);
    level notify(#"hash_6ce45f8471d15231");
    level thread scene::play(#"hash_5657eeda4a6d163f");
}

// Namespace mp_satellite/mp_satellite
// Params 0, eflags: 0x0
// Checksum 0xd287667e, Offset: 0x3b8
// Size: 0x174
function function_e5a1065e() {
    level endon(#"hash_6ce45f8471d15231");
    while (true) {
        level waittill(#"hash_67b3195af66ed4eb");
        foreach (player in getlocalplayers()) {
            player postfx::playpostfxbundle(#"hash_4a3eee8916342bd9");
        }
        level waittill(#"hash_240db290be3c7f0f");
        foreach (player in getlocalplayers()) {
            player postfx::exitpostfxbundle(#"hash_4a3eee8916342bd9");
        }
    }
}

// Namespace mp_satellite/mp_satellite
// Params 7, eflags: 0x0
// Checksum 0x2c79f438, Offset: 0x538
// Size: 0x48c
function force_stream_rappel_ropes(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        forcestreamxmodel(#"hash_1d0a761405589268");
        forcestreamxmodel(#"hash_60dd47125bd3dc4e");
        forcestreamxmodel(#"hash_397f72cad5b7c14d");
        forcestreamxmodel(#"hash_45439a271474d282");
        forcestreamxmodel(#"hash_67ef1bd6ba78ccd0");
        forcestreamxmodel(#"hash_3d30ff086df1cb3c");
        forcestreamxmodel(#"hash_66530a60928b50b7");
        forcestreamxmodel(#"p9_fxanim_mp_sat_intro_rappel_sh010_rope_03_mod");
        forcestreamxmodel(#"hash_6e155cde08aef93f");
        forcestreamxmodel(#"hash_79d9c43a476c7734");
        forcestreamxmodel(#"hash_19890703e42b693d");
        forcestreamxmodel(#"hash_290d74ec655d285e");
        forcestreamxmodel(#"hash_261d40434e849519");
        forcestreamxmodel(#"hash_5c33bec599c874ba");
        forcestreamxmodel(#"hash_281fdb16fa0a1c81");
        forcestreamxmodel(#"hash_34bd0273397f1e76");
        forcestreamxmodel(#"hash_1a287a06b9e18161");
        return;
    }
    stopforcestreamingxmodel(#"hash_1d0a761405589268");
    stopforcestreamingxmodel(#"hash_60dd47125bd3dc4e");
    stopforcestreamingxmodel(#"hash_397f72cad5b7c14d");
    stopforcestreamingxmodel(#"hash_45439a271474d282");
    stopforcestreamingxmodel(#"hash_67ef1bd6ba78ccd0");
    stopforcestreamingxmodel(#"hash_3d30ff086df1cb3c");
    stopforcestreamingxmodel(#"hash_66530a60928b50b7");
    stopforcestreamingxmodel(#"p9_fxanim_mp_sat_intro_rappel_sh010_rope_03_mod");
    stopforcestreamingxmodel(#"hash_6e155cde08aef93f");
    stopforcestreamingxmodel(#"hash_79d9c43a476c7734");
    stopforcestreamingxmodel(#"hash_19890703e42b693d");
    stopforcestreamingxmodel(#"hash_290d74ec655d285e");
    stopforcestreamingxmodel(#"hash_261d40434e849519");
    stopforcestreamingxmodel(#"hash_5c33bec599c874ba");
    stopforcestreamingxmodel(#"hash_281fdb16fa0a1c81");
    stopforcestreamingxmodel(#"hash_34bd0273397f1e76");
    stopforcestreamingxmodel(#"hash_1a287a06b9e18161");
}

