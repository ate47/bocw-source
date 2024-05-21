// Atian COD Tools GSC CW decompiler test
#using script_7d0013bbc05623b9;
#using script_6e46300ab1cb7adb;
#using script_32399001bdb550da;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace collectibles;

// Namespace collectibles/collectibles
// Params 0, eflags: 0x5
// Checksum 0x2a7ecdab, Offset: 0xb8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"collectibles", &preinit, &postinit, undefined, undefined);
}

// Namespace collectibles/collectibles
// Params 0, eflags: 0x6 linked
// Checksum 0x76e7e5a, Offset: 0x110
// Size: 0x10
function private preinit() {
    level.var_4ac1758e = [];
}

// Namespace collectibles/collectibles
// Params 0, eflags: 0x6 linked
// Checksum 0xa4f226bd, Offset: 0x128
// Size: 0x14
function private postinit() {
    function_5a395617();
}

// Namespace collectibles/collectibles
// Params 0, eflags: 0x2 linked
// Checksum 0xaf5c9923, Offset: 0x148
// Size: 0x73c
function function_5a395617() {
    var_7bb83649 = [];
    var_bdf7b99d = [];
    var_b6e3d0a = getscriptbundle(#"evidenceboardlist");
    var_8f4db568 = var_b6e3d0a.var_48be729c;
    foreach (var_eeb11904 in var_8f4db568) {
        if (isdefined(var_eeb11904.collectiblelist)) {
            collectibles = var_eeb11904.collectiblelist;
            foreach (k, v in collectibles) {
                collectible = getscriptbundle(v.collectible);
                if (!isdefined(collectible.var_1d226975)) {
                    collectible.var_1d226975 = 0;
                }
                collectible.var_430d1d6a = var_eeb11904.var_8ca1d4a;
                collectible.index = k;
                if (collectible.index >= 10) {
                    assert(0, "<unknown string>" + function_9e72a96(collectible.var_430d1d6a) + "<unknown string>" + 10);
                }
                if (!isdefined(var_bdf7b99d[collectible.var_1d226975])) {
                    var_bdf7b99d[collectible.var_1d226975] = [];
                }
                if (collectible.var_1d226975 == 0) {
                    if (!isdefined(var_bdf7b99d[collectible.var_1d226975])) {
                        var_bdf7b99d[collectible.var_1d226975] = [];
                    } else if (!isarray(var_bdf7b99d[collectible.var_1d226975])) {
                        var_bdf7b99d[collectible.var_1d226975] = array(var_bdf7b99d[collectible.var_1d226975]);
                    }
                    if (!isinarray(var_bdf7b99d[collectible.var_1d226975], collectible)) {
                        var_bdf7b99d[collectible.var_1d226975][var_bdf7b99d[collectible.var_1d226975].size] = collectible;
                    }
                    continue;
                }
                if (collectible.var_1d226975 == 1 || collectible.var_1d226975 == 2) {
                    assert(isdefined(collectible.var_ed968ffd));
                    if (!isdefined(var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd])) {
                        var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd] = [];
                    } else if (!isarray(var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd])) {
                        var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd] = array(var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd]);
                    }
                    if (!isinarray(var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd], collectible)) {
                        var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd][var_bdf7b99d[collectible.var_1d226975][collectible.var_ed968ffd].size] = collectible;
                    }
                    continue;
                }
                if (collectible.var_1d226975 === 3) {
                    assert(isdefined(collectible.var_f3575c58));
                    assert(isdefined(collectible.var_ed968ffd));
                    if (collectible.var_f3575c58 > 6) {
                        assert(0, "<unknown string>" + function_9e72a96(collectible.var_ed968ffd) + "<unknown string>" + 6);
                    }
                    if (isdefined(collectible.var_f3575c58) && isdefined(collectible.var_ed968ffd)) {
                        if (!isdefined(var_7bb83649[collectible.var_f3575c58])) {
                            var_7bb83649[collectible.var_f3575c58] = collectible;
                        } else {
                            var_91783c0f = var_7bb83649[collectible.var_f3575c58].name;
                            assert(0, "<unknown string>" + function_9e72a96(collectible.var_ed968ffd) + "<unknown string>" + collectible.var_f3575c58 + "<unknown string>" + function_9e72a96(collectible.name) + "<unknown string>" + function_9e72a96(var_91783c0f));
                        }
                        if (!isdefined(var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58])) {
                            var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58] = [];
                        } else if (!isarray(var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58])) {
                            var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58] = array(var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58]);
                        }
                        if (!isinarray(var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58], collectible)) {
                            var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58][var_bdf7b99d[collectible.var_1d226975][collectible.var_f3575c58].size] = collectible;
                        }
                    }
                }
            }
        }
    }
    level.var_19cf69db = var_7bb83649;
    level.var_997b5425 = var_bdf7b99d;
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x0
// Checksum 0xde2e0494, Offset: 0x890
// Size: 0x10a
function function_28bfb57e(mission_name = savegame::function_8136eb5a()) {
    var_1494351b = [];
    foreach (collectible in level.var_19cf69db) {
        if (collectible.var_ed968ffd == mission_name) {
            if (!isdefined(var_1494351b)) {
                var_1494351b = [];
            } else if (!isarray(var_1494351b)) {
                var_1494351b = array(var_1494351b);
            }
            var_1494351b[var_1494351b.size] = collectible;
        }
    }
    return var_1494351b;
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0x90b2726, Offset: 0x9a8
// Size: 0xa2
function function_293d81b4(var_1d226975 = 0, key) {
    if (!isdefined(level.var_997b5425[var_1d226975])) {
        level.var_997b5425[var_1d226975] = [];
    }
    if (isdefined(key)) {
        if (!isdefined(level.var_997b5425[var_1d226975][key])) {
            level.var_997b5425[var_1d226975][key] = [];
        }
        return level.var_997b5425[var_1d226975][key];
    }
    return level.var_997b5425[var_1d226975];
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0xd3974fa7, Offset: 0xa58
// Size: 0xd4
function function_c57acbc9(var_2a51713, value = 1) {
    assert(isdefined(var_2a51713));
    player = getplayers()[0];
    assert(isplayer(player));
    player stats::set_stat(#"collectibles", var_2a51713 - 1, value);
    uploadstats(player);
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x2 linked
// Checksum 0x5b82c720, Offset: 0xb38
// Size: 0xde
function function_ab921f3d(var_2a51713) {
    assert(isdefined(var_2a51713));
    player = getplayers()[0];
    assert(isplayer(player));
    if (isplayer(player)) {
        isunlocked = is_true(player stats::get_stat(#"collectibles", var_2a51713 - 1));
        return isunlocked;
    }
    return 0;
}

// Namespace collectibles/collectibles
// Params 3, eflags: 0x2 linked
// Checksum 0xc500a089, Offset: 0xc20
// Size: 0x15c
function function_316c48a3(var_d13a0347, var_28c9f917, var_bfb1faa4 = 1) {
    assert(isdefined(var_d13a0347));
    assert(isdefined(var_28c9f917));
    player = getplayers()[0];
    assert(isplayer(player));
    if (var_bfb1faa4 == function_1fe63475(var_d13a0347, var_28c9f917)) {
        return;
    }
    player stats::set_stat(#"mapdata", var_d13a0347, #"evidence", var_28c9f917, var_bfb1faa4);
    player stats::set_stat(#"mapdata", var_d13a0347, #"hash_42b984266100b32", var_28c9f917, var_bfb1faa4);
    uploadstats(player);
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0x6802e2c1, Offset: 0xd88
// Size: 0xea
function function_1fe63475(var_d13a0347, var_28c9f917) {
    assert(isdefined(var_d13a0347));
    assert(isdefined(var_28c9f917));
    player = getplayers()[0];
    assert(isplayer(player));
    isunlocked = is_true(player stats::get_stat(#"mapdata", var_d13a0347, #"evidence", var_28c9f917));
    return isunlocked;
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0x84979bf3, Offset: 0xe80
// Size: 0xea
function function_ee216b9e(var_d13a0347, var_28c9f917) {
    assert(isdefined(var_d13a0347));
    assert(isdefined(var_28c9f917));
    player = getplayers()[0];
    assert(isplayer(player));
    isnew = is_true(player stats::get_stat(#"mapdata", var_d13a0347, #"hash_42b984266100b32", var_28c9f917));
    return isnew;
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0xe2a32421, Offset: 0xf78
// Size: 0xfc
function function_55fb73ea(var_d13a0347, var_28c9f917) {
    assert(isdefined(var_d13a0347));
    assert(isdefined(var_28c9f917));
    player = getplayers()[0];
    assert(isplayer(player));
    if (!function_ee216b9e(var_d13a0347, var_28c9f917)) {
        return;
    }
    player stats::set_stat(#"mapdata", var_d13a0347, #"hash_42b984266100b32", var_28c9f917, 0);
    uploadstats(player);
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x0
// Checksum 0x40fb990d, Offset: 0x1080
// Size: 0xb0
function function_e8d5de2c(mission_name = savegame::function_8136eb5a()) {
    foreach (collectible in level.var_19cf69db) {
        if (collectible.var_ed968ffd == mission_name) {
            return true;
        }
    }
    return false;
}

// Namespace collectibles/collectibles
// Params 0, eflags: 0x0
// Checksum 0xfcb7d8fd, Offset: 0x1138
// Size: 0x10
function function_9f455dbc() {
    return level.var_19cf69db.size;
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x2 linked
// Checksum 0xde8a8894, Offset: 0x1150
// Size: 0xc0
function function_9f976c54(mission_name = savegame::function_8136eb5a()) {
    var_80fc6600 = 0;
    foreach (collectible in level.var_19cf69db) {
        if (collectible.var_ed968ffd == mission_name) {
            var_80fc6600++;
        }
    }
    return var_80fc6600;
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x2 linked
// Checksum 0xe05773cd, Offset: 0x1218
// Size: 0xb0
function function_99c4aa1(var_d13a0347) {
    if (!isdefined(var_d13a0347)) {
        return;
    }
    var_80fc6600 = 0;
    foreach (collectible in level.var_19cf69db) {
        if (collectible.var_430d1d6a == var_d13a0347) {
            var_80fc6600++;
        }
    }
    return var_80fc6600;
}

// Namespace collectibles/collectibles
// Params 0, eflags: 0x0
// Checksum 0xc368b85c, Offset: 0x12d0
// Size: 0xba
function function_ee839c3b() {
    var_9a849009 = 0;
    foreach (collectible in level.var_19cf69db) {
        if (is_true(function_ab921f3d(collectible.var_f3575c58))) {
            var_9a849009++;
        }
    }
    return var_9a849009;
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x2 linked
// Checksum 0x4c903be8, Offset: 0x1398
// Size: 0xf2
function function_7be39f53(mission_name = savegame::function_8136eb5a()) {
    var_9a849009 = 0;
    foreach (collectible in level.var_19cf69db) {
        if (collectible.var_ed968ffd == mission_name) {
            if (is_true(function_ab921f3d(collectible.var_f3575c58))) {
                var_9a849009++;
            }
        }
    }
    return var_9a849009;
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x2 linked
// Checksum 0x63723483, Offset: 0x1498
// Size: 0xe2
function function_5d5166dd(var_d13a0347) {
    if (!isdefined(var_d13a0347)) {
        return;
    }
    var_9a849009 = 0;
    foreach (collectible in level.var_19cf69db) {
        if (collectible.var_430d1d6a == var_d13a0347) {
            if (is_true(function_ab921f3d(collectible.var_f3575c58))) {
                var_9a849009++;
            }
        }
    }
    return var_9a849009;
}

// Namespace collectibles/collectibles
// Params 0, eflags: 0x0
// Checksum 0xdb34a017, Offset: 0x1588
// Size: 0x44
function function_d06c5a39() {
    self prompts::set_text(#"hash_209c49282fbf4594");
    self prompts::function_309bf7c2(#"hash_1ca962038953ec7a");
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0xb83d890a, Offset: 0x15d8
// Size: 0x11c
function function_6cd091d2(var_2a51713, var_c05d6) {
    if (is_true(function_ab921f3d(var_2a51713))) {
        return;
    }
    function_cb8ff1b9(var_2a51713, 1);
    function_5b42ccea();
    collectible = level.var_19cf69db[var_2a51713];
    var_4bf53b01 = collectible.var_34754728;
    var_76e98c1f = collectible.var_444770d3;
    var_2a015e7e = function_5d5166dd(collectible.var_430d1d6a);
    var_f8f020e3 = function_99c4aa1(collectible.var_430d1d6a);
    thread namespace_a43d1663::init(var_4bf53b01, var_76e98c1f, var_2a015e7e, var_f8f020e3, var_c05d6);
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x6 linked
// Checksum 0x611a8000, Offset: 0x1700
// Size: 0x6c
function private function_cb8ff1b9(var_2a51713, is_unlocked) {
    function_c57acbc9(var_2a51713, is_unlocked);
    collectible = level.var_19cf69db[var_2a51713];
    function_316c48a3(collectible.var_430d1d6a, collectible.index, is_unlocked);
}

// Namespace collectibles/collectibles
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1778
// Size: 0x4
function function_5b42ccea() {
    
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0xb62e6b61, Offset: 0x1788
// Size: 0x24
function add_callback(collectible, callback) {
    level.var_4ac1758e[collectible] = callback;
}

// Namespace collectibles/collectibles
// Params 1, eflags: 0x2 linked
// Checksum 0x725acc5b, Offset: 0x17b8
// Size: 0x1e
function function_606a97af(collectible) {
    return isdefined(level.var_4ac1758e[collectible]);
}

// Namespace collectibles/collectibles
// Params 2, eflags: 0x2 linked
// Checksum 0x1b49b42e, Offset: 0x17e0
// Size: 0x4a
function function_f539a1fa(collectible, params) {
    if (isdefined(level.var_4ac1758e[collectible])) {
        [[ level.var_4ac1758e[collectible] ]](params);
        return true;
    }
    return false;
}

/#

    // Namespace collectibles/collectibles
    // Params 0, eflags: 0x0
    // Checksum 0x41939116, Offset: 0x1838
    // Size: 0x90
    function function_a66b8474() {
        foreach (id, collectible in level.var_19cf69db) {
            function_cb8ff1b9(id, 0);
        }
    }

    // Namespace collectibles/collectibles
    // Params 0, eflags: 0x0
    // Checksum 0x5a9b78b5, Offset: 0x18d0
    // Size: 0x98
    function function_4e4a7021() {
        foreach (id, collectible in level.var_19cf69db) {
            function_cb8ff1b9(id, 1);
        }
    }

#/
