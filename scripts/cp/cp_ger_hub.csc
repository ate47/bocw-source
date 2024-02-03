// Atian COD Tools GSC CW decompiler test
#using script_3defbd925a406475;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;

#namespace cp_ger_hub;

// Namespace cp_ger_hub/level_init
// Params 1, eflags: 0x20
// Checksum 0xccf20d8e, Offset: 0x98
// Size: 0x44
function event_handler[level_init] main(*eventstruct) {
    namespace_fa9f53a2::main();
    load::main();
    util::waitforclient(0);
}

