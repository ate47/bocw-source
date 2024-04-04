// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace prototype_self_revive;

// Namespace prototype_self_revive
// Method(s) 5 Total 12
class cprototype_self_revive : cluielem {

    // Namespace cprototype_self_revive/prototype_self_revive
    // Params 2, eflags: 0x0
    // Checksum 0x8efc0dc, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cprototype_self_revive/prototype_self_revive
    // Params 1, eflags: 0x0
    // Checksum 0x335296bf, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cprototype_self_revive/prototype_self_revive
    // Params 0, eflags: 0x0
    // Checksum 0xc3c53a14, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("prototype_self_revive");
    }

}

// Namespace prototype_self_revive/prototype_self_revive
// Params 0, eflags: 0x0
// Checksum 0xdaa79216, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new cprototype_self_revive();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace prototype_self_revive/prototype_self_revive
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace prototype_self_revive/prototype_self_revive
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace prototype_self_revive/prototype_self_revive
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

