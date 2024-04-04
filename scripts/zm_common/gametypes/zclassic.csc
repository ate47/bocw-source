// Atian COD Tools GSC CW decompiler test
#using script_359683f0ff3b3fbb;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zclassic;

// Namespace zclassic/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x9c3a09fe, Offset: 0xa0
// Size: 0xac
function event_handler[gametype_init] main(*eventstruct) {
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
    if (!isdefined(level.var_352498c6)) {
        prototype_hud::register();
        level.var_352498c6 = 1;
    }
    util::function_8eb5d4b0(3500, 2.5);
    println("<unknown string>");
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x4c9b4e1c, Offset: 0x158
// Size: 0x24
function onprecachegametype() {
    println("<unknown string>");
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0xcc98602c, Offset: 0x188
// Size: 0x24
function onstartgametype() {
    println("<unknown string>");
}

