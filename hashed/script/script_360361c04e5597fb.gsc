// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_7457b8d5;

// Namespace namespace_7457b8d5/namespace_7457b8d5
// Params 0, eflags: 0x2 linked
// Checksum 0x25f0f55e, Offset: 0xd8
// Size: 0x2c
function init() {
    vehicle::add_vehicletype_callback("spider", &function_2503e2a);
}

// Namespace namespace_7457b8d5/namespace_7457b8d5
// Params 1, eflags: 0x6 linked
// Checksum 0xdbf83d2b, Offset: 0x110
// Size: 0xc
function private function_2503e2a(*localclientnum) {
    
}

