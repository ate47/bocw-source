// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace self_respawn;

// Namespace self_respawn
// Method(s) 7 Total 14
class cself_respawn : cluielem {

    // Namespace cself_respawn/self_respawn
    // Params 2, eflags: 0x0
    // Checksum 0x7f231cec, Offset: 0x468
    // Size: 0x30
    function set_percent(localclientnum, value) {
        set_data(localclientnum, "percent", value);
    }

    // Namespace cself_respawn/self_respawn
    // Params 1, eflags: 0x0
    // Checksum 0x6760e502, Offset: 0x438
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cself_respawn/self_respawn
    // Params 0, eflags: 0x0
    // Checksum 0x3dd4b28f, Offset: 0x3c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("self_respawn");
    }

    // Namespace cself_respawn/self_respawn
    // Params 1, eflags: 0x0
    // Checksum 0x1d696b36, Offset: 0x368
    // Size: 0x4c
    function setup_clientfields(var_1089a5f3) {
        cluielem::setup_clientfields("self_respawn");
        cluielem::add_clientfield("percent", 1, 6, "float", var_1089a5f3);
    }

    // Namespace cself_respawn/self_respawn
    // Params 1, eflags: 0x0
    // Checksum 0x479f3d60, Offset: 0x3e8
    // Size: 0x48
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "percent", 0);
    }

}

// Namespace self_respawn/self_respawn
// Params 1, eflags: 0x0
// Checksum 0x2c5fdc7b, Offset: 0xe0
// Size: 0x176
function register(var_1089a5f3) {
    elem = new cself_respawn();
    [[ elem ]]->setup_clientfields(var_1089a5f3);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"self_respawn"])) {
        level.var_ae746e8f[#"self_respawn"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"self_respawn"])) {
        level.var_ae746e8f[#"self_respawn"] = [];
    } else if (!isarray(level.var_ae746e8f[#"self_respawn"])) {
        level.var_ae746e8f[#"self_respawn"] = array(level.var_ae746e8f[#"self_respawn"]);
    }
    level.var_ae746e8f[#"self_respawn"][level.var_ae746e8f[#"self_respawn"].size] = elem;
}

// Namespace self_respawn/self_respawn
// Params 0, eflags: 0x0
// Checksum 0xfe2ff996, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new cself_respawn();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace self_respawn/self_respawn
// Params 1, eflags: 0x0
// Checksum 0xd796c27f, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace self_respawn/self_respawn
// Params 1, eflags: 0x0
// Checksum 0xcc475b03, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace self_respawn/self_respawn
// Params 1, eflags: 0x0
// Checksum 0x99547063, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace self_respawn/self_respawn
// Params 2, eflags: 0x0
// Checksum 0xd0d8b6ee, Offset: 0x318
// Size: 0x28
function set_percent(localclientnum, value) {
    [[ self ]]->set_percent(localclientnum, value);
}

