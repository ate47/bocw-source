// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace spectrerisingindicator;

// Namespace spectrerisingindicator
// Method(s) 8 Total 15
class cspectrerisingindicator : cluielem {

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 1, eflags: 0x0
    // Checksum 0x67e5735, Offset: 0x4c8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 2, eflags: 0x0
    // Checksum 0xd09e8a22, Offset: 0x4f8
    // Size: 0x30
    function set_clientnum(localclientnum, value) {
        set_data(localclientnum, "clientnum", value);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 0, eflags: 0x0
    // Checksum 0xa76c33, Offset: 0x438
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("SpectreRisingIndicator");
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 2, eflags: 0x0
    // Checksum 0x3c5a0b5f, Offset: 0x530
    // Size: 0x30
    function set_isalive(localclientnum, value) {
        set_data(localclientnum, "isAlive", value);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 2, eflags: 0x0
    // Checksum 0x22a1b197, Offset: 0x3b0
    // Size: 0x7c
    function setup_clientfields(var_c05c67e2, var_f25b9f45) {
        cluielem::setup_clientfields("SpectreRisingIndicator");
        cluielem::add_clientfield("clientnum", 1, 7, "int", var_c05c67e2);
        cluielem::add_clientfield("isAlive", 1, 1, "int", var_f25b9f45);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 1, eflags: 0x0
    // Checksum 0x17f0d1a5, Offset: 0x460
    // Size: 0x5c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "clientnum", 0);
        set_data(localclientnum, "isAlive", 0);
    }

}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 2, eflags: 0x0
// Checksum 0x92beef54, Offset: 0xf0
// Size: 0x17e
function register(var_c05c67e2, var_f25b9f45) {
    elem = new cspectrerisingindicator();
    [[ elem ]]->setup_clientfields(var_c05c67e2, var_f25b9f45);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"spectrerisingindicator"])) {
        level.var_ae746e8f[#"spectrerisingindicator"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"spectrerisingindicator"])) {
        level.var_ae746e8f[#"spectrerisingindicator"] = [];
    } else if (!isarray(level.var_ae746e8f[#"spectrerisingindicator"])) {
        level.var_ae746e8f[#"spectrerisingindicator"] = array(level.var_ae746e8f[#"spectrerisingindicator"]);
    }
    level.var_ae746e8f[#"spectrerisingindicator"][level.var_ae746e8f[#"spectrerisingindicator"].size] = elem;
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 0, eflags: 0x0
// Checksum 0x2e88a5b9, Offset: 0x278
// Size: 0x34
function register_clientside() {
    elem = new cspectrerisingindicator();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 1, eflags: 0x0
// Checksum 0x73ac483, Offset: 0x2b8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 1, eflags: 0x0
// Checksum 0x307e05d3, Offset: 0x2e0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 1, eflags: 0x0
// Checksum 0xd39c071e, Offset: 0x308
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 2, eflags: 0x0
// Checksum 0xf65160ff, Offset: 0x330
// Size: 0x28
function set_clientnum(localclientnum, value) {
    [[ self ]]->set_clientnum(localclientnum, value);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 2, eflags: 0x0
// Checksum 0x45aab21a, Offset: 0x360
// Size: 0x28
function set_isalive(localclientnum, value) {
    [[ self ]]->set_isalive(localclientnum, value);
}

