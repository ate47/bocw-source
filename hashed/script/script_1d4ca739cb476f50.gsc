// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\serverfield_shared.csc;

#namespace minigame;

// Namespace minigame/namespace_435e13ec
// Params 0, eflags: 0x5
// Checksum 0xbfa6031f, Offset: 0xc0
// Size: 0x34
function private autoexec __init__system__() {
    system::register("minigames", &preinit, undefined, undefined, undefined);
}

// Namespace minigame/namespace_435e13ec
// Params 0, eflags: 0x6 linked
// Checksum 0x25248a9c, Offset: 0x100
// Size: 0x2c
function private preinit() {
    serverfield::register("minigame_progress", 1, 3, "int");
}

// Namespace minigame/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0x8c74cf3, Offset: 0x138
// Size: 0x84
function function_98fbeac1(e_player, steps) {
    assert(8 - 1 >= steps);
    var_4b635559 = int(steps * (8 - 1));
    e_player serverfield::set("minigame_progress", var_4b635559);
}

