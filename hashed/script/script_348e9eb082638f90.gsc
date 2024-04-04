// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace scream_deathmatch_timer;

// Namespace scream_deathmatch_timer
// Method(s) 7 Total 14
class class_d49eac9b : cluielem {

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 1, eflags: 0x0
    // Checksum 0xa7ba79ea, Offset: 0x440
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 2, eflags: 0x0
    // Checksum 0x4ee0d118, Offset: 0x470
    // Size: 0x30
    function function_302c4b81(localclientnum, value) {
        set_data(localclientnum, "slasherCountDownTime", value);
    }

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 0, eflags: 0x0
    // Checksum 0xb732f866, Offset: 0x3d0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("scream_deathmatch_timer");
    }

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 1, eflags: 0x0
    // Checksum 0xb57c0493, Offset: 0x378
    // Size: 0x4c
    function setup_clientfields(var_a6570fb) {
        cluielem::setup_clientfields("scream_deathmatch_timer");
        cluielem::add_clientfield("slasherCountDownTime", 1, 4, "int", var_a6570fb);
    }

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 1, eflags: 0x0
    // Checksum 0x4f72b437, Offset: 0x3f8
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "slasherCountDownTime", 0);
    }

}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 1, eflags: 0x0
// Checksum 0x63634991, Offset: 0xf0
// Size: 0x176
function register(var_a6570fb) {
    elem = new class_d49eac9b();
    [[ elem ]]->setup_clientfields(var_a6570fb);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"scream_deathmatch_timer"])) {
        level.var_ae746e8f[#"scream_deathmatch_timer"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"scream_deathmatch_timer"])) {
        level.var_ae746e8f[#"scream_deathmatch_timer"] = [];
    } else if (!isarray(level.var_ae746e8f[#"scream_deathmatch_timer"])) {
        level.var_ae746e8f[#"scream_deathmatch_timer"] = array(level.var_ae746e8f[#"scream_deathmatch_timer"]);
    }
    level.var_ae746e8f[#"scream_deathmatch_timer"][level.var_ae746e8f[#"scream_deathmatch_timer"].size] = elem;
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 0, eflags: 0x0
// Checksum 0xbb4e867a, Offset: 0x270
// Size: 0x34
function register_clientside() {
    elem = new class_d49eac9b();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 1, eflags: 0x0
// Checksum 0xab7c1abf, Offset: 0x2b0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2d8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 1, eflags: 0x0
// Checksum 0x71b19878, Offset: 0x300
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 2, eflags: 0x0
// Checksum 0x25bbff3, Offset: 0x328
// Size: 0x28
function function_302c4b81(localclientnum, value) {
    [[ self ]]->function_302c4b81(localclientnum, value);
}

