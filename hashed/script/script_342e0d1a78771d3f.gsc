// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace remote_missile_target_lockon;

// Namespace remote_missile_target_lockon
// Method(s) 10 Total 17
class cremote_missile_target_lockon : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3b7d76bd, Offset: 0x2e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc24ca9e, Offset: 0x3b0
    // Size: 0x4c
    function set_target_locked(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 2, value, 0);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0xeba581ae, Offset: 0x358
    // Size: 0x4c
    function set_clientnum(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 1, value, 0);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0x65d80c31, Offset: 0x408
    // Size: 0x4c
    function set_ishawktag(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 3, value, 0);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc8276047, Offset: 0x328
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0x900360b8, Offset: 0x4b8
    // Size: 0x4c
    function function_7c227f6d(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 5, value, 0);
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2c843164, Offset: 0x2b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("remote_missile_target_lockon");
    }

    // Namespace cremote_missile_target_lockon/remote_missile_target_lockon
    // Params 2, eflags: 0x2 linked
    // Checksum 0x890e8632, Offset: 0x460
    // Size: 0x4c
    function set_killed(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 4, value, 0);
    }

}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 0, eflags: 0x2 linked
// Checksum 0x76cd975b, Offset: 0xd8
// Size: 0x34
function register() {
    elem = new cremote_missile_target_lockon();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x2 linked
// Checksum 0x3a6790e3, Offset: 0x118
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 1, eflags: 0x2 linked
// Checksum 0x2ad0b106, Offset: 0x158
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 1, eflags: 0x2 linked
// Checksum 0x1e0592ea, Offset: 0x180
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x2 linked
// Checksum 0xa07519f, Offset: 0x1a8
// Size: 0x28
function set_clientnum(player, value) {
    [[ self ]]->set_clientnum(player, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x2 linked
// Checksum 0x5fc3158b, Offset: 0x1d8
// Size: 0x28
function set_target_locked(player, value) {
    [[ self ]]->set_target_locked(player, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x2 linked
// Checksum 0x811aead5, Offset: 0x208
// Size: 0x28
function set_ishawktag(player, value) {
    [[ self ]]->set_ishawktag(player, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x2 linked
// Checksum 0xf0da9298, Offset: 0x238
// Size: 0x28
function set_killed(player, value) {
    [[ self ]]->set_killed(player, value);
}

// Namespace remote_missile_target_lockon/remote_missile_target_lockon
// Params 2, eflags: 0x2 linked
// Checksum 0x3e4ba7b1, Offset: 0x268
// Size: 0x28
function function_7c227f6d(player, value) {
    [[ self ]]->function_7c227f6d(player, value);
}

