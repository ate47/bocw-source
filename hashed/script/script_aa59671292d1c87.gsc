// Atian COD Tools GSC CW decompiler test
#using script_31b23f5316d1b26d;
#using script_18bc13f07baf161a;
#using script_64e5d3ad71ce8140;
#using script_38635d174016f682;
#using script_67049b48b589d81;
#using script_36f25afcb9441942;
#using script_24879e3929b5b5e9;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_1dc364c0;

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 0, eflags: 0x2 linked
// Checksum 0x7bdbf05d, Offset: 0x1a8
// Size: 0xbc
function init() {
    clientfield::register("scriptmover", "dungeon_set_roomID", 1, 8, "int", &dungeon_set_roomid, 0, 0);
    clientfield::register("scriptmover", "dungeon_set_explore_state", 1, 2, "int", &function_45d79d27, 0, 0);
    namespace_c004634e::init();
    level.var_40450ea6 = &function_e71841a;
}

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 7, eflags: 0x2 linked
// Checksum 0x5049d0ce, Offset: 0x270
// Size: 0x18c
function function_45d79d27(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    color = undefined;
    if (isdefined(self.ffotdzodt8_ffot)) {
        ffotdzodt8_ffot = "rg_room_" + self.ffotdzodt8_ffot;
        room = level.var_c97eeeb4[ffotdzodt8_ffot];
    }
    switch (bwastimejump) {
    case 0:
        color = #"none";
        break;
    case 1:
        if (isdefined(room) && isdefined(room.var_cd42b9c0)) {
            iconname = namespace_c004634e::function_4e886036(room) + "_reveal";
            room.var_cd42b9c0 setcompassicon(iconname);
        }
        break;
    case 2:
        break;
    }
    if (isdefined(color) && isdefined(room) && isdefined(room.var_cd42b9c0)) {
        room.var_cd42b9c0 function_a5edb367(color);
    }
}

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 7, eflags: 0x2 linked
// Checksum 0x7e753e01, Offset: 0x408
// Size: 0x4e
function dungeon_set_roomid(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.ffotdzodt8_ffot = bwastimejump - 1;
}

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 0, eflags: 0x2 linked
// Checksum 0x416bf349, Offset: 0x460
// Size: 0x384
function function_e71841a() {
    self.var_d8d445c4 = &function_cb06f399;
    self.walldecor = [];
    self.floordecor = [];
    self.wallbuy = [];
    var_f445d580 = self namespace_f27a9d0d::function_5165998("type", "room_center");
    if (isdefined(var_f445d580.script_parameters)) {
        if (issubstr(var_f445d580.script_parameters, "tweakCam")) {
            self.tweakcam = 1;
        }
    }
    self.var_cd42b9c0 = namespace_ec06fe4a::spawnmodel(0, var_f445d580.origin, "tag_origin", var_f445d580.angles, "dungeon mapObject");
    if (isdefined(self.var_cd42b9c0)) {
        iconname = namespace_c004634e::function_4e886036(self);
        if (isdefined(iconname)) {
            self.var_cd42b9c0 setcompassicon(iconname);
            self.var_cd42b9c0 function_811196d1(0);
            self.var_cd42b9c0 function_5e00861(1024, 1);
        }
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "wallbuy");
    foreach (var_f6198c5b in var_c9bdb63f) {
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "floordecor");
    foreach (var_f6198c5b in var_c9bdb63f) {
        self.floordecor[self.floordecor.size] = namespace_c004634e::function_6a09928b(var_f6198c5b, #"floor");
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "walldecor");
    foreach (var_f6198c5b in var_c9bdb63f) {
        self.walldecor[self.walldecor.size] = namespace_c004634e::function_6a09928b(var_f6198c5b, #"wall");
    }
}

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 0, eflags: 0x2 linked
// Checksum 0xe2935275, Offset: 0x7f0
// Size: 0x23e
function function_cb06f399() {
    if (isdefined(self.var_cd42b9c0)) {
        self.var_cd42b9c0 delete();
    }
    if (isdefined(self.walldecor)) {
        foreach (item in self.walldecor) {
            if (isdefined(item.fx)) {
                deletefx(0, item.fx);
            }
            item delete();
        }
        self.walldecor = [];
    }
    if (isdefined(self.floordecor)) {
        foreach (item in self.floordecor) {
            if (isdefined(item.fx)) {
                deletefx(0, item.fx);
            }
            item delete();
        }
        self.floordecor = [];
    }
    if (isdefined(self.loot)) {
        foreach (item in self.loot) {
            item.pickup = undefined;
        }
        self.loot = [];
    }
}

