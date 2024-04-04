// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_gold_align_satellite_hud;

// Namespace zm_gold_align_satellite_hud
// Method(s) 6 Total 13
class class_eaf2482a : cluielem {

    // Namespace namespace_eaf2482a/zm_gold_align_satellite_hud
    // Params 1, eflags: 0x0
    // Checksum 0x6bbe1073, Offset: 0x3a8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_eaf2482a/zm_gold_align_satellite_hud
    // Params 0, eflags: 0x0
    // Checksum 0x1c8ceaa7, Offset: 0x350
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_gold_align_satellite_hud");
    }

    // Namespace namespace_eaf2482a/zm_gold_align_satellite_hud
    // Params 0, eflags: 0x0
    // Checksum 0xd6f94c2a, Offset: 0x328
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_gold_align_satellite_hud");
    }

    // Namespace namespace_eaf2482a/zm_gold_align_satellite_hud
    // Params 1, eflags: 0x0
    // Checksum 0x1d2b076a, Offset: 0x378
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 0, eflags: 0x0
// Checksum 0xb4981a7e, Offset: 0xd8
// Size: 0x16e
function register() {
    elem = new class_eaf2482a();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_gold_align_satellite_hud"])) {
        level.var_ae746e8f[#"zm_gold_align_satellite_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_gold_align_satellite_hud"])) {
        level.var_ae746e8f[#"zm_gold_align_satellite_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_gold_align_satellite_hud"])) {
        level.var_ae746e8f[#"zm_gold_align_satellite_hud"] = array(level.var_ae746e8f[#"zm_gold_align_satellite_hud"]);
    }
    level.var_ae746e8f[#"zm_gold_align_satellite_hud"][level.var_ae746e8f[#"zm_gold_align_satellite_hud"].size] = elem;
}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 0, eflags: 0x0
// Checksum 0x97ce3bce, Offset: 0x250
// Size: 0x34
function register_clientside() {
    elem = new class_eaf2482a();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 1, eflags: 0x0
// Checksum 0xdc8037a3, Offset: 0x290
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 1, eflags: 0x0
// Checksum 0x9a28cce, Offset: 0x2b8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 1, eflags: 0x0
// Checksum 0x9ac1cc48, Offset: 0x2e0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

