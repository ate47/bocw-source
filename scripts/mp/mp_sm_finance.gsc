// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\compass.gsc;

#namespace mp_sm_finance;

// Namespace mp_sm_finance/level_init
// Params 1, eflags: 0x20
// Checksum 0xb5e5180c, Offset: 0x98
// Size: 0x34
function event_handler[level_init] main(*eventstruct) {
    load::main();
    compass::setupminimap("");
}

