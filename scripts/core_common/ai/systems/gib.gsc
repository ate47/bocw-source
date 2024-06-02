// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\ai\systems\shared.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace gib;

// Namespace gib/gib
// Params 0, eflags: 0x1
// Checksum 0xadaf17db, Offset: 0x1d8
// Size: 0xbc
function autoexec main() {
    clientfield::register("actor", "gib_state", 1, 14, "int");
    clientfield::register("playercorpse", "gib_state", 1, 17, "int");
    level.var_ad0f5efa = [];
    if (!isdefined(level.gib_throttle)) {
        level.gib_throttle = new throttle();
        [[ level.gib_throttle ]]->initialize(2, 0.2);
    }
}

#namespace gibserverutils;

// Namespace gibserverutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0xf470203c, Offset: 0x2a0
// Size: 0x380
function private function_3aa023f1(entity, var_c3317960) {
    if (!isdefined(entity) || !_hasgibdef(entity, var_c3317960)) {
        return undefined;
    }
    name = entity.gibdef;
    if (isdefined(entity.var_868d0717)) {
        if (isdefined(entity.var_868d0717[var_c3317960])) {
            name = entity.var_868d0717[var_c3317960];
        } else if (isdefined(entity.var_868d0717[0])) {
            name = entity.var_868d0717[0];
        }
    }
    gibdef = level.var_ad0f5efa[name];
    if (isdefined(gibdef)) {
        return gibdef;
    }
    definition = getscriptbundle(name);
    if (!isdefined(definition)) {
        assertmsg("<unknown string>" + name);
        return undefined;
    }
    gibpiecelookup = [];
    gibpiecelookup[2] = "annihilate";
    gibpiecelookup[8] = "head";
    gibpiecelookup[16] = "rightarm";
    gibpiecelookup[32] = "leftarm";
    gibpiecelookup[128] = "rightleg";
    gibpiecelookup[256] = "leftleg";
    gibpieces = [];
    foreach (gibflag, gibpiece in gibpiecelookup) {
        if (!isdefined(gibpiece)) {
            assertmsg("<unknown string>" + gibflag);
            continue;
        }
        gibstruct = spawnstruct();
        gibstruct.gibmodel = definition.(gibpiece + "_gibmodel");
        gibstruct.gibtag = definition.(gibpiece + "_gibtag");
        gibstruct.gibfx = definition.(gibpiece + "_gibfx");
        gibstruct.gibfxtag = definition.(gibpiece + "_gibeffecttag");
        gibstruct.gibdynentfx = definition.(gibpiece + "_gibdynentfx");
        gibstruct.var_42c89fa1 = definition.(gibpiece + "_gibcinematicfx");
        gibstruct.gibsound = definition.(gibpiece + "_gibsound");
        gibstruct.gibhidetag = definition.(gibpiece + "_gibhidetag");
        gibpieces[gibflag] = gibstruct;
    }
    level.var_ad0f5efa[name] = gibpieces;
    return gibpieces;
}

// Namespace gibserverutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0x467a1f69, Offset: 0x628
// Size: 0x44
function private function_69db754(entity, gibflag, var_c3317960) {
    gibpieces = function_3aa023f1(entity, var_c3317960);
    return gibpieces[gibflag];
}

