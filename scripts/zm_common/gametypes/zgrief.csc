#using scripts\core_common\struct;

#namespace zgrief;

// Namespace zgrief/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xfbdcb9ba, Offset: 0x88
// Size: 0x5c
function event_handler[gametype_init] main(*eventstruct) {
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
    println("<dev string:x38>");
}

// Namespace zgrief/zgrief
// Params 0, eflags: 0x0
// Checksum 0x872046bb, Offset: 0xf0
// Size: 0x24
function onprecachegametype() {
    println("<dev string:x55>");
}

// Namespace zgrief/zgrief
// Params 0, eflags: 0x0
// Checksum 0xe8e0e49d, Offset: 0x120
// Size: 0x24
function onstartgametype() {
    println("<dev string:x76>");
}

