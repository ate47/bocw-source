// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace bountyhunterbuy;

// Namespace bountyhunterbuy
// Method(s) 5 Total 12
class cbountyhunterbuy : cluielem {

    // Namespace cbountyhunterbuy/bountyhunterbuy
    // Params 2, eflags: 0x0
    // Checksum 0xccf1beb1, Offset: 0x1e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cbountyhunterbuy/bountyhunterbuy
    // Params 1, eflags: 0x0
    // Checksum 0xeca0f268, Offset: 0x228
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cbountyhunterbuy/bountyhunterbuy
    // Params 0, eflags: 0x0
    // Checksum 0x8cbd269, Offset: 0x1b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("BountyHunterBuy");
    }

}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 0, eflags: 0x0
// Checksum 0x26cebdb8, Offset: 0xc8
// Size: 0x34
function register() {
    elem = new cbountyhunterbuy();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 2, eflags: 0x0
// Checksum 0x584b4b43, Offset: 0x108
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 1, eflags: 0x0
// Checksum 0x5189623b, Offset: 0x148
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 1, eflags: 0x0
// Checksum 0xc3d6ea8d, Offset: 0x170
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

