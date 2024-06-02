// Atian COD Tools GSC CW decompiler test
#using script_330e1a53a92b38cc;
#using script_3b8f43c68572f06;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace laststand;

// Namespace laststand/laststand
// Params 0, eflags: 0x5
// Checksum 0x20fd7ed7, Offset: 0x2a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"laststand", &preinit, undefined, undefined, undefined);
}

// Namespace laststand/laststand
// Params 0, eflags: 0x6 linked
// Checksum 0x9fd180b4, Offset: 0x2f0
// Size: 0x384
function private preinit() {
    function_349ff038();
    clientfield::register_clientuimodel("hudItems.laststand.progress", #"last_stand", #"progress", 1, 5, "float", &laststand_postfx, 0, 0);
    clientfield::register_clientuimodel("hudItems.laststand.beingRevived", #"last_stand", #"beingrevived", 1, 1, "int", &being_revived, 0, 1);
    clientfield::register_clientuimodel("hudItems.laststand.cowardsWayBleedOut", #"last_stand", #"hash_a48b4657908bd19", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.laststand.revivingClientNum", #"last_stand", #"revivingclientnum", 1, 7, "int", &function_6159e216, 0, 0);
    clientfield::register_clientuimodel("hudItems.laststand.reviveProgress", #"last_stand", #"reviveprogress", 1, 5, "float", undefined, 0, 0);
    clientfield::register_clientuimodel("EnemyTeamLastLivesData.numPlayersDowned", #"hash_157814322eeb6f4f", #"numplayersdowned", 1, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("PlayerTeamLastLivesData.numPlayersDowned", #"hash_1c0caa4923ddc616", #"numplayersdowned", 1, 3, "int", undefined, 0, 0);
    clientfield::register("allplayers", "laststand_bleed", 1, 1, "int", &laststand_bleed, 0, 0);
    clientfield::register_clientuimodel("hud_items.selfReviveAvailable", #"hash_6f4b11a0bee9b73d", #"hash_421cc80875ab27e5", 1, 1, "int", undefined, 0, 0);
    clientfield::register("toplayer", "isSelfReviving", 1, 1, "int", &function_a228d7a3, 0, 1);
    level thread wait_and_set_revive_shader_constant();
    level.var_4103bf85 = [];
    level.var_7f1612a0 = [];
}

// Namespace laststand/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xac702451, Offset: 0x680
// Size: 0x5c
function function_349ff038() {
    var_f6784858 = 6;
    if (sessionmodeiswarzonegame()) {
        var_f6784858 = 4;
    }
    for (i = 0; i < var_f6784858; i++) {
        mp_revive_prompt::register();
    }
}

// Namespace laststand/laststand
// Params 7, eflags: 0x6 linked
// Checksum 0x28afcd9f, Offset: 0x6e8
// Size: 0xf4
function private function_a228d7a3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (isdefined(level.var_7f1612a0[fieldname])) {
            function_d48752e(fieldname, level.var_7f1612a0[fieldname]);
        }
        level.var_7f1612a0[fieldname] = function_604c9983(fieldname, #"hash_390aa7d4252c46b5");
        return;
    }
    if (isdefined(level.var_7f1612a0[fieldname])) {
        function_d48752e(fieldname, level.var_7f1612a0[fieldname]);
        level.var_7f1612a0[fieldname] = undefined;
    }
}

// Namespace laststand/laststand
// Params 7, eflags: 0x2 linked
// Checksum 0x6bedf882, Offset: 0x7e8
// Size: 0x1cc
function laststand_postfx(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = function_5c10bd79(binitialsnap);
    if (bwastimejump) {
        if (!self postfx::function_556665f2("pstfx_drowning")) {
            self postfx::playpostfxbundle("pstfx_drowning");
            value = 0.99;
            self postfx::function_c8b5f318("pstfx_drowning", #"outer radius", value);
            self postfx::function_c8b5f318("pstfx_drowning", #"inner radius", value - 0.3);
            self postfx::function_c8b5f318("pstfx_drowning", #"opacity", 1);
        }
        if (bwastimejump > 0.5) {
            if (fieldname == 0) {
                fieldname = bwastimejump;
                bwastimejump = fieldname - 0.05;
            }
            player thread function_8960f852(fieldname, bwastimejump);
        }
        return;
    }
    if (self postfx::function_556665f2("pstfx_drowning")) {
        postfx::stoppostfxbundle("pstfx_drowning");
    }
}

// Namespace laststand/laststand
// Params 7, eflags: 0x2 linked
// Checksum 0xf0ca453b, Offset: 0x9c0
// Size: 0x6c
function being_revived(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_4f6e7690 = bwastimejump != 0;
    function_766ed49(fieldname, var_4f6e7690);
}

// Namespace laststand/laststand
// Params 7, eflags: 0x2 linked
// Checksum 0xa0251f90, Offset: 0xa38
// Size: 0x9c
function function_6159e216(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_4f6e7690 = bwastimejump != int(pow(2, 7) - 2);
    function_766ed49(fieldname, var_4f6e7690);
}

// Namespace laststand/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x4e0f86dd, Offset: 0xae0
// Size: 0xcc
function function_766ed49(localclientnum, var_20e2bb05) {
    if (var_20e2bb05) {
        if (isdefined(level.var_4103bf85[localclientnum])) {
            function_d48752e(localclientnum, level.var_4103bf85[localclientnum]);
        }
        level.var_4103bf85[localclientnum] = function_604c9983(localclientnum, #"hash_390aa7d4252c46b5");
        return;
    }
    if (isdefined(level.var_4103bf85[localclientnum])) {
        function_d48752e(localclientnum, level.var_4103bf85[localclientnum]);
        level.var_4103bf85[localclientnum] = undefined;
    }
}

// Namespace laststand/laststand
// Params 7, eflags: 0x2 linked
// Checksum 0x31c2a13a, Offset: 0xbb8
// Size: 0xfe
function laststand_bleed(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death", #"hash_7698972484f247e8");
    if (bwastimejump != fieldname && bwastimejump) {
        self util::waittill_dobj(binitialsnap);
        self.var_63796ff0 = function_239993de(binitialsnap, "player/fx8_plyr_blood_drip_last_stand", self, "j_spine4");
        return;
    }
    if (isdefined(self.var_63796ff0)) {
        stopfx(binitialsnap, self.var_63796ff0);
    }
    self notify(#"hash_7698972484f247e8");
}

// Namespace laststand/laststand
// Params 2, eflags: 0x2 linked
// Checksum 0xfc6408d5, Offset: 0xcc0
// Size: 0xe0
function function_8960f852(oldval, newval) {
    self endon(#"death");
    duration = 1;
    while (duration > 0) {
        value = oldval - (oldval - newval) * (1 - duration);
        duration -= 0.1;
        self postfx::function_c8b5f318("pstfx_drowning", #"outer radius", value);
        self postfx::function_c8b5f318("pstfx_drowning", #"inner radius", value - 0.8);
        wait(0.1);
    }
}

// Namespace laststand/laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xea518129, Offset: 0xda8
// Size: 0xc8
function wait_and_set_revive_shader_constant() {
    while (true) {
        waitresult = level waittill(#"notetrack");
        localclientnum = waitresult.localclientnum;
        if (waitresult.notetrack == "revive_shader_constant") {
            player = function_5c10bd79(localclientnum);
            player mapshaderconstant(localclientnum, 0, "scriptVector2", 0, 1, 0, getservertime(localclientnum) / 1000);
        }
    }
}

