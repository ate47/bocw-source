// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace self_revive_visuals_rush;

// Namespace self_revive_visuals_rush
// Method(s) 6 Total 13
class cself_revive_visuals_rush : cluielem {

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 0, eflags: 0x8
    // Checksum 0x7db406ec, Offset: 0x1f0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xe4393d0, Offset: 0x328
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 2, eflags: 0x0
    // Checksum 0xfc149b61, Offset: 0x260
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 1, eflags: 0x0
    // Checksum 0x613304b5, Offset: 0x2a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 0, eflags: 0x0
    // Checksum 0x665dfba6, Offset: 0x210
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("self_revive_visuals_rush");
        cluielem::add_clientfield("revive_time", 1, 4, "int");
    }

    // Namespace cself_revive_visuals_rush/self_revive_visuals_rush
    // Params 2, eflags: 0x0
    // Checksum 0x9043e3ba, Offset: 0x2d8
    // Size: 0x44
    function set_revive_time(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "revive_time", value);
    }

}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 0, eflags: 0x0
// Checksum 0xdb795715, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new cself_revive_visuals_rush();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace self_revive_visuals_rush/self_revive_visuals_rush
// Params 2, eflags: 0x0
// Checksum 0xd2cac9cf, Offset: 0x1c0
// Size: 0x28
function set_revive_time(player, value) {
    [[ self ]]->set_revive_time(player, value);
}

