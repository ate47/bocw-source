// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_build_progress;

// Namespace zm_build_progress
// Method(s) 6 Total 13
class czm_build_progress : cluielem {

    // Namespace czm_build_progress/zm_build_progress
    // Params 0, eflags: 0xa linked
    // Checksum 0x7db406ec, Offset: 0x1e8
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 0, eflags: 0x92 linked class_linked
    // Checksum 0x1f0182c7, Offset: 0x320
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1fc523a, Offset: 0x258
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd5a16f45, Offset: 0x2a0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8c81ef04, Offset: 0x208
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_build_progress");
        cluielem::add_clientfield("progress", 1, 6, "float", 0);
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa64c23eb, Offset: 0x2d0
    // Size: 0x44
    function set_progress(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "progress", value);
    }

}

// Namespace zm_build_progress/zm_build_progress
// Params 0, eflags: 0x2 linked
// Checksum 0xc59579a1, Offset: 0xe8
// Size: 0x34
function register() {
    elem = new czm_build_progress();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_build_progress/zm_build_progress
// Params 2, eflags: 0x2 linked
// Checksum 0x40d59cb0, Offset: 0x128
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_build_progress/zm_build_progress
// Params 1, eflags: 0x2 linked
// Checksum 0x6221b1b7, Offset: 0x168
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_build_progress/zm_build_progress
// Params 1, eflags: 0x2 linked
// Checksum 0xd7920db2, Offset: 0x190
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_build_progress/zm_build_progress
// Params 2, eflags: 0x2 linked
// Checksum 0xc30483af, Offset: 0x1b8
// Size: 0x28
function set_progress(player, value) {
    [[ self ]]->set_progress(player, value);
}

