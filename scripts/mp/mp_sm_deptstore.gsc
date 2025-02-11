#using scripts\core_common\compass;
#using scripts\core_common\load_shared;

#namespace mp_sm_deptstore;

// Namespace mp_sm_deptstore/level_init
// Params 1, eflags: 0x20
// Checksum 0xb5e5180c, Offset: 0x98
// Size: 0x34
function event_handler[level_init] main(*eventstruct) {
    load::main();
    compass::setupminimap("");
}

