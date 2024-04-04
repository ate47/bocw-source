// Atian COD Tools GSC CW decompiler test
#using script_3daa514e0b3cd5f4;
#using scripts\zm_common\zm_utility.csc;
#using script_359683f0ff3b3fbb;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zcranked;

// Namespace zcranked/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x95628b8f, Offset: 0x218
// Size: 0x304
function event_handler[gametype_init] main(*eventstruct) {
    clientfield::register("allplayers", "cranked_explode_fx", 1, 1, "counter", &cranked_explode_fx, 0, 0);
    clientfield::register("toplayer", "cranked_timer_sfx", 1, 1, "int", &cranked_timer_sfx, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedMax", #"hash_6a55a513359bd404", #"hash_656f154d7d06b4a9", 6000, 5, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedPct", #"hash_6a55a513359bd404", #"hash_435a004d21eddd40", 6000, 16, "float", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTimerReset", #"hash_6a55a513359bd404", #"hash_104102aca5dec6e5", 6000, 1, "counter", undefined, 0, 0);
    clientfield::register_clientuimodel("ZMHud.zmCrankedRoundNotification", #"zm_hud", #"hash_5fae6d66ff61741", 6000, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTier", #"hash_6a55a513359bd404", #"hash_62d578ed0c523079", 6000, 1, "int", undefined, 0, 0);
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
    if (util::get_map_name() === #"zm_gold") {
        level.str_magicbox_weapon_itemspawnlist = #"hash_6b07c24817b7820f";
    }
    if (!isdefined(level.var_352498c6)) {
        prototype_hud::register();
        level.var_352498c6 = 1;
    }
    callback::on_gameplay_started(&on_gameplay_started);
    println("<unknown string>");
}

// Namespace zcranked/zcranked
// Params 0, eflags: 0x0
// Checksum 0x25cd103b, Offset: 0x528
// Size: 0x24
function onprecachegametype() {
    println("<unknown string>");
}

// Namespace zcranked/zcranked
// Params 0, eflags: 0x0
// Checksum 0xfc0afbaf, Offset: 0x558
// Size: 0x24
function onstartgametype() {
    println("<unknown string>");
}

// Namespace zcranked/zcranked
// Params 1, eflags: 0x0
// Checksum 0xedb0b1c0, Offset: 0x588
// Size: 0x4c
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(3500, 2.5);
    function_5ea2c6e3("zmb_cranked_neardeath", 0, 0);
}

// Namespace zcranked/zcranked
// Params 7, eflags: 0x0
// Checksum 0x2993a507, Offset: 0x5e0
// Size: 0xfc
function cranked_explode_fx(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self zm_utility::function_f8796df3(bwastimejump)) {
        playviewmodelfx(bwastimejump, #"hash_408d10583a1dff7f", "tag_torso");
        self playsound(bwastimejump, #"hash_78ebad845ac95f28");
        return;
    }
    util::playfxontag(bwastimejump, #"hash_1ceb9e884b8750bd", self, "j_spine4");
    self playsound(bwastimejump, #"hash_b29118465607b5b");
}

// Namespace zcranked/zcranked
// Params 7, eflags: 0x0
// Checksum 0x18a98159, Offset: 0x6e8
// Size: 0xb4
function cranked_timer_sfx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self thread function_ee85e4e3(fieldname);
        return;
    }
    self notify(#"hash_42ef04c28c2ef326");
    if (self function_d2cb869e(#"hash_64660c28c445612f")) {
        self codestoppostfxbundle(#"hash_64660c28c445612f");
    }
}

// Namespace zcranked/zcranked
// Params 1, eflags: 0x0
// Checksum 0x8253b95c, Offset: 0x7a8
// Size: 0x320
function function_ee85e4e3(localclientnum) {
    self notify("6e75dad2a7559b6b");
    self endon("6e75dad2a7559b6b");
    level endon(#"end_game");
    self endon(#"death", #"disconnect", #"hash_42ef04c28c2ef326");
    waitframe(1);
    n_timer = self clientfield::get_to_player("sr_defend_timer");
    str_alias = #"hash_43c0fcbfe93e6423";
    function_672403ca("zmb_cranked_neardeath", 0, 0);
    if (is_true(self.var_5a72f7c9)) {
        self.var_5a72f7c9 = 0;
        if (n_timer >= 8) {
            self playsound(localclientnum, #"hash_2f11528079c42ea6");
        }
    }
    if (isdefined(self.var_e933de5b)) {
        stopsound(self.var_e933de5b);
    }
    while (n_timer > 0) {
        if (n_timer <= 5) {
            blendscale = abs(n_timer - 6) / 5;
            if (!isdefined(blendscale)) {
                blendscale = 0;
            }
            function_672403ca("zmb_cranked_neardeath", 1, blendscale);
            self.var_5a72f7c9 = 1;
            str_alias = #"hash_37a0bf7f61bc3362" + n_timer;
            self playrumbleonentity(localclientnum, #"infiltration_rumble");
        } else if (n_timer <= 10) {
            str_alias = #"hash_bb1df4387e47518";
        } else if (n_timer <= 15) {
            str_alias = #"hash_43c0ffbfe93e693c";
        }
        if (n_timer <= 6) {
            if (!self function_d2cb869e(#"hash_64660c28c445612f")) {
                self codeplaypostfxbundle(#"hash_64660c28c445612f");
            }
        } else if (self function_d2cb869e(#"hash_64660c28c445612f")) {
            self codestoppostfxbundle(#"hash_64660c28c445612f");
        }
        self.var_e933de5b = self playsound(localclientnum, str_alias);
        n_timer--;
        wait(1);
    }
}

