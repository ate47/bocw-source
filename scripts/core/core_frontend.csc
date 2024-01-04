// Atian COD Tools GSC CW decompiler test
#using scripts\core\core_frontend_sound.csc;
#using scripts\core\core_frontend_fx.csc;
#using scripts\core_common\util_shared.csc;

#namespace core_frontend;

// Namespace core_frontend/level_init
// Params 1, eflags: 0x20
// Checksum 0x3906ac3, Offset: 0x98
// Size: 0xf4
function event_handler[level_init] main(*eventstruct) {
    core_frontend_fx::main();
    core_frontend_sound::main();
    setdvar(#"hash_59cffccc9729732f", -40);
    setdvar(#"hash_7633a587d5705d08", 0);
    setdvar(#"hash_3fe46a1700f8faf6", 0);
    setdvar(#"hash_2846dae927ae532d", 0);
    setdvar(#"hash_62e47f24921bf7ce", 0);
    util::waitforclient(0);
}