// Namespace gibserverutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0xc43e21ee, Offset: 0x678
// Size: 0x5c
function private _annihilate(entity) {
    if (isdefined(entity)) {
        entity notsolid();
        entity.var_9a6fcc = 1;
        waitframe(5);
        if (isdefined(entity)) {
            entity delete();
        }
    }
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0xcea62b1f, Offset: 0x6e0
// Size: 0xb4
function private _getgibextramodel(entity, gibflag) {
    if (gibflag == 4) {
        return (isdefined(entity.gib_data) ? entity.gib_data.hatmodel : entity.hatmodel);
    }
    if (gibflag == 8) {
        return (isdefined(entity.gib_data) ? entity.gib_data.head : entity.head);
    }
    assertmsg("<unknown string>");
}

// Namespace gibserverutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0xd7aa21c, Offset: 0x7a0
// Size: 0x78
function private _gibextra(entity, gibflag, var_c3317960) {
    if (isgibbed(entity, gibflag)) {
        return false;
    }
    if (!_hasgibdef(entity, var_c3317960)) {
        return false;
    }
    entity thread _gibextrainternal(entity, gibflag, var_c3317960);
    return true;
}

// Namespace gibserverutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0xe35150a8, Offset: 0x820
// Size: 0x1e4
function private _gibextrainternal(entity, gibflag, var_c3317960) {
    if (entity.gib_time !== gettime()) {
        [[ level.gib_throttle ]]->waitinqueue(entity);
    }
    if (!isdefined(entity)) {
        return;
    }
    entity.gib_time = gettime();
    if (isgibbed(entity, gibflag)) {
        return 0;
    }
    if (gibflag == 8) {
        if (isdefined(isdefined(entity.gib_data) ? entity.gib_data.torsodmg5 : entity.torsodmg5)) {
            entity attach(isdefined(entity.gib_data) ? entity.gib_data.torsodmg5 : entity.torsodmg5, "", 1);
        }
    }
    _setgibbed(entity, gibflag, undefined, var_c3317960);
    destructserverutils::showdestructedpieces(entity);
    showhiddengibpieces(entity, var_c3317960);
    gibmodel = _getgibextramodel(entity, gibflag);
    if (isdefined(gibmodel) && entity isattached(gibmodel)) {
        entity detach(gibmodel, "");
    }
    destructserverutils::reapplydestructedpieces(entity);
    reapplyhiddengibpieces(entity, var_c3317960);
}

// Namespace gibserverutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0x6a5b408f, Offset: 0xa10
// Size: 0x90
function private _gibentity(entity, gibflag, var_c3317960) {
    if (isgibbed(entity, gibflag) || !_hasgibpieces(entity, gibflag, var_c3317960)) {
        return false;
    }
    if (!_hasgibdef(entity, var_c3317960)) {
        return false;
    }
    entity thread _gibentityinternal(entity, gibflag, var_c3317960);
    return true;
}

// Namespace gibserverutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0x5ecc09f9, Offset: 0xaa8
// Size: 0x1bc
function private _gibentityinternal(entity, gibflag, var_c3317960) {
    if (entity.gib_time !== gettime()) {
        [[ level.gib_throttle ]]->waitinqueue(entity);
    }
    if (!isdefined(entity)) {
        return;
    }
    entity.gib_time = gettime();
    if (isgibbed(entity, gibflag)) {
        return;
    }
    destructserverutils::showdestructedpieces(entity);
    showhiddengibpieces(entity, var_c3317960);
    if (!(_getgibbedstate(entity) < 16)) {
        legmodel = _getgibbedlegmodel(entity);
        entity detach(legmodel);
    }
    _setgibbed(entity, gibflag, undefined, var_c3317960);
    entity setmodel(_getgibbedtorsomodel(entity));
    if (!entity isattached(_getgibbedlegmodel(entity))) {
        entity attach(_getgibbedlegmodel(entity));
    }
    destructserverutils::reapplydestructedpieces(entity);
    reapplyhiddengibpieces(entity, var_c3317960);
}

// Namespace gibserverutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0xe31ce35e, Offset: 0xc70
// Size: 0x142
function private _getgibbedlegmodel(entity) {
    gibstate = _getgibbedstate(entity);
    rightleggibbed = gibstate & 128;
    leftleggibbed = gibstate & 256;
    if (rightleggibbed && leftleggibbed) {
        return (isdefined(entity.gib_data) ? entity.gib_data.legdmg4 : entity.legdmg4);
    } else if (rightleggibbed) {
        return (isdefined(entity.gib_data) ? entity.gib_data.legdmg2 : entity.legdmg2);
    } else if (leftleggibbed) {
        return (isdefined(entity.gib_data) ? entity.gib_data.legdmg3 : entity.legdmg3);
    }
    return isdefined(entity.gib_data) ? entity.gib_data.legdmg1 : entity.legdmg1;
}

// Namespace gibserverutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0xd2661f4d, Offset: 0xdc0
// Size: 0x2a
function private _getgibbedstate(entity) {
    if (isdefined(entity.gib_state)) {
        return entity.gib_state;
    }
    return 0;
}

// Namespace gibserverutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0x53cd4ab8, Offset: 0xdf8
// Size: 0x142
function private _getgibbedtorsomodel(entity) {
    gibstate = _getgibbedstate(entity);
    rightarmgibbed = gibstate & 16;
    leftarmgibbed = gibstate & 32;
    if (rightarmgibbed && leftarmgibbed) {
        return (isdefined(entity.gib_data) ? entity.gib_data.torsodmg2 : entity.torsodmg2);
    } else if (rightarmgibbed) {
        return (isdefined(entity.gib_data) ? entity.gib_data.torsodmg2 : entity.torsodmg2);
    } else if (leftarmgibbed) {
        return (isdefined(entity.gib_data) ? entity.gib_data.torsodmg3 : entity.torsodmg3);
    }
    return isdefined(entity.gib_data) ? entity.gib_data.torsodmg1 : entity.torsodmg1;
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0xea0030f7, Offset: 0xf48
// Size: 0x5c
function private _hasgibdef(entity, var_c3317960) {
    if (isdefined(entity.var_868d0717)) {
        if (isdefined(entity.var_868d0717[var_c3317960]) || isdefined(entity.var_868d0717[0])) {
            return true;
        }
    }
    return isdefined(entity.gibdef);
}

// Namespace gibserverutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0x6b4ba078, Offset: 0xfb0
// Size: 0xe2
function private _hasgibpieces(entity, gibflag, var_c3317960) {
    if (16 < var_c3317960) {
        var_c3317960 = 0;
    }
    hasgibpieces = 0;
    gibstate = _getgibbedstate(entity);
    entity.gib_state = (gibstate & 512 - 1 | gibflag & 512 - 1) + (var_c3317960 << 9);
    if (isdefined(_getgibbedtorsomodel(entity)) && isdefined(_getgibbedlegmodel(entity))) {
        hasgibpieces = 1;
    }
    entity.gib_state = gibstate;
    return hasgibpieces;
}

// Namespace gibserverutils/gib
// Params 4, eflags: 0x6 linked
// Checksum 0x77e2ae22, Offset: 0x10a0
// Size: 0x16c
function private _setgibbed(entity, gibflag, gibdir, var_c3317960) {
    if (16 < var_c3317960) {
        var_c3317960 = 0;
    }
    if (isdefined(gibdir)) {
        angles = vectortoangles(gibdir);
        yaw = angles[1];
        yaw_bits = getbitsforangle(yaw, 3);
        entity.gib_state = (_getgibbedstate(entity) & 512 - 1 | gibflag & 512 - 1) + (var_c3317960 << 9) + (yaw_bits << 14);
    } else {
        entity.gib_state = (_getgibbedstate(entity) & 512 - 1 | gibflag & 512 - 1) + (var_c3317960 << 9);
    }
    entity.gibbed = 1;
    entity clientfield::set("gib_state", entity.gib_state);
}

// Namespace gibserverutils/gib
// Params 1, eflags: 0x2 linked
// Checksum 0xf0da7a68, Offset: 0x1218
// Size: 0xa4
function annihilate(entity) {
    if (!_hasgibdef(entity, 0)) {
        return false;
    }
    gibpiecestruct = function_69db754(entity, 2, 0);
    if (isdefined(gibpiecestruct)) {
        if (isdefined(gibpiecestruct.gibfx)) {
            _setgibbed(entity, 2, undefined, 0);
            entity thread _annihilate(entity);
            return true;
        }
    }
    return false;
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x545ad488, Offset: 0x12c8
// Size: 0x8c
function copygibstate(originalentity, newentity) {
    newentity.gib_state = _getgibbedstate(originalentity);
    togglespawngibs(newentity, 0);
    var_c3317960 = newentity.gib_state >> 9 & 32 - 1;
    reapplyhiddengibpieces(newentity, var_c3317960);
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x56803c52, Offset: 0x1360
// Size: 0x30
function isgibbed(entity, gibflag) {
    return _getgibbedstate(entity) & gibflag;
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x1aa4b6fb, Offset: 0x1398
// Size: 0x32
function gibhat(entity, var_c3317960) {
    return _gibextra(entity, 4, var_c3317960);
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x3efcccbd, Offset: 0x13d8
// Size: 0xd2
function gibhead(entity, var_c3317960 = 0) {
    gibhat(entity, var_c3317960);
    level notify(#"gib", {#entity:entity, #attacker:self.attacker, #area:"head"});
    entity callback::callback(#"head_gibbed");
    return _gibextra(entity, 8, var_c3317960);
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0xfd6f527a, Offset: 0x14b8
// Size: 0xd0
function gibleftarm(entity, var_c3317960 = 0) {
    if (isgibbed(entity, 16)) {
        return false;
    }
    if (_gibentity(entity, 32, var_c3317960)) {
        destructserverutils::destructleftarmpieces(entity);
        level notify(#"gib", {#entity:entity, #attacker:self.attacker, #area:"left_arm"});
        return true;
    }
    return false;
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x43cd354f, Offset: 0x1590
// Size: 0xe8
function gibrightarm(entity, var_c3317960 = 0) {
    if (isgibbed(entity, 32)) {
        return false;
    }
    if (_gibentity(entity, 16, var_c3317960)) {
        destructserverutils::destructrightarmpieces(entity);
        entity thread shared::dropaiweapon();
        level notify(#"gib", {#entity:entity, #attacker:self.attacker, #area:"right_arm"});
        return true;
    }
    return false;
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0xbe5f36c1, Offset: 0x1680
// Size: 0xb0
function gibleftleg(entity, var_c3317960 = 0) {
    if (_gibentity(entity, 256, var_c3317960)) {
        destructserverutils::destructleftlegpieces(entity);
        level notify(#"gib", {#entity:entity, #attacker:self.attacker, #area:"left_leg"});
        return true;
    }
    return false;
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0xe8511ff, Offset: 0x1738
// Size: 0xb0
function gibrightleg(entity, var_c3317960 = 0) {
    if (_gibentity(entity, 128, var_c3317960)) {
        destructserverutils::destructrightlegpieces(entity);
        level notify(#"gib", {#entity:entity, #attacker:self.attacker, #area:"right_leg"});
        return true;
    }
    return false;
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0xb94155b9, Offset: 0x17f0
// Size: 0xc8
function giblegs(entity, var_c3317960 = 0) {
    if (_gibentity(entity, 384, var_c3317960)) {
        destructserverutils::destructrightlegpieces(entity);
        destructserverutils::destructleftlegpieces(entity);
        level notify(#"gib", {#entity:entity, #attacker:self.attacker, #area:"both_legs"});
        return true;
    }
    return false;
}

// Namespace gibserverutils/player_gibleftarmvel
// Params 1, eflags: 0x22 linked
// Checksum 0x38c05569, Offset: 0x18c0
// Size: 0x5c
function event_handler[player_gibleftarmvel] playergibleftarmvel(entitystruct) {
    if (isdefined(entitystruct.player.body)) {
        _setgibbed(entitystruct.player.body, 32, entitystruct.direction, entitystruct.var_c3317960);
    }
}

// Namespace gibserverutils/player_gibrightarmvel
// Params 1, eflags: 0x22 linked
// Checksum 0x36bbc44e, Offset: 0x1928
// Size: 0x5c
function event_handler[player_gibrightarmvel] playergibrightarmvel(entitystruct) {
    if (isdefined(entitystruct.player.body)) {
        _setgibbed(entitystruct.player.body, 16, entitystruct.direction, entitystruct.var_c3317960);
    }
}

// Namespace gibserverutils/player_gibleftlegvel
// Params 1, eflags: 0x20
// Checksum 0x89b84df1, Offset: 0x1990
// Size: 0x5c
function event_handler[player_gibleftlegvel] playergibleftlegvel(entitystruct) {
    if (isdefined(entitystruct.player.body)) {
        _setgibbed(entitystruct.player.body, 256, entitystruct.direction, entitystruct.var_c3317960);
    }
}

// Namespace gibserverutils/player_gibrightlegvel
// Params 1, eflags: 0x20
// Checksum 0x6361f88f, Offset: 0x19f8
// Size: 0x5c
function event_handler[player_gibrightlegvel] playergibrightlegvel(entitystruct) {
    if (isdefined(entitystruct.player.body)) {
        _setgibbed(entitystruct.player.body, 128, entitystruct.direction, entitystruct.var_c3317960);
    }
}

// Namespace gibserverutils/player_gibbothlegsvel
// Params 1, eflags: 0x22 linked
// Checksum 0x50b034cf, Offset: 0x1a60
// Size: 0x94
function event_handler[player_gibbothlegsvel] playergiblegsvel(entitystruct) {
    if (isdefined(entitystruct.player.body)) {
        _setgibbed(entitystruct.player.body, 128, entitystruct.direction, entitystruct.var_c3317960);
        _setgibbed(entitystruct.player.body, 256, entitystruct.direction, entitystruct.var_c3317960);
    }
}

// Namespace gibserverutils/event_5d8d772d
// Params 1, eflags: 0x22 linked
// Checksum 0x8b4beecb, Offset: 0x1b00
// Size: 0x5c
function event_handler[event_5d8d772d] function_b14ffba8(entitystruct) {
    if (isdefined(entitystruct.player.body)) {
        _setgibbed(entitystruct.player.body, 8, entitystruct.direction, entitystruct.var_c3317960);
    }
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0xd8904bac, Offset: 0x1b68
// Size: 0x178
function reapplyhiddengibpieces(entity, var_c3317960) {
    if (!_hasgibdef(entity, var_c3317960)) {
        return;
    }
    gibpieces = function_3aa023f1(entity, var_c3317960);
    foreach (gibflag, gib in gibpieces) {
        if (!isgibbed(entity, gibflag)) {
            continue;
        }
        if (!isdefined(gib)) {
            continue;
        }
        if (isdefined(gib.gibhidetag) && isalive(entity) && entity haspart(gib.gibhidetag)) {
            if (!is_true(entity.skipdeath)) {
                entity hidepart(gib.gibhidetag, "", 1);
            }
        }
    }
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x2070f56f, Offset: 0x1ce8
// Size: 0x128
function showhiddengibpieces(entity, var_c3317960) {
    if (!_hasgibdef(entity, var_c3317960)) {
        return;
    }
    gibpieces = function_3aa023f1(entity, var_c3317960);
    foreach (gib in gibpieces) {
        if (!isdefined(gib)) {
            continue;
        }
        if (isdefined(gib.gibhidetag) && entity haspart(gib.gibhidetag)) {
            entity showpart(gib.gibhidetag, "", 1);
        }
    }
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x766c2149, Offset: 0x1e18
// Size: 0x94
function togglespawngibs(entity, shouldspawngibs) {
    if (!shouldspawngibs) {
        entity.gib_state = _getgibbedstate(entity) | 1;
    } else {
        entity.gib_state = _getgibbedstate(entity) & -2;
    }
    entity clientfield::set("gib_state", entity.gib_state);
}

// Namespace gibserverutils/gib
// Params 1, eflags: 0x0
// Checksum 0x59f73296, Offset: 0x1eb8
// Size: 0x30c
function function_96bedd91(entity) {
    if ([[ level.gib_throttle ]]->wm_ht_posidlestart(entity)) {
        return;
    }
    var_c3317960 = entity.gib_state >> 9 & 32 - 1;
    destructserverutils::showdestructedpieces(entity);
    showhiddengibpieces(entity, var_c3317960);
    if (!(_getgibbedstate(entity) < 16)) {
        legmodel = _getgibbedlegmodel(entity);
        if (isdefined(legmodel)) {
            entity detach(legmodel);
        }
    }
    var_8d04b98a = _getgibbedtorsomodel(entity);
    if (!isdefined(var_8d04b98a)) {
        return;
    }
    entity setmodel(var_8d04b98a);
    var_992e2883 = _getgibbedlegmodel(entity);
    if (isdefined(var_992e2883) && !entity isattached(var_992e2883)) {
        entity attach(var_992e2883);
    }
    destructserverutils::reapplydestructedpieces(entity);
    reapplyhiddengibpieces(entity, var_c3317960);
    if (is_true(entity.head_gibbed)) {
        var_3bb4d879 = isdefined(entity.gib_data) ? entity.gib_data.torsodmg5 : entity.torsodmg5;
        if (isdefined(var_3bb4d879) && !entity isattached(var_3bb4d879)) {
            entity attach(var_3bb4d879, "", 1);
        }
        var_81adae15 = _getgibextramodel(entity, 4);
        if (isdefined(var_81adae15) && entity isattached(var_81adae15)) {
            entity detach(var_81adae15, "");
        }
        var_ec17ebe9 = _getgibextramodel(entity, 8);
        if (isdefined(var_ec17ebe9) && entity isattached(var_ec17ebe9)) {
            entity detach(var_ec17ebe9, "");
        }
    }
}

// Namespace gibserverutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0xb5387d32, Offset: 0x21d0
// Size: 0x8a
function function_de4d9d(weapon, var_fd90b0bb) {
    if (!isweapon(weapon) || !weapon.isvalid || weapon === level.weaponnone || !isdefined(var_fd90b0bb) || !var_fd90b0bb) {
        return 0;
    }
    return function_497b2440(weapon, var_fd90b0bb);
}

