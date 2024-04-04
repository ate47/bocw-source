// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace sr_perk_machine_choice;

// Namespace sr_perk_machine_choice
// Method(s) 5 Total 12
class class_a19c3039 : cluielem {

    // Namespace namespace_a19c3039/sr_perk_machine_choice
    // Params 2, eflags: 0x2 linked
    // Checksum 0x55526f87, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_a19c3039/sr_perk_machine_choice
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb2d9649, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_a19c3039/sr_perk_machine_choice
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb439a2bf, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_perk_machine_choice");
    }

}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 0, eflags: 0x2 linked
// Checksum 0xf6e2f525, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new class_a19c3039();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 2, eflags: 0x2 linked
// Checksum 0x40d59cb0, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 1, eflags: 0x2 linked
// Checksum 0x6221b1b7, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 1, eflags: 0x2 linked
// Checksum 0xd7920db2, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

