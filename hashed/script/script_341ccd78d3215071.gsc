// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_gold_hud;

// Namespace zm_gold_hud
// Method(s) 6 Total 13
class czm_gold_hud : cluielem {

    // Namespace czm_gold_hud/zm_gold_hud
    // Params 1, eflags: 0x0
    // Checksum 0x6bbe1073, Offset: 0x398
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_gold_hud/zm_gold_hud
    // Params 0, eflags: 0x0
    // Checksum 0x1c8ceaa7, Offset: 0x340
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_gold_hud");
    }

    // Namespace czm_gold_hud/zm_gold_hud
    // Params 0, eflags: 0x0
    // Checksum 0xd6f94c2a, Offset: 0x318
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_gold_hud");
    }

    // Namespace czm_gold_hud/zm_gold_hud
    // Params 1, eflags: 0x0
    // Checksum 0x1d2b076a, Offset: 0x368
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace zm_gold_hud/zm_gold_hud
// Params 0, eflags: 0x0
// Checksum 0xad80bdae, Offset: 0xc8
// Size: 0x16e
function register() {
    elem = new czm_gold_hud();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_gold_hud"])) {
        level.var_ae746e8f[#"zm_gold_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_gold_hud"])) {
        level.var_ae746e8f[#"zm_gold_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_gold_hud"])) {
        level.var_ae746e8f[#"zm_gold_hud"] = array(level.var_ae746e8f[#"zm_gold_hud"]);
    }
    level.var_ae746e8f[#"zm_gold_hud"][level.var_ae746e8f[#"zm_gold_hud"].size] = elem;
}

// Namespace zm_gold_hud/zm_gold_hud
// Params 0, eflags: 0x0
// Checksum 0x4e8bd916, Offset: 0x240
// Size: 0x34
function register_clientside() {
    elem = new czm_gold_hud();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_gold_hud/zm_gold_hud
// Params 1, eflags: 0x0
// Checksum 0xdc8037a3, Offset: 0x280
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_gold_hud/zm_gold_hud
// Params 1, eflags: 0x0
// Checksum 0x9a28cce, Offset: 0x2a8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_gold_hud/zm_gold_hud
// Params 1, eflags: 0x0
// Checksum 0x9ac1cc48, Offset: 0x2d0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

