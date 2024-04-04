// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_e85e312c;

// Namespace namespace_e85e312c
// Method(s) 3 Total 3
class class_6e09f777 {

    var var_5ee36218;

    // Namespace namespace_6e09f777/turret_dead_system
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2d922a1a, Offset: 0x228
    // Size: 0x3c
    function function_860ebd20(var_8f7a5c75) {
        var_5ee36218 = var_8f7a5c75;
        var_5ee36218 flag::wait_till("vehicle_spawn_setup_complete");
    }

}

// Namespace namespace_e85e312c/turret_dead_system
// Params 0, eflags: 0x5
// Checksum 0xfdab6121, Offset: 0x120
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_4bbb330ecd0b67a8", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_e85e312c/turret_dead_system
// Params 0, eflags: 0x6 linked
// Checksum 0x597e5906, Offset: 0x178
// Size: 0x34
function private preinit() {
    vehicle::add_spawn_function_group("turret_dead_system", "script_turret_type", &function_33dd3fda);
}

// Namespace namespace_e85e312c/turret_dead_system
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x1b8
// Size: 0x4
function private postinit() {
    
}

// Namespace namespace_e85e312c/turret_dead_system
// Params 0, eflags: 0x2 linked
// Checksum 0x169dfeb0, Offset: 0x1c8
// Size: 0x34
function function_33dd3fda() {
    var_e85e312c = new class_6e09f777();
    [[ var_e85e312c ]]->function_860ebd20(self);
}

