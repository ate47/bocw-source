// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace self_revive_visuals_rush;

// Namespace self_revive_visuals_rush
// Method(s) 7 Total 14
class cself_revive_visuals_rush : cluielem {

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 1, eflags: 0x0
    // Checksum 0xa7ba79ea, Offset: 0x438
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 0, eflags: 0x0
    // Checksum 0xb732f866, Offset: 0x3c8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("self_revive_visuals_rush");
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 1, eflags: 0x0
    // Checksum 0x6aec6c4e, Offset: 0x370
    // Size: 0x4c
    function setup_clientfields(var_2e62cab3) {
        cluielem::setup_clientfields("self_revive_visuals_rush");
        cluielem::add_clientfield("revive_time", 1, 4, "int", var_2e62cab3);
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 2, eflags: 0x0
    // Checksum 0xcfc5b43f, Offset: 0x468
    // Size: 0x30
    function set_revive_time(localclientnum, value) {
        set_data(localclientnum, "revive_time", value);
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 1, eflags: 0x0
    // Checksum 0xce57d110, Offset: 0x3f0
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "revive_time", 0);
    }

}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 1, eflags: 0x0
// Checksum 0xd8b33847, Offset: 0xe8
// Size: 0x176
function register(var_2e62cab3) {
    elem = new cself_revive_visuals_rush();
    [[ elem ]]->setup_clientfields(var_2e62cab3);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"self_revive_visuals_rush"])) {
        level.var_ae746e8f[#"self_revive_visuals_rush"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"self_revive_visuals_rush"])) {
        level.var_ae746e8f[#"self_revive_visuals_rush"] = [];
    } else if (!isarray(level.var_ae746e8f[#"self_revive_visuals_rush"])) {
        level.var_ae746e8f[#"self_revive_visuals_rush"] = array(level.var_ae746e8f[#"self_revive_visuals_rush"]);
    }
    level.var_ae746e8f[#"self_revive_visuals_rush"][level.var_ae746e8f[#"self_revive_visuals_rush"].size] = elem;
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 0, eflags: 0x0
// Checksum 0xbd958212, Offset: 0x268
// Size: 0x34
function register_clientside() {
    elem = new cself_revive_visuals_rush();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 1, eflags: 0x0
// Checksum 0xab7c1abf, Offset: 0x2a8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2d0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 1, eflags: 0x0
// Checksum 0x71b19878, Offset: 0x2f8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 2, eflags: 0x0
// Checksum 0xa4b7668f, Offset: 0x320
// Size: 0x28
function set_revive_time(localclientnum, value) {
    [[ self ]]->set_revive_time(localclientnum, value);
}

