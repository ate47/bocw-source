// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace player_tank;

// Namespace player_tank/player_tank
// Params 0, eflags: 0x5
// Checksum 0xad96ef64, Offset: 0x180
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_tank", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x6 linked
// Checksum 0x9a438fd4, Offset: 0x1d0
// Size: 0xc4
function private preinit(*localclientnum) {
    vehicle::add_vehicletype_callback("player_tank", &function_c0f1d81b);
    clientfield::register("scriptmover", "tank_deathfx", 1, 1, "int", &function_de69d, 0, 0);
    clientfield::register("vehicle", "tank_shellejectfx", 1, 1, "int", &function_5c44d585, 0, 0);
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x6 linked
// Checksum 0xa77e3950, Offset: 0x2a0
// Size: 0xc
function private function_c0f1d81b(*localclientnum) {
    
}

// Namespace player_tank/player_tank
// Params 7, eflags: 0x6 linked
// Checksum 0xf65c885f, Offset: 0x2b8
// Size: 0x6c
function private function_de69d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self util::playfxontag(fieldname, "vehicle/fx9_vdest_mil_ru_tank_t72_death_turret", self, "tag_turret_animate");
    }
}

// Namespace player_tank/player_tank
// Params 7, eflags: 0x6 linked
// Checksum 0xfd576a45, Offset: 0x330
// Size: 0x6c
function private function_5c44d585(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self util::playfxontag(fieldname, "vehicle/fx9_mil_tank_ru_t72_shell_eject", self, "tag_fx_shell_eject");
    }
}

