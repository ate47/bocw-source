// Atian COD Tools GSC CW decompiler test
#using scripts\zm\zm_tungsten_main_quest.csc;
#using scripts\zm_common\objective_manager.csc;
#using scripts\zm_common\zm_score.csc;
#using script_5ee86fb478309acf;
#using scripts\core_common\postfx_shared.csc;
#using script_40e017336a087343;
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\item_drop.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_edb23975;

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x27ae3b7f, Offset: 0x188
// Size: 0x1bc
function init() {
    clientfield::register("world", "" + #"hash_7017982268bd7369", 1, 1, "int", &function_91074d15, 0, 0);
    clientfield::register("toplayer", "" + #"hash_721d42a28d7461ea", 24000, 1, "int", &function_eebdf718, 0, 1);
    clientfield::register("scriptmover", "" + #"hash_4b1b4c1785fdd11d", 24000, 1, "counter", &function_d5faead3, 0, 0);
    clientfield::register("toplayer", "" + #"hash_63da9d5355659678", 24000, 1, "int", &function_cc885b38, 0, 0);
    clientfield::register("playercorpse", "" + #"hash_4a22451481253e54", 28000, 1, "int", &function_e7e29c4c, 0, 0);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 7, eflags: 0x2 linked
// Checksum 0x1a020c36, Offset: 0x350
// Size: 0x7c
function function_91074d15(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        function_12f0cc0d("xanim_pb_tablet_ult_stand_idle_clone");
        return;
    }
    function_4b51b406("xanim_pb_tablet_ult_stand_idle_clone");
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 7, eflags: 0x2 linked
// Checksum 0x3085efd5, Offset: 0x3d8
// Size: 0x74
function function_eebdf718(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self setenemyglobalscrambler(1);
        return;
    }
    self setenemyglobalscrambler(0);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 7, eflags: 0x2 linked
// Checksum 0x73f5c455, Offset: 0x458
// Size: 0x6c
function function_d5faead3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        playfx(fieldname, #"hash_7338c45a04f946da", self.origin);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 7, eflags: 0x2 linked
// Checksum 0xc8ccbc5a, Offset: 0x4d0
// Size: 0x126
function function_cc885b38(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        if (!isdefined(self.fasttravel_teleport_sfx)) {
            self playsound(fieldname, #"hash_431a69daefc0579b");
            self.fasttravel_teleport_sfx = self playloopsound(#"hash_535acfcd1e12504f");
        }
        return;
    }
    if (isdefined(self.fasttravel_teleport_sfx)) {
        self playsound(fieldname, #"hash_4516617ef69718ca");
        self stoploopsound(self.fasttravel_teleport_sfx);
        self.fasttravel_teleport_sfx = undefined;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 7, eflags: 0x2 linked
// Checksum 0x7fa26362, Offset: 0x600
// Size: 0x18c
function function_e7e29c4c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"end_game");
    self notify("386957b1936ceffc");
    self endon("386957b1936ceffc");
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        if (isdefined(self.owner)) {
            player = self.owner;
            player hide();
            self setdrawname(hash(self.owner.name), 1);
            self function_1f0c7136(4);
            self waittill(#"death");
            if (isdefined(player)) {
                player show();
            }
        }
        return;
    }
    self setdrawname();
    if (isdefined(self.owner)) {
        self.owner show();
    }
}

