// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace mp_prop_controls;

// Namespace mp_prop_controls
// Method(s) 6 Total 13
class cmp_prop_controls : cluielem {

    // Namespace cmp_prop_controls/mp_prop_controls
    // Params 1, eflags: 0x0
    // Checksum 0xa5577f7b, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cmp_prop_controls/mp_prop_controls
    // Params 0, eflags: 0x0
    // Checksum 0x3ffcc4f1, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("mp_prop_controls");
    }

    // Namespace cmp_prop_controls/mp_prop_controls
    // Params 0, eflags: 0x0
    // Checksum 0xcea40f97, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("mp_prop_controls");
    }

    // Namespace cmp_prop_controls/mp_prop_controls
    // Params 1, eflags: 0x0
    // Checksum 0x48a86aa5, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace mp_prop_controls/mp_prop_controls
// Params 0, eflags: 0x0
// Checksum 0x9fa672f1, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new cmp_prop_controls();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"mp_prop_controls"])) {
        level.var_ae746e8f[#"mp_prop_controls"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"mp_prop_controls"])) {
        level.var_ae746e8f[#"mp_prop_controls"] = [];
    } else if (!isarray(level.var_ae746e8f[#"mp_prop_controls"])) {
        level.var_ae746e8f[#"mp_prop_controls"] = array(level.var_ae746e8f[#"mp_prop_controls"]);
    }
    level.var_ae746e8f[#"mp_prop_controls"][level.var_ae746e8f[#"mp_prop_controls"].size] = elem;
}

// Namespace mp_prop_controls/mp_prop_controls
// Params 0, eflags: 0x0
// Checksum 0x469aae33, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new cmp_prop_controls();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace mp_prop_controls/mp_prop_controls
// Params 1, eflags: 0x0
// Checksum 0x307868d4, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace mp_prop_controls/mp_prop_controls
// Params 1, eflags: 0x0
// Checksum 0xc75bc85b, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_prop_controls/mp_prop_controls
// Params 1, eflags: 0x0
// Checksum 0x2bcaf13c, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

