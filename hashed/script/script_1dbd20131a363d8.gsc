// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace sr_objective_secure_hud;

// Namespace sr_objective_secure_hud
// Method(s) 9 Total 16
class csr_objective_secure_hud : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x926bdf2b, Offset: 0x2a8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9b1feb38, Offset: 0x320
    // Size: 0x6c
    function function_3b1f1b69(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 1, int(value * (128 - 1)), 0);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd2c788ae, Offset: 0x2f0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 0, eflags: 0x2 linked
    // Checksum 0x844b89a1, Offset: 0x280
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_objective_secure_hud");
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2a6a109, Offset: 0x398
    // Size: 0x6c
    function function_a1cd68d0(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 2, int(value * (128 - 1)), 0);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc83e637b, Offset: 0x410
    // Size: 0x4c
    function function_d2f341fe(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 3, value, 0);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd0372b18, Offset: 0x468
    // Size: 0x4c
    function function_e4a4e561(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 4, value, 0);
    }

}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 0, eflags: 0x2 linked
// Checksum 0x85ed5e28, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new csr_objective_secure_hud();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x584b4b43, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 1, eflags: 0x2 linked
// Checksum 0x5189623b, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 1, eflags: 0x2 linked
// Checksum 0xc3d6ea8d, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x2 linked
// Checksum 0xb7d1bd41, Offset: 0x1a0
// Size: 0x28
function function_3b1f1b69(player, value) {
    [[ self ]]->function_3b1f1b69(player, value);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x2 linked
// Checksum 0xaa4788ea, Offset: 0x1d0
// Size: 0x28
function function_a1cd68d0(player, value) {
    [[ self ]]->function_a1cd68d0(player, value);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x2 linked
// Checksum 0xf6e20ba7, Offset: 0x200
// Size: 0x28
function function_d2f341fe(player, value) {
    [[ self ]]->function_d2f341fe(player, value);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x1b306ad6, Offset: 0x230
// Size: 0x28
function function_e4a4e561(player, value) {
    [[ self ]]->function_e4a4e561(player, value);
}

