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

#namespace namespace_81522b3c;

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 0, eflags: 0x2 linked
// Checksum 0x16fabfb1, Offset: 0xf0
// Size: 0x2c
function init() {
    vehicle::add_vehicletype_callback("bat", &function_9b3fe343);
}

// Namespace namespace_81522b3c/namespace_81522b3c
// Params 1, eflags: 0x6 linked
// Checksum 0xe7532c9a, Offset: 0x128
// Size: 0x74
function private function_9b3fe343(localclientnum) {
    self mapshaderconstant(localclientnum, 0, "scriptVector2", 0.1);
    if (is_true(level.debug_keyline_zombies)) {
    }
    util::playfxontag(localclientnum, #"hash_1cb1e3e527bd121c", self, "tag_eye");
}

