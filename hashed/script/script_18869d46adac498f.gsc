// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_tungsten_grandprix;

// Namespace zm_tungsten_grandprix
// Method(s) 10 Total 17
class czm_tungsten_grandprix : cluielem {

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 1, eflags: 0x0
    // Checksum 0x860d5e6, Offset: 0x600
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0x325923aa, Offset: 0x6a0
    // Size: 0x30
    function function_1870151b(localclientnum, value) {
        set_data(localclientnum, "raceTotalLap", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0xc244c3eb, Offset: 0x630
    // Size: 0x30
    function function_2b44c64e(localclientnum, value) {
        set_data(localclientnum, "raceRanking", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0x83bc05f3, Offset: 0x6d8
    // Size: 0x30
    function function_2b80b614(localclientnum, value) {
        set_data(localclientnum, "raceRewardTier", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 2, eflags: 0x0
    // Checksum 0xce8311ee, Offset: 0x668
    // Size: 0x30
    function function_307daa91(localclientnum, value) {
        set_data(localclientnum, "raceCurrentLap", value);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 0, eflags: 0x0
    // Checksum 0xb6d2c54, Offset: 0x538
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_tungsten_grandprix");
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 4, eflags: 0x0
    // Checksum 0x568d7d45, Offset: 0x450
    // Size: 0xdc
    function setup_clientfields(var_20264c25, var_bbda5b4d, var_19161bc0, var_b6adcd73) {
        cluielem::setup_clientfields("zm_tungsten_grandprix");
        cluielem::add_clientfield("raceRanking", 28000, 2, "int", var_20264c25);
        cluielem::add_clientfield("raceCurrentLap", 28000, 2, "int", var_bbda5b4d);
        cluielem::add_clientfield("raceTotalLap", 28000, 2, "int", var_19161bc0);
        cluielem::add_clientfield("raceRewardTier", 28000, 2, "int", var_b6adcd73);
    }

    // Namespace czm_tungsten_grandprix/zm_tungsten_grandprix
    // Params 1, eflags: 0x0
    // Checksum 0xd5953493, Offset: 0x560
    // Size: 0x94
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "raceRanking", 0);
        set_data(localclientnum, "raceCurrentLap", 0);
        set_data(localclientnum, "raceTotalLap", 0);
        set_data(localclientnum, "raceRewardTier", 0);
    }

}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 4, eflags: 0x0
// Checksum 0xe1cbca42, Offset: 0x118
// Size: 0x196
function register(var_20264c25, var_bbda5b4d, var_19161bc0, var_b6adcd73) {
    elem = new czm_tungsten_grandprix();
    [[ elem ]]->setup_clientfields(var_20264c25, var_bbda5b4d, var_19161bc0, var_b6adcd73);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_tungsten_grandprix"])) {
        level.var_ae746e8f[#"zm_tungsten_grandprix"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_tungsten_grandprix"])) {
        level.var_ae746e8f[#"zm_tungsten_grandprix"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_tungsten_grandprix"])) {
        level.var_ae746e8f[#"zm_tungsten_grandprix"] = array(level.var_ae746e8f[#"zm_tungsten_grandprix"]);
    }
    level.var_ae746e8f[#"zm_tungsten_grandprix"][level.var_ae746e8f[#"zm_tungsten_grandprix"].size] = elem;
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 0, eflags: 0x0
// Checksum 0x432597ca, Offset: 0x2b8
// Size: 0x34
function register_clientside() {
    elem = new czm_tungsten_grandprix();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 1, eflags: 0x0
// Checksum 0xb9e73d81, Offset: 0x2f8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 1, eflags: 0x0
// Checksum 0x6f5221db, Offset: 0x320
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 1, eflags: 0x0
// Checksum 0xa104c566, Offset: 0x348
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0xef530716, Offset: 0x370
// Size: 0x28
function function_2b44c64e(localclientnum, value) {
    [[ self ]]->function_2b44c64e(localclientnum, value);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0xe01d3b48, Offset: 0x3a0
// Size: 0x28
function function_307daa91(localclientnum, value) {
    [[ self ]]->function_307daa91(localclientnum, value);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0xb239f0ed, Offset: 0x3d0
// Size: 0x28
function function_1870151b(localclientnum, value) {
    [[ self ]]->function_1870151b(localclientnum, value);
}

// Namespace zm_tungsten_grandprix/zm_tungsten_grandprix
// Params 2, eflags: 0x0
// Checksum 0x9c8361ca, Offset: 0x400
// Size: 0x28
function function_2b80b614(localclientnum, value) {
    [[ self ]]->function_2b80b614(localclientnum, value);
}

