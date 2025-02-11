#using script_13da4e6b98ca81a1;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace red_door;

// Namespace red_door/red_door
// Params 0, eflags: 0x5
// Checksum 0x8e601a30, Offset: 0x1b0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"red_door", &preinit, undefined, undefined, undefined);
}

// Namespace red_door/red_door
// Params 0, eflags: 0x4
// Checksum 0x7410c5dd, Offset: 0x1f8
// Size: 0x24
function private preinit() {
    init_clientfields();
    init_fx();
}

// Namespace red_door/red_door
// Params 0, eflags: 0x0
// Checksum 0xeb5ca2ac, Offset: 0x228
// Size: 0x214
function init_clientfields() {
    clientfield::register("allplayers", "" + #"hash_57c792bbf6365c17", 1, 1, "counter", &function_e10bfb69, 0, 0);
    clientfield::register("allplayers", "" + #"hash_520c94f4af55e3b8", 1, 1, "counter", &function_afb3813c, 0, 0);
    clientfield::register("allplayers", "" + #"hash_60d81b0a1fcd2454", 1, 1, "counter", &function_76090e23, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7948e032082fdac", 1, 2, "int", &function_1d5c7052, 0, 0);
    clientfield::register("toplayer", "" + #"hash_3c5be6b25c626e06", 1, 3, "int", &function_d17296b4, 0, 0);
    clientfield::register("toplayer", "" + #"hash_60df070a1fd32106", 1, 1, "int", &function_4198ac3f, 0, 0);
}

// Namespace red_door/red_door
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x448
// Size: 0x4
function init_fx() {
    
}

// Namespace red_door/red_door
// Params 7, eflags: 0x0
// Checksum 0x3c97aeb3, Offset: 0x458
// Size: 0x1a4
function function_d17296b4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 0) {
        if (bwastimejump > 4) {
            bwastimejump = 4;
        }
        str_name = "s_teleport_room_" + bwastimejump;
        s_teleport_room = struct::get(str_name, "targetname");
        self camerasetposition(s_teleport_room.origin);
        self camerasetlookat(s_teleport_room.angles);
        self cameraactivate(1);
        self flag::set(#"hash_7151daf10b79dc1");
        self.var_535fa083 = self playsound(fieldname, #"hash_38dea1bc296d1a50");
        return;
    }
    self cameraactivate(0);
    self flag::clear(#"hash_7151daf10b79dc1");
    if (isdefined(self.var_535fa083)) {
        stopsound(self.var_535fa083);
    }
}

// Namespace red_door/red_door
// Params 7, eflags: 0x0
// Checksum 0xcdb9fcdc, Offset: 0x608
// Size: 0xc4
function function_1d5c7052(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death", #"disconnect");
    str_fx = "zombie/fx9_aether_tear_portal_tunnel_1p";
    if (isdefined(str_fx)) {
        self util::waittill_dobj(bwastimejump);
        waitframe(1);
        level.portal_fx = util::playfxontag(bwastimejump, str_fx, self, "tag_fx_wormhole");
    }
}

// Namespace red_door/red_door
// Params 7, eflags: 0x0
// Checksum 0x79197a61, Offset: 0x6d8
// Size: 0x104
function function_4198ac3f(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (codcaster::function_b8fe9b52(binitialsnap)) {
        return;
    }
    if (bwastimejump != fieldname) {
        if (bwastimejump) {
            self endon(#"death", #"disconnect");
            waitframe(1);
            self util::waittill_dobj(binitialsnap);
            if (!isalive(self)) {
                return;
            }
            if (!function_1cbf351b(binitialsnap)) {
                playtagfxset(binitialsnap, #"hash_c8d1cd982807459", self);
            }
        }
    }
}

// Namespace red_door/red_door
// Params 7, eflags: 0x0
// Checksum 0xdc0934d7, Offset: 0x7e8
// Size: 0xe4
function function_76090e23(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != fieldname) {
        if (bwastimejump) {
            self endon(#"death", #"disconnect");
            waitframe(1);
            self util::waittill_dobj(binitialsnap);
            if (!isalive(self)) {
                return;
            }
            if (!function_1cbf351b(binitialsnap)) {
                util::playfxontag(binitialsnap, #"hash_35accd8f03ca67be", self, "tag_origin");
            }
        }
    }
}

// Namespace red_door/red_door
// Params 7, eflags: 0x0
// Checksum 0x3deac833, Offset: 0x8d8
// Size: 0x64
function function_e10bfb69(*localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != fieldname) {
        if (bwastimejump) {
            exploder::exploder("fxexp_red_door_enter_mall");
        }
    }
}

// Namespace red_door/red_door
// Params 7, eflags: 0x0
// Checksum 0xcb7cd193, Offset: 0x948
// Size: 0x64
function function_afb3813c(*localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != fieldname) {
        if (bwastimejump) {
            exploder::exploder("fxexp_red_door_enter_temple");
        }
    }
}

