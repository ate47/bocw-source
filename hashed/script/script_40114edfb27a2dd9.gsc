// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace scavenger_icon;

// Namespace scavenger_icon
// Method(s) 10 Total 17
class cscavenger_icon : cluielem {

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x731937f2, Offset: 0x688
    // Size: 0x6c
    function function_65b281a(localclientnum) {
        current_val = get_data(localclientnum, "armorPlatePulse");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "armorPlatePulse", new_val);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9e331489, Offset: 0x5e0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa65878f1, Offset: 0x778
    // Size: 0x6c
    function function_417df30c(localclientnum) {
        current_val = get_data(localclientnum, "rareScrapPulse");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "rareScrapPulse", new_val);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9fd56a, Offset: 0x700
    // Size: 0x6c
    function function_47e82a09(localclientnum) {
        current_val = get_data(localclientnum, "scrapPulse");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "scrapPulse", new_val);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6319bc2c, Offset: 0x518
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("scavenger_icon");
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 4, eflags: 0x2 linked
    // Checksum 0x405ab23b, Offset: 0x430
    // Size: 0xdc
    function setup_clientfields(var_c21a7363, var_acffa825, var_32c73fea, var_d239de43) {
        cluielem::setup_clientfields("scavenger_icon");
        cluielem::add_clientfield("ammoPulse", 1, 1, "counter", var_c21a7363);
        cluielem::add_clientfield("armorPlatePulse", 1, 1, "counter", var_acffa825);
        cluielem::add_clientfield("scrapPulse", 1, 1, "counter", var_32c73fea);
        cluielem::add_clientfield("rareScrapPulse", 4000, 1, "counter", var_d239de43);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8ba0b740, Offset: 0x610
    // Size: 0x6c
    function function_e4e9c303(localclientnum) {
        current_val = get_data(localclientnum, "ammoPulse");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "ammoPulse", new_val);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2e6e267c, Offset: 0x540
    // Size: 0x94
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "ammoPulse", 0);
        set_data(localclientnum, "armorPlatePulse", 0);
        set_data(localclientnum, "scrapPulse", 0);
        set_data(localclientnum, "rareScrapPulse", 0);
    }

}

// Namespace scavenger_icon/scavenger_icon
// Params 4, eflags: 0x2 linked
// Checksum 0xec129dd5, Offset: 0x118
// Size: 0x196
function register(var_c21a7363, var_acffa825, var_32c73fea, var_d239de43) {
    elem = new cscavenger_icon();
    [[ elem ]]->setup_clientfields(var_c21a7363, var_acffa825, var_32c73fea, var_d239de43);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"scavenger_icon"])) {
        level.var_ae746e8f[#"scavenger_icon"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"scavenger_icon"])) {
        level.var_ae746e8f[#"scavenger_icon"] = [];
    } else if (!isarray(level.var_ae746e8f[#"scavenger_icon"])) {
        level.var_ae746e8f[#"scavenger_icon"] = array(level.var_ae746e8f[#"scavenger_icon"]);
    }
    level.var_ae746e8f[#"scavenger_icon"][level.var_ae746e8f[#"scavenger_icon"].size] = elem;
}

// Namespace scavenger_icon/scavenger_icon
// Params 0, eflags: 0x0
// Checksum 0xa1ddfd1f, Offset: 0x2b8
// Size: 0x34
function register_clientside() {
    elem = new cscavenger_icon();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0x2517e541, Offset: 0x2f8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0x34eadf50, Offset: 0x320
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0x813cd002, Offset: 0x348
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0xf1f9b11f, Offset: 0x370
// Size: 0x1c
function function_e4e9c303(localclientnum) {
    [[ self ]]->function_e4e9c303(localclientnum);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0x5565409e, Offset: 0x398
// Size: 0x1c
function function_65b281a(localclientnum) {
    [[ self ]]->function_65b281a(localclientnum);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0x3a8eb503, Offset: 0x3c0
// Size: 0x1c
function function_47e82a09(localclientnum) {
    [[ self ]]->function_47e82a09(localclientnum);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0x924d14e2, Offset: 0x3e8
// Size: 0x1c
function function_417df30c(localclientnum) {
    [[ self ]]->function_417df30c(localclientnum);
}

