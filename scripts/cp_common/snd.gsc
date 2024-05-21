// Atian COD Tools GSC CW decompiler test
#using script_6b979561d0e05f38;
#using script_85cd2e9a28ea8a1;
#using script_198f1b397865a5ad;
#using scripts\cp_common\snd_utility.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace snd;

// Namespace snd/snd
// Params 0, eflags: 0x5
// Checksum 0xa8a981fc, Offset: 0x360
// Size: 0x25a
function private autoexec function_4047919b() {
    if (!isdefined(level._snd)) {
        level._snd = spawnstruct();
        level._snd.var_2dd09170 = 1;
        level._snd._callbacks = [];
        level._snd.var_3cc765a3 = [];
        level._snd.var_92f63ad0 = [];
        level._snd.var_d37e94ca = #"gentity";
        level._snd.var_90903fc0 = 0;
        level._snd._callbacks[#"player_view"] = &function_9d361345;
        level._snd._callbacks[#"player_angles"] = &function_d33afb70;
        level._snd._callbacks[#"player_fov"] = &function_51436f04;
    }
    util::registerclientsys("clientSoundCommand");
    clientfield::register("actor", "clientFieldSndTargetActor", 1, 11, "int");
    clientfield::register("allplayers", "clientFieldSndTargetPlayer", 1, 11, "int");
    clientfield::register("vehicle", "clientFieldSndTargetVehicle", 1, 11, "int");
    clientfield::register("scriptmover", "clientFieldSndTargetScriptMover", 1, 11, "int");
    function_3ffa0089();
    /#
        level thread function_ce893a25();
    #/
    waittillframeend();
    level._snd.isinitialized = 1;
}

// Namespace snd/snd
// Params 2, eflags: 0x2 linked
// Checksum 0xf18ec1be, Offset: 0x5c8
// Size: 0x34
function function_7db65a93(msg, players) {
    level thread function_a74b8be1(msg, players);
}

// Namespace snd/snd
// Params 2, eflags: 0x2 linked
// Checksum 0xc2f3b3dd, Offset: 0x608
// Size: 0x1ac
function function_a74b8be1(msg, *players) {
    waitforplayers();
    var_9077d19c = isstring(players) && players.size > 0 || ishash(players);
    if (function_81fac19d(!var_9077d19c, "snd_client_msg must be a string or hash")) {
        return;
    }
    assert(var_9077d19c);
    state = "";
    if (ishash(players)) {
        state = "# " + players;
    } else if (isstring(players)) {
        if (function_81fac19d(players.size > 16, "snd: client_msg > 16 chars " + function_783b69(players, "'"))) {
            /#
                if (function_f984063f()) {
                    debugbreak();
                }
            #/
        }
        state = "M " + players;
    }
    util::setclientsysstate("clientSoundCommand", state);
}

// Namespace snd/snd
// Params 2, eflags: 0x2 linked
// Checksum 0xd19adafd, Offset: 0x7c0
// Size: 0x34
function function_b23661d5(ent, targetname) {
    level thread function_5018393e(ent, targetname);
}

// Namespace snd/snd
// Params 2, eflags: 0x6 linked
// Checksum 0xdf0c5637, Offset: 0x800
// Size: 0x1a4
function private function_5018393e(ent, targetname) {
    waitforplayers();
    isvalidtarget = isentity(ent);
    if (function_81fac19d(!isvalidtarget, "snd_client_targetname is not an entity")) {
        return;
    }
    assert(isvalidtarget);
    targetname = function_ea2f17d1(targetname, ent.targetname);
    if (function_81fac19d(!isdefined(targetname), "snd_client_targetname targetname is undefined")) {
        return;
    }
    assert(isdefined(targetname));
    entitynumber = ent getentitynumber();
    state = "T " + entitynumber + " " + targetname;
    fieldname = function_9d83cae7(ent);
    util::setclientsysstate("clientSoundCommand", state);
    ent clientfield::set(fieldname, entitynumber);
    level thread function_b2f22cd6(ent, state, fieldname);
}

// Namespace snd/snd
// Params 1, eflags: 0x6 linked
// Checksum 0xdb74ea88, Offset: 0x9b0
// Size: 0xa6
function private function_9d83cae7(ent) {
    fieldname = "clientFieldSndTargetScriptMover";
    if (isactor(ent)) {
        fieldname = "clientFieldSndTargetActor";
    } else if (isplayer(ent)) {
        fieldname = "clientFieldSndTargetPlayer";
    } else if (isvehicle(ent)) {
        fieldname = "clientFieldSndTargetVehicle";
    } else {
        fieldname = "clientFieldSndTargetScriptMover";
    }
    return fieldname;
}

// Namespace snd/snd
// Params 4, eflags: 0x6 linked
// Checksum 0x217fcaeb, Offset: 0xa60
// Size: 0xd4
function private function_b2f22cd6(ent, state, fieldname, var_792fc52c) {
    assert(isstring(state));
    assert(isstring(fieldname));
    var_792fc52c = function_ea2f17d1(var_792fc52c, 3);
    wait(var_792fc52c);
    if (isdefined(ent)) {
        util::setclientsysstate("clientSoundCommand", state);
        ent clientfield::set(fieldname, 0);
    }
}

// Namespace snd/snd
// Params 2, eflags: 0x2 linked
// Checksum 0x673941b1, Offset: 0xb40
// Size: 0x194
function client_voice(ent, soundalias) {
    isvalidtarget = isentity(ent);
    if (function_81fac19d(!isvalidtarget, "snd client_vo was not given an entity")) {
        return 0;
    }
    assert(isvalidtarget);
    var_3dd9dcff = soundexists(soundalias);
    if (function_81fac19d(isdefined(soundalias) && !var_3dd9dcff, "snd client_vo alias does not exist: " + soundalias)) {
        return 0;
    }
    entitynumber = ent getentitynumber();
    state = "V " + entitynumber;
    if (var_3dd9dcff) {
        state += " " + soundalias;
    }
    util::setclientsysstate("clientSoundCommand", state);
    waittime = 0;
    if (var_3dd9dcff) {
        waittime = soundgetplaybacktime(soundalias);
        waittime /= 1000;
    }
    return waittime;
}

#namespace namespace_afa8e18b;

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x2 linked
// Checksum 0x2df6ce2, Offset: 0xce0
// Size: 0x188
function function_b5959278(ent, var_1d25915, var_605838f4, var_e330010e) {
    assert(isdefined(ent), "<unknown string>");
    assert(isdefined(ent.soundkey), "<unknown string>");
    if (isdefined(var_605838f4)) {
        var_e330010e = var_605838f4 snd::function_bf7c949(var_e330010e);
        var_386560b8 = (0, 0, 0);
        var_f1088ee4 = (0, 0, 0);
        if (isdefined(var_1d25915)) {
            var_386560b8 = var_1d25915;
        }
        assert(isdefined(var_e330010e), "<unknown string>");
        if (var_e330010e == "tag_origin") {
            var_e330010e = "";
        }
        ent enablelinkto();
        ent linkto(var_605838f4, var_e330010e, var_386560b8, var_f1088ee4);
        if (!isarray(var_605838f4.var_a415b6d6)) {
            var_605838f4.var_a415b6d6 = [];
        }
        var_605838f4.var_a415b6d6[ent.soundkey] = ent;
        return;
    }
    level._snd.var_92f63ad0[ent.soundkey] = ent;
}

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x2 linked
// Checksum 0xc1cbd763, Offset: 0xe70
// Size: 0x236
function function_85daf9f0(soundalias, var_1d25915, var_605838f4, var_e330010e) {
    ent = undefined;
    spawnorigin = undefined;
    if (isdefined(var_605838f4) && isdefined(var_e330010e) && isdefined(var_1d25915)) {
        spawnorigin = var_605838f4 gettagorigin(var_e330010e);
        spawnorigin += var_1d25915;
    } else if (isdefined(var_605838f4) && isdefined(var_e330010e)) {
        spawnorigin = var_605838f4 gettagorigin(var_e330010e);
    } else if (isdefined(var_605838f4)) {
        spawnorigin = var_605838f4.origin;
    } else if (!isdefined(var_605838f4) && !isdefined(var_1d25915)) {
        var_3692a397 = (0, 0, -32768);
        spawnorigin = var_3692a397;
    } else {
        spawnorigin = var_1d25915;
    }
    assert(isdefined(spawnorigin));
    ent = undefined;
    if (isdefined(var_605838f4)) {
        ent = spawn("script_model", spawnorigin);
        if (isentity(ent)) {
            ent setmodel("tag_origin");
        }
    } else {
        ent = spawn("script_origin", spawnorigin);
    }
    assert(isdefined(ent), "<unknown string>");
    if (isentity(ent)) {
        ent.var_90c86b97 = var_605838f4;
        ent.soundtype = #"gentity";
        ent.soundkey = ent getentitynumber();
        ent.targetname = "snd " + soundalias;
    }
    return ent;
}

// Namespace namespace_afa8e18b/snd
// Params 1, eflags: 0x2 linked
// Checksum 0xf8f0c9dc, Offset: 0x10b0
// Size: 0x174
function function_6ac5b570(ent) {
    if (snd::function_81fac19d(!isdefined(ent) || function_3132f113(ent), "snd: free on deleted entity!")) {
        /#
            if (snd::function_f984063f()) {
                debugbreak();
            }
        #/
        return;
    }
    if (isdefined(ent.var_90c86b97) && isarray(ent.var_90c86b97.var_a415b6d6)) {
        var_605838f4 = ent.var_90c86b97;
        var_5244aa9 = isdefined(var_605838f4.var_a415b6d6[ent.soundkey]);
        if (var_5244aa9 == 1) {
            var_605838f4.var_a415b6d6[ent.soundkey] = undefined;
        } else {
            /#
                if (snd::function_f984063f()) {
                    debugbreak();
                }
            #/
        }
    } else {
        level._snd.var_92f63ad0[ent.soundkey] = undefined;
    }
    waittillframeend();
    ent delete();
}

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x2 linked
// Checksum 0xcf51d0ab, Offset: 0x1230
// Size: 0x312
function function_2dde45d9(var_afe43979, soundalias, var_99e65ecf, delaytime) {
    ent = var_afe43979;
    currentvolume = undefined;
    ent endon(#"death");
    assert(isdefined(ent));
    assert(isstring(soundalias));
    currentvolume = snd::function_92d3587(ent);
    if (!isdefined(var_99e65ecf) && isdefined(currentvolume)) {
        var_99e65ecf = currentvolume;
    }
    if (snd::did_init() == 0) {
        var_cd7344db = !isdefined(delaytime) || snd::isnumber(delaytime) && delaytime == 0;
        if (snd::function_81fac19d(var_cd7344db, "snd: delayed due to first frame!")) {
            delaytime = 0.05;
        }
    }
    if (snd::isnumber(delaytime) && delaytime > 0) {
        wait(delaytime);
    }
    assert(soundexists(soundalias), "<unknown string>" + soundalias);
    if (soundislooping(soundalias) == 1) {
        ent playloopsound(soundalias);
    } else {
        var_42be2e20 = "sounddone";
        if (sessionmodeiscampaigngame()) {
            ent playsound(soundalias);
            var_ef1f34f = 1;
            if (var_ef1f34f) {
                ent thread function_94954510(soundalias, var_42be2e20);
            } else {
                ent thread function_bd8d70b0(var_42be2e20);
            }
        } else {
            if (isdefined(ent.var_90c86b97) && isdefined(level._snd.var_c7f0039)) {
                waitframe(1);
                ent [[ level._snd.var_c7f0039 ]](soundalias);
            } else {
                ent playsound(soundalias);
            }
            ent thread function_94954510(soundalias, var_42be2e20);
        }
    }
    ent.soundalias = soundalias;
}

// Namespace namespace_afa8e18b/snd
// Params 2, eflags: 0x2 linked
// Checksum 0xbed162b8, Offset: 0x1550
// Size: 0x19c
function function_9f156b27(var_afe43979, var_24ea4e17) {
    var_afe43979 endon(#"death");
    ent = var_afe43979;
    if (snd::function_81fac19d(!isdefined(ent) || function_3132f113(ent), "snd: stop on deleted entity!")) {
        /#
            if (snd::function_f984063f()) {
                debugbreak();
            }
        #/
        return;
    }
    soundalias = ent.soundalias;
    var_24ea4e17 = snd::function_ea2f17d1(var_24ea4e17, 0);
    if (isstring(soundalias)) {
        if (is_true(soundislooping(soundalias))) {
            ent stoploopsound(var_24ea4e17);
        } else {
            ent stopsounds();
            ent stopsound(ent.soundalias);
        }
        waitframe(1);
        ent.soundalias = undefined;
    }
    ent.soundtype = undefined;
    function_6ac5b570(ent);
}

// Namespace namespace_afa8e18b/snd
// Params 2, eflags: 0x6 linked
// Checksum 0x668c523e, Offset: 0x16f8
// Size: 0xa4
function private function_94954510(soundalias, done) {
    ent = self;
    ent endon(#"death");
    waittime = soundgetplaybacktime(soundalias);
    waittime += 250;
    waittime /= 1000;
    wait(waittime);
    ent notify(done, ent.soundalias);
    function_6ac5b570(ent);
}

// Namespace namespace_afa8e18b/snd
// Params 1, eflags: 0x6 linked
// Checksum 0xf8c00c11, Offset: 0x17a8
// Size: 0x64
function private function_bd8d70b0(done) {
    ent = self;
    ent endon(#"death");
    ent waittill(done);
    ent notify(done, ent.soundalias);
    function_6ac5b570(ent);
}

/#

    // Namespace namespace_afa8e18b/snd
    // Params 4, eflags: 0x2 linked
    // Checksum 0x830690b0, Offset: 0x1818
    // Size: 0x44
    function function_2761fc04(*ent, *var_1d25915, *var_605838f4, *var_e330010e) {
        assert(0, "<unknown string>");
    }

#/

// Namespace namespace_afa8e18b/snd
// Params 4, eflags: 0x2 linked
// Checksum 0xb6d987f, Offset: 0x1868
// Size: 0x46
function function_5275752c(*soundalias, *var_1d25915, *var_605838f4, *var_e330010e) {
    assert(0, "<unknown string>");
    return undefined;
}

/#

    // Namespace namespace_afa8e18b/snd
    // Params 1, eflags: 0x0
    // Checksum 0x9abcdf92, Offset: 0x18b8
    // Size: 0x2c
    function function_bdc44456(*ent) {
        assert(0, "<unknown string>");
    }

    // Namespace namespace_afa8e18b/snd
    // Params 4, eflags: 0x2 linked
    // Checksum 0x43729f9e, Offset: 0x18f0
    // Size: 0x44
    function function_bb749fc3(*var_afe43979, *soundalias, *var_99e65ecf, *delaytime) {
        assert(0, "<unknown string>");
    }

    // Namespace namespace_afa8e18b/snd
    // Params 2, eflags: 0x2 linked
    // Checksum 0x13f2d605, Offset: 0x1940
    // Size: 0x34
    function function_273d939b(*var_afe43979, *var_24ea4e17) {
        assert(0, "<unknown string>");
    }

#namespace snd;

#/

// Namespace snd/snd
// Params 0, eflags: 0x6 linked
// Checksum 0x5f971630, Offset: 0x1980
// Size: 0x32
function private function_9d361345() {
    player = self;
    vieworigin = player getplayercamerapos();
    return vieworigin;
}

// Namespace snd/snd
// Params 0, eflags: 0x6 linked
// Checksum 0x10a9f94d, Offset: 0x19c0
// Size: 0x32
function private function_d33afb70() {
    player = self;
    viewangles = player getplayerangles();
    return viewangles;
}

// Namespace snd/snd
// Params 0, eflags: 0x6 linked
// Checksum 0x689da006, Offset: 0x1a00
// Size: 0x42
function private function_51436f04() {
    player = self;
    fov = getdvarfloat(#"cg_fov", 65);
    return fov;
}

// Namespace snd/snd
// Params 1, eflags: 0x6 linked
// Checksum 0xedf053de, Offset: 0x1a50
// Size: 0x34
function private function_7f94241b(ent) {
    if (ent == level) {
        ent = function_da785aa8()[0];
    }
    return ent;
}

// Namespace snd/snd
// Params 3, eflags: 0x0
// Checksum 0xd8ed1a2b, Offset: 0x1a90
// Size: 0x126
function function_13246855(soundalias, notifystring, *player_or_team) {
    ent = function_7f94241b(self);
    if (!isentity(ent) || issentient(ent) && !isalive(ent)) {
        return;
    }
    ent endon(#"death");
    snd = play(notifystring, [ent, "j_head"]);
    function_f4f3a2a(snd, ent);
    if (isdefined(player_or_team)) {
        function_2fdc4fb(snd);
        ent notify(player_or_team);
    }
}

// Namespace snd/snd
// Params 1, eflags: 0x0
// Checksum 0xa8c2eb34, Offset: 0x1bc0
// Size: 0x44
function function_fb9b8ef4(soundalias) {
    ent = function_7f94241b(self);
    stop_alias(soundalias, ent);
}

// Namespace snd/snd
// Params 3, eflags: 0x0
// Checksum 0x4a80ff69, Offset: 0x1c10
// Size: 0xc4
function function_aeea7f5e(soundalias, notifystring, *player_or_team) {
    ent = function_7f94241b(self);
    if (!isentity(ent) || issentient(ent) && !isalive(ent)) {
        return;
    }
    waittime = client_voice(ent, notifystring);
    if (isdefined(player_or_team)) {
        wait(waittime);
        self notify(player_or_team);
    }
}

// Namespace snd/snd
// Params 1, eflags: 0x0
// Checksum 0xfa45c263, Offset: 0x1ce0
// Size: 0x44
function function_4264ab7c(*soundalias) {
    ent = function_7f94241b(self);
    client_voice(ent);
}

