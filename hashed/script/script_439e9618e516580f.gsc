// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace cp_skip_scene_menu;

// Namespace cp_skip_scene_menu
// Method(s) 9 Total 16
class ccp_skip_scene_menu : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xddb0b92b, Offset: 0x3a0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x13346b8e, Offset: 0x468
    // Size: 0x44
    function set_hostisskipping(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "hostIsSkipping", value);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0x31aec37, Offset: 0x3e8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x8e12965, Offset: 0x4b8
    // Size: 0x44
    function set_votedtoskip(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "votedToSkip", value);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc9d54d55, Offset: 0x418
    // Size: 0x44
    function set_showskipbutton(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showSkipButton", value);
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 0, eflags: 0x2 linked
    // Checksum 0xccf59d18, Offset: 0x2d8
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("cp_skip_scene_menu");
        cluielem::add_clientfield("showSkipButton", 1, 2, "int");
        cluielem::add_clientfield("hostIsSkipping", 1, 1, "int");
        cluielem::add_clientfield("votedToSkip", 1, 1, "int");
        cluielem::add_clientfield("sceneSkipEndTime", 1, 3, "int");
    }

    // Namespace ccp_skip_scene_menu/cp_skip_scene_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x28fe9c55, Offset: 0x508
    // Size: 0x44
    function set_sceneskipendtime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "sceneSkipEndTime", value);
    }

}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 0, eflags: 0x2 linked
// Checksum 0x51db7c91, Offset: 0x128
// Size: 0x34
function register() {
    elem = new ccp_skip_scene_menu();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x2 linked
// Checksum 0x22b7d0a0, Offset: 0x168
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 1, eflags: 0x2 linked
// Checksum 0xbeec1ac2, Offset: 0x1a8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x1d0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x2 linked
// Checksum 0xfb954b4, Offset: 0x1f8
// Size: 0x28
function set_showskipbutton(player, value) {
    [[ self ]]->set_showskipbutton(player, value);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x2 linked
// Checksum 0x1aada54, Offset: 0x228
// Size: 0x28
function set_hostisskipping(player, value) {
    [[ self ]]->set_hostisskipping(player, value);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x2 linked
// Checksum 0xdb5aa0a, Offset: 0x258
// Size: 0x28
function set_votedtoskip(player, value) {
    [[ self ]]->set_votedtoskip(player, value);
}

// Namespace cp_skip_scene_menu/cp_skip_scene_menu
// Params 2, eflags: 0x2 linked
// Checksum 0x7cd7496d, Offset: 0x288
// Size: 0x28
function set_sceneskipendtime(player, value) {
    [[ self ]]->set_sceneskipendtime(player, value);
}

