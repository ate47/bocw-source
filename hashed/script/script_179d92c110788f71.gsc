// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace doa_overworld;

// Namespace doa_overworld
// Method(s) 5 Total 12
class cdoa_overworld : cluielem {

    // Namespace cdoa_overworld/doa_overworld
    // Params 2, eflags: 0x0
    // Checksum 0x8efc0dc, Offset: 0x1e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cdoa_overworld/doa_overworld
    // Params 1, eflags: 0x0
    // Checksum 0x335296bf, Offset: 0x228
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cdoa_overworld/doa_overworld
    // Params 0, eflags: 0x0
    // Checksum 0xc3c53a14, Offset: 0x1b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("DOA_Overworld");
    }

}

// Namespace doa_overworld/doa_overworld
// Params 0, eflags: 0x0
// Checksum 0x92b0187f, Offset: 0xc8
// Size: 0x34
function register() {
    elem = new cdoa_overworld();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace doa_overworld/doa_overworld
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x108
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace doa_overworld/doa_overworld
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x148
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_overworld/doa_overworld
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x170
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

