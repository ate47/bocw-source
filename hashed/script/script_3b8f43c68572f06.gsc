// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace revive_hud;

// Namespace revive_hud
// Method(s) 9 Total 16
class crevive_hud : cluielem {

    // Namespace crevive_hud/revive_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5edb62ad, Offset: 0x568
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace crevive_hud/revive_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x53958265, Offset: 0x608
    // Size: 0x30
    function set_fadetime(localclientnum, value) {
        set_data(localclientnum, "fadeTime", value);
    }

    // Namespace crevive_hud/revive_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x746a578d, Offset: 0x5d0
    // Size: 0x30
    function set_clientnum(localclientnum, value) {
        set_data(localclientnum, "clientNum", value);
    }

    // Namespace crevive_hud/revive_hud
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1237b87a, Offset: 0x4b0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("revive_hud");
    }

    // Namespace crevive_hud/revive_hud
    // Params 3, eflags: 0x2 linked
    // Checksum 0x52fd5f42, Offset: 0x3f8
    // Size: 0xac
    function setup_clientfields(*textcallback, var_c05c67e2, var_415094af) {
        cluielem::setup_clientfields("revive_hud");
        cluielem::function_dcb34c80("string", "text", 1);
        cluielem::add_clientfield("clientNum", 1, 7, "int", var_c05c67e2);
        cluielem::add_clientfield("fadeTime", 1, 5, "int", var_415094af);
    }

    // Namespace crevive_hud/revive_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7c76aa5b, Offset: 0x598
    // Size: 0x30
    function set_text(localclientnum, value) {
        set_data(localclientnum, "text", value);
    }

    // Namespace crevive_hud/revive_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0xfc8b69c6, Offset: 0x4d8
    // Size: 0x84
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "text", #"");
        set_data(localclientnum, "clientNum", 0);
        set_data(localclientnum, "fadeTime", 0);
    }

}

// Namespace revive_hud/revive_hud
// Params 3, eflags: 0x0
// Checksum 0x55fb38b, Offset: 0xf8
// Size: 0x18e
function register(textcallback, var_c05c67e2, var_415094af) {
    elem = new crevive_hud();
    [[ elem ]]->setup_clientfields(textcallback, var_c05c67e2, var_415094af);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"revive_hud"])) {
        level.var_ae746e8f[#"revive_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"revive_hud"])) {
        level.var_ae746e8f[#"revive_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"revive_hud"])) {
        level.var_ae746e8f[#"revive_hud"] = array(level.var_ae746e8f[#"revive_hud"]);
    }
    level.var_ae746e8f[#"revive_hud"][level.var_ae746e8f[#"revive_hud"].size] = elem;
}

// Namespace revive_hud/revive_hud
// Params 0, eflags: 0x0
// Checksum 0x68ff1a7f, Offset: 0x290
// Size: 0x34
function register_clientside() {
    elem = new crevive_hud();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace revive_hud/revive_hud
// Params 1, eflags: 0x0
// Checksum 0x37a0e45a, Offset: 0x2d0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace revive_hud/revive_hud
// Params 1, eflags: 0x0
// Checksum 0xc21d77ea, Offset: 0x2f8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace revive_hud/revive_hud
// Params 1, eflags: 0x0
// Checksum 0x10ca3097, Offset: 0x320
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace revive_hud/revive_hud
// Params 2, eflags: 0x0
// Checksum 0x21e5d488, Offset: 0x348
// Size: 0x28
function set_text(localclientnum, value) {
    [[ self ]]->set_text(localclientnum, value);
}

// Namespace revive_hud/revive_hud
// Params 2, eflags: 0x0
// Checksum 0xdc8a0c4, Offset: 0x378
// Size: 0x28
function set_clientnum(localclientnum, value) {
    [[ self ]]->set_clientnum(localclientnum, value);
}

// Namespace revive_hud/revive_hud
// Params 2, eflags: 0x0
// Checksum 0xa07f8b7e, Offset: 0x3a8
// Size: 0x28
function set_fadetime(localclientnum, value) {
    [[ self ]]->set_fadetime(localclientnum, value);
}

