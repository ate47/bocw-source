// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_tungsten_grandprix;

// Namespace zm_tungsten_grandprix
// Method(s) 9 Total 16
class czm_tungsten_grandprix : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0xd088fb62, Offset: 0x398
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0xefe7233d, Offset: 0x4b0
    // Size: 0x44
    function function_1870151b(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "raceTotalLap", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0x4daba36b, Offset: 0x410
    // Size: 0x44
    function function_2b44c64e(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "raceRanking", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0x7cdba257, Offset: 0x500
    // Size: 0x44
    function function_2b80b614(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "raceRewardTier", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0xeb6e0b96, Offset: 0x460
    // Size: 0x44
    function function_307daa91(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "raceCurrentLap", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 1, eflags: 0x0
    // Checksum 0x7071c79a, Offset: 0x3e0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 0, eflags: 0x0
    // Checksum 0x6027fa72, Offset: 0x2d0
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_tungsten_grandprix");
        cluielem::add_clientfield("raceRanking", 28000, 2, "int");
        cluielem::add_clientfield("raceCurrentLap", 28000, 2, "int");
        cluielem::add_clientfield("raceTotalLap", 28000, 2, "int");
        cluielem::add_clientfield("raceRewardTier", 28000, 2, "int", 0);
    }

}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 0, eflags: 0x0
// Checksum 0x759888e7, Offset: 0x120
// Size: 0x34
function register() {
    elem = new czm_tungsten_grandprix();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0x584b4b43, Offset: 0x160
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 1, eflags: 0x0
// Checksum 0x5189623b, Offset: 0x1a0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 1, eflags: 0x0
// Checksum 0xc3d6ea8d, Offset: 0x1c8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0x88dfdb3d, Offset: 0x1f0
// Size: 0x28
function function_2b44c64e(player, value) {
    [[ self ]]->function_2b44c64e(player, value);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0xe25ed9ee, Offset: 0x220
// Size: 0x28
function function_307daa91(player, value) {
    [[ self ]]->function_307daa91(player, value);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0xd1c97b0a, Offset: 0x250
// Size: 0x28
function function_1870151b(player, value) {
    [[ self ]]->function_1870151b(player, value);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0x1ac53e22, Offset: 0x280
// Size: 0x28
function function_2b80b614(player, value) {
    [[ self ]]->function_2b80b614(player, value);
}

