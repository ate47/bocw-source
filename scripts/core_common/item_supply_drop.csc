// Atian COD Tools GSC CW decompiler test
#using script_680dddbda86931fa;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace item_supply_drop;

// Namespace item_supply_drop/item_supply_drop
// Params 0, eflags: 0x5
// Checksum 0xcd494324, Offset: 0x160
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"item_supply_drop", &preinit, undefined, undefined, #"item_world");
}

// Namespace item_supply_drop/item_supply_drop
// Params 0, eflags: 0x6 linked
// Checksum 0xd82717c3, Offset: 0x1b0
// Size: 0x164
function private preinit() {
    if (!item_world_util::use_item_spawns() || util::get_game_type() === #"zsurvival") {
        return;
    }
    clientfield::register("scriptmover", "supply_drop_fx", 1, 1, "int", &supply_drop_fx, 0, 0);
    clientfield::register("scriptmover", "supply_drop_parachute_rob", 1, 1, "int", &supply_drop_parachute, 0, 0);
    clientfield::register("scriptmover", "supply_drop_portal_fx", 1, 1, "int", &supply_drop_portal_fx, 0, 0);
    clientfield::register("vehicle", "supply_drop_vehicle_landed", 1, 1, "counter", &supply_drop_vehicle_landed, 0, 0);
}

// Namespace item_supply_drop/item_supply_drop
// Params 7, eflags: 0x2 linked
// Checksum 0x738d45a8, Offset: 0x320
// Size: 0x94
function supply_drop_parachute(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playrenderoverridebundle(#"hash_336cece53ae2342f");
        return;
    }
    self stoprenderoverridebundle(#"hash_336cece53ae2342f");
}

// Namespace item_supply_drop/item_supply_drop
// Params 1, eflags: 0x2 linked
// Checksum 0xee1fa469, Offset: 0x3c0
// Size: 0x4c
function function_81431153(localclientnum) {
    self waittill(#"death");
    if (isdefined(self.supplydropfx)) {
        stopfx(localclientnum, self.supplydropfx);
    }
}

// Namespace item_supply_drop/item_supply_drop
// Params 7, eflags: 0x2 linked
// Checksum 0x85883ec6, Offset: 0x418
// Size: 0xc4
function supply_drop_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.supplydropfx = playfx(fieldname, "smoke/fx9_gamemode_fireteam_elim_signal", self.origin);
        self.var_3a55f5cf = 1;
        self thread function_81431153(fieldname);
        return;
    }
    if (isdefined(self.supplydropfx)) {
        stopfx(fieldname, self.supplydropfx);
    }
}

// Namespace item_supply_drop/item_supply_drop
// Params 7, eflags: 0x2 linked
// Checksum 0x2383cb89, Offset: 0x4e8
// Size: 0x15a
function supply_drop_portal_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        player = function_5c10bd79(fieldname);
        if (isdefined(self.var_227361c6)) {
            stopfx(fieldname, self.var_227361c6);
        }
        self.startpos = self.origin;
        self.var_227361c6 = playfx(fieldname, #"hash_28b5c6ccaabb4afe", self.startpos);
        return;
    }
    if (isdefined(self.var_227361c6)) {
        stopfx(fieldname, self.var_227361c6);
    }
    var_752d14c2 = self.origin;
    if (isdefined(self.startpos)) {
        var_752d14c2 = self.startpos;
    }
    self.var_227361c6 = playfx(fieldname, #"hash_45086f1ffcabbf47", var_752d14c2);
}

// Namespace item_supply_drop/item_supply_drop
// Params 7, eflags: 0x2 linked
// Checksum 0xbcc4e3e0, Offset: 0x650
// Size: 0x84
function supply_drop_vehicle_landed(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self playrumbleonentity(bwastimejump, #"hash_6ee3e7be4dd47bed");
    self playsound(0, #"hash_531aa4857265e186");
}

