// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace mp_revive_prompt;

// Namespace mp_revive_prompt
// Method(s) 9 Total 16
class cmp_revive_prompt : cluielem {

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2c85d256, Offset: 0x588
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2928ded9, Offset: 0x5b8
    // Size: 0x30
    function set_clientnum(localclientnum, value) {
        set_data(localclientnum, "clientnum", value);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 2, eflags: 0x2 linked
    // Checksum 0x10c0b6be, Offset: 0x628
    // Size: 0x30
    function set_reviveprogress(localclientnum, value) {
        set_data(localclientnum, "reviveProgress", value);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf5e69579, Offset: 0x4d0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("mp_revive_prompt");
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 4, eflags: 0x2 linked
    // Checksum 0xedc1a32f, Offset: 0x410
    // Size: 0xb4
    function setup_clientfields(var_c05c67e2, progresscallback, var_d65e5a18, *var_f228b5fa) {
        cluielem::setup_clientfields("mp_revive_prompt");
        cluielem::add_clientfield("clientnum", 1, 7, "int", progresscallback);
        cluielem::add_clientfield("progress", 1, 5, "float", var_d65e5a18);
        cluielem::add_clientfield("reviveProgress", 1, 5, "float", var_f228b5fa);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa82bff24, Offset: 0x5f0
    // Size: 0x30
    function set_progress(localclientnum, value) {
        set_data(localclientnum, "progress", value);
    }

    // Namespace cmp_revive_prompt/mp_revive_prompt
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1cfb25e1, Offset: 0x4f8
    // Size: 0x88
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "clientnum", 0);
        set_data(localclientnum, "progress", 0);
        set_data(localclientnum, "reviveProgress", 0);
    }

}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 4, eflags: 0x2 linked
// Checksum 0x5dccf323, Offset: 0x108
// Size: 0x196
function register(var_c05c67e2, progresscallback, var_d65e5a18, var_f228b5fa) {
    elem = new cmp_revive_prompt();
    [[ elem ]]->setup_clientfields(var_c05c67e2, progresscallback, var_d65e5a18, var_f228b5fa);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"mp_revive_prompt"])) {
        level.var_ae746e8f[#"mp_revive_prompt"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"mp_revive_prompt"])) {
        level.var_ae746e8f[#"mp_revive_prompt"] = [];
    } else if (!isarray(level.var_ae746e8f[#"mp_revive_prompt"])) {
        level.var_ae746e8f[#"mp_revive_prompt"] = array(level.var_ae746e8f[#"mp_revive_prompt"]);
    }
    level.var_ae746e8f[#"mp_revive_prompt"][level.var_ae746e8f[#"mp_revive_prompt"].size] = elem;
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 0, eflags: 0x0
// Checksum 0xc272010f, Offset: 0x2a8
// Size: 0x34
function register_clientside() {
    elem = new cmp_revive_prompt();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0x2e334af, Offset: 0x2e8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0x571d34bf, Offset: 0x310
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 1, eflags: 0x0
// Checksum 0xd4d680bc, Offset: 0x338
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x8436a372, Offset: 0x360
// Size: 0x28
function set_clientnum(localclientnum, value) {
    [[ self ]]->set_clientnum(localclientnum, value);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x4882618f, Offset: 0x390
// Size: 0x28
function set_progress(localclientnum, value) {
    [[ self ]]->set_progress(localclientnum, value);
}

// Namespace mp_revive_prompt/mp_revive_prompt
// Params 2, eflags: 0x0
// Checksum 0x12f4dffa, Offset: 0x3c0
// Size: 0x28
function set_reviveprogress(localclientnum, value) {
    [[ self ]]->set_reviveprogress(localclientnum, value);
}

