// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace insertion_passenger_count;

// Namespace insertion_passenger_count
// Method(s) 6 Total 13
class cinsertion_passenger_count : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cinsertion_passenger_count/insertion_passenger_count
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd1acef65, Offset: 0x260
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cinsertion_passenger_count/insertion_passenger_count
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5770f9dd, Offset: 0x2a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cinsertion_passenger_count/insertion_passenger_count
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb4eded3c, Offset: 0x210
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("insertion_passenger_count");
        cluielem::add_clientfield("count", 1, 7, "int");
    }

    // Namespace cinsertion_passenger_count/insertion_passenger_count
    // Params 2, eflags: 0x2 linked
    // Checksum 0x4b88eec5, Offset: 0x2d8
    // Size: 0x44
    function set_count(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "count", value);
    }

}

// Namespace insertion_passenger_count/insertion_passenger_count
// Params 0, eflags: 0x2 linked
// Checksum 0x9b629970, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new cinsertion_passenger_count();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace insertion_passenger_count/insertion_passenger_count
// Params 2, eflags: 0x2 linked
// Checksum 0xa4df70d2, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace insertion_passenger_count/insertion_passenger_count
// Params 1, eflags: 0x2 linked
// Checksum 0x2fdf789, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace insertion_passenger_count/insertion_passenger_count
// Params 1, eflags: 0x2 linked
// Checksum 0xe6010a6a, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace insertion_passenger_count/insertion_passenger_count
// Params 2, eflags: 0x2 linked
// Checksum 0xf9d70918, Offset: 0x1c0
// Size: 0x28
function set_count(player, value) {
    [[ self ]]->set_count(player, value);
}

