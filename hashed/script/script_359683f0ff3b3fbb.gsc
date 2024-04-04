// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace prototype_hud;

// Namespace prototype_hud
// Method(s) 12 Total 19
class cprototype_hud : cluielem {

    // Namespace cprototype_hud/prototype_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0x92bece9f, Offset: 0x798
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1134e5a1, Offset: 0x8e0
    // Size: 0x30
    function function_1b05e380(localclientnum, value) {
        set_data(localclientnum, "active_obj_progress_visibility", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xceed02b7, Offset: 0x8a8
    // Size: 0x30
    function function_1bd6077e(localclientnum, value) {
        set_data(localclientnum, "active_objective_progress", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2f9f128a, Offset: 0x870
    // Size: 0x30
    function function_4dfb5783(localclientnum, value) {
        set_data(localclientnum, "objective_retrieval", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 0, eflags: 0x2 linked
    // Checksum 0xca01ddb0, Offset: 0x678
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("prototype_hud");
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xdaa45d46, Offset: 0x800
    // Size: 0x30
    function function_7491d6c5(localclientnum, value) {
        set_data(localclientnum, "main_objective_string", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd8aa993f, Offset: 0x838
    // Size: 0x30
    function function_817e4d10(localclientnum, value) {
        set_data(localclientnum, "active_obj_visibility", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 6, eflags: 0x2 linked
    // Checksum 0xeeaa6eba, Offset: 0x530
    // Size: 0x13c
    function setup_clientfields(*var_532cdc1a, *var_8b49b908, var_e16cbdb9, var_ac373a00, var_2bc363b1, var_560b5364) {
        cluielem::setup_clientfields("prototype_hud");
        cluielem::function_dcb34c80("string", "active_objective_string", 1);
        cluielem::function_dcb34c80("string", "main_objective_string", 1);
        cluielem::add_clientfield("active_obj_visibility", 1, 1, "int", var_e16cbdb9);
        cluielem::add_clientfield("objective_retrieval", 1, 1, "int", var_ac373a00);
        cluielem::add_clientfield("active_objective_progress", 1, 6, "float", var_2bc363b1);
        cluielem::add_clientfield("active_obj_progress_visibility", 1, 1, "int", var_560b5364);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xcb409b9f, Offset: 0x7c8
    // Size: 0x30
    function set_active_objective_string(localclientnum, value) {
        set_data(localclientnum, "active_objective_string", value);
    }

    // Namespace cprototype_hud/prototype_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb3ecf31d, Offset: 0x6a0
    // Size: 0xec
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "active_objective_string", #"");
        set_data(localclientnum, "main_objective_string", #"");
        set_data(localclientnum, "active_obj_visibility", 0);
        set_data(localclientnum, "objective_retrieval", 0);
        set_data(localclientnum, "active_objective_progress", 0);
        set_data(localclientnum, "active_obj_progress_visibility", 0);
    }

}

// Namespace prototype_hud/prototype_hud
// Params 6, eflags: 0x2 linked
// Checksum 0xcd8af336, Offset: 0x188
// Size: 0x1a6
function register(var_532cdc1a, var_8b49b908, var_e16cbdb9, var_ac373a00, var_2bc363b1, var_560b5364) {
    elem = new cprototype_hud();
    [[ elem ]]->setup_clientfields(var_532cdc1a, var_8b49b908, var_e16cbdb9, var_ac373a00, var_2bc363b1, var_560b5364);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"prototype_hud"])) {
        level.var_ae746e8f[#"prototype_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"prototype_hud"])) {
        level.var_ae746e8f[#"prototype_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"prototype_hud"])) {
        level.var_ae746e8f[#"prototype_hud"] = array(level.var_ae746e8f[#"prototype_hud"]);
    }
    level.var_ae746e8f[#"prototype_hud"][level.var_ae746e8f[#"prototype_hud"].size] = elem;
}

// Namespace prototype_hud/prototype_hud
// Params 0, eflags: 0x0
// Checksum 0x9dc20700, Offset: 0x338
// Size: 0x34
function register_clientside() {
    elem = new cprototype_hud();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace prototype_hud/prototype_hud
// Params 1, eflags: 0x0
// Checksum 0x7c76c9b4, Offset: 0x378
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace prototype_hud/prototype_hud
// Params 1, eflags: 0x0
// Checksum 0xf2c4c972, Offset: 0x3a0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace prototype_hud/prototype_hud
// Params 1, eflags: 0x0
// Checksum 0xb9919039, Offset: 0x3c8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x0
// Checksum 0x2e7fabe7, Offset: 0x3f0
// Size: 0x28
function set_active_objective_string(localclientnum, value) {
    [[ self ]]->set_active_objective_string(localclientnum, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x0
// Checksum 0x326fb1a7, Offset: 0x420
// Size: 0x28
function function_7491d6c5(localclientnum, value) {
    [[ self ]]->function_7491d6c5(localclientnum, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x0
// Checksum 0xe1237757, Offset: 0x450
// Size: 0x28
function function_817e4d10(localclientnum, value) {
    [[ self ]]->function_817e4d10(localclientnum, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x0
// Checksum 0x8b37e69d, Offset: 0x480
// Size: 0x28
function function_4dfb5783(localclientnum, value) {
    [[ self ]]->function_4dfb5783(localclientnum, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x0
// Checksum 0x62fafb35, Offset: 0x4b0
// Size: 0x28
function function_1bd6077e(localclientnum, value) {
    [[ self ]]->function_1bd6077e(localclientnum, value);
}

// Namespace prototype_hud/prototype_hud
// Params 2, eflags: 0x0
// Checksum 0x6a33fc7b, Offset: 0x4e0
// Size: 0x28
function function_1b05e380(localclientnum, value) {
    [[ self ]]->function_1b05e380(localclientnum, value);
}

