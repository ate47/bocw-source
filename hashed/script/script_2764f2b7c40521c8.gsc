// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace pip_menu;

// Namespace pip_menu
// Method(s) 10 Total 17
class class_70ee35b1 : cluielem {

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7e7d48d3, Offset: 0x630
    // Size: 0x30
    function set_moviename(localclientnum, value) {
        set_data(localclientnum, "movieName", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd29d7cc2, Offset: 0x600
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9b3212fb, Offset: 0x6d8
    // Size: 0x30
    function set_additive(localclientnum, value) {
        set_data(localclientnum, "additive", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 0, eflags: 0x2 linked
    // Checksum 0x811c8e2a, Offset: 0x530
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("pip_menu");
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x14319523, Offset: 0x6a0
    // Size: 0x30
    function set_looping(localclientnum, value) {
        set_data(localclientnum, "looping", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3a0a43f6, Offset: 0x668
    // Size: 0x30
    function set_showblackscreen(localclientnum, value) {
        set_data(localclientnum, "showBlackScreen", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 4, eflags: 0x2 linked
    // Checksum 0xe6d90a05, Offset: 0x448
    // Size: 0xdc
    function setup_clientfields(*var_f7b454f9, var_d5b04ae3, var_e4decd0, var_e545d4b9) {
        cluielem::setup_clientfields("pip_menu");
        cluielem::function_dcb34c80("moviefile", "movieName", 1);
        cluielem::add_clientfield("showBlackScreen", 1, 1, "int", var_d5b04ae3);
        cluielem::add_clientfield("looping", 1, 1, "int", var_e4decd0);
        cluielem::add_clientfield("additive", 1, 1, "int", var_e545d4b9);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0xbe9d12ce, Offset: 0x558
    // Size: 0xa0
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "movieName", #"");
        set_data(localclientnum, "showBlackScreen", 0);
        set_data(localclientnum, "looping", 0);
        set_data(localclientnum, "additive", 0);
    }

}

// Namespace pip_menu/pip_menu
// Params 4, eflags: 0x2 linked
// Checksum 0x2c0053da, Offset: 0x110
// Size: 0x196
function register(var_f7b454f9, var_d5b04ae3, var_e4decd0, var_e545d4b9) {
    elem = new class_70ee35b1();
    [[ elem ]]->setup_clientfields(var_f7b454f9, var_d5b04ae3, var_e4decd0, var_e545d4b9);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"pip_menu"])) {
        level.var_ae746e8f[#"pip_menu"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"pip_menu"])) {
        level.var_ae746e8f[#"pip_menu"] = [];
    } else if (!isarray(level.var_ae746e8f[#"pip_menu"])) {
        level.var_ae746e8f[#"pip_menu"] = array(level.var_ae746e8f[#"pip_menu"]);
    }
    level.var_ae746e8f[#"pip_menu"][level.var_ae746e8f[#"pip_menu"].size] = elem;
}

// Namespace pip_menu/pip_menu
// Params 0, eflags: 0x0
// Checksum 0x362a5f33, Offset: 0x2b0
// Size: 0x34
function register_clientside() {
    elem = new class_70ee35b1();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace pip_menu/pip_menu
// Params 1, eflags: 0x0
// Checksum 0x2e334af, Offset: 0x2f0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace pip_menu/pip_menu
// Params 1, eflags: 0x0
// Checksum 0x571d34bf, Offset: 0x318
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace pip_menu/pip_menu
// Params 1, eflags: 0x0
// Checksum 0xd4d680bc, Offset: 0x340
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0xb57ed337, Offset: 0x368
// Size: 0x28
function set_moviename(localclientnum, value) {
    [[ self ]]->set_moviename(localclientnum, value);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0x9c433dcd, Offset: 0x398
// Size: 0x28
function set_showblackscreen(localclientnum, value) {
    [[ self ]]->set_showblackscreen(localclientnum, value);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0xd510b604, Offset: 0x3c8
// Size: 0x28
function set_looping(localclientnum, value) {
    [[ self ]]->set_looping(localclientnum, value);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0x71ac8d51, Offset: 0x3f8
// Size: 0x28
function set_additive(localclientnum, value) {
    [[ self ]]->set_additive(localclientnum, value);
}

