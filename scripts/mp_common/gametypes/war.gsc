// Atian COD Tools GSC CW decompiler test
#using script_4acb48c9cb82bb51;

#namespace war;

// Namespace war/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x2112924c, Offset: 0x88
// Size: 0x34
function event_handler[gametype_init] main(*eventstruct) {
    namespace_d03f485e::function_dc5b7ee6();
    level.onstartgametype = &onstartgametype;
}

// Namespace war/war
// Params 0, eflags: 0x0
// Checksum 0x71157430, Offset: 0xc8
// Size: 0x14
function onstartgametype() {
    namespace_d03f485e::function_1804ad1c();
}

