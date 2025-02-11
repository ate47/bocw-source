#using scripts\core_common\compass;
#using scripts\core_common\load_shared;

#namespace mp_sm_berlin_tunnel;

// Namespace mp_sm_berlin_tunnel/level_init
// Params 1, eflags: 0x20
// Checksum 0xddd573e5, Offset: 0x98
// Size: 0x5c
function event_handler[level_init] main(*eventstruct) {
    load::main();
    compass::setupminimap("");
    setdvar(#"hash_7b06b8037c26b99b", 147);
}

