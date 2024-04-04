// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace seeker_mine_prompt;

// Namespace seeker_mine_prompt
// Method(s) 8 Total 15
class cseeker_mine_prompt : cluielem {

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 1, eflags: 0x0
    // Checksum 0x937d5049, Offset: 0x4d8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 0, eflags: 0x0
    // Checksum 0xa76c33, Offset: 0x440
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("seeker_mine_prompt");
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xfa2128e8, Offset: 0x3b8
    // Size: 0x7c
    function setup_clientfields(progresscallback, var_ca3086f0) {
        cluielem::setup_clientfields("seeker_mine_prompt");
        cluielem::add_clientfield("progress", 1, 5, "float", progresscallback);
        cluielem::add_clientfield("promptState", 1, 2, "int", var_ca3086f0);
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xeca01c31, Offset: 0x508
    // Size: 0x30
    function set_progress(localclientnum, value) {
        set_data(localclientnum, "progress", value);
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xf58c3904, Offset: 0x540
    // Size: 0x30
    function set_promptstate(localclientnum, value) {
        set_data(localclientnum, "promptState", value);
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 1, eflags: 0x0
    // Checksum 0xcee6291e, Offset: 0x468
    // Size: 0x64
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "progress", 0);
        set_data(localclientnum, "promptState", 0);
    }

}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 2, eflags: 0x0
// Checksum 0xea5af425, Offset: 0xf8
// Size: 0x17e
function register(progresscallback, var_ca3086f0) {
    elem = new cseeker_mine_prompt();
    [[ elem ]]->setup_clientfields(progresscallback, var_ca3086f0);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"seeker_mine_prompt"])) {
        level.var_ae746e8f[#"seeker_mine_prompt"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"seeker_mine_prompt"])) {
        level.var_ae746e8f[#"seeker_mine_prompt"] = [];
    } else if (!isarray(level.var_ae746e8f[#"seeker_mine_prompt"])) {
        level.var_ae746e8f[#"seeker_mine_prompt"] = array(level.var_ae746e8f[#"seeker_mine_prompt"]);
    }
    level.var_ae746e8f[#"seeker_mine_prompt"][level.var_ae746e8f[#"seeker_mine_prompt"].size] = elem;
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 0, eflags: 0x0
// Checksum 0x93199b89, Offset: 0x280
// Size: 0x34
function register_clientside() {
    elem = new cseeker_mine_prompt();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 1, eflags: 0x0
// Checksum 0x73ac483, Offset: 0x2c0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 1, eflags: 0x0
// Checksum 0x307e05d3, Offset: 0x2e8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 1, eflags: 0x0
// Checksum 0xd39c071e, Offset: 0x310
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 2, eflags: 0x0
// Checksum 0x2412093c, Offset: 0x338
// Size: 0x28
function set_progress(localclientnum, value) {
    [[ self ]]->set_progress(localclientnum, value);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 2, eflags: 0x0
// Checksum 0xc5c169a3, Offset: 0x368
// Size: 0x28
function set_promptstate(localclientnum, value) {
    [[ self ]]->set_promptstate(localclientnum, value);
}

