// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace blackseajetskideployprompt;

// Namespace blackseajetskideployprompt
// Method(s) 6 Total 13
class class_6b831806 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_6b831806/blackseajetskideployprompt
    // Params 2, eflags: 0x0
    // Checksum 0x9806ae76, Offset: 0x268
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_6b831806/blackseajetskideployprompt
    // Params 2, eflags: 0x0
    // Checksum 0x8dbab234, Offset: 0x2e0
    // Size: 0x44
    function function_26d9350e(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "deployProgress", value);
    }

    // Namespace namespace_6b831806/blackseajetskideployprompt
    // Params 1, eflags: 0x0
    // Checksum 0xf4792e4e, Offset: 0x2b0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_6b831806/blackseajetskideployprompt
    // Params 0, eflags: 0x0
    // Checksum 0x5ddfb015, Offset: 0x218
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("BlackSeaJetskiDeployPrompt");
        cluielem::add_clientfield("deployProgress", 1, 5, "float");
    }

}

// Namespace blackseajetskideployprompt/blackseajetskideployprompt
// Params 0, eflags: 0x0
// Checksum 0xc52bf7e, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new class_6b831806();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace blackseajetskideployprompt/blackseajetskideployprompt
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace blackseajetskideployprompt/blackseajetskideployprompt
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace blackseajetskideployprompt/blackseajetskideployprompt
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace blackseajetskideployprompt/blackseajetskideployprompt
// Params 2, eflags: 0x0
// Checksum 0xcc4922bf, Offset: 0x1c8
// Size: 0x28
function function_26d9350e(player, value) {
    [[ self ]]->function_26d9350e(player, value);
}

