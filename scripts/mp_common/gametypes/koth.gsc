// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\globallogic.gsc;
#using script_50d0f08de978328d;

#namespace koth;

// Namespace koth/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xa0b1f616, Offset: 0x90
// Size: 0x2c
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    namespace_d150537f::init();
}

