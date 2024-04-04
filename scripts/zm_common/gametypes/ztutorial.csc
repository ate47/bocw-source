// Atian COD Tools GSC CW decompiler test
#namespace ztutorial;

// Namespace ztutorial/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x20b03618, Offset: 0x80
// Size: 0x3c
function event_handler[gametype_init] main(*eventstruct) {
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
}

// Namespace ztutorial/ztutorial
// Params 0, eflags: 0x0
// Checksum 0x95b27cf2, Offset: 0xc8
// Size: 0x24
function onprecachegametype() {
    println("<unknown string>");
}

// Namespace ztutorial/ztutorial
// Params 0, eflags: 0x0
// Checksum 0x8652413c, Offset: 0xf8
// Size: 0x24
function onstartgametype() {
    println("<unknown string>");
}

