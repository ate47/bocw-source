// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace mp_laststand_client;

// Namespace mp_laststand_client
// Method(s) 8 Total 15
class cmp_laststand_client : cluielem {

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 1, eflags: 0x0
    // Checksum 0xa90560f, Offset: 0x4e8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 0, eflags: 0x0
    // Checksum 0x9b84cce1, Offset: 0x448
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("mp_laststand_client");
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0x46f00e78, Offset: 0x518
    // Size: 0x30
    function set_bleedout_progress(localclientnum, value) {
        set_data(localclientnum, "bleedout_progress", value);
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0x6dc80c94, Offset: 0x3c0
    // Size: 0x7c
    function setup_clientfields(var_a9a4e140, var_e97e7153) {
        cluielem::setup_clientfields("mp_laststand_client");
        cluielem::add_clientfield("bleedout_progress", 1, 6, "float", var_a9a4e140);
        cluielem::add_clientfield("revive_progress", 1, 5, "float", var_e97e7153);
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 2, eflags: 0x0
    // Checksum 0x14977856, Offset: 0x550
    // Size: 0x30
    function set_revive_progress(localclientnum, value) {
        set_data(localclientnum, "revive_progress", value);
    }

    // Namespace cmp_laststand_client/mp_laststand_client
    // Params 1, eflags: 0x0
    // Checksum 0x979368db, Offset: 0x470
    // Size: 0x6c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "bleedout_progress", 0);
        set_data(localclientnum, "revive_progress", 0);
    }

}

// Namespace mp_laststand_client/mp_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x21905362, Offset: 0x100
// Size: 0x17e
function register(var_a9a4e140, var_e97e7153) {
    elem = new cmp_laststand_client();
    [[ elem ]]->setup_clientfields(var_a9a4e140, var_e97e7153);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"mp_laststand_client"])) {
        level.var_ae746e8f[#"mp_laststand_client"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"mp_laststand_client"])) {
        level.var_ae746e8f[#"mp_laststand_client"] = [];
    } else if (!isarray(level.var_ae746e8f[#"mp_laststand_client"])) {
        level.var_ae746e8f[#"mp_laststand_client"] = array(level.var_ae746e8f[#"mp_laststand_client"]);
    }
    level.var_ae746e8f[#"mp_laststand_client"][level.var_ae746e8f[#"mp_laststand_client"].size] = elem;
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 0, eflags: 0x0
// Checksum 0x28720300, Offset: 0x288
// Size: 0x34
function register_clientside() {
    elem = new cmp_laststand_client();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 1, eflags: 0x0
// Checksum 0x30c153cc, Offset: 0x2c8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 1, eflags: 0x0
// Checksum 0x5dbf26a, Offset: 0x2f0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 1, eflags: 0x0
// Checksum 0xf8480f91, Offset: 0x318
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x1b7df8a0, Offset: 0x340
// Size: 0x28
function set_bleedout_progress(localclientnum, value) {
    [[ self ]]->set_bleedout_progress(localclientnum, value);
}

// Namespace mp_laststand_client/mp_laststand_client
// Params 2, eflags: 0x0
// Checksum 0x1cef86d5, Offset: 0x370
// Size: 0x28
function set_revive_progress(localclientnum, value) {
    [[ self ]]->set_revive_progress(localclientnum, value);
}

