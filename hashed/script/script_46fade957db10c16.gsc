// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace multi_stage_target_lockon;

// Namespace multi_stage_target_lockon
// Method(s) 7 Total 14
class cmulti_stage_target_lockon : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 2, eflags: 0x0
    // Checksum 0x3121b8de, Offset: 0x2c8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 1, eflags: 0x0
    // Checksum 0xafad6a02, Offset: 0x310
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 0, eflags: 0x0
    // Checksum 0x37fca4d0, Offset: 0x250
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("multi_stage_target_lockon");
        cluielem::add_clientfield("entNum", 1, 6, "int");
        cluielem::add_clientfield("targetState", 1, 3, "int");
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 2, eflags: 0x0
    // Checksum 0x50efabc8, Offset: 0x340
    // Size: 0x44
    function set_entnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "entNum", value);
    }

    // Namespace cmulti_stage_target_lockon/multi_stage_target_lockon
    // Params 2, eflags: 0x0
    // Checksum 0xa6288339, Offset: 0x390
    // Size: 0x44
    function set_targetstate(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "targetState", value);
    }

}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 0, eflags: 0x0
// Checksum 0x450d9e98, Offset: 0x100
// Size: 0x34
function register() {
    elem = new cmulti_stage_target_lockon();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x140
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x180
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x1a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 2, eflags: 0x0
// Checksum 0xcf0d832, Offset: 0x1d0
// Size: 0x28
function set_entnum(player, value) {
    [[ self ]]->set_entnum(player, value);
}

// Namespace multi_stage_target_lockon/multi_stage_target_lockon
// Params 2, eflags: 0x0
// Checksum 0x5eb783c5, Offset: 0x200
// Size: 0x28
function set_targetstate(player, value) {
    [[ self ]]->set_targetstate(player, value);
}

