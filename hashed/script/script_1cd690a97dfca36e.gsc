// Atian COD Tools GSC CW decompiler test
#using script_28e27ee9b45fd02d;
#using scripts\cp_common\snd_utility.csc;
#using scripts\cp_common\snd.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace snd;

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x2 linked
// Checksum 0x5bbe30b7, Offset: 0x898
// Size: 0x60
function did_init() {
    if (isdefined(level._snd) && isdefined(level._snd.var_d37e94ca) && is_true(level._snd.isinitialized)) {
        return true;
    }
    return false;
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x2 linked
// Checksum 0x2bbdb347, Offset: 0x900
// Size: 0x24
function function_294cb4fa() {
    while (did_init() == 0) {
        waitframe(1);
    }
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0x1e069e0a, Offset: 0x930
// Size: 0x5a
function play(soundalias, targets) {
    soundtype = level._snd.var_d37e94ca;
    var_afe43979 = function_2639b80c(soundtype, soundalias, targets);
    return var_afe43979;
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0x58e02abb, Offset: 0x998
// Size: 0xb0
function stop(var_afe43979, var_24ea4e17) {
    foreach (var_d7ba9fdf in function_f218bff5(var_afe43979)) {
        level thread function_f937a6f7(var_d7ba9fdf, var_24ea4e17);
    }
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x0
// Checksum 0xceac6b22, Offset: 0xa50
// Size: 0x166
function stop_alias(soundalias, targets, var_24ea4e17) {
    if (function_81fac19d(!isdefined(soundalias), "snd_stop_alias with undefined soundalias")) {
        return 0;
    }
    soundalias = tolower(soundalias);
    var_2b6903e6 = function_33560b93(targets);
    nitrous_boat_motor_offset_y = 0;
    foreach (var_d7ba9fdf in var_2b6903e6) {
        if (!isdefined(var_d7ba9fdf.soundalias)) {
            continue;
        }
        if (issubstr(tolower(var_d7ba9fdf.soundalias), soundalias)) {
            stop(var_d7ba9fdf, var_24ea4e17);
            nitrous_boat_motor_offset_y = int(nitrous_boat_motor_offset_y + 1);
        }
    }
    return nitrous_boat_motor_offset_y;
}

// Namespace snd/namespace_b63b5857
// Params 4, eflags: 0x0
// Checksum 0x8abfadf5, Offset: 0xbc0
// Size: 0x138
function function_2a2f26d4(var_afe43979, notifyentity, notifystring, var_24ea4e17) {
    if (function_81fac19d(!isdefined(var_afe43979), "snd_stop_on_ent_notify with undefined soundObject")) {
        return;
    }
    if (function_81fac19d(!isentity(notifyentity), "snd_stop_on_ent_notify notifyEntity is not an entity")) {
        return;
    }
    if (function_81fac19d(!isdefined(notifystring), "snd_stop_on_ent_notify with undefined levelNotifyString")) {
        return;
    }
    foreach (var_d7ba9fdf in function_f218bff5(var_afe43979)) {
        notifyentity thread function_7b540bad(var_d7ba9fdf, notifyentity, notifystring, var_24ea4e17);
    }
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x2 linked
// Checksum 0xa7cd6411, Offset: 0xd00
// Size: 0x108
function function_f4f3a2a(var_afe43979, var_7a0e40dd, var_24ea4e17) {
    if (function_81fac19d(!isdefined(var_afe43979), "snd_stop_on_ent_death with undefined soundObject")) {
        return;
    }
    if (function_81fac19d(!isdefined(var_7a0e40dd), "snd_stop_on_ent_death with undefined linkedEntity")) {
        return;
    }
    foreach (var_d7ba9fdf in function_f218bff5(var_afe43979)) {
        var_7a0e40dd thread function_7b540bad(var_d7ba9fdf, var_7a0e40dd, "death", var_24ea4e17);
    }
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x0
// Checksum 0x8949102a, Offset: 0xe10
// Size: 0x100
function function_d4e10f97(var_afe43979, var_1ed3fdf1, var_24ea4e17) {
    if (function_81fac19d(!isdefined(var_afe43979), "snd_stop_on_level_notify: undefined soundObject")) {
        return;
    }
    if (function_81fac19d(!isdefined(var_1ed3fdf1), "snd_stop_on_level_notify: undefined levelNotifyString")) {
        return;
    }
    foreach (var_d7ba9fdf in function_f218bff5(var_afe43979)) {
        level thread function_78a6b95b(var_d7ba9fdf, var_1ed3fdf1, var_24ea4e17);
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xce0ad271, Offset: 0xf18
// Size: 0x174
function function_2fdc4fb(var_afe43979) {
    if (function_81fac19d(!isdefined(var_afe43979), "snd_wait with undefined soundObject")) {
        return 0;
    }
    starttime = gettime();
    waittime = 0;
    while (true) {
        var_d4337e5 = 0;
        var_2b6903e6 = function_f218bff5(var_afe43979);
        arrayremovevalue(var_2b6903e6, undefined);
        foreach (var_d7ba9fdf in var_2b6903e6) {
            if (function_a6779cbd(var_d7ba9fdf)) {
                var_d4337e5 = 1;
                break;
            }
        }
        if (var_d4337e5 == 0) {
            break;
        }
        waitframe(1);
    }
    endtime = gettime();
    waittime = endtime - starttime;
    waittime /= 1000;
    return waittime;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xb3b2ee44, Offset: 0x1098
// Size: 0x2e
function function_a6779cbd(var_afe43979) {
    if (isdefined(var_afe43979) && isdefined(var_afe43979.soundtype)) {
        return true;
    }
    return false;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xb48007e8, Offset: 0x10d0
// Size: 0x12e
function function_33560b93(targets) {
    var_d16005d8 = [];
    foreach (target in function_f218bff5(targets)) {
        if (!isdefined(target)) {
            var_d16005d8 = arraycombine(var_d16005d8, level._snd.var_3cc765a3);
            continue;
        }
        if (target == level) {
            var_d16005d8 = arraycombine(var_d16005d8, level._snd.var_92f63ad0);
            continue;
        }
        if (isdefined(target.var_a415b6d6)) {
            var_d16005d8 = arraycombine(var_d16005d8, target.var_a415b6d6);
        }
    }
    return var_d16005d8;
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x0
// Checksum 0x1fd18c29, Offset: 0x1208
// Size: 0x2ae
function function_8f5dfd03(soundalias, targets) {
    if (function_81fac19d(!isdefined(soundalias), "snd_get_alias_objects with undefined soundalias")) {
        return 0;
    }
    soundaliases = [];
    if (isarray(soundalias)) {
        foreach (alias in soundalias) {
            soundaliases[soundaliases.size] = tolower(alias);
        }
    } else if (isstring(soundalias)) {
        soundaliases = [tolower(soundalias)];
    }
    assert(isarray(soundaliases), "speed");
    var_2b6903e6 = function_33560b93(targets);
    var_68303cc7 = [];
    foreach (var_d7ba9fdf in var_2b6903e6) {
        if (!isdefined(var_d7ba9fdf.soundalias)) {
            continue;
        }
        foreach (alias in soundaliases) {
            if (issubstr(tolower(var_d7ba9fdf.soundalias), alias)) {
                var_68303cc7[var_68303cc7.size] = var_d7ba9fdf;
            }
        }
    }
    return var_68303cc7;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0x9d40a4fe, Offset: 0x14c0
// Size: 0x1bc
function function_880857eb(var_932dabe2) {
    var_932dabe2 = function_ea2f17d1(var_932dabe2, 1);
    if (!isdefined(level._snd.fnplaysoundonentity)) {
        level._snd.fnplaysoundonentity = level.fnplaysoundonentity;
        level._snd.fnplaysoundontag = level.fnplaysoundontag;
        level._snd.fnnotetrackprefixhandler = level.fnnotetrackprefixhandler;
        level._snd.var_2861a322 = level.animation.callbacks[#"playsoundatviewheight"];
    }
    if (var_932dabe2) {
        level.fnplaysoundonentity = &function_b7609ab;
        level.fnplaysoundontag = &function_e94a63b7;
        level.fnnotetrackprefixhandler = &function_95d9f208;
        level.animation.callbacks[#"playsoundatviewheight"] = &function_e9b666c7;
        return;
    }
    level.fnplaysoundonentity = level._snd.fnplaysoundonentity;
    level.fnplaysoundontag = level._snd.fnplaysoundontag;
    level.fnnotetrackprefixhandler = level._snd.fnnotetrackprefixhandler;
    level.animation.callbacks[#"playsoundatviewheight"] = level._snd.var_2861a322;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0xbd8afdb7, Offset: 0x1688
// Size: 0x62
function function_92d3587(var_afe43979) {
    if (isdefined(level._snd._callbacks[#"hash_1e1ac3f40eb876c"])) {
        return [[ level._snd._callbacks[#"hash_1e1ac3f40eb876c"] ]](var_afe43979);
    }
    return 1;
}

// Namespace snd/namespace_b63b5857
// Params 5, eflags: 0x2 linked
// Checksum 0xba30996d, Offset: 0x16f8
// Size: 0x82
function function_db78159d(var_afe43979, volume, timeinseconds, curve, callbackfunc) {
    if (isdefined(level._snd._callbacks[#"hash_54be783edee16780"])) {
        [[ level._snd._callbacks[#"hash_54be783edee16780"] ]](var_afe43979, volume, timeinseconds, curve, callbackfunc);
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0x615794bc, Offset: 0x1788
// Size: 0x62
function function_21322d95(var_afe43979) {
    if (isdefined(level._snd._callbacks[#"hash_48cf16f271a9efa6"])) {
        return [[ level._snd._callbacks[#"hash_48cf16f271a9efa6"] ]](var_afe43979);
    }
    return 1;
}

// Namespace snd/namespace_b63b5857
// Params 5, eflags: 0x2 linked
// Checksum 0xa9516f8d, Offset: 0x17f8
// Size: 0x82
function function_964c3a03(var_afe43979, pitch, timeinseconds, curve, callbackfunc) {
    if (isdefined(level._snd._callbacks[#"hash_2e4f12f2aa75ce4a"])) {
        [[ level._snd._callbacks[#"hash_2e4f12f2aa75ce4a"] ]](var_afe43979, pitch, timeinseconds, curve, callbackfunc);
    }
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x2 linked
// Checksum 0x3a3f43ae, Offset: 0x1888
// Size: 0x42
function function_ccb932f2() {
    if (is_true(level._snd.var_2dd09170)) {
        return #"gentity";
    }
    return #"centity";
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x0
// Checksum 0x62d4ec76, Offset: 0x18d8
// Size: 0x16
function function_34595a23() {
    return level._snd.var_d37e94ca;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0xeea134d8, Offset: 0x18f8
// Size: 0x5a
function function_793ba430(type) {
    type = function_ea2f17d1(type, function_ccb932f2());
    level._snd.var_d37e94ca = type_string(type);
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0xcc5bd257, Offset: 0x1960
// Size: 0x2e
function get_type(var_afe43979) {
    if (isdefined(var_afe43979.soundtype)) {
        return var_afe43979.soundtype;
    }
    return "";
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0x2fdd6f18, Offset: 0x1998
// Size: 0x148
function type_string(soundtype) {
    var_db943b21 = undefined;
    switch (soundtype) {
    case 0:
    case #"entity":
    case #"e":
    case #"ent":
        var_db943b21 = #"gentity";
        break;
    case 1:
    case #"centity":
    case #"c":
    case #"cent":
        var_db943b21 = #"centity";
        break;
    case #"emitter":
        var_db943b21 = #"emitter";
        break;
    default:
        var_db943b21 = undefined;
        break;
    }
    assert(isdefined(var_db943b21), "<unknown string>" + soundtype);
    return var_db943b21;
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0xec27d016, Offset: 0x1ae8
// Size: 0xf2
function private function_aaee1de3(var_db943b21, var_4769f013, item) {
    assert(isdefined(level._snd), "<unknown string>");
    assert(isdefined(level._snd.var_3cc765a3), "<unknown string>");
    switch (var_db943b21) {
    default:
        assert(0, "<unknown string>");
        break;
    case #"centity":
    case #"gentity":
        level._snd.var_3cc765a3[var_4769f013] = item;
        break;
    }
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0xc8e56628, Offset: 0x1be8
// Size: 0x13a
function private function_7e9752b7(var_db943b21, var_4769f013, item) {
    assert(isdefined(level._snd), "<unknown string>");
    assert(isdefined(level._snd.var_3cc765a3), "<unknown string>");
    switch (var_db943b21) {
    default:
        assert(0, "<unknown string>");
        break;
    case #"centity":
    case #"gentity":
        assert(isinarray(level._snd.var_3cc765a3, item), "<unknown string>");
        level._snd.var_3cc765a3[var_4769f013] = undefined;
        break;
    }
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x6 linked
// Checksum 0x988005d0, Offset: 0x1d30
// Size: 0x5c
function private function_e12570db() {
    var_db943b21 = self.soundtype;
    var_4769f013 = self.soundkey;
    self waittill(#"death");
    function_7e9752b7(var_db943b21, var_4769f013, self);
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0xbf6ef9b5, Offset: 0x1d98
// Size: 0x172
function private function_9a3d9ff2(var_7483db1c) {
    delaytime = 0;
    soundalias = undefined;
    var_6d232fb3 = undefined;
    if (isarray(var_7483db1c)) {
        keys = var_7483db1c;
        soundalias = undefined;
        aliasindex = keys.size + 1;
        for (i = 0; i < keys.size; i++) {
            key = keys[i];
            if (isstring(key)) {
                soundalias = key;
                aliasindex = i;
            }
            if (isnumber(key) && i < aliasindex) {
                delaytime = key;
            }
            if (isnumber(key) && i > aliasindex) {
                var_6d232fb3 = key;
            }
        }
    } else if (isstring(var_7483db1c)) {
        soundalias = var_7483db1c;
    }
    var_aa8031af = array(delaytime, soundalias, var_6d232fb3);
    return var_aa8031af;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0x981e722b, Offset: 0x1f18
// Size: 0x518
function private function_75a3b79f(targ) {
    targets = [];
    if (!isdefined(targ)) {
        foreach (player in function_2b2b83dc()) {
            tagname = player function_bf7c949("j_head");
            if (player.model != "" && tagname != "") {
                targets[targets.size] = [player, tagname];
                continue;
            }
            targets[targets.size] = player;
        }
    } else if (isarray(targ)) {
        if (function_81fac19d(targ.size == 0, "snd: zero-sized array used for targ")) {
            return undefined;
        } else if (targ.size == 2) {
            if (isentity(targ[0]) && isstring(targ[1])) {
                targets = [targ];
            } else if (isentity(targ[0]) && isvec(targ[1])) {
                targets = [targ];
            } else if (isentity(targ[0]) && !isdefined(targ[1])) {
                targets = [targ[0]];
            } else if (isstring(targ[0]) && isstring(targ[1])) {
                var_97a051a0 = function_1114d717(targ[0]);
                var_bdf30fa1 = function_1114d717(targ[1]);
                targets = arraycombine(var_97a051a0, var_bdf30fa1);
            } else {
                targets = targ;
            }
        } else {
            targets = [];
            foreach (key in targ) {
                if (isentity(key) || isstruct(key) && isdefined(key.origin) || isvec(key) || isarray(key)) {
                    targets[targets.size] = key;
                    continue;
                }
                if (isstring(key)) {
                    var_f7a0383c = function_1114d717(key);
                    foreach (t in var_f7a0383c) {
                        targets[targets.size] = t;
                    }
                }
            }
        }
    } else if (isstring(targ)) {
        targets = function_1114d717(targ);
    } else {
        targets = [targ];
    }
    return targets;
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0xcb89ceb7, Offset: 0x2438
// Size: 0xa0a
function private function_2639b80c(soundtype, soundalias, var_9ab0e73a) {
    if (function_81fac19d(!did_init(), "snd was not initialized!")) {
        /#
            if (function_f984063f()) {
                debugbreak();
            }
        #/
        return undefined;
    }
    if (function_81fac19d(!isdefined(soundalias), "snd_play: sound alias undefined")) {
        return undefined;
    }
    level._snd._callbacks[#"stop"] = &stop;
    assert(isdefined(level._snd.var_d37e94ca), "<unknown string>");
    soundtype = function_ea2f17d1(soundtype, level._snd.var_d37e94ca);
    var_2b6903e6 = [];
    targets = [];
    var_8e0014a9 = function_9a3d9ff2(soundalias);
    assert(isarray(var_8e0014a9) && var_8e0014a9.size == 3, "<unknown string>");
    delaytime = var_8e0014a9[0];
    soundalias = var_8e0014a9[1];
    var_6d232fb3 = var_8e0014a9[2];
    var_99e65ecf = undefined;
    if (function_81fac19d(isstring(soundalias) && soundalias == "", "snd_play: empty sound alias \"\"")) {
        return undefined;
    }
    assert(isstring(soundalias) || ishash(soundalias), "<unknown string>");
    islooping = soundislooping(soundalias);
    var_b0ef895d = soundexists(soundalias);
    if (function_81fac19d(!var_b0ef895d, "snd: sound alias '" + soundalias + "' does not exist!")) {
        /#
            if (function_f984063f()) {
                debugbreak();
            }
        #/
        return undefined;
    }
    if (!isdefined(var_6d232fb3)) {
        if (islooping) {
            var_6d232fb3 = level._snd.var_90903fc0;
        } else {
            var_6d232fb3 = 0;
        }
    }
    if (isdefined(var_6d232fb3) && var_6d232fb3 > 0) {
        var_99e65ecf = 0;
    }
    assert(isdefined(var_6d232fb3));
    targets = function_75a3b79f(var_9ab0e73a);
    if (function_81fac19d(!isdefined(targets), "snd: undefined targets")) {
        return undefined;
    }
    foreach (t in targets) {
        var_605838f4 = undefined;
        var_e330010e = undefined;
        var_1d25915 = undefined;
        var_afe43979 = undefined;
        ise = isentity(t);
        isr = function_3132f113(t);
        iss = isstruct(t);
        isv = isvec(t);
        var_9d775bb8 = isstring(t);
        var_a9c8f46f = isarray(t);
        if (ise) {
            var_605838f4 = t;
            var_1d25915 = (0, 0, 0);
        } else if (function_81fac19d(isr, "snd: could not play on removed entity")) {
            continue;
        } else if (iss) {
            if (function_81fac19d(!isdefined(t.origin), "snd: sound alias '" + soundalias + "' played on struct with no origin!")) {
                continue;
            } else {
                var_1d25915 = t.origin;
            }
        } else if (isv) {
            var_1d25915 = t;
        } else if (var_9d775bb8) {
        } else if (isarray(t)) {
            if (!isdefined(t[0]) || function_3132f113(t[0])) {
                continue;
            } else if (isentity(t[0]) && isstring(t[1])) {
                var_605838f4 = t[0];
                var_e330010e = t[1];
                var_1d25915 = (0, 0, 0);
            } else if (isentity(t[0]) && isvec(t[1])) {
                var_605838f4 = t[0];
                var_1d25915 = t[1];
            } else if (function_81fac19d(1, "snd: unexpected target array combination")) {
            }
        }
        switch (soundtype) {
        default:
            assert(0, "<unknown string>");
            break;
        case #"gentity":
            var_afe43979 = namespace_afa8e18b::function_85daf9f0(soundalias, var_1d25915, var_605838f4, var_e330010e);
            if (isentity(var_afe43979)) {
                namespace_afa8e18b::function_b5959278(var_afe43979, var_1d25915, var_605838f4, var_e330010e);
                function_aaee1de3(#"gentity", var_afe43979.soundkey, var_afe43979);
                var_afe43979 thread function_e12570db();
            }
            break;
        case #"centity":
            var_afe43979 = namespace_afa8e18b::function_5275752c(soundalias, var_1d25915, var_605838f4, var_e330010e);
            if (isentity(var_afe43979)) {
                namespace_afa8e18b::function_2761fc04(var_afe43979, var_1d25915, var_605838f4, var_e330010e);
                function_aaee1de3(#"centity", var_afe43979.soundkey, var_afe43979);
                var_afe43979 thread function_e12570db();
            }
            break;
        }
        if (isdefined(var_afe43979) && function_a6779cbd(var_afe43979)) {
            switch (soundtype) {
            case #"gentity":
            default:
                var_afe43979 thread namespace_afa8e18b::function_2dde45d9(var_afe43979, soundalias, var_99e65ecf, delaytime);
                break;
            case #"centity":
                var_afe43979 thread namespace_afa8e18b::function_bb749fc3(var_afe43979, soundalias, var_99e65ecf, delaytime);
                break;
            }
            if (var_6d232fb3 > 0) {
                if (soundtype == #"gentity" && isdefined(var_605838f4)) {
                    delaytime += 0.05;
                }
                var_afe43979 thread function_6f736cc1(var_afe43979, var_6d232fb3, delaytime);
            }
            var_2b6903e6[var_2b6903e6.size] = var_afe43979;
        }
    }
    if (function_81fac19d(var_2b6903e6.size == 0, "snd: zero sound objects played")) {
        return undefined;
    }
    return function_31bcd153(var_2b6903e6);
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x6 linked
// Checksum 0x94f18992, Offset: 0x2e50
// Size: 0x32a
function private function_f937a6f7(var_afe43979, var_24ea4e17) {
    if (function_81fac19d(!isdefined(level._snd) || !isdefined(level._snd.var_d37e94ca), "snd was not initialized")) {
        return;
    }
    if (function_81fac19d(!isdefined(var_afe43979) || function_3132f113(var_afe43979), "snd_stop with undefined soundObject")) {
        return;
    }
    if (function_81fac19d(!isdefined(var_afe43979.soundtype), "snd_stop with unknown type")) {
        return;
    }
    assert(isdefined(level._snd.var_d37e94ca), "<unknown string>");
    assert(isdefined(var_afe43979), "<unknown string>");
    assert(isdefined(var_afe43979.soundtype), "<unknown string>");
    if (var_afe43979.soundtype == #"emitter") {
        var_afe43979 notify(#"hash_57df777459b5086");
        var_afe43979.soundtype = undefined;
        var_afe43979.soundalias = undefined;
        var_afe43979.var_90c86b97 = undefined;
        var_afe43979.origin = undefined;
        var_afe43979.angles = undefined;
        return;
    }
    var_afe43979 endon(#"death");
    soundtype = var_afe43979.soundtype;
    soundalias = var_afe43979.soundalias;
    if (isdefined(soundalias) && soundislooping(var_afe43979.soundalias) && !isdefined(var_24ea4e17)) {
        var_24ea4e17 = level._snd.var_90903fc0;
    }
    if (isdefined(soundalias) && isdefined(var_24ea4e17) && is_true(level._snd.var_8c37ff34)) {
        function_db78159d(var_afe43979, 0, var_24ea4e17);
        wait(var_24ea4e17);
        waitframe(1);
        if (function_3132f113(var_afe43979)) {
            return;
        }
    }
    switch (soundtype) {
    case #"gentity":
    default:
        namespace_afa8e18b::function_9f156b27(var_afe43979, var_24ea4e17);
        break;
    case #"centity":
        namespace_afa8e18b::function_273d939b(var_afe43979, var_24ea4e17);
        break;
    }
}

// Namespace snd/namespace_b63b5857
// Params 4, eflags: 0x6 linked
// Checksum 0xef88feb5, Offset: 0x3188
// Size: 0x6c
function private function_7b540bad(var_afe43979, notifyentity, notifystring, var_24ea4e17) {
    var_afe43979 endon(#"death");
    notifyentity waittill(#"death", notifystring);
    function_f937a6f7(var_afe43979, var_24ea4e17);
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0xec8316ad, Offset: 0x3200
// Size: 0x5c
function private function_78a6b95b(var_afe43979, var_1ed3fdf1, var_24ea4e17) {
    var_afe43979 endon(#"death");
    level waittill(var_1ed3fdf1);
    function_f937a6f7(var_afe43979, var_24ea4e17);
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0xf3014497, Offset: 0x3268
// Size: 0x114
function private function_6f736cc1(var_afe43979, var_6d232fb3, delaytime) {
    if (function_81fac19d(!isdefined(var_afe43979) || function_3132f113(var_afe43979), "snd: fade in on deleted gentity!")) {
        return;
    }
    assert(isdefined(var_afe43979));
    var_afe43979 endon(#"death");
    var_afe43979 endon(#"hash_501fa67f084af993");
    delaytime = function_ea2f17d1(delaytime, 0);
    function_db78159d(var_afe43979, 0, 0);
    if (delaytime > 0) {
        wait(delaytime);
    }
    function_db78159d(var_afe43979, 1, var_6d232fb3);
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0xef700f0d, Offset: 0x3388
// Size: 0x100
function private function_5eb4c6d(target) {
    position = undefined;
    if (function_e3a36342(target)) {
        position = target function_efda2d6d();
    } else if (!function_3132f113(target) && isdefined(target.origin)) {
        position = target.origin;
    } else if (isvec(target) == 1) {
        position = target;
    } else {
        assert(0);
    }
    assert(isvec(position) == 1, "<unknown string>");
    return position;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0xb7f0e344, Offset: 0x3490
// Size: 0x262
function private function_cdc85ae5(var_4be7fc38) {
    var_3c67b910 = randomfloatrange(-180, 180);
    rotation = 0;
    if (isarray(var_4be7fc38)) {
        if (var_4be7fc38.size == 1) {
            var_4be7fc38 = var_4be7fc38[0];
        } else if (var_4be7fc38.size == 2) {
            rotation = function_84fc754d(var_4be7fc38);
        } else if (var_4be7fc38.size == 3) {
            var_3c67b910 = var_4be7fc38[0];
            rotation = function_84fc754d(var_4be7fc38);
            var_9b234989 = [var_4be7fc38[1], var_4be7fc38[2]];
            rotation = function_84fc754d(var_9b234989);
        } else if (var_4be7fc38.size >= 4) {
            var_e0d0816c = [var_4be7fc38[0], var_4be7fc38[1]];
            var_3c67b910 = function_84fc754d(var_e0d0816c);
            var_9b234989 = [var_4be7fc38[2], var_4be7fc38[3]];
            rotation = function_84fc754d(var_9b234989);
        }
    }
    if (isnumber(var_4be7fc38) && var_4be7fc38 != 0) {
        var_242eda36 = abs(var_4be7fc38);
        min = -1 * var_242eda36;
        max = var_242eda36;
        rotation = randomfloatrange(min, max);
    }
    return array(var_3c67b910, rotation);
}

// Namespace snd/namespace_b63b5857
// Params 5, eflags: 0x6 linked
// Checksum 0xb6ddabb8, Offset: 0x3700
// Size: 0x330
function private function_1ce48d0f(target, dist, var_3c67b910, var_cbf878e6, rotation) {
    self endon(#"death");
    self endon(#"sounddone");
    if (isdefined(rotation) == 0 || rotation == 0) {
        return;
    }
    assert(isentity(target) || isstruct(target) && isdefined(target.origin) || isvec(target), "<unknown string>");
    assert(isnumber(dist), "<unknown string>");
    assert(isnumber(var_3c67b910), "<unknown string>");
    assert(isnumber(rotation), "<unknown string>");
    /#
        if (function_95c9af4b() > 2) {
            var_97fd701c = randomfloat(1);
            var_c1cc0d4 = randomfloat(1);
            var_2078e37a = randomfloat(1);
            var_c8cfc057 = (var_97fd701c, var_c1cc0d4, var_2078e37a);
            var_c8cfc057 = vectornormalize(var_c8cfc057);
            function_31d6fc52(self, var_c8cfc057);
        }
    #/
    movetime = function_6cfa7975() * 3;
    var_ea6c6b8e = rotation * movetime;
    centerorigin = function_5eb4c6d(target);
    while (isentity(self) && isdefined(target) && isdefined(target.origin)) {
        centerorigin = function_5eb4c6d(target);
        position = function_160366e9(centerorigin, dist, var_3c67b910, var_cbf878e6);
        self moveto(position, movetime, 0, 0);
        var_3c67b910 += var_ea6c6b8e;
        wait(movetime);
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x4
// Checksum 0xc0769b05, Offset: 0x3a38
// Size: 0x1b0
function private function_d1e7d514(emitter) {
    iss = isstruct(emitter);
    hast = isdefined(emitter.soundtype);
    ist = emitter.soundtype == #"emitter";
    var_69bd016 = iss && hast && ist;
    if (function_81fac19d(var_69bd016 == 0, "snd emitter stop not an emitter")) {
        return;
    }
    assert(isdefined(emitter.soundkey), "<unknown string>");
    assert(isdefined(level._snd.var_9e1f6b3e), "<unknown string>");
    assert(isdefined(level._snd.var_90a7c764), "<unknown string>");
    level._snd.var_90a7c764[emitter.soundkey] = undefined;
    emitter notify(#"hash_57df777459b5086");
    emitter.soundtype = undefined;
    emitter.soundalias = undefined;
    emitter.var_90c86b97 = undefined;
    emitter.origin = undefined;
    emitter.angles = undefined;
    emitter = undefined;
}

// Namespace snd/namespace_b63b5857
// Params 6, eflags: 0x6 linked
// Checksum 0x33676bd6, Offset: 0x3bf0
// Size: 0x500
function private function_dcc0344(soundalias, target, var_8fc5ff4a, var_6c6d0c21, var_4be7fc38, var_ad8975b4) {
    self endon(#"hash_57df777459b5086");
    level endon(#"hash_57df777459b5086");
    assert(isdefined(target) && isarray(target) == 0, "<unknown string>");
    if (isvec(target)) {
        target = self;
    }
    targetposition = undefined;
    position = undefined;
    dist = function_84fc754d(function_ea2f17d1(var_6c6d0c21, 0));
    var_a7685aa3 = function_cdc85ae5(var_4be7fc38);
    assert(isarray(var_a7685aa3) && var_a7685aa3.size != 0);
    var_3c67b910 = var_a7685aa3[0];
    rotation = var_a7685aa3[1];
    var_cbf878e6 = function_84fc754d(function_ea2f17d1(var_ad8975b4, 0));
    if (isarray(var_8fc5ff4a) && var_8fc5ff4a.size >= 4) {
        assert(var_8fc5ff4a.size == 4, "<unknown string>");
        var_f9baa88 = [var_8fc5ff4a[0], var_8fc5ff4a[1]];
        spawntime = function_84fc754d(var_f9baa88, 0.05);
        wait(spawntime);
        targetposition = function_5eb4c6d(target);
        position = function_160366e9(targetposition, dist, var_3c67b910, var_cbf878e6);
        var_eabfdd64 = play(soundalias, position);
        if (isdefined(var_eabfdd64) && isdefined(dist) && dist > 0 && isdefined(rotation) && rotation != 0) {
            var_eabfdd64 thread function_1ce48d0f(target, dist, var_3c67b910, rotation);
            var_8fc5ff4a = [var_8fc5ff4a[2], var_8fc5ff4a[3]];
        }
    }
    while (true) {
        spawntime = function_84fc754d(var_8fc5ff4a, 0.05);
        wait(spawntime);
        if (!isdefined(target)) {
            break;
        }
        dist = function_84fc754d(function_ea2f17d1(var_6c6d0c21, 0));
        var_a7685aa3 = function_cdc85ae5(var_4be7fc38);
        assert(isarray(var_a7685aa3) && var_a7685aa3.size != 0);
        var_3c67b910 = var_a7685aa3[0];
        rotation = var_a7685aa3[1];
        var_cbf878e6 = function_84fc754d(function_ea2f17d1(var_ad8975b4, 0));
        targetposition = function_5eb4c6d(target);
        position = function_160366e9(targetposition, dist, var_3c67b910, var_cbf878e6);
        var_eabfdd64 = play(soundalias, position);
        if (isdefined(var_eabfdd64) && isdefined(dist) && dist > 0 && isdefined(rotation) && rotation != 0) {
            var_eabfdd64 thread function_1ce48d0f(target, dist, var_3c67b910, var_cbf878e6, rotation);
        }
    }
}

// Namespace snd/namespace_b63b5857
// Params 6, eflags: 0x2 linked
// Checksum 0x919229dd, Offset: 0x40f8
// Size: 0x47a
function emitter(soundalias, target, spawntime, var_6c6d0c21, rotation, var_cbf878e6) {
    emitters = [];
    targets = target;
    islooping = soundislooping(soundalias);
    var_f27b1688 = isdefined(islooping);
    if (function_81fac19d(!var_f27b1688, "snd_emitter soundalias does not exist: " + soundalias)) {
        return undefined;
    }
    if (function_81fac19d(islooping, "snd_emitter cannot emit looping alias: " + soundalias)) {
        return undefined;
    }
    if (!isdefined(level._snd.var_9e1f6b3e)) {
        level._snd.var_9e1f6b3e = 1792;
        level._snd.var_90a7c764 = [];
    }
    assert(isdefined(level._snd.var_9e1f6b3e), "<unknown string>");
    assert(soundexists(soundalias), "<unknown string>" + soundalias);
    assert(isdefined(target), "<unknown string>");
    assert(isdefined(spawntime), "<unknown string>");
    if (isarray(targets) == 0) {
        targets = [target];
    }
    foreach (t in targets) {
        ise = isentity(t);
        isv = isvec(t);
        if (ise || isv) {
            emitter = spawnstruct();
            emitter.soundtype = #"emitter";
            emitter.soundalias = soundalias;
            emitter.spawntime = spawntime;
            emitter.var_6c6d0c21 = var_6c6d0c21;
            emitter.rotation = rotation;
            emitter.var_cbf878e6 = var_cbf878e6;
            level._snd.var_9e1f6b3e = int(level._snd.var_9e1f6b3e + 1);
            emitter.soundkey = "" + level._snd.var_9e1f6b3e;
            level._snd.var_90a7c764[emitter.soundkey] = emitter;
            if (ise) {
                emitter.var_90c86b97 = t;
            }
            if (isv) {
                emitter.origin = t;
                emitter.angles = (0, 0, 0);
            }
            emitter thread function_dcc0344(soundalias, t, spawntime, var_6c6d0c21, rotation, var_cbf878e6);
            emitters[emitters.size] = emitter;
            continue;
        }
        function_81fac19d(ise == 0 && isv == 0, "snd_emitter target '" + t + "' was not an entity or vector.");
    }
    function_81fac19d(emitters.size == 0, "snd_emitter resulted in zero emitter targets");
    return function_31bcd153(emitters);
}

// Namespace snd/namespace_b63b5857
// Params 5, eflags: 0x6 linked
// Checksum 0x1b21125, Offset: 0x4580
// Size: 0x154
function private function_e94a63b7(alias, tag, ends_on_death, var_50bba55f, *radio_dialog) {
    if (!isalive(self)) {
        return;
    }
    target = [self, ends_on_death];
    snd = function_2639b80c(level._snd.var_d37e94ca, tag, target);
    /#
        if (isdefined(level.player_radio_emitter) && self == level.player_radio_emitter) {
            println("<unknown string>" + tag);
        }
    #/
    if (isdefined(var_50bba55f)) {
        assert(var_50bba55f, "<unknown string>");
        function_f4f3a2a(snd, self);
    }
    function_2fdc4fb(snd);
    if (isdefined(radio_dialog)) {
        self notify(radio_dialog);
    }
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x6 linked
// Checksum 0xa808b612, Offset: 0x46e0
// Size: 0x34
function private function_b7609ab(alias, var_50bba55f) {
    self function_e94a63b7(alias, undefined, undefined, var_50bba55f);
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0x8864ccc7, Offset: 0x4720
// Size: 0xec
function private function_e9b666c7(soundalias, notifystring, var_741da363) {
    var_741da363 = function_ea2f17d1(var_741da363, 0);
    if (!isalive(self)) {
        return;
    }
    target = [self, "j_head"];
    snd = function_2639b80c(level._snd.var_d37e94ca, soundalias, target);
    if (var_741da363) {
        function_f4f3a2a(snd, self);
    }
    if (isdefined(notifystring)) {
        self thread function_61c048e7(snd, notifystring);
    }
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x6 linked
// Checksum 0xd1de0888, Offset: 0x4818
// Size: 0x34
function private function_61c048e7(snd, notifystring) {
    function_2fdc4fb(snd);
    self notify(notifystring);
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0x2c552db1, Offset: 0x4858
// Size: 0x1ae
function private function_95d9f208(notetrack) {
    prefix = getsubstr(notetrack, 0, 3);
    if (prefix == "ps_") {
        alias = getsubstr(notetrack, 3);
        params = strtok(alias, ",");
        if (params.size < 2) {
            self thread function_e94a63b7(alias, undefined, 1);
        } else {
            self thread function_e94a63b7(params[0], params[1], 1);
        }
        return 1;
    }
    if (prefix == "vo_") {
        alias = getsubstr(notetrack, 3);
        if (isdefined(self.anim_playsound_func)) {
            self thread [[ self.anim_playsound_func ]](alias, "j_head", 1);
        } else {
            self thread function_e94a63b7(alias, "j_head", 1, alias);
        }
        return 1;
    }
    if (isdefined(level._snd.fnnotetrackprefixhandler)) {
        return self [[ level._snd.fnnotetrackprefixhandler ]](notetrack);
    }
    return 0;
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0x9195fb44, Offset: 0x4a10
// Size: 0x48a
function function_13b51154(curve, size) {
    lut = [];
    step = 1 / (size - 1);
    for (i = 0; i < size; i++) {
        x = i * step;
        y = 0;
        switch (curve) {
        default:
            assert(0);
            break;
        case #"default_vfcurve":
        case #"linear":
            lut[0] = 0;
            lut[1] = 1;
            return lut;
        case #"sine":
            y = 0.5 + cos(x * 180) * -0.5;
        case #"easein":
            y = 1 - cos(x * 90);
            break;
        case #"easeout":
            y = sin(x * 90);
            break;
        case #"easeinout":
            y = 3 * pow(x, 2) - 2 * pow(x, 3);
            break;
        case #"circularin":
            y = 1 - sqrt(1 - x * x);
            break;
        case #"circularout":
            y = sqrt(1 - (1 - x) * (1 - x));
            break;
        case #"exponential_40db":
            lut[0] = 0;
            lut[1] = 0.0158489;
            lut[2] = 0.0251189;
            lut[3] = 0.0398107;
            lut[4] = 0.0630957;
            lut[5] = 0.1;
            lut[6] = 0.158489;
            lut[7] = 0.251189;
            lut[8] = 0.398107;
            lut[9] = 0.630957;
            lut[10] = 1;
            return lut;
        case #"exponential_60db":
            lut[0] = 0;
            lut[1] = 1.97531e-05;
            lut[2] = 0.000316049;
            lut[3] = 0.0016;
            lut[4] = 0.00505679;
            lut[5] = 0.0123457;
            lut[6] = 0.0256;
            lut[7] = 0.0474272;
            lut[8] = 0.0809086;
            lut[9] = 0.1296;
            lut[10] = 0.197531;
            lut[11] = 0.289205;
            lut[12] = 0.4096;
            lut[13] = 0.564168;
            lut[14] = 0.758835;
            lut[15] = 1;
            return lut;
        }
        lut[lut.size] = y;
    }
    return lut;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0x7ed533e9, Offset: 0x4ea8
// Size: 0x214
function function_3ffa0089(size) {
    size = function_ea2f17d1(size, 11);
    level.var_c386bd24 = [];
    level.var_c386bd24[#"linear"] = function_13b51154("linear", size);
    level.var_c386bd24[#"sine"] = function_13b51154("sine", size);
    level.var_c386bd24[#"easein"] = function_13b51154("easein", size);
    level.var_c386bd24[#"easeout"] = function_13b51154("easeout", size);
    level.var_c386bd24[#"easeinout"] = function_13b51154("easeinout", size);
    level.var_c386bd24[#"circularin"] = function_13b51154("circularin", size);
    level.var_c386bd24[#"circularout"] = function_13b51154("circularout", size);
    level.var_c386bd24[#"exponential_40db"] = function_13b51154("exponential_40db", size);
    level.var_c386bd24[#"exponential_60db"] = function_13b51154("exponential_60db", size);
    level.var_c386bd24[#"default_vfcurve"] = function_13b51154("default_vfcurve", size);
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0xebb171a9, Offset: 0x50c8
// Size: 0x4e
function private function_d3f407d6(alias) {
    if (isdefined(alias) == 0) {
        return "easeout";
    }
    switch (alias) {
    case #"xfade":
        return "easeout";
    }
    return alias;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xb06cba9, Offset: 0x5120
// Size: 0x4a
function function_fc955f31(curve) {
    lut = level.var_c386bd24[function_d3f407d6(curve)];
    if (isdefined(lut)) {
        return lut.size;
    }
    return 0;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0x57543859, Offset: 0x5178
// Size: 0x38
function function_9020a959(curve) {
    lut = level.var_c386bd24[curve];
    if (isdefined(lut)) {
        return true;
    }
    return false;
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0x80bdb9be, Offset: 0x51b8
// Size: 0x1f4
function function_b918d683(inval, curve) {
    curve = function_d3f407d6(curve);
    lut = level.var_c386bd24[curve];
    assert(isdefined(lut), "<unknown string>" + curve);
    inval = math::clamp(inval, 0, 1);
    outval = 0;
    step = 1 / (lut.size - 1);
    if (inval == 0) {
        return 0;
    }
    if (inval == 1) {
        return 1;
    }
    for (i = 0; i < lut.size; i++) {
        stepx = i * step;
        stepn = (i + 1) * step;
        if (inval >= stepx && inval <= stepn) {
            var_ffc8189f = inval - stepx;
            var_5cf5d319 = stepn - stepx;
            diff = var_ffc8189f / var_5cf5d319;
            var_eddc974c = lut[i];
            valn = lut[i + 1];
            var_b5540d92 = valn - var_eddc974c;
            outval = var_eddc974c + var_b5540d92 * diff;
            break;
        }
    }
    return outval;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0x631c75e1, Offset: 0x53b8
// Size: 0x1be
function private function_bc4f45dd(name) {
    if (isdefined(self.var_3dc056c0) == 0) {
        return;
    }
    if (isdefined(name)) {
        if (isdefined(self.var_3dc056c0[name])) {
            if (isdefined(self.var_3dc056c0[name].var_99b9dbe1)) {
                self [[ self.var_3dc056c0[name].var_99b9dbe1 ]](self.var_3dc056c0[name].userdata);
            }
            self.var_3dc056c0[name] = undefined;
        }
    } else {
        foreach (p in self.var_3dc056c0) {
            if (isdefined(p.var_99b9dbe1)) {
                self [[ p.var_99b9dbe1 ]](p.userdata);
            }
            self.var_3dc056c0 = undefined;
        }
    }
    if (isdefined(self.var_3dc056c0) == 0 || self.var_3dc056c0.size == 0) {
        arrayremovevalue(level.var_ba9b4ed, self, 1);
        arrayremovevalue(level.var_ba9b4ed, undefined, 1);
        self.var_3dc056c0 = undefined;
        self.var_b7790cd8 = undefined;
        self notify(#"hash_342a5e5858f5a58f");
    }
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x6 linked
// Checksum 0xef8ea55, Offset: 0x5580
// Size: 0x4c
function private function_edd37e50() {
    self endon(#"hash_342a5e5858f5a58f");
    self waittill(#"death", #"disconnect");
    self function_bc4f45dd();
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x6 linked
// Checksum 0x6d680a61, Offset: 0x55d8
// Size: 0x314
function private function_8eaaf665() {
    if (isdefined(self.var_b7790cd8)) {
        return;
    }
    self.var_b7790cd8 = 1;
    self thread function_edd37e50();
    self endon(#"disconnect");
    self endon(#"hash_342a5e5858f5a58f");
    while (function_3132f113(self) == 0 && isdefined(self.var_3dc056c0) && self.var_3dc056c0.size > 0) {
        now = gettime();
        foreach (p in self.var_3dc056c0) {
            p.isprocessing = 1;
            if (isdefined(p.var_b90f380f)) {
                assert(isentity(self), "<unknown string>");
                p.inputvalue = self [[ p.var_b90f380f ]](p.userdata);
                assert(gettime() == now, "<unknown string>");
            }
            if (isdefined(p.var_f171f012)) {
                if (p.userdata.size > 0) {
                    assert(p.var_f171f012.size == p.userdata.size, "<unknown string>");
                }
                foreach (index, var_1ad28f57 in p.var_f171f012) {
                    if (isentity(self)) {
                        userdata = undefined;
                        if (p.userdata.size > 0) {
                            userdata = p.userdata[index];
                        }
                        self thread [[ var_1ad28f57 ]](p.inputvalue, userdata);
                    }
                }
            }
            p.isprocessing = undefined;
        }
        waitframe(1);
    }
    if (function_3132f113(self)) {
        self function_bc4f45dd();
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0xb1104fda, Offset: 0x58f8
// Size: 0x124
function private function_ef12a0f5(name) {
    if (isdefined(level.var_ba9b4ed) == 0) {
        level.var_ba9b4ed = [];
    }
    assert(isarray(level.var_ba9b4ed), "<unknown string>");
    if (isdefined(self.var_3dc056c0) == 0) {
        self.var_3dc056c0 = [];
    }
    assert(isarray(self.var_3dc056c0), "<unknown string>");
    if (isdefined(self.var_3dc056c0[name]) == 0) {
        self.var_3dc056c0[name] = spawnstruct();
    }
    if (isinarray(level.var_ba9b4ed, self) == 0) {
        level.var_ba9b4ed[level.var_ba9b4ed.size] = self;
    }
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0x103979e0, Offset: 0x5a28
// Size: 0x6c
function function_67f723dd(name, var_b90f380f) {
    self function_ef12a0f5(name);
    self.var_3dc056c0[name].var_b90f380f = var_b90f380f;
    self.var_3dc056c0[name].inputvalue = undefined;
    self thread function_8eaaf665();
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x2 linked
// Checksum 0x51b7a4f5, Offset: 0x5aa0
// Size: 0x244
function function_fae704b2(name, var_1ad28f57, userdata) {
    self function_ef12a0f5(name);
    if (isdefined(self.var_3dc056c0[name].var_f171f012) == 0) {
        self.var_3dc056c0[name].var_f171f012 = [];
    }
    assert(isdefined(self.var_3dc056c0[name]), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(self.var_3dc056c0[name].var_f171f012), "<unknown string>");
    assert(isarray(self.var_3dc056c0[name].var_f171f012), "<unknown string>");
    var_68ec0ce1 = self.var_3dc056c0[name].var_f171f012.size;
    self.var_3dc056c0[name].var_f171f012[var_68ec0ce1] = var_1ad28f57;
    if (isdefined(self.var_3dc056c0[name].userdata) == 0) {
        self.var_3dc056c0[name].userdata = [];
    }
    if (isinarray(self.var_3dc056c0[name].userdata, userdata) == 0) {
        var_42547dd5 = self.var_3dc056c0[name].userdata.size;
        self.var_3dc056c0[name].userdata[var_42547dd5] = userdata;
    } else {
        /#
            if (function_d78e3644()) {
                debugbreak();
            }
        #/
    }
    self thread function_8eaaf665();
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0x7352a39d, Offset: 0x5cf0
// Size: 0x98
function private function_cb11f45c(name, startcallback, var_99b9dbe1) {
    self function_ef12a0f5(name);
    self.var_3dc056c0[name].startcallback = startcallback;
    self.var_3dc056c0[name].var_99b9dbe1 = var_99b9dbe1;
    if (isdefined(self.var_3dc056c0[name].startcallback)) {
        self [[ self.var_3dc056c0[name].startcallback ]]();
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xc89cca6, Offset: 0x5d90
// Size: 0x24
function function_79d9c57d(name) {
    self function_bc4f45dd(name);
}

// Namespace snd/namespace_b63b5857
// Params 6, eflags: 0x2 linked
// Checksum 0x6bba294c, Offset: 0x5dc0
// Size: 0x7c
function function_3e356217(name, startcallback, var_b90f380f, var_1ad28f57, var_99b9dbe1, userdata) {
    self function_cb11f45c(name, startcallback, var_99b9dbe1);
    self function_67f723dd(name, var_b90f380f);
    self function_fae704b2(name, var_1ad28f57, userdata);
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xc6ce75d0, Offset: 0x5e48
// Size: 0x9e
function function_e6dfc446(name) {
    if (isdefined(self.var_3dc056c0) && isdefined(self.var_3dc056c0[name]) && isdefined(self.var_3dc056c0[name].var_b90f380f)) {
        p = self.var_3dc056c0[name];
        if (isdefined(p.inputvalue)) {
            return p.inputvalue;
        } else {
            return self [[ p.var_b90f380f ]](p.userdata);
        }
    }
    return undefined;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xe8ad1b6d, Offset: 0x5ef0
// Size: 0x54
function function_e74190aa(name) {
    if (isdefined(self.var_3dc056c0) && isarray(self.var_3dc056c0) && isdefined(self.var_3dc056c0[name])) {
        return true;
    }
    return false;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0x4029ec72, Offset: 0x5f50
// Size: 0xc0
function function_e94ea06d(var_b90f380f) {
    if (isdefined(self.var_3dc056c0) && isarray(self.var_3dc056c0)) {
        foreach (p in self.var_3dc056c0) {
            if (p.var_b90f380f == var_b90f380f) {
                return true;
            }
        }
    }
    return false;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0x21e82338, Offset: 0x6018
// Size: 0x122
function function_c0e3d9aa(*userdata) {
    assert(isdefined(self.origin));
    now = gettime();
    if (isdefined(self.origin_velocity_time) && self.origin_velocity_time == now) {
        assert(isdefined(self.origin_velocity));
        return self.origin_velocity;
    }
    if (isdefined(self.origin_last) == 0) {
        self.origin_last = self.origin;
    }
    if (isentity(self)) {
        self.origin_velocity = 0.0166667 * self getvelocity();
    } else {
        self.origin_velocity = self.origin - self.origin_last;
    }
    self.origin_velocity_time = now;
    self.origin_last = self.origin;
    return self.origin_velocity;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0x4320f332, Offset: 0x6148
// Size: 0x282
function function_8764d0b2(*userdata) {
    assert(isdefined(self.origin));
    velocity = self function_c0e3d9aa();
    self.var_e6d478c5 = length(velocity);
    /#
        if (function_95c9af4b() >= 2) {
            var_8340e682 = self.var_e6d478c5;
            if (var_8340e682 < 0.001) {
                var_8340e682 = 0;
            }
            var_38f9ec40 = function_d6053a8f(var_8340e682 * function_869cb8c6() * 0.0568182, 1) + "<unknown string>" + function_d6053a8f(var_8340e682, 1) + "<unknown string>";
            debugcolor = getdvarvector(#"hash_3b9f89c8082a9915", (1, 1, 1));
            var_7afd95ae = 0.9;
            var_74500ef = var_7afd95ae * var_7afd95ae;
            var_c75cd11f = getdvarfloat(#"hash_182296346d138cf8");
            colorscale = getdvarfloat(#"hash_3944b771315157c1", 1);
            debugcolor = function_2677a7e2(debugcolor, colorscale * 10);
            debugframes = 1;
            var_8764e9e6 = (0, 0, 4 * var_c75cd11f * 24);
            function_ac033c46(var_38f9ec40, self.origin + var_8764e9e6, -1 * var_c75cd11f, "<unknown string>", debugcolor, var_7afd95ae, (0, 0, 0), var_74500ef, (1, 1, 1), var_74500ef, debugframes);
        }
    #/
    return self.var_e6d478c5;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0x54b55633, Offset: 0x63d8
// Size: 0x1f2
function function_29584494(*userdata) {
    assert(isdefined(self.angles));
    now = gettime();
    if (isdefined(self.var_9254021f) && self.var_9254021f == now) {
        assert(isdefined(self.var_c60cbb0f));
        return self.var_c60cbb0f;
    }
    angles = self.angles;
    if (function_e3a36342(self)) {
        angles = self function_3d31768f();
    } else if (isdefined(self.model)) {
        hastag = 0;
        if (hastag == 0) {
            angles = self gettagangles("tag_origin");
        }
    }
    if (angles[0] > 180) {
        angles -= (360, 0, 0);
    }
    if (angles[1] > 180) {
        angles -= (0, 360, 0);
    }
    if (angles[2] > 180) {
        angles -= (0, 0, 360);
    }
    if (isdefined(self.var_c60cbb0f) == 0) {
        self.var_c60cbb0f = angles;
    }
    if (isdefined(self.var_7ebe209e) == 0) {
        self.var_7ebe209e = angles;
    }
    self.var_7ebe209e = self.var_c60cbb0f;
    self.var_c60cbb0f = angles;
    return self.var_c60cbb0f;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0xc16a572, Offset: 0x65d8
// Size: 0x4e
function function_cf6a940f(userdata) {
    angles = function_29584494(userdata);
    self.var_1536fabb = angles - self.var_7ebe209e;
    return self.var_1536fabb;
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0x4ff11d2a, Offset: 0x6630
// Size: 0x8c
function private function_cebd7215(var_67f427c4, var_99e65ecf, var_358f1599) {
    var_67f427c4.snd = play(var_67f427c4.soundalias, var_67f427c4.target);
    function_db78159d(var_67f427c4.snd, var_99e65ecf, 0);
    function_964c3a03(var_67f427c4.snd, var_358f1599, 0);
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x6 linked
// Checksum 0x6bbbf092, Offset: 0x66c8
// Size: 0xe6
function private function_a3ee9bec(var_67f427c4, fadetime, var_a1c636fb) {
    if (isdefined(var_67f427c4) && isdefined(var_67f427c4.snd)) {
        fadetime = function_ea2f17d1(fadetime, 0);
        var_a1c636fb = function_ea2f17d1(var_a1c636fb, "easeinout");
        if (isdefined(fadetime) == 1 && fadetime > 0) {
            function_db78159d(var_67f427c4.snd, 0, fadetime, var_a1c636fb);
            wait(fadetime);
        }
        stop(var_67f427c4.snd);
        var_67f427c4.snd = undefined;
    }
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x6 linked
// Checksum 0xfe9f78c0, Offset: 0x67b8
// Size: 0x37a
function private function_a04fdd(inputvalue, userdata) {
    speed = inputvalue;
    v = userdata;
    if (speed < 0.01) {
        speed = 0;
    }
    var_53970876 = v.var_4da05e4e[#"speed"][0];
    var_56df0922 = v.var_4da05e4e[#"speed"][1];
    var_29305831 = v.var_4da05e4e[#"scale"][0];
    var_2b905459 = v.var_4da05e4e[#"scale"][1];
    var_bf018221 = v.var_4da05e4e[#"curve"][0];
    var_96fa4b31 = v.var_5c76982f[#"speed"][0];
    var_8d892f33 = v.var_5c76982f[#"speed"][1];
    var_f670290f = v.var_5c76982f[#"scale"][0];
    var_2f163596 = v.var_5c76982f[#"scale"][1];
    var_ede9da4b = v.var_5c76982f[#"curve"][0];
    volume = function_a0a15145(speed, var_53970876, var_56df0922, var_29305831, var_2b905459);
    pitch = function_a0a15145(speed, var_96fa4b31, var_8d892f33, var_f670290f, var_2f163596);
    if (isdefined(v.snd) == 1 && volume <= 0.001) {
        self thread function_a3ee9bec(v);
        return;
    } else if (isdefined(v.snd) == 0 && volume > 0.001) {
        function_cebd7215(v, volume, pitch);
        v.var_ca7e4f27 = speed;
        return;
    }
    if (isdefined(v.snd) && isdefined(v.var_ca7e4f27)) {
        var_7ea23e3e = abs(speed - v.var_ca7e4f27);
        if (var_7ea23e3e > 0.01) {
            function_db78159d(v.snd, volume, 0.05, var_bf018221);
            function_964c3a03(v.snd, pitch, 0.05, var_ede9da4b);
            v.var_ca7e4f27 = speed;
        }
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0x18fad9a, Offset: 0x6b40
// Size: 0xea
function private function_caa62515(userdata) {
    fadeout = self.var_f2acbf06;
    fadeoutcurve = self.var_436e97ed;
    if (isdefined(userdata) == 1) {
        foreach (v in userdata) {
            self thread function_a3ee9bec(v, fadeout, fadeoutcurve);
        }
    }
    self.var_a21eb7f9 = undefined;
    self.var_f2acbf06 = undefined;
    self.var_436e97ed = undefined;
    self.var_1ab997d2 = undefined;
}

// Namespace snd/namespace_b63b5857
// Params 4, eflags: 0x6 linked
// Checksum 0x65b77a1e, Offset: 0x6c38
// Size: 0x344
function private function_ebe7010d(target, soundalias, var_5c76982f, var_4da05e4e) {
    ent = undefined;
    islooping = soundislooping(soundalias);
    if (!isarray(target)) {
        ent = target;
    } else if (target.size > 0) {
        ent = target[0];
    }
    if (function_81fac19d(!isentity(ent), "snd_speed: target entity not found!")) {
        return;
    }
    if (function_81fac19d(!isdefined(islooping), "snd_speed: alias " + function_783b69(soundalias, "'") + " does not exist!")) {
        return;
    }
    if (function_81fac19d(!is_true(islooping), "snd_speed: alias " + function_783b69(soundalias, "'") + " is not looping!")) {
        return;
    }
    if (function_81fac19d(!isarray(var_5c76982f), "snd_speed: pitchDict is not an array!")) {
        return;
    }
    if (function_81fac19d(!isarray(var_4da05e4e), "snd_speed: volumeDict is not an array!")) {
        return;
    }
    var_67f427c4 = spawnstruct();
    var_67f427c4.soundalias = soundalias;
    var_67f427c4.target = target;
    var_67f427c4.var_5c76982f = var_5c76982f;
    var_67f427c4.var_4da05e4e = var_4da05e4e;
    var_67f427c4.var_5c76982f[#"curve"] = function_ea2f17d1(var_67f427c4.var_5c76982f[#"curve"], ["linear"]);
    var_67f427c4.var_4da05e4e[#"curve"] = function_ea2f17d1(var_67f427c4.var_4da05e4e[#"curve"], ["xfade"]);
    ent.var_1ab997d2 = function_ea2f17d1(ent.var_1ab997d2, array());
    ent.var_1ab997d2[ent.var_1ab997d2.size] = var_67f427c4;
    ent function_3e356217("speed", undefined, &function_8764d0b2, &function_a04fdd, &function_caa62515, var_67f427c4);
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x0
// Checksum 0xa40ab36f, Offset: 0x6f88
// Size: 0x9c
function function_c332cdba(target, fadeout, fadeoutcurve) {
    fadeout = function_ea2f17d1(fadeout, 0.05);
    fadeoutcurve = function_ea2f17d1(fadeoutcurve, "easeinout");
    target.var_a21eb7f9 = 1;
    target.var_f2acbf06 = fadeout;
    target.var_436e97ed = fadeoutcurve;
    target function_79d9c57d("speed");
}

// Namespace snd/namespace_b63b5857
// Params 4, eflags: 0x0
// Checksum 0x73dd9846, Offset: 0x7030
// Size: 0x44
function speed(target, alias, var_5c76982f, var_4da05e4e) {
    level thread function_ebe7010d(target, alias, var_5c76982f, var_4da05e4e);
}

// Namespace snd/namespace_b63b5857
// Params 7, eflags: 0x2 linked
// Checksum 0x45614ab, Offset: 0x7080
// Size: 0x378
function function_d6d4a5d8(var_86bf21bc, var_72585589, var_c5abb52c, var_538ddc9c, var_683a408d, var_d03e56e8, var_2982cf88) {
    assert(isvec(var_86bf21bc));
    assert(isvec(var_72585589));
    assert(isvec(var_538ddc9c));
    assert(isvec(var_683a408d));
    var_c5abb52c = function_ea2f17d1(var_c5abb52c, 1);
    var_d03e56e8 = function_ea2f17d1(var_d03e56e8, 1);
    var_2982cf88 = function_ea2f17d1(var_2982cf88, 343.3);
    if (var_c5abb52c == 0 && var_d03e56e8 == 0 || var_2982cf88 == 0) {
        return [0, 0, 0];
    }
    var_ec47cb08 = float(var_2982cf88) * 39.3701;
    assert(isnumber(var_c5abb52c));
    assert(isnumber(var_d03e56e8));
    assert(isnumber(var_ec47cb08));
    var_452d5766 = var_86bf21bc - var_538ddc9c;
    len = length(var_452d5766);
    var_2c6a3dcc = 0;
    var_3619eb04 = 0;
    if (var_c5abb52c > 0 && var_72585589 != (0, 0, 0)) {
        var_2c6a3dcc = vectordot(var_72585589, var_452d5766) / len;
        var_2c6a3dcc *= var_c5abb52c;
    }
    if (var_d03e56e8 > 0 && var_683a408d != (0, 0, 0)) {
        var_3619eb04 = vectordot(var_683a408d, var_452d5766) / len;
        var_3619eb04 *= var_d03e56e8;
    }
    dopplerscale = (var_ec47cb08 - var_2c6a3dcc) / (var_ec47cb08 - var_3619eb04);
    return [dopplerscale, var_2c6a3dcc, var_3619eb04];
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x7400
// Size: 0x4
function private function_6486ffc7() {
    
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0x5a779f81, Offset: 0x7410
// Size: 0x1b8
function private function_ea96deb8(*userdata) {
    var_78c4228e = arraycopy(level.var_ba9b4ed);
    var_e309e90d = 0;
    var_8b774403 = [];
    arrayremovevalue(var_78c4228e, self, 1);
    foreach (var_b05cf605 in var_78c4228e) {
        if (var_b05cf605 function_e74190aa("doppler")) {
            var_e309e90d += 1;
            if (function_e3a36342(var_b05cf605)) {
                var_8b774403[var_8b774403.size] = var_b05cf605;
            }
        }
    }
    if (var_e309e90d == var_8b774403.size) {
        foreach (player in var_8b774403) {
            player function_79d9c57d("doppler");
        }
    }
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x6 linked
// Checksum 0x648bad9f, Offset: 0x75d0
// Size: 0x5dc
function private function_344f3a4a(inputvalue, userdata) {
    player = userdata;
    if (!function_e3a36342(player)) {
        return;
    }
    assert(isdefined(player));
    assert(isdefined(player.var_9dad7949));
    assert(isdefined(self));
    assert(isdefined(self.var_9dad7949));
    assert(isdefined(self.var_9dad7949.scale));
    assert(isdefined(self.var_9dad7949.var_e8950a23));
    var_86bf21bc = self.origin;
    var_72585589 = inputvalue;
    var_c5abb52c = self.var_9dad7949.scale;
    var_538ddc9c = player function_efda2d6d();
    var_683a408d = player function_e6dfc446("doppler");
    var_d03e56e8 = self.var_9dad7949.var_e8950a23;
    if (isdefined(var_683a408d) == 0 || self.var_9dad7949.var_e8950a23 == 0) {
        var_683a408d = (0, 0, 0);
    }
    assert(isvec(var_86bf21bc));
    assert(isvec(var_72585589));
    assert(isnumber(var_c5abb52c));
    assert(isvec(var_538ddc9c));
    assert(isvec(var_683a408d));
    assert(isnumber(var_d03e56e8));
    var_c9ea7ee3 = function_d6d4a5d8(var_86bf21bc, var_72585589, var_c5abb52c, var_538ddc9c, var_683a408d, var_d03e56e8);
    dopplerscale = var_c9ea7ee3[0];
    if (isdefined(self.var_9dad7949.pitchscale)) {
        dopplerscale *= self.var_9dad7949.pitchscale;
    }
    dopplerscale = math::clamp(dopplerscale, 0.01, 2);
    function_964c3a03(self, dopplerscale, function_6cfa7975());
    /#
        if (function_95c9af4b() > 1) {
            var_c75cd11f = getdvarfloat(#"hash_182296346d138cf8");
            var_57cfcf52 = getdvarvector(#"hash_3b9f89c8082a9915", (1, 1, 1));
            colorscale = getdvarfloat(#"hash_3944b771315157c1", 1);
            var_ff7397dc = function_2677a7e2(var_57cfcf52, colorscale * 10);
            var_6a1e7792 = var_c9ea7ee3[1];
            dist = distance(var_86bf21bc, var_538ddc9c);
            var_7295dcac = dist * 0.002;
            scale = var_c75cd11f * 0.666 * var_7295dcac;
            alpha = 1;
            var_8b9208e = alpha * alpha;
            var_c730c816 = "<unknown string>";
            var_f7bf2aa1 = dopplerscale + "<unknown string>" + var_6a1e7792;
            function_ac033c46(var_c730c816, var_86bf21bc + (0, 0, -1 * scale * 24), scale, "<unknown string>", var_ff7397dc, alpha, (0, 0, 0), var_8b9208e, (1, 1, 1), var_8b9208e, 1);
            function_ac033c46(var_f7bf2aa1, var_86bf21bc + (0, 0, -1 * scale * 24), scale, "<unknown string>", var_ff7397dc, alpha, (0, 0, 0), var_8b9208e, (1, 1, 1), var_8b9208e, 1);
        }
    #/
}

// Namespace snd/namespace_b63b5857
// Params 4, eflags: 0x6 linked
// Checksum 0xd1661ca0, Offset: 0x7bb8
// Size: 0x20c
function private _snd_doppler_main(player, dopplerscale, pitchscale, var_a47261d3) {
    assert(function_e3a36342(player));
    dopplerscale = function_ea2f17d1(dopplerscale, 1);
    pitchscale = function_ea2f17d1(pitchscale, 1);
    var_a47261d3 = function_ea2f17d1(var_a47261d3, 1);
    assert(isdefined(player));
    if (isdefined(player.var_9dad7949) == 0) {
        player.var_9dad7949 = spawnstruct();
    }
    if (var_a47261d3 > 0) {
        player function_3e356217("doppler", undefined, &function_c0e3d9aa);
    }
    if (function_3132f113(self)) {
        return;
    }
    while (isdefined(self.soundalias) == 0) {
        waitframe(1);
    }
    self.var_9dad7949 = spawnstruct();
    self.var_9dad7949.scale = dopplerscale;
    self.var_9dad7949.pitchscale = pitchscale;
    self.var_9dad7949.var_e8950a23 = var_a47261d3;
    self function_3e356217("doppler", undefined, &function_c0e3d9aa, &function_344f3a4a, &function_ea96deb8, player);
}

// Namespace snd/namespace_b63b5857
// Params 5, eflags: 0x0
// Checksum 0xcee8fa3f, Offset: 0x7dd0
// Size: 0xe8
function doppler(var_afe43979, player, dopplerscale, pitchscale, var_a47261d3) {
    if (function_81fac19d(isdefined(var_afe43979) == 0, "snd_doppler with undefined soundObject")) {
        return;
    }
    foreach (var_d7ba9fdf in function_f218bff5(var_afe43979)) {
        var_d7ba9fdf thread _snd_doppler_main(player, dopplerscale, pitchscale, var_a47261d3);
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0x2cdbdc4a, Offset: 0x7ec0
// Size: 0xc0
function function_b9f3bee9(var_afe43979) {
    if (function_81fac19d(isdefined(var_afe43979) == 0, "snd_doppler_stop with undefined soundObject")) {
        return;
    }
    foreach (var_d7ba9fdf in function_f218bff5(var_afe43979)) {
        var_d7ba9fdf function_ea96deb8();
    }
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x2 linked
// Checksum 0x43a1571d, Offset: 0x7f88
// Size: 0xfa
function function_bdd32fcc() {
    skiptos = getskiptos();
    assert(isstring(skiptos));
    skiptos = tolower(skiptos);
    skiptos = strtok(skiptos, ",");
    skipto = "";
    if (isarray(skiptos)) {
        if (skiptos.size >= 1) {
            skipto = skiptos[0] + "";
        }
    } else if (isstring(skiptos)) {
        skipto = skiptos;
    }
    return skipto;
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x6 linked
// Checksum 0xb10aa69e, Offset: 0x8090
// Size: 0x1a2
function private function_637f9a70(callback, var_7d665d77) {
    level notify(#"hash_163618840778df8c");
    level endon(#"hash_163618840778df8c");
    var_7d665d77 = function_ea2f17d1(var_7d665d77, 1);
    assert(isscriptfunctionptr(callback));
    assert(isdefined(var_7d665d77));
    waitforplayers();
    while (true) {
        skipto = function_bdd32fcc();
        if (skipto != "") {
            break;
        }
        waitframe(1);
    }
    waitframe(1);
    objectives = [];
    while (true) {
        skipto = function_bdd32fcc();
        if (skipto == "") {
        } else if (var_7d665d77 || !var_7d665d77 && !isdefined(objectives[skipto])) {
            level thread [[ callback ]](skipto);
            objectives[skipto] = 1;
        }
        level waittill(#"objective_changed", #"save_restore");
        waittillframeend();
    }
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x0
// Checksum 0x76bee68f, Offset: 0x8240
// Size: 0x34
function objective_init(callback, var_7d665d77) {
    level thread function_637f9a70(callback, var_7d665d77);
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0xa6c0e2f1, Offset: 0x8280
// Size: 0x34
function function_5e69f468(callback, var_7d665d77) {
    level thread function_637f9a70(callback, var_7d665d77);
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x6 linked
// Checksum 0x7e5bb0f, Offset: 0x82c0
// Size: 0xbc
function private function_c66d3ce2(trigger, player) {
    istouching = 0;
    if (function_e3a36342(player)) {
        if (isentity(trigger)) {
            istouching = player istouching(trigger);
        } else if (trigger == level) {
            if (!isdefined(player.var_9a8a4923) || isdefined(player.var_9a8a4923) && player.var_9a8a4923 == level) {
                istouching = 1;
            }
        }
    }
    return istouching;
}

// Namespace snd/namespace_b63b5857
// Params 0, eflags: 0x6 linked
// Checksum 0x4893a732, Offset: 0x8388
// Size: 0xbc
function private function_9588abe4() {
    waitforplayers();
    waitframe(3);
    waittillframeend();
    foreach (player in function_2b2b83dc()) {
        level notify(#"trigger", {#activator:player});
    }
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x6 linked
// Checksum 0x3db176a4, Offset: 0x8450
// Size: 0x494
function private function_78013c7e(callback) {
    level endon(#"game_ended");
    self endon(#"death");
    var_524d6318 = [level];
    trigger = self;
    assert(isdefined(trigger));
    while (true) {
        waitresult = trigger waittill(#"trigger");
        player = waitresult.activator;
        istouching = function_c66d3ce2(trigger, player);
        if (istouching) {
            player.var_a1d98d00 = function_ea2f17d1(player.var_a1d98d00, var_524d6318);
            assert(isarray(player.var_a1d98d00) && isdefined(player.var_a1d98d00[0]) && player.var_a1d98d00[0] == level);
            if (trigger != level) {
                player.var_a1d98d00[player.var_a1d98d00.size] = trigger;
            }
            var_cecadbd0 = isdefined(player.var_9a8a4923.script_ambientpriority) && isdefined(trigger.script_ambientpriority);
            var_a4243a33 = var_cecadbd0 && int(player.var_9a8a4923.script_ambientpriority) <= int(trigger.script_ambientpriority);
            if (!isdefined(player.var_9a8a4923) || var_cecadbd0 && var_a4243a33 || !var_cecadbd0) {
                player.var_9a8a4923 = trigger;
                trigger thread [[ callback ]](player, trigger, 1);
            }
            while (istouching) {
                istouching = function_c66d3ce2(trigger, player);
                waitframe(1);
            }
            if (!isdefined(player)) {
                continue;
            }
            if (trigger != level) {
                arrayremovevalue(player.var_a1d98d00, trigger, 0);
            }
            if (player.var_9a8a4923 == trigger) {
                var_9cb85e33 = undefined;
                if (var_cecadbd0) {
                    var_9cb85e33 = level;
                    var_c0aa1fe7 = -1;
                    for (i = player.var_a1d98d00.size - 1; i > 0; i--) {
                        var_c41f0300 = player.var_a1d98d00[i];
                        if (isdefined(var_c41f0300.script_ambientpriority)) {
                            var_271728fd = int(var_c41f0300.script_ambientpriority);
                            if (var_271728fd > var_c0aa1fe7) {
                                var_9cb85e33 = var_c41f0300;
                                var_c0aa1fe7 = var_271728fd;
                            }
                        }
                    }
                } else {
                    assert(player.var_a1d98d00.size > 0);
                    index = player.var_a1d98d00.size - 1;
                    assert(index >= 0);
                    var_9cb85e33 = player.var_a1d98d00[index];
                }
                if (isdefined(var_9cb85e33)) {
                    player.var_9a8a4923 = var_9cb85e33;
                    var_9cb85e33 thread [[ callback ]](player, var_9cb85e33, 0);
                    continue;
                }
                player.var_9a8a4923 = undefined;
                level notify(#"trigger", {#activator:player});
            }
        }
    }
}

// Namespace snd/namespace_b63b5857
// Params 3, eflags: 0x2 linked
// Checksum 0x14b8fc5a, Offset: 0x88f0
// Size: 0x1e4
function trigger_init(callback, name, key) {
    name = function_ea2f17d1(name, "ambient_package");
    key = function_ea2f17d1(key, "targetname");
    triggers = array(level);
    var_fea8faf7 = undefined;
    if (is_true(level._snd.var_2dd09170)) {
        var_fea8faf7 = getentarray(name, key);
    } else if (is_true(level._snd.var_8c37ff34)) {
        var_fea8faf7 = getentarray(0, name, key);
    }
    if (isarray(var_fea8faf7)) {
        triggers = arraycombine(triggers, var_fea8faf7);
    }
    foreach (trigger in function_f218bff5(triggers)) {
        trigger thread function_78013c7e(callback);
    }
    level thread function_9588abe4();
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0x835ca3de, Offset: 0x8ae0
// Size: 0x220
function function_b4de7637(name, elements) {
    assert(did_init());
    var_ce0e8448 = isstring(name);
    var_a718b5db = isarray(elements) && elements.size > 0 && isarray(elements[0]);
    var_505293ad = isarray(elements) && elements.size >= 3 && isstring(elements[0]);
    var_8314d62 = isstring(elements);
    var_f7816d0b = var_ce0e8448 && (var_a718b5db || var_505293ad || var_8314d62);
    if (function_81fac19d(!var_f7816d0b, "snd: element_init invalid")) {
        /#
            if (function_f984063f()) {
                debugbreak();
            }
        #/
    }
    if (var_8314d62 && !isdefined(level._snd.var_9353c9dd[elements])) {
        /#
            if (function_f984063f()) {
                debugbreak();
            }
        #/
    }
    if (var_505293ad) {
        elements = [elements];
    }
    level._snd.var_9353c9dd[name] = elements;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0x9a451c5a, Offset: 0x8d08
// Size: 0xd8
function function_50601e7c(element) {
    if (isstring(element)) {
        var_4f8ae73f = level._snd.var_9353c9dd[element];
        var_36fc3b04 = isarray(var_4f8ae73f);
        var_e3ac0560 = isstring(var_4f8ae73f);
        if (var_36fc3b04) {
            return element;
        } else if (var_e3ac0560 && isarray(level._snd.var_9353c9dd[var_4f8ae73f])) {
            return var_4f8ae73f;
        }
    }
    return undefined;
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x2 linked
// Checksum 0xe78844b4, Offset: 0x8de8
// Size: 0xae
function function_74c0fa84(element) {
    if (isarray(element)) {
        return element;
    } else if (isstring(element)) {
        element = function_50601e7c(element);
        var_4f8ae73f = level._snd.var_9353c9dd[element];
        var_a2dc2648 = isarray(var_4f8ae73f);
        if (var_a2dc2648) {
            return var_4f8ae73f;
        }
    }
    return undefined;
}

// Namespace snd/namespace_b63b5857
// Params 2, eflags: 0x2 linked
// Checksum 0xe0655ae6, Offset: 0x8ea0
// Size: 0x404
function function_645c2f9b(player, element) {
    isplayervalid = function_e3a36342(player);
    if (function_81fac19d(!isplayervalid, "snd: set_element invalid player")) {
        return;
    }
    var_a2dc2648 = isarray(element);
    var_8314d62 = isstring(element);
    var_c78e3536 = !isdefined(element);
    var_f7816d0b = var_a2dc2648 || var_8314d62 || var_c78e3536;
    if (function_81fac19d(!var_f7816d0b, "snd: set_element invalid element")) {
        return;
    }
    if (var_a2dc2648) {
        player.var_c0ee07ef = "**** custom ****";
    } else if (var_8314d62) {
        current = function_50601e7c(player.var_c0ee07ef);
        var_96f3d229 = function_50601e7c(element);
        isequal = isstring(current) && isstring(var_96f3d229) && current == var_96f3d229;
        player.var_c0ee07ef = element;
        if (isequal) {
            return;
        }
    }
    if (isplayervalid && isarray(player.var_c6206b8b)) {
        stop(player.var_c6206b8b);
        player.var_c6206b8b = undefined;
    }
    if (var_c78e3536) {
        player.var_c0ee07ef = undefined;
        return;
    }
    elements = function_74c0fa84(element);
    var_a718b5db = isarray(elements);
    if (function_81fac19d(!var_a718b5db, "snd: set_element unexpected")) {
        return;
    }
    assert(isplayervalid);
    assert(var_a718b5db);
    player.var_c6206b8b = array();
    foreach (e in elements) {
        alias = e[0];
        target = function_ea2f17d1(e[1], player);
        spawntime = e[2];
        var_6c6d0c21 = e[3];
        rotation = e[4];
        var_cbf878e6 = e[5];
        var_804d5d55 = emitter(alias, target, spawntime, var_6c6d0c21, rotation, var_cbf878e6);
        if (isdefined(var_804d5d55)) {
            player.var_c6206b8b[player.var_c6206b8b.size] = var_804d5d55;
        }
    }
}

// Namespace snd/namespace_b63b5857
// Params 4, eflags: 0x6 linked
// Checksum 0x3fd6a3e7, Offset: 0x92b0
// Size: 0x336
function private function_2fc1b3a7(var_afe43979, player, var_8b0894e2, var_887e31c1) {
    assert(function_a6779cbd(var_afe43979));
    var_afe43979 endon(#"death");
    var_afe43979 notify(#"hash_20f2dfe33da3f037");
    var_afe43979 endon(#"hash_20f2dfe33da3f037");
    while (function_e3a36342(player) && function_a6779cbd(var_afe43979)) {
        var_fdf21d4f = player function_efda2d6d();
        org = pointonsegmentnearesttopoint(var_8b0894e2, var_887e31c1, var_fdf21d4f);
        var_afe43979.origin = org;
        /#
            if (function_95c9af4b() > 1) {
                var_97475451 = (0.97254, 0.72974, 0.72974);
                var_d7fd5061 = (0.72974, 0.97254, 0.72974);
                var_9b68d40d = (0.72974, 0.72974, 0.97254);
                line(var_8b0894e2, var_887e31c1, var_97475451, 1, 0, 1);
                var_ffa6d585 = vectortoangles(var_887e31c1 - var_8b0894e2);
                var_f5ce500f = anglestoright(var_ffa6d585);
                line_up = anglestoup(var_ffa6d585);
                line(var_8b0894e2 - var_f5ce500f * 24, var_8b0894e2 + var_f5ce500f * 24, var_d7fd5061, 1, 0, 1);
                line(var_8b0894e2 - line_up * 24, var_8b0894e2 + line_up * 24, var_9b68d40d, 1, 0, 1);
                line(var_887e31c1 - var_f5ce500f * 24, var_887e31c1 + var_f5ce500f * 24, var_d7fd5061, 1, 0, 1);
                line(var_887e31c1 - line_up * 24, var_887e31c1 + line_up * 24, var_9b68d40d, 1, 0, 1);
            }
        #/
        waitframe(1);
    }
}

// Namespace snd/namespace_b63b5857
// Params 4, eflags: 0x0
// Checksum 0xdf8514ac, Offset: 0x95f0
// Size: 0x64
function function_39dae8d8(var_afe43979, player, var_8b0894e2, var_887e31c1) {
    if (function_81fac19d(!isdefined(var_afe43979), "snd_line_attach with undefined soundObject")) {
        return;
    }
    var_afe43979 thread function_2fc1b3a7(var_afe43979, player, var_8b0894e2, var_887e31c1);
}

// Namespace snd/namespace_b63b5857
// Params 1, eflags: 0x0
// Checksum 0xc1d28c3b, Offset: 0x9660
// Size: 0x48
function function_ee110bf(var_afe43979) {
    if (function_81fac19d(!isdefined(var_afe43979), "snd_line_detach with undefined soundObject")) {
        return;
    }
    var_afe43979 notify(#"hash_20f2dfe33da3f037");
}

