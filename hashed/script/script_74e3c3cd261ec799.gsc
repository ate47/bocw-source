// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_objective_timer;

// Namespace sr_objective_timer
// Method(s) 6 Total 13
class class_b5586f52 : cluielem {

    // Namespace namespace_b5586f52/sr_objective_timer
    // Params 1, eflags: 0x0
    // Checksum 0x986df31b, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_b5586f52/sr_objective_timer
    // Params 0, eflags: 0x0
    // Checksum 0x909e9eb7, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_objective_timer");
    }

    // Namespace namespace_b5586f52/sr_objective_timer
    // Params 0, eflags: 0x0
    // Checksum 0xab8374e, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_objective_timer");
    }

    // Namespace namespace_b5586f52/sr_objective_timer
    // Params 1, eflags: 0x0
    // Checksum 0xe84c49c8, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace sr_objective_timer/sr_objective_timer
// Params 0, eflags: 0x0
// Checksum 0x6118bdc2, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new class_b5586f52();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_objective_timer"])) {
        level.var_ae746e8f[#"sr_objective_timer"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_objective_timer"])) {
        level.var_ae746e8f[#"sr_objective_timer"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_objective_timer"])) {
        level.var_ae746e8f[#"sr_objective_timer"] = array(level.var_ae746e8f[#"sr_objective_timer"]);
    }
    level.var_ae746e8f[#"sr_objective_timer"][level.var_ae746e8f[#"sr_objective_timer"].size] = elem;
}

// Namespace sr_objective_timer/sr_objective_timer
// Params 0, eflags: 0x0
// Checksum 0x1261f43b, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new class_b5586f52();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_objective_timer/sr_objective_timer
// Params 1, eflags: 0x0
// Checksum 0xeb7ba0ec, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_objective_timer/sr_objective_timer
// Params 1, eflags: 0x0
// Checksum 0x3c077b77, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_objective_timer/sr_objective_timer
// Params 1, eflags: 0x0
// Checksum 0xb115c4c7, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

