// Atian COD Tools GSC CW decompiler test
#using script_640ee26e1d271011;
#using script_67b81035ebe2a4fe;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace prop;

// Namespace prop/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xa3232fd9, Offset: 0x250
// Size: 0x40c
function event_handler[gametype_init] main(*eventstruct) {
    clientfield::register("allplayers", "hideTeamPlayer", 16000, 2, "int", &function_abaafe9a, 0, 0);
    clientfield::register("allplayers", "pingHighlight", 16000, 1, "int", &highlightplayer, 0, 0);
    clientfield::register("toplayer", "PROP.change_prop", 16000, 1, "int", &propchange, 0, 0);
    clientfield::register("toplayer", "PROP.cameraHeight", 16000, 8, "int", &cameraheightchange, 0, 0);
    clientfield::register("toplayer", "PROP.cameraRange", 16000, 8, "int", &camerarangechange, 0, 0);
    clientfield::register("toplayer", "PROP.hide_prop", 16000, 1, "int", &hideprop, 0, 0);
    clientfield::function_5b7d846d("hudItems.war.attackingTeam", #"hash_11ea1e04b846f98e", #"attackingteam", 16000, 2, "int", undefined, 0, 1);
    clientfield::register_clientuimodel("hudItems.numPropsAlive", #"hash_6f4b11a0bee9b73d", #"numpropsalive", 16000, 4, "int", undefined, 0, 1);
    clientfield::register_clientuimodel("hudItems.numPropConcusses", #"hash_6f4b11a0bee9b73d", #"numpropconcusses", 16000, 2, "int", undefined, 0, 1);
    clientfield::register_clientuimodel("hudItems.numPropChanges", #"hash_6f4b11a0bee9b73d", #"numpropchanges", 16000, 2, "int", undefined, 0, 1);
    clientfield::register_clientuimodel("hudItems.numPropDecoys", #"hash_6f4b11a0bee9b73d", #"numpropdecoys", 16000, 4, "int", undefined, 0, 1);
    clientfield::register("toplayer", "realtime_multiplay", 16000, 1, "int", &function_a1b40aa4, 0, 1);
    level.hide_timer = mp_prop_timer::register();
    level.prop_controls = mp_prop_controls::register();
    callback::on_localplayer_spawned(&onlocalplayerspawned);
    level.var_20ece392 = &highlightprop;
    thread function_2691bc1b();
}

// Namespace prop/prop
// Params 1, eflags: 0x0
// Checksum 0xf0508864, Offset: 0x668
// Size: 0x124
function onlocalplayerspawned(localclientnum) {
    level notify("localPlayerSpectatingEnd" + localclientnum);
    if (function_65b9eb0f(localclientnum) || !self hasdobj(localclientnum) || issplitscreen()) {
        self endon(#"death");
        waitframe(1);
    }
    if (!self function_b9fceaaf(localclientnum)) {
        function_da64790f(localclientnum);
        function_a5c395d2(localclientnum);
        function_b1cca54f(localclientnum);
    }
    if (function_65b9eb0f(localclientnum)) {
        level thread localplayerspectating(localclientnum);
    }
    level thread setuppropplayernames(localclientnum);
}

// Namespace prop/prop
// Params 1, eflags: 0x0
// Checksum 0xc1ce8b8d, Offset: 0x798
// Size: 0xac
function localplayerspectating(localclientnum) {
    level notify("localPlayerSpectating" + localclientnum);
    level endon("localPlayerSpectatingEnd" + localclientnum);
    var_22d4baff = playerbeingspectated(localclientnum);
    while (true) {
        player = playerbeingspectated(localclientnum);
        if (player != var_22d4baff) {
            level notify("localPlayerSpectating" + localclientnum);
        }
        wait(0.1);
    }
}

// Namespace prop/prop
// Params 0, eflags: 0x0
// Checksum 0x82d6efb7, Offset: 0x850
// Size: 0x62
function function_2691bc1b() {
    while (true) {
        res = level waittill(#"team_changed");
        localclientnum = res.localclientnum;
        level notify("team_changed" + localclientnum);
    }
}

// Namespace prop/prop
// Params 1, eflags: 0x0
// Checksum 0xb4349739, Offset: 0x8c0
// Size: 0x64
function function_43ad0547(player) {
    for (parent = self getlinkedent(); isdefined(parent); parent = parent getlinkedent()) {
        if (parent == player) {
            return true;
        }
    }
    return false;
}

// Namespace prop/prop
// Params 2, eflags: 0x0
// Checksum 0x31a72c5, Offset: 0x930
// Size: 0x172
function function_1d9539dd(localclientnum, player) {
    if (isdefined(player.prop)) {
        return player.prop;
    }
    playerparent = player getlinkedent();
    ents = getentarray(localclientnum);
    foreach (ent in ents) {
        if (isplayer(ent) || !isdefined(ent.owner) || ent.owner != player) {
            continue;
        }
        if (isdefined(playerparent) && ent function_43ad0547(playerparent)) {
            return ent;
        }
        if (ent function_43ad0547(player)) {
            return ent;
        }
    }
    return undefined;
}

// Namespace prop/prop
// Params 1, eflags: 0x0
// Checksum 0xdd97f3d0, Offset: 0xab0
// Size: 0x254
function setuppropplayernames(localclientnum) {
    level notify("setupPropPlayerNames" + localclientnum);
    level endon("setupPropPlayerNames" + localclientnum);
    while (true) {
        localplayer = function_5c10bd79(localclientnum);
        spectating = function_65b9eb0f(localclientnum);
        players = getplayers(localclientnum);
        foreach (player in players) {
            if ((player != localplayer || spectating) && player ishidden() && isdefined(player.team) && player.team == localplayer.team) {
                player.prop = function_1d9539dd(localclientnum, player);
                if (isdefined(player.prop)) {
                    if (!is_true(player.var_776a1340)) {
                        player.prop setdrawownername(1, spectating);
                        player.var_776a1340 = 1;
                    }
                }
                continue;
            }
            if (is_true(player.var_776a1340)) {
                player.prop = function_1d9539dd(localclientnum, player);
                if (isdefined(player.prop)) {
                    player.prop setdrawownername(0, spectating);
                }
                player.var_776a1340 = 0;
            }
        }
        wait(1);
    }
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0x8dcc1470, Offset: 0xd10
// Size: 0x7c
function highlightprop(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        self notify(#"hash_3fe34dcd29fd6a0f");
        return;
    }
    self thread function_15e0dfb8(fieldname, bwastimejump);
}

// Namespace prop/prop
// Params 2, eflags: 0x0
// Checksum 0x9df45ff, Offset: 0xd98
// Size: 0x166
function function_15e0dfb8(localclientnum, var_dc9f0c39) {
    self endon(#"entityshutdown");
    level endon(#"disconnect");
    self notify(#"hash_3fe34dcd29fd6a0f");
    self endon(#"hash_3fe34dcd29fd6a0f");
    while (true) {
        localplayer = function_5c10bd79(localclientnum);
        spectating = function_65b9eb0f(localclientnum) && !function_1cbf351b(localclientnum);
        var_6955388c = (!isdefined(self.owner) || self.owner != localplayer || spectating) && isdefined(self.team) && isdefined(localplayer.team) && self.team == localplayer.team;
        if (var_dc9f0c39 == 1) {
        }
        level waittill("team_changed" + localclientnum, "localPlayerSpectating" + localclientnum);
    }
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0xcdfc459, Offset: 0xf08
// Size: 0x7c
function highlightplayer(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        self notify(#"hash_3fe34dcd29fd6a0f");
        return;
    }
    self thread function_29561f83(fieldname, bwastimejump);
}

// Namespace prop/prop
// Params 2, eflags: 0x0
// Checksum 0x5259dddb, Offset: 0xf90
// Size: 0x102
function function_29561f83(localclientnum, *var_dc9f0c39) {
    self endon(#"entityshutdown");
    self notify(#"hash_3f606627f154954b");
    self endon(#"hash_3f606627f154954b");
    while (true) {
        localplayer = function_5c10bd79(var_dc9f0c39);
        if (!isdefined(self) || !isdefined(localplayer)) {
            break;
        }
        var_6955388c = self != localplayer && isdefined(self.team) && isdefined(localplayer.team) && self.team == localplayer.team;
        level waittill("team_changed" + var_dc9f0c39, "localPlayerSpectating" + var_dc9f0c39);
    }
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0x5b0d48b8, Offset: 0x10a0
// Size: 0xfc
function hideprop(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    localplayer = function_5c10bd79(fieldname);
    var_6955388c = bwastimejump && isdefined(self) && self == localplayer;
    if (var_6955388c) {
        if (isdefined(self.prop)) {
            self.prop playrenderoverridebundle(#"hash_14be6378dfef6b7");
        }
        return;
    }
    if (isdefined(self.prop)) {
        self.prop stoprenderoverridebundle(#"hash_14be6378dfef6b7");
    }
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0x1c6c8081, Offset: 0x11a8
// Size: 0xac
function function_abaafe9a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        self notify(#"hash_65350e9157e1e7fd");
        if (!self function_b9fceaaf(fieldname)) {
            self show();
        }
        return;
    }
    self function_f6c0a66e(fieldname, bwastimejump);
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0x339cec29, Offset: 0x1260
// Size: 0xd4
function propchange(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (function_65b9eb0f(bwastimejump) || !self hasdobj(bwastimejump) || issplitscreen()) {
        self endon(#"death");
        waitframe(1);
    }
    if (self function_b9fceaaf(bwastimejump)) {
        self.prop function_415dc60b(bwastimejump);
    }
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0x94e374d2, Offset: 0x1340
// Size: 0x5c
function cameraheightchange(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    function_ac297091(fieldname, bwastimejump * 10);
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0xfc86c7b3, Offset: 0x13a8
// Size: 0x5c
function camerarangechange(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    function_d69242bb(fieldname, bwastimejump * 10);
}

// Namespace prop/prop
// Params 1, eflags: 0x0
// Checksum 0x68f0ad57, Offset: 0x1410
// Size: 0x60
function function_b9fceaaf(localclientnum) {
    if (isdefined(self.prop)) {
        return true;
    }
    if (isplayer(self)) {
        self.prop = function_1d9539dd(localclientnum, self);
        return isdefined(self.prop);
    }
    return false;
}

// Namespace prop/prop
// Params 2, eflags: 0x0
// Checksum 0x4cb1ee31, Offset: 0x1478
// Size: 0x176
function function_f6c0a66e(localclientnum, teamint) {
    self endon(#"entityshutdown");
    self notify(#"hash_65350e9157e1e7fd");
    self endon(#"hash_65350e9157e1e7fd");
    assert(teamint == 1 || teamint == 2);
    team = "allies";
    if (teamint == 2) {
        team = "axis";
    }
    while (isdefined(self)) {
        localplayer = function_5c10bd79(localclientnum);
        ishidden = isdefined(localplayer.team) && team == localplayer.team && !function_65b9eb0f(localclientnum);
        if (ishidden) {
            self hide();
        } else if (!self function_b9fceaaf(localclientnum)) {
            self show();
        }
        level waittill("team_changed" + localclientnum);
    }
}

// Namespace prop/prop
// Params 7, eflags: 0x0
// Checksum 0x8e71935f, Offset: 0x15f8
// Size: 0x74
function function_a1b40aa4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        function_9e9a0604(fieldname);
        return;
    }
    function_3f258626(fieldname);
}

