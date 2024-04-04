// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace cp_skip_scene_menu;

// Namespace cp_skip_scene_menu
// Method(s) 10 Total 17
class ccp_skip_scene_menu : cluielem {

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1380a2, Offset: 0x608
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x74cf307a, Offset: 0x670
    // Size: 0x30
    function set_hostisskipping(localclientnum, value) {
        set_data(localclientnum, "hostIsSkipping", value);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 0, eflags: 0x2 linked
    // Checksum 0x41ba8186, Offset: 0x540
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("cp_skip_scene_menu");
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x474de9ba, Offset: 0x6a8
    // Size: 0x30
    function set_votedtoskip(localclientnum, value) {
        set_data(localclientnum, "votedToSkip", value);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5294685d, Offset: 0x638
    // Size: 0x30
    function set_showskipbutton(localclientnum, value) {
        set_data(localclientnum, "showSkipButton", value);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 4, eflags: 0x2 linked
    // Checksum 0x23ab83a9, Offset: 0x458
    // Size: 0xdc
    function setup_clientfields(var_792f3702, var_69bfc3be, var_b2a12719, var_266fe805) {
        cluielem::setup_clientfields("cp_skip_scene_menu");
        cluielem::add_clientfield("showSkipButton", 1, 2, "int", var_792f3702);
        cluielem::add_clientfield("hostIsSkipping", 1, 1, "int", var_69bfc3be);
        cluielem::add_clientfield("votedToSkip", 1, 1, "int", var_b2a12719);
        cluielem::add_clientfield("sceneSkipEndTime", 1, 3, "int", var_266fe805);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc815e775, Offset: 0x6e0
    // Size: 0x30
    function set_sceneskipendtime(localclientnum, value) {
        set_data(localclientnum, "sceneSkipEndTime", value);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4ad6346b, Offset: 0x568
    // Size: 0x94
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "showSkipButton", 0);
        set_data(localclientnum, "hostIsSkipping", 0);
        set_data(localclientnum, "votedToSkip", 0);
        set_data(localclientnum, "sceneSkipEndTime", 0);
    }

}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 4, eflags: 0x2 linked
// Checksum 0xb289a5f6, Offset: 0x120
// Size: 0x196
function register(var_792f3702, var_69bfc3be, var_b2a12719, var_266fe805) {
    elem = new ccp_skip_scene_menu();
    [[ elem ]]->setup_clientfields(var_792f3702, var_69bfc3be, var_b2a12719, var_266fe805);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"cp_skip_scene_menu"])) {
        level.var_ae746e8f[#"cp_skip_scene_menu"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"cp_skip_scene_menu"])) {
        level.var_ae746e8f[#"cp_skip_scene_menu"] = [];
    } else if (!isarray(level.var_ae746e8f[#"cp_skip_scene_menu"])) {
        level.var_ae746e8f[#"cp_skip_scene_menu"] = array(level.var_ae746e8f[#"cp_skip_scene_menu"]);
    }
    level.var_ae746e8f[#"cp_skip_scene_menu"][level.var_ae746e8f[#"cp_skip_scene_menu"].size] = elem;
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 0, eflags: 0x0
// Checksum 0xff46a488, Offset: 0x2c0
// Size: 0x34
function register_clientside() {
    elem = new ccp_skip_scene_menu();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 1, eflags: 0x0
// Checksum 0x45aa40a9, Offset: 0x300
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 1, eflags: 0x0
// Checksum 0xd9341892, Offset: 0x328
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 1, eflags: 0x0
// Checksum 0x443be584, Offset: 0x350
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x0
// Checksum 0x633d084d, Offset: 0x378
// Size: 0x28
function set_showskipbutton(localclientnum, value) {
    [[ self ]]->set_showskipbutton(localclientnum, value);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x0
// Checksum 0xe94c82fc, Offset: 0x3a8
// Size: 0x28
function set_hostisskipping(localclientnum, value) {
    [[ self ]]->set_hostisskipping(localclientnum, value);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x0
// Checksum 0x4fdee030, Offset: 0x3d8
// Size: 0x28
function set_votedtoskip(localclientnum, value) {
    [[ self ]]->set_votedtoskip(localclientnum, value);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x0
// Checksum 0xc9208761, Offset: 0x408
// Size: 0x28
function set_sceneskipendtime(localclientnum, value) {
    [[ self ]]->set_sceneskipendtime(localclientnum, value);
}

