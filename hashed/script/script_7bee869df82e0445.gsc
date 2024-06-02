// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace remote_missile_targets;

// Namespace remote_missile_targets
// Method(s) 10 Total 17
class cremote_missile_targets : cluielem {

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1960c79, Offset: 0x610
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9687247d, Offset: 0x640
    // Size: 0x30
    function set_player_target_active(localclientnum, value) {
        set_data(localclientnum, "player_target_active", value);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6fde43e, Offset: 0x548
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("remote_missile_targets");
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7516d72a, Offset: 0x6b0
    // Size: 0x30
    function set_extra_target_2(localclientnum, value) {
        set_data(localclientnum, "extra_target_2", value);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 4, eflags: 0x2 linked
    // Checksum 0x4ec9301d, Offset: 0x460
    // Size: 0xdc
    function setup_clientfields(var_9318c80d, var_82a5247c, var_afbc846a, var_4c87c083) {
        cluielem::setup_clientfields("remote_missile_targets");
        cluielem::add_clientfield("player_target_active", 1, 16, "int", var_9318c80d);
        cluielem::add_clientfield("extra_target_1", 1, 10, "int", var_82a5247c);
        cluielem::add_clientfield("extra_target_2", 1, 10, "int", var_afbc846a);
        cluielem::add_clientfield("extra_target_3", 1, 10, "int", var_4c87c083);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0xe2a4efe6, Offset: 0x678
    // Size: 0x30
    function set_extra_target_1(localclientnum, value) {
        set_data(localclientnum, "extra_target_1", value);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 2, eflags: 0x2 linked
    // Checksum 0xcce590d0, Offset: 0x6e8
    // Size: 0x30
    function set_extra_target_3(localclientnum, value) {
        set_data(localclientnum, "extra_target_3", value);
    }

    // Namespace cremote_missile_targets/remote_missile_targets
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc995359d, Offset: 0x570
    // Size: 0x94
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "player_target_active", 0);
        set_data(localclientnum, "extra_target_1", 0);
        set_data(localclientnum, "extra_target_2", 0);
        set_data(localclientnum, "extra_target_3", 0);
    }

}

// Namespace remote_missile_targets/remote_missile_targets
// Params 4, eflags: 0x2 linked
// Checksum 0x417452d7, Offset: 0x128
// Size: 0x196
function register(var_9318c80d, var_82a5247c, var_afbc846a, var_4c87c083) {
    elem = new cremote_missile_targets();
    [[ elem ]]->setup_clientfields(var_9318c80d, var_82a5247c, var_afbc846a, var_4c87c083);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"remote_missile_targets"])) {
        level.var_ae746e8f[#"remote_missile_targets"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"remote_missile_targets"])) {
        level.var_ae746e8f[#"remote_missile_targets"] = [];
    } else if (!isarray(level.var_ae746e8f[#"remote_missile_targets"])) {
        level.var_ae746e8f[#"remote_missile_targets"] = array(level.var_ae746e8f[#"remote_missile_targets"]);
    }
    level.var_ae746e8f[#"remote_missile_targets"][level.var_ae746e8f[#"remote_missile_targets"].size] = elem;
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 0, eflags: 0x0
// Checksum 0x3e1e1df9, Offset: 0x2c8
// Size: 0x34
function register_clientside() {
    elem = new cremote_missile_targets();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 1, eflags: 0x0
// Checksum 0x2e334af, Offset: 0x308
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 1, eflags: 0x0
// Checksum 0x571d34bf, Offset: 0x330
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 1, eflags: 0x0
// Checksum 0xd4d680bc, Offset: 0x358
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x0
// Checksum 0xe1ef70a3, Offset: 0x380
// Size: 0x28
function set_player_target_active(localclientnum, value) {
    [[ self ]]->set_player_target_active(localclientnum, value);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x0
// Checksum 0x6e2067c6, Offset: 0x3b0
// Size: 0x28
function set_extra_target_1(localclientnum, value) {
    [[ self ]]->set_extra_target_1(localclientnum, value);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x0
// Checksum 0xdffd0201, Offset: 0x3e0
// Size: 0x28
function set_extra_target_2(localclientnum, value) {
    [[ self ]]->set_extra_target_2(localclientnum, value);
}

// Namespace remote_missile_targets/remote_missile_targets
// Params 2, eflags: 0x0
// Checksum 0x8c2a2191, Offset: 0x410
// Size: 0x28
function set_extra_target_3(localclientnum, value) {
    [[ self ]]->set_extra_target_3(localclientnum, value);
}

