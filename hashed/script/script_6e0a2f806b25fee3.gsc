// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace stim_count;

// Namespace stim_count
// Method(s) 7 Total 14
class class_44eccfcc : cluielem {

    // Namespace namespace_44eccfcc/stim_count
    // Params 1, eflags: 0x2 linked
    // Checksum 0x417f4cce, Offset: 0x420
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_44eccfcc/stim_count
    // Params 0, eflags: 0x2 linked
    // Checksum 0x148641e6, Offset: 0x3b0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("stim_count");
    }

    // Namespace namespace_44eccfcc/stim_count
    // Params 2, eflags: 0x2 linked
    // Checksum 0x112f9112, Offset: 0x450
    // Size: 0x30
    function function_6eef7f4f(localclientnum, value) {
        set_data(localclientnum, "stim_count", value);
    }

    // Namespace namespace_44eccfcc/stim_count
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf2d9febc, Offset: 0x358
    // Size: 0x4c
    function setup_clientfields(var_ce21941e) {
        cluielem::setup_clientfields("stim_count");
        cluielem::add_clientfield("stim_count", 1, 4, "int", var_ce21941e);
    }

    // Namespace namespace_44eccfcc/stim_count
    // Params 1, eflags: 0x2 linked
    // Checksum 0xe1bb4100, Offset: 0x3d8
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "stim_count", 0);
    }

}

// Namespace stim_count/stim_count
// Params 1, eflags: 0x0
// Checksum 0x26a5bacd, Offset: 0xd0
// Size: 0x176
function register(var_ce21941e) {
    elem = new class_44eccfcc();
    [[ elem ]]->setup_clientfields(var_ce21941e);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"stim_count"])) {
        level.var_ae746e8f[#"stim_count"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"stim_count"])) {
        level.var_ae746e8f[#"stim_count"] = [];
    } else if (!isarray(level.var_ae746e8f[#"stim_count"])) {
        level.var_ae746e8f[#"stim_count"] = array(level.var_ae746e8f[#"stim_count"]);
    }
    level.var_ae746e8f[#"stim_count"][level.var_ae746e8f[#"stim_count"].size] = elem;
}

// Namespace stim_count/stim_count
// Params 0, eflags: 0x0
// Checksum 0x46cf1619, Offset: 0x250
// Size: 0x34
function register_clientside() {
    elem = new class_44eccfcc();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace stim_count/stim_count
// Params 1, eflags: 0x0
// Checksum 0x4da297e1, Offset: 0x290
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace stim_count/stim_count
// Params 1, eflags: 0x0
// Checksum 0xc510c8a8, Offset: 0x2b8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace stim_count/stim_count
// Params 1, eflags: 0x0
// Checksum 0xe65cac88, Offset: 0x2e0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace stim_count/stim_count
// Params 2, eflags: 0x0
// Checksum 0xcafd7303, Offset: 0x308
// Size: 0x28
function function_6eef7f4f(localclientnum, value) {
    [[ self ]]->function_6eef7f4f(localclientnum, value);
}

