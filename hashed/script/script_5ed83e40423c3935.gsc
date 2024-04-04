// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace wz_revive_prompt;

// Namespace wz_revive_prompt
// Method(s) 10 Total 17
class cwz_revive_prompt : cluielem {

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 1, eflags: 0x0
    // Checksum 0x47fe5f82, Offset: 0x630
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0x2908b57c, Offset: 0x660
    // Size: 0x30
    function set_clientnum(localclientnum, value) {
        set_data(localclientnum, "clientnum", value);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0x305a4353, Offset: 0x6d0
    // Size: 0x30
    function set_reviveprogress(localclientnum, value) {
        set_data(localclientnum, "reviveProgress", value);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 0, eflags: 0x0
    // Checksum 0xbe69c0ad, Offset: 0x558
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("wz_revive_prompt");
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 6, eflags: 0x0
    // Checksum 0x9d6efcd9, Offset: 0x460
    // Size: 0xec
    function setup_clientfields(var_c05c67e2, progresscallback, var_d65e5a18, *var_f228b5fa, var_7cb8f98a, *var_bda3bf84) {
        cluielem::setup_clientfields("wz_revive_prompt");
        cluielem::add_clientfield("clientnum", 1, 7, "int", var_d65e5a18);
        cluielem::add_clientfield("progress", 1, 5, "float", var_f228b5fa);
        cluielem::add_clientfield("reviveProgress", 1, 5, "float", var_7cb8f98a);
        cluielem::add_clientfield("cowardsWay", 1, 1, "int", var_bda3bf84);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xd4cddf6f, Offset: 0x698
    // Size: 0x30
    function set_progress(localclientnum, value) {
        set_data(localclientnum, "progress", value);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xc89fa6b3, Offset: 0x708
    // Size: 0x30
    function set_cowardsway(localclientnum, value) {
        set_data(localclientnum, "cowardsWay", value);
    }

    // Namespace cwz_revive_prompt/wz_revive_prompt
    // Params 1, eflags: 0x0
    // Checksum 0xd2b897ad, Offset: 0x580
    // Size: 0xa4
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "clientnum", 0);
        set_data(localclientnum, "progress", 0);
        set_data(localclientnum, "reviveProgress", 0);
        set_data(localclientnum, "cowardsWay", 0);
    }

}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 6, eflags: 0x0
// Checksum 0xedbd296d, Offset: 0x118
// Size: 0x1a6
function register(var_c05c67e2, progresscallback, var_d65e5a18, var_f228b5fa, var_7cb8f98a, var_bda3bf84) {
    elem = new cwz_revive_prompt();
    [[ elem ]]->setup_clientfields(var_c05c67e2, progresscallback, var_d65e5a18, var_f228b5fa, var_7cb8f98a, var_bda3bf84);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"wz_revive_prompt"])) {
        level.var_ae746e8f[#"wz_revive_prompt"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"wz_revive_prompt"])) {
        level.var_ae746e8f[#"wz_revive_prompt"] = [];
    } else if (!isarray(level.var_ae746e8f[#"wz_revive_prompt"])) {
        level.var_ae746e8f[#"wz_revive_prompt"] = array(level.var_ae746e8f[#"wz_revive_prompt"]);
    }
    level.var_ae746e8f[#"wz_revive_prompt"][level.var_ae746e8f[#"wz_revive_prompt"].size] = elem;
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 0, eflags: 0x0
// Checksum 0xe3989488, Offset: 0x2c8
// Size: 0x34
function register_clientside() {
    elem = new cwz_revive_prompt();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0x1f949d96, Offset: 0x308
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0xde529bfb, Offset: 0x330
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0xe8f983a3, Offset: 0x358
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x5ca11903, Offset: 0x380
// Size: 0x28
function set_clientnum(localclientnum, value) {
    [[ self ]]->set_clientnum(localclientnum, value);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x44452a45, Offset: 0x3b0
// Size: 0x28
function set_progress(localclientnum, value) {
    [[ self ]]->set_progress(localclientnum, value);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x4bea42c2, Offset: 0x3e0
// Size: 0x28
function set_reviveprogress(localclientnum, value) {
    [[ self ]]->set_reviveprogress(localclientnum, value);
}

// Namespace wz_revive_prompt/wz_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x61a231f, Offset: 0x410
// Size: 0x28
function set_cowardsway(localclientnum, value) {
    [[ self ]]->set_cowardsway(localclientnum, value);
}

