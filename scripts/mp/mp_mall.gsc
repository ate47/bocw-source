// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\compass.gsc;

#namespace mp_mall;

// Namespace mp_mall/level_init
// Params 1, eflags: 0x20
// Checksum 0x7725b5ce, Offset: 0x128
// Size: 0xe4
function event_handler[level_init] main(*eventstruct) {
    killstreaks::function_257a5f13("straferun", 40);
    killstreaks::function_257a5f13("helicopter_comlink", 75);
    scene::function_497689f6(#"cin_mp_mall_apc_intro", "apc", "tag_probe_attach", "prb_tn_us_apc_arv_int");
    scene::function_497689f6(#"cin_mp_mall_heli_intro", "helicopter", "tag_probe_attach", "prb_tn_mil_rus_heli_trans");
    load::main();
    compass::setupminimap("");
}

