#using scripts\core_common\compass;
#using scripts\core_common\load_shared;
#using scripts\core_common\scene_shared;

#namespace mp_amerika;

// Namespace mp_amerika/level_init
// Params 1, eflags: 0x20
// Checksum 0x267a935a, Offset: 0xe0
// Size: 0x74
function event_handler[level_init] main(*eventstruct) {
    load::main();
    compass::setupminimap("");
    scene::function_497689f6(#"t9_cin_mp_amerika_apc", "apc", "tag_probe_attach", "prb_tn_us_apc_arv_int", "Shot 020");
}

