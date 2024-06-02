// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace oob;

// Namespace oob/oob
// Params 0, eflags: 0x5
// Checksum 0xa4f42711, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"out_of_bounds", &preinit, undefined, undefined, undefined);
}

// Namespace oob/oob
// Params 0, eflags: 0x6 linked
// Checksum 0x84b5c5d2, Offset: 0x140
// Size: 0x2c0
function private preinit() {
    if (sessionmodeismultiplayergame()) {
        level.var_dcb68d74 = 1;
        level.oob_timelimit_ms = getdvarint(#"oob_timelimit_ms", 3000);
        level.oob_timekeep_ms = getdvarint(#"oob_timekeep_ms", 3000);
    } else if (sessionmodeiswarzonegame()) {
        level.var_dcb68d74 = 1;
        level.oob_timelimit_ms = getdvarint(#"oob_timelimit_ms", 10000);
        level.oob_timekeep_ms = getdvarint(#"oob_timekeep_ms", 3000);
    } else if (sessionmodeiscampaigngame()) {
        level.var_dcb68d74 = 0;
        level.oob_timelimit_ms = getdvarint(#"oob_timelimit_ms", 6000);
    } else {
        level.var_dcb68d74 = 1;
        level.oob_timelimit_ms = getdvarint(#"oob_timelimit_ms", 6000);
    }
    clientfield::register("toplayer", "out_of_bounds", 1, 5, "int", &onoutofboundschange, 0, 1);
    clientfield::register("toplayer", "nonplayer_oob_usage", 1, 1, "int", &function_95c61f07, 0, 1);
    callback::on_localclient_connect(&on_localplayer_connect);
    callback::on_localplayer_spawned(&on_localplayer_spawned);
    callback::on_localclient_shutdown(&on_localplayer_shutdown);
    callback::function_a880899e(&function_a880899e);
    level.var_5b8ec4d = [];
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0x81921e79, Offset: 0x408
// Size: 0x140
function on_localplayer_connect(localclientnum) {
    setuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "outOfBoundsEndTime"), 0);
    /#
        if (getdvarstring(#"hash_4e9b02559bacb944", "<unknown string>") == "<unknown string>") {
            oobtriggers = function_29bda34d(localclientnum, "<unknown string>");
            foreach (oobtrigger in oobtriggers) {
                oobtrigger function_704c070e(localclientnum);
            }
        }
    #/
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0xc8ff782b, Offset: 0x550
// Size: 0xc
function on_localplayer_spawned(*localclientnum) {
    
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0x5e917462, Offset: 0x568
// Size: 0x3c
function on_localplayer_shutdown(localclientnum) {
    localplayer = self;
    if (isdefined(localplayer)) {
        stopoutofboundseffects(localclientnum, localplayer);
    }
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0x4a0b167a, Offset: 0x5b0
// Size: 0x84
function function_a880899e(eventparams) {
    localplayer = function_5c10bd79(eventparams.localclientnum);
    if (!isdefined(localplayer.oob_effect_enabled)) {
        return;
    }
    if (eventparams.enabled) {
        function_d36db451(eventparams.localclientnum);
        return;
    }
    function_52b5ffe3(eventparams.localclientnum);
}

// Namespace oob/oob
// Params 7, eflags: 0x2 linked
// Checksum 0x2e8e82, Offset: 0x640
// Size: 0x5e
function function_95c61f07(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 0) {
        self.nonplayeroobusage = 1;
        return;
    }
    self.nonplayeroobusage = undefined;
}

// Namespace oob/oob
// Params 2, eflags: 0x2 linked
// Checksum 0xf4db91b8, Offset: 0x6a8
// Size: 0x36
function function_2fb8e4d4(*localclientnum, localplayer) {
    if (function_3132f113(localplayer)) {
        return false;
    }
    return true;
}

// Namespace oob/oob
// Params 7, eflags: 0x2 linked
// Checksum 0x400fd27, Offset: 0x6e8
// Size: 0x1b4
function onoutofboundschange(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    localplayer = function_5c10bd79(binitialsnap);
    var_d66b86ee = function_2fb8e4d4(binitialsnap, localplayer);
    self callback::entity_callback(#"oob", binitialsnap, {#old_val:fieldname, #new_val:bwastimejump});
    if (var_d66b86ee && bwastimejump > 0) {
        if (!isdefined(localplayer.oob_effect_enabled)) {
            function_da2afac6(binitialsnap, localplayer);
        }
        return;
    }
    if (isdefined(level.oob_timekeep_ms) && isdefined(self.oob_start_time)) {
        self.oob_end_time = getservertime(0, 1);
        if (!isdefined(self.oob_active_duration)) {
            self.oob_active_duration = 0;
        }
        self.oob_active_duration += self.oob_end_time - self.oob_start_time;
    }
    if (is_true(self.nonplayeroobusage)) {
        self.oob_active_duration = undefined;
    }
    stopoutofboundseffects(binitialsnap, localplayer);
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0xeff2f02, Offset: 0x8a8
// Size: 0xd8
function function_52b5ffe3(localclientnum) {
    if (function_21dc7cf(localclientnum)) {
        return;
    }
    if (isdefined(level.var_5b8ec4d[localclientnum])) {
        return;
    }
    if (util::get_game_type() === #"zstandard") {
        level.var_5b8ec4d[localclientnum] = function_604c9983(localclientnum, #"hash_6da7ae12f538ef5e", 0.5);
        return;
    }
    level.var_5b8ec4d[localclientnum] = function_604c9983(localclientnum, #"uin_out_of_bounds_loop", 0.5);
}

// Namespace oob/oob
// Params 2, eflags: 0x2 linked
// Checksum 0xb3bf954f, Offset: 0x988
// Size: 0x212
function function_da2afac6(localclientnum, localplayer) {
    localplayer.oob_effect_enabled = 1;
    function_52b5ffe3(localclientnum);
    oobmodel = getoobuimodel(localclientnum);
    if (level.var_dcb68d74) {
        var_e09617 = localplayer function_54e69ee4();
        if (isdefined(self.oob_active_duration) && isdefined(self.var_4e1de06a) && self.var_4e1de06a > var_e09617) {
            var_5e38cdc6 = self.var_4e1de06a - var_e09617;
            var_b8883639 = self.oob_active_duration - var_5e38cdc6;
            self.oob_active_duration = int(max(var_b8883639, 0));
        }
        self.var_4e1de06a = var_e09617;
        if (isdefined(level.oob_timekeep_ms) && isdefined(self.oob_start_time) && isdefined(self.oob_active_duration) && getservertime(0) - self.oob_end_time < level.oob_timekeep_ms) {
            setuimodelvalue(oobmodel, getservertime(0, 1) + var_e09617 - self.oob_active_duration);
        } else {
            self.oob_active_duration = undefined;
            setuimodelvalue(oobmodel, getservertime(0, 1) + var_e09617);
        }
    }
    self.oob_start_time = getservertime(0, 1);
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0x63789410, Offset: 0xba8
// Size: 0x6c
function function_d36db451(localclientnum) {
    if (isdefined(level.var_5b8ec4d) && isdefined(level.var_5b8ec4d[localclientnum])) {
        function_d48752e(localclientnum, level.var_5b8ec4d[localclientnum]);
        level.var_5b8ec4d[localclientnum] = undefined;
    }
}

// Namespace oob/oob
// Params 2, eflags: 0x2 linked
// Checksum 0x164a3800, Offset: 0xc20
// Size: 0xa6
function stopoutofboundseffects(localclientnum, localplayer) {
    if (!isdefined(localplayer)) {
        return;
    }
    function_d36db451(localclientnum);
    if (level.var_dcb68d74) {
        oobmodel = getoobuimodel(localclientnum);
        setuimodelvalue(oobmodel, 0);
    }
    if (isdefined(localplayer) && isdefined(localplayer.oob_effect_enabled)) {
        localplayer.oob_effect_enabled = 0;
        localplayer.oob_effect_enabled = undefined;
    }
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0x8c582ace, Offset: 0xcd0
// Size: 0x42
function getoobuimodel(localclientnum) {
    return getuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "outOfBoundsEndTime");
}

// Namespace oob/oob
// Params 2, eflags: 0x2 linked
// Checksum 0x956f42c, Offset: 0xd20
// Size: 0x70
function function_93bd17f6(id, time) {
    if (!isdefined(self.var_2ae9ee7e)) {
        self.var_2ae9ee7e = [];
    } else if (!isarray(self.var_2ae9ee7e)) {
        self.var_2ae9ee7e = array(self.var_2ae9ee7e);
    }
    self.var_2ae9ee7e[id] = time;
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0x4dc0945d, Offset: 0xd98
// Size: 0x44
function function_e2d18c01(id) {
    if (isarray(self.var_2ae9ee7e)) {
        arrayremoveindex(self.var_2ae9ee7e, id, 1);
    }
}

// Namespace oob/oob
// Params 0, eflags: 0x2 linked
// Checksum 0xbd3fdd7, Offset: 0xde8
// Size: 0xf2
function function_54e69ee4() {
    if (!isarray(self.var_2ae9ee7e) || !self.var_2ae9ee7e.size) {
        return level.oob_timelimit_ms;
    }
    var_56afe472 = undefined;
    foreach (time in self.var_2ae9ee7e) {
        if (!isdefined(var_56afe472) || time < var_56afe472) {
            var_56afe472 = time;
        }
    }
    return int(var_56afe472 * 1000);
}

