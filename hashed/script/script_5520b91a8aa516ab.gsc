// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace remote_missile_target_lockon;

// Namespace remote_missile_target_lockon
// Method(s) 11 Total 18
class cremote_missile_target_lockon : cluielem {

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x381d3921, Offset: 0x5b8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7128b02c, Offset: 0x620
    // Size: 0x30
    function set_target_locked(localclientnum, value) {
        set_data(localclientnum, "target_locked", value);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0xaecb0fc3, Offset: 0x5e8
    // Size: 0x30
    function set_clientnum(localclientnum, value) {
        set_data(localclientnum, "clientnum", value);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb2c7aaec, Offset: 0x658
    // Size: 0x30
    function set_ishawktag(localclientnum, value) {
        set_data(localclientnum, "isHawkTag", value);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 0, eflags: 0x2 linked
    // Checksum 0x27922d22, Offset: 0x4d8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("remote_missile_target_lockon");
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0xe32dd631, Offset: 0x6c8
    // Size: 0x30
    function function_7c227f6d(localclientnum, value) {
        set_data(localclientnum, "isVehicle", value);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 5, eflags: 0x2 linked
    // Checksum 0xb8ad493d, Offset: 0x488
    // Size: 0x44
    function setup_clientfields(*var_c05c67e2, *var_486334bd, *var_683d075d, *killedcallback, *var_f1a86fa1) {
        cluielem::setup_clientfields("remote_missile_target_lockon");
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0x611430a2, Offset: 0x690
    // Size: 0x30
    function set_killed(localclientnum, value) {
        set_data(localclientnum, "killed", value);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x49ab1470, Offset: 0x500
    // Size: 0xb0
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "clientnum", 0);
        set_data(localclientnum, "target_locked", 0);
        set_data(localclientnum, "isHawkTag", 0);
        set_data(localclientnum, "killed", 0);
        set_data(localclientnum, "isVehicle", 0);
    }

}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 5, eflags: 0x2 linked
// Checksum 0x21e6d9a0, Offset: 0x118
// Size: 0x19e
function register(var_c05c67e2, var_486334bd, var_683d075d, killedcallback, var_f1a86fa1) {
    elem = new cremote_missile_target_lockon();
    [[ elem ]]->setup_clientfields(var_c05c67e2, var_486334bd, var_683d075d, killedcallback, var_f1a86fa1);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"remote_missile_target_lockon"])) {
        level.var_ae746e8f[#"remote_missile_target_lockon"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"remote_missile_target_lockon"])) {
        level.var_ae746e8f[#"remote_missile_target_lockon"] = [];
    } else if (!isarray(level.var_ae746e8f[#"remote_missile_target_lockon"])) {
        level.var_ae746e8f[#"remote_missile_target_lockon"] = array(level.var_ae746e8f[#"remote_missile_target_lockon"]);
    }
    level.var_ae746e8f[#"remote_missile_target_lockon"][level.var_ae746e8f[#"remote_missile_target_lockon"].size] = elem;
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 0, eflags: 0x0
// Checksum 0xe5308ef6, Offset: 0x2c0
// Size: 0x34
function register_clientside() {
    elem = new cremote_missile_target_lockon();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 1, eflags: 0x0
// Checksum 0x875e5960, Offset: 0x300
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 1, eflags: 0x0
// Checksum 0x8a22208e, Offset: 0x328
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 1, eflags: 0x0
// Checksum 0x1cfc583f, Offset: 0x350
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x0
// Checksum 0xf737d4b0, Offset: 0x378
// Size: 0x28
function set_clientnum(localclientnum, value) {
    [[ self ]]->set_clientnum(localclientnum, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x0
// Checksum 0xea343fcb, Offset: 0x3a8
// Size: 0x28
function set_target_locked(localclientnum, value) {
    [[ self ]]->set_target_locked(localclientnum, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x0
// Checksum 0x7bf8c5cf, Offset: 0x3d8
// Size: 0x28
function set_ishawktag(localclientnum, value) {
    [[ self ]]->set_ishawktag(localclientnum, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x0
// Checksum 0xb703e743, Offset: 0x408
// Size: 0x28
function set_killed(localclientnum, value) {
    [[ self ]]->set_killed(localclientnum, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x0
// Checksum 0xbe7a798a, Offset: 0x438
// Size: 0x28
function function_7c227f6d(localclientnum, value) {
    [[ self ]]->function_7c227f6d(localclientnum, value);
}

