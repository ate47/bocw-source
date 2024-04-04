// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace zm_gold_align_satellite_hud;

// Namespace zm_gold_align_satellite_hud
// Method(s) 5 Total 12
class class_eaf2482a : cluielem {

    // Namespace namespace_eaf2482a/zm_gold_align_satellite_hud
    // Params 2, eflags: 0x0
    // Checksum 0x514b7cae, Offset: 0x1f0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_eaf2482a/zm_gold_align_satellite_hud
    // Params 1, eflags: 0x0
    // Checksum 0x2744138d, Offset: 0x238
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_eaf2482a/zm_gold_align_satellite_hud
    // Params 0, eflags: 0x0
    // Checksum 0xdefaefe5, Offset: 0x1c8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_gold_align_satellite_hud");
    }

}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 0, eflags: 0x0
// Checksum 0xd8a8740b, Offset: 0xd8
// Size: 0x34
function register() {
    elem = new class_eaf2482a();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 2, eflags: 0x0
// Checksum 0xf79ebb64, Offset: 0x118
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 1, eflags: 0x0
// Checksum 0x8223fa61, Offset: 0x158
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_gold_align_satellite_hud/zm_gold_align_satellite_hud
// Params 1, eflags: 0x0
// Checksum 0xc4970c2c, Offset: 0x180
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

