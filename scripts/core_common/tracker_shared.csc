// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace tracker;

// Namespace tracker/tracker_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xdee9ac5c, Offset: 0x120
// Size: 0x24
function init_shared() {
    registerclientfields();
    function_fa884ccf();
}

// Namespace tracker/tracker_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xe8bcf691, Offset: 0x150
// Size: 0xc4
function private registerclientfields() {
    clientfield::register_clientuimodel("huditems.isExposedOnMinimap", #"hash_6f4b11a0bee9b73d", #"isexposedonminimap", 1, 1, "int", undefined, 0, 0);
    serverfield::register("sf_tracker_spotting", 1, 6, "int");
    clientfield::register("allplayers", "cf_tracker_spotting", 1, 6, "int", &function_308cd741, 0, 0);
}

// Namespace tracker/tracker_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb768a338, Offset: 0x220
// Size: 0x19c
function function_fa884ccf() {
    callback::on_localplayer_spawned(&on_player_spawned);
    callback::function_56df655f(&function_56df655f);
    var_5951c51b = getdvarint(#"hash_451ecc8708eb258d");
    var_5951c51b = var_5951c51b < 0 ? 3 : var_5951c51b;
    level.var_56ba0785 = cos(var_5951c51b);
    var_f2e5ae7 = getdvarint(#"hash_5b0b64262b06c91d");
    level.var_f2e5ae7 = var_f2e5ae7 < 0 ? 7500 : var_f2e5ae7;
    var_398a0413 = getdvarint(#"hash_3f50d960d95b965a");
    level.var_398a0413 = var_398a0413 < 0 ? 2000 : var_398a0413;
    var_5b162bc3 = getdvarint(#"hash_7ae43b6918bd9bac");
    level.var_5b162bc3 = var_5b162bc3 < 0 ? 1000 : var_5b162bc3;
    level.var_8fda87cb = [];
}

// Namespace tracker/tracker_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xdf21faa, Offset: 0x3c8
// Size: 0x8c
function on_player_spawned(localclientnum) {
    if (isbot(self)) {
        return;
    }
    self function_bcc73387(localclientnum);
    wait(0.5);
    if (!isdefined(self)) {
        return;
    }
    if (self hasperk(localclientnum, #"specialty_tracker")) {
        self thread function_8c47bbe5(localclientnum);
    }
}

// Namespace tracker/tracker_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc4eea0bf, Offset: 0x460
// Size: 0x7c
function function_56df655f(params) {
    if (isdefined(params.localclientnum)) {
        player = function_5c10bd79(params.localclientnum);
        if (isplayer(player)) {
            player thread function_bcc73387(params.localclientnum, 1);
        }
    }
}

// Namespace tracker/tracker_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x216a8d10, Offset: 0x4e8
// Size: 0x1fc
function private function_8c47bbe5(localclientnum) {
    level endon(#"game_ended");
    self endon(#"disconnect", #"shutdown");
    self notify("12cc7fe31edc7db8");
    self endon("12cc7fe31edc7db8");
    self.var_d3fe9463 = undefined;
    while (true) {
        var_4731ce01 = 0;
        if (isalive(self) && self isplayerads()) {
            entnum = function_6777167b(localclientnum);
            if (isdefined(entnum)) {
                ent = getentbynum(localclientnum, entnum);
                if (self function_b6e83a42(localclientnum, ent)) {
                    var_4731ce01 = 1;
                    if (entnum !== self.var_d3fe9463) {
                        self serverfield::set("sf_tracker_spotting", ent getentitynumber() + 1);
                        self.var_d3fe9463 = entnum;
                    }
                }
            }
        }
        if (isdefined(self.var_d3fe9463) && !var_4731ce01) {
            self.var_d3fe9463 = undefined;
            if (!function_3132f113(self)) {
                self serverfield::set("sf_tracker_spotting", 0);
            }
        }
        if (!isalive(self)) {
            return;
        }
        wait(0.1);
    }
}

// Namespace tracker/tracker_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x63220f2c, Offset: 0x6f0
// Size: 0xa2
function function_b6e83a42(localclientnum, ent) {
    if (!isplayer(ent)) {
        return false;
    }
    if (!isalive(ent)) {
        return false;
    }
    if (ent hasperk(localclientnum, #"specialty_immunetrackerspotting")) {
        return false;
    }
    if (!isdefined(ent.team) || self.team == ent.team) {
        return false;
    }
    return true;
}

// Namespace tracker/tracker_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x618be3b2, Offset: 0x7a0
// Size: 0x1de
function private function_e018cdc7(localclientnum) {
    self notify(#"hash_38a08eaa34e05df7");
    self endon(#"death", #"hash_38a08eaa34e05df7");
    level endon(#"game_ended");
    var_b117d19 = 0;
    var_cf075ce6 = 0;
    while (true) {
        time = gettime();
        if (isdefined(self.var_ee1cc1c2)) {
            arrayremovevalue(self.var_ee1cc1c2, undefined, 1);
            if (!self.var_ee1cc1c2.size) {
                self.var_ee1cc1c2 = undefined;
            } else {
                localplayer = function_5c10bd79(localclientnum);
                foreach (spotter in self.var_ee1cc1c2) {
                    var_b117d19 = time;
                    if (spotter.team === localplayer.team) {
                        var_cf075ce6 = time;
                        break;
                    }
                }
            }
        }
        if (var_b117d19 + level.var_398a0413 < time) {
            return;
        }
        if (var_cf075ce6 + level.var_398a0413 >= time) {
            self function_a4f246fb(level.var_5b162bc3);
        }
        waitframe(1);
    }
}

// Namespace tracker/tracker_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x39ab6855, Offset: 0x988
// Size: 0x1ce
function function_308cd741(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (function_1cbf351b(binitialsnap) || fieldname == bwastimejump) {
        return;
    }
    var_f6536836 = self getentitynumber();
    level.var_8fda87cb[var_f6536836] = bwastimejump;
    if (bwastimejump) {
        var_b80b7c6b = bwastimejump - 1;
        newtarget = getentbynum(binitialsnap, var_b80b7c6b);
        if (isplayer(newtarget)) {
            if (!isdefined(newtarget.var_ee1cc1c2)) {
                newtarget.var_ee1cc1c2 = [];
            }
            newtarget.var_ee1cc1c2[var_f6536836] = self;
            newtarget thread function_e018cdc7(binitialsnap);
        }
    }
    if (fieldname) {
        var_2aabed59 = fieldname - 1;
        oldtarget = getentbynum(binitialsnap, var_2aabed59);
        if (isplayer(oldtarget)) {
            if (!isdefined(oldtarget.var_ee1cc1c2)) {
                oldtarget.var_ee1cc1c2 = [];
            }
            oldtarget.var_ee1cc1c2[var_f6536836] = undefined;
            if (!oldtarget.var_ee1cc1c2.size) {
                oldtarget.var_ee1cc1c2 = undefined;
            }
        }
    }
}

// Namespace tracker/tracker_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6cbd11d, Offset: 0xb60
// Size: 0x188
function function_bcc73387(localclientnum, var_540abea5 = 0) {
    if (var_540abea5) {
        waitframe(1);
    }
    players = function_a1ef346b(localclientnum);
    foreach (player in players) {
        val = player clientfield::get("cf_tracker_spotting");
        entnum = player getentitynumber();
        var_db7bdbeb = isdefined(level.var_8fda87cb[entnum]) ? level.var_8fda87cb[entnum] : 0;
        if (val != var_db7bdbeb) {
            player function_308cd741(localclientnum, var_db7bdbeb, val);
            continue;
        }
        if (val) {
            player function_308cd741(localclientnum, 0, val);
        }
    }
}

