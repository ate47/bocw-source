// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_objective_secure_hud;

// Namespace sr_objective_secure_hud
// Method(s) 10 Total 17
class csr_objective_secure_hud : cluielem {

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0x40220c7f, Offset: 0x568
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x4ccc11ed, Offset: 0x598
    // Size: 0x30
    function function_3b1f1b69(localclientnum, value) {
        set_data(localclientnum, "progFracA", value);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 0, eflags: 0x2 linked
    // Checksum 0xdbd45bbf, Offset: 0x490
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_objective_secure_hud");
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 4, eflags: 0x2 linked
    // Checksum 0x76c915ff, Offset: 0x448
    // Size: 0x3c
    function setup_clientfields(*var_62534560, *var_de4b1193, *var_b661e7d8, *var_2c613188) {
        cluielem::setup_clientfields("sr_objective_secure_hud");
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xe59c0345, Offset: 0x5d0
    // Size: 0x30
    function function_a1cd68d0(localclientnum, value) {
        set_data(localclientnum, "progFracB", value);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9306c77a, Offset: 0x608
    // Size: 0x30
    function function_d2f341fe(localclientnum, value) {
        set_data(localclientnum, "objectiveWhiteA", value);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3fa1af64, Offset: 0x640
    // Size: 0x30
    function function_e4a4e561(localclientnum, value) {
        set_data(localclientnum, "objectiveWhiteB", value);
    }

    // Namespace csr_objective_secure_hud/sr_objective_secure_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8bf7c11f, Offset: 0x4b8
    // Size: 0xa4
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "progFracA", 0);
        set_data(localclientnum, "progFracB", 0);
        set_data(localclientnum, "objectiveWhiteA", 0);
        set_data(localclientnum, "objectiveWhiteB", 0);
    }

}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 4, eflags: 0x2 linked
// Checksum 0x5bfe41bc, Offset: 0x110
// Size: 0x196
function register(var_62534560, var_de4b1193, var_b661e7d8, var_2c613188) {
    elem = new csr_objective_secure_hud();
    [[ elem ]]->setup_clientfields(var_62534560, var_de4b1193, var_b661e7d8, var_2c613188);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_objective_secure_hud"])) {
        level.var_ae746e8f[#"sr_objective_secure_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_objective_secure_hud"])) {
        level.var_ae746e8f[#"sr_objective_secure_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_objective_secure_hud"])) {
        level.var_ae746e8f[#"sr_objective_secure_hud"] = array(level.var_ae746e8f[#"sr_objective_secure_hud"]);
    }
    level.var_ae746e8f[#"sr_objective_secure_hud"][level.var_ae746e8f[#"sr_objective_secure_hud"].size] = elem;
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 0, eflags: 0x0
// Checksum 0xb3504105, Offset: 0x2b0
// Size: 0x34
function register_clientside() {
    elem = new csr_objective_secure_hud();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 1, eflags: 0x0
// Checksum 0xb9e73d81, Offset: 0x2f0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 1, eflags: 0x0
// Checksum 0x6f5221db, Offset: 0x318
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 1, eflags: 0x0
// Checksum 0xa104c566, Offset: 0x340
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x0
// Checksum 0xd05d616a, Offset: 0x368
// Size: 0x28
function function_3b1f1b69(localclientnum, value) {
    [[ self ]]->function_3b1f1b69(localclientnum, value);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x0
// Checksum 0xa8046a4c, Offset: 0x398
// Size: 0x28
function function_a1cd68d0(localclientnum, value) {
    [[ self ]]->function_a1cd68d0(localclientnum, value);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x0
// Checksum 0x95128040, Offset: 0x3c8
// Size: 0x28
function function_d2f341fe(localclientnum, value) {
    [[ self ]]->function_d2f341fe(localclientnum, value);
}

// Namespace sr_objective_secure_hud/sr_objective_secure_hud
// Params 2, eflags: 0x0
// Checksum 0x9d76353e, Offset: 0x3f8
// Size: 0x28
function function_e4a4e561(localclientnum, value) {
    [[ self ]]->function_e4a4e561(localclientnum, value);
}

