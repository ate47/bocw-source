// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace mp_infect_timer;

// Namespace mp_infect_timer
// Method(s) 7 Total 14
class cmp_infect_timer : cluielem {

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 1, eflags: 0x0
    // Checksum 0x3eb5e658, Offset: 0x440
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 0, eflags: 0x0
    // Checksum 0x3dd4b28f, Offset: 0x3d0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("mp_infect_timer");
    }

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 2, eflags: 0x0
    // Checksum 0x74623191, Offset: 0x470
    // Size: 0x30
    function function_8c8674a4(localclientnum, value) {
        set_data(localclientnum, "infectionTimeRemaining", value);
    }

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 1, eflags: 0x0
    // Checksum 0x704929ed, Offset: 0x378
    // Size: 0x4c
    function setup_clientfields(var_7682811d) {
        cluielem::setup_clientfields("mp_infect_timer");
        cluielem::add_clientfield("infectionTimeRemaining", 1, 4, "int", var_7682811d);
    }

    // Namespace cmp_infect_timer/mp_infect_timer
    // Params 1, eflags: 0x0
    // Checksum 0xb0dbc78a, Offset: 0x3f8
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "infectionTimeRemaining", 0);
    }

}

// Namespace mp_infect_timer/mp_infect_timer
// Params 1, eflags: 0x0
// Checksum 0xb6268730, Offset: 0xf0
// Size: 0x176
function register(var_7682811d) {
    elem = new cmp_infect_timer();
    [[ elem ]]->setup_clientfields(var_7682811d);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"mp_infect_timer"])) {
        level.var_ae746e8f[#"mp_infect_timer"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"mp_infect_timer"])) {
        level.var_ae746e8f[#"mp_infect_timer"] = [];
    } else if (!isarray(level.var_ae746e8f[#"mp_infect_timer"])) {
        level.var_ae746e8f[#"mp_infect_timer"] = array(level.var_ae746e8f[#"mp_infect_timer"]);
    }
    level.var_ae746e8f[#"mp_infect_timer"][level.var_ae746e8f[#"mp_infect_timer"].size] = elem;
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 0, eflags: 0x0
// Checksum 0x50f579d3, Offset: 0x270
// Size: 0x34
function register_clientside() {
    elem = new cmp_infect_timer();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 1, eflags: 0x0
// Checksum 0xd796c27f, Offset: 0x2b0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 1, eflags: 0x0
// Checksum 0xcc475b03, Offset: 0x2d8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 1, eflags: 0x0
// Checksum 0x99547063, Offset: 0x300
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace mp_infect_timer/mp_infect_timer
// Params 2, eflags: 0x0
// Checksum 0x673b5144, Offset: 0x328
// Size: 0x28
function function_8c8674a4(localclientnum, value) {
    [[ self ]]->function_8c8674a4(localclientnum, value);
}

