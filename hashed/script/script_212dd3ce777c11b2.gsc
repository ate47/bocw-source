// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_d592c983;

// Namespace namespace_d592c983/level_init
// Params 1, eflags: 0x20
// Checksum 0xcc7e1676, Offset: 0x100
// Size: 0xec
function event_handler[level_init] main(*eventstruct) {
    if (!is_true(getgametypesetting(#"hash_580b0e5930bebbd1"))) {
        return;
    }
    if (!zm_utility::is_classic()) {
        return;
    }
    clientfield::register("scriptmover", "zm_round_accelerant_fx", 15000, 2, "int", &zm_round_accelerant_fx, 0, 0);
    clientfield::function_5b7d846d("hud_items_rampage_inducer.rampage_state", #"hash_5c79bc8ee1ef9f4c", #"hash_19252472c38c39f6", 15000, 2, "int", undefined, 0, 0);
}

// Namespace namespace_d592c983/namespace_d592c983
// Params 7, eflags: 0x2 linked
// Checksum 0x2a7b2002, Offset: 0x1f8
// Size: 0x102
function zm_round_accelerant_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump >= 2) {
        if (isdefined(self.fxid)) {
            stopfx(fieldname, self.fxid);
        }
        self.fxid = function_239993de(fieldname, #"hash_e53abb78895dec6", self, "tag_origin");
        return;
    }
    if (isdefined(self.fxid)) {
        stopfx(fieldname, self.fxid);
    }
    self.fxid = function_239993de(fieldname, #"hash_72817177ffeaeafd", self, "tag_origin");
}

