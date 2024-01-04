// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_tungsten_title_cards;

// Namespace zm_tungsten_title_cards
// Method(s) 6 Total 13
class czm_tungsten_title_cards : cluielem {

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 0, eflags: 0x8
    // Checksum 0xbd4a911f, Offset: 0x1f8
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x49280ecb, Offset: 0x330
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 2, eflags: 0x0
    // Checksum 0xc33f5b39, Offset: 0x268
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 1, eflags: 0x0
    // Checksum 0xca130bec, Offset: 0x2b0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 2, eflags: 0x0
    // Checksum 0xe631b585, Offset: 0x2e0
    // Size: 0x44
    function set_is_title_card_02(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "is_title_card_02", value);
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 0, eflags: 0x0
    // Checksum 0x95532199, Offset: 0x218
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_tungsten_title_cards");
        cluielem::add_clientfield("is_title_card_02", 4000, 1, "int");
    }

}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 0, eflags: 0x0
// Checksum 0x97cbb6a4, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new czm_tungsten_title_cards();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 2, eflags: 0x0
// Checksum 0xaa4b8eb3, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 1, eflags: 0x0
// Checksum 0xf8a9ca82, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 1, eflags: 0x0
// Checksum 0xa2c3bd60, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 2, eflags: 0x0
// Checksum 0x48de785, Offset: 0x1c8
// Size: 0x28
function set_is_title_card_02(player, value) {
    [[ self ]]->set_is_title_card_02(player, value);
}

