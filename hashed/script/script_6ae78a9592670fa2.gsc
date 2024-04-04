// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace multi_stage_target_lockon;

// Namespace multi_stage_target_lockon
// Method(s) 8 Total 15
class cmulti_stage_target_lockon : cluielem {

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 1, eflags: 0x0
    // Checksum 0x937d5049, Offset: 0x4d0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 0, eflags: 0x0
    // Checksum 0xee876ac, Offset: 0x440
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("multi_stage_target_lockon");
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 2, eflags: 0x0
    // Checksum 0x22170e32, Offset: 0x3b8
    // Size: 0x7c
    function setup_clientfields(var_5a7b4b38, var_29786c92) {
        cluielem::setup_clientfields("multi_stage_target_lockon");
        cluielem::add_clientfield("entNum", 1, 6, "int", var_5a7b4b38);
        cluielem::add_clientfield("targetState", 1, 3, "int", var_29786c92);
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 2, eflags: 0x0
    // Checksum 0xc0e33a95, Offset: 0x500
    // Size: 0x30
    function set_entnum(localclientnum, value) {
        set_data(localclientnum, "entNum", value);
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 2, eflags: 0x0
    // Checksum 0xad92902c, Offset: 0x538
    // Size: 0x30
    function set_targetstate(localclientnum, value) {
        set_data(localclientnum, "targetState", value);
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 1, eflags: 0x0
    // Checksum 0xef55d824, Offset: 0x468
    // Size: 0x5c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "entNum", 0);
        set_data(localclientnum, "targetState", 0);
    }

}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 2, eflags: 0x0
// Checksum 0xbef26d36, Offset: 0xf8
// Size: 0x17e
function register(var_5a7b4b38, var_29786c92) {
    elem = new cmulti_stage_target_lockon();
    [[ elem ]]->setup_clientfields(var_5a7b4b38, var_29786c92);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"multi_stage_target_lockon"])) {
        level.var_ae746e8f[#"multi_stage_target_lockon"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"multi_stage_target_lockon"])) {
        level.var_ae746e8f[#"multi_stage_target_lockon"] = [];
    } else if (!isarray(level.var_ae746e8f[#"multi_stage_target_lockon"])) {
        level.var_ae746e8f[#"multi_stage_target_lockon"] = array(level.var_ae746e8f[#"multi_stage_target_lockon"]);
    }
    level.var_ae746e8f[#"multi_stage_target_lockon"][level.var_ae746e8f[#"multi_stage_target_lockon"].size] = elem;
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 0, eflags: 0x0
// Checksum 0x1bbb880e, Offset: 0x280
// Size: 0x34
function register_clientside() {
    elem = new cmulti_stage_target_lockon();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 1, eflags: 0x0
// Checksum 0x238aee51, Offset: 0x2c0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 1, eflags: 0x0
// Checksum 0x8b7a0cfd, Offset: 0x2e8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 1, eflags: 0x0
// Checksum 0xd6e52d15, Offset: 0x310
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 2, eflags: 0x0
// Checksum 0x1182fca5, Offset: 0x338
// Size: 0x28
function set_entnum(localclientnum, value) {
    [[ self ]]->set_entnum(localclientnum, value);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 2, eflags: 0x0
// Checksum 0x99c5fa56, Offset: 0x368
// Size: 0x28
function set_targetstate(localclientnum, value) {
    [[ self ]]->set_targetstate(localclientnum, value);
}

