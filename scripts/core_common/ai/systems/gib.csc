// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace gibclientutils;

// Namespace gibclientutils/gib
// Params 0, eflags: 0x1
// Checksum 0x484b7d1c, Offset: 0x238
// Size: 0xb4
function autoexec main() {
    clientfield::register("actor", "gib_state", 1, 14, "int", &_gibhandler, 0, 0);
    clientfield::register("playercorpse", "gib_state", 1, 17, "int", &_gibhandler, 0, 0);
    level.var_ad0f5efa = [];
    level thread _annihilatecorpse();
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0x8911ecec, Offset: 0x2f8
// Size: 0x2e8
function private function_3aa023f1(name) {
    if (!isdefined(name)) {
        return undefined;
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

// Namespace gibclientutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0x8344069f, Offset: 0x5e8
// Size: 0x360
function private function_9fe14ca3(entity, gibflag, var_c3317960) {
    if (gibflag == 8) {
        part = "head";
    } else if (gibflag == 16 || gibflag == 32) {
        part = "arms";
    } else if (gibflag == 128 || gibflag == 256) {
        part = "legs";
    }
    if (!isdefined(part)) {
        return undefined;
    }
    name = entity getplayergibdef(part, var_c3317960);
    if (!isdefined(name)) {
        assertmsg("<unknown string>" + gibflag);
        return undefined;
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
    gibpiecelookup[0] = "left";
    gibpiecelookup[1] = "right";
    gibpieces = [];
    foreach (side, gibpiece in gibpiecelookup) {
        if (!isdefined(gibpiece)) {
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
        gibpieces[side] = gibstruct;
    }
    level.var_ad0f5efa[name] = gibpieces;
    return gibpieces;
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0x7683bcf7, Offset: 0x950
// Size: 0xbe
function function_c0099e86(entity, gibflag, var_c3317960) {
    gibpiece = function_9fe14ca3(entity, gibflag, var_c3317960);
    if (!isdefined(gibpiece)) {
        return undefined;
    }
    if (gibflag == 8) {
        side = 0;
    } else if (gibflag == 16 || gibflag == 128) {
        side = 1;
    } else if (gibflag == 32 || gibflag == 256) {
        side = 0;
    }
    return gibpiece[side];
}

// Namespace gibclientutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0xb3825383, Offset: 0xa18
// Size: 0x88
function private function_d956078a(entity, var_c3317960) {
    name = entity.gibdef;
    if (isdefined(entity.var_868d0717)) {
        if (isdefined(entity.var_868d0717[var_c3317960])) {
            name = entity.var_868d0717[var_c3317960];
        } else if (isdefined(entity.var_868d0717[0])) {
            name = entity.var_868d0717[0];
        }
    }
    return name;
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0xc434bb0d, Offset: 0xaa8
// Size: 0xdc
function private function_69db754(entity, gibflag, var_c3317960) {
    if (isplayer(entity) || entity isplayercorpse()) {
        return function_c0099e86(entity, gibflag, var_c3317960);
    }
    if (isdefined(entity.gib_data)) {
        gibpieces = function_3aa023f1(entity.gib_data.gibdef);
    } else {
        gibpieces = function_3aa023f1(function_d956078a(entity, var_c3317960));
    }
    return gibpieces[gibflag];
}

// Namespace gibclientutils/gib
// Params 0, eflags: 0x6 linked
// Checksum 0x74bac7be, Offset: 0xb90
// Size: 0x230
function private _annihilatecorpse() {
    while (true) {
        waitresult = level waittill(#"corpse_explode");
        localclientnum = waitresult.localclientnum;
        body = waitresult.body;
        origin = waitresult.position;
        if (!util::is_mature() || util::is_gib_restricted_build()) {
            continue;
        }
        if (isdefined(body) && _hasgibdef(body, 0) && body isragdoll()) {
            cliententgibhead(localclientnum, body, 0);
            cliententgibrightarm(localclientnum, body, 0);
            cliententgibleftarm(localclientnum, body, 0);
            cliententgibrightleg(localclientnum, body, 0);
            cliententgibleftleg(localclientnum, body, 0);
        }
        if (isdefined(body) && _hasgibdef(body, 0) && body.archetype == #"human") {
            if (randomint(100) >= 50) {
                continue;
            }
            if (isdefined(origin) && distancesquared(body.origin, origin) <= 14400) {
                body.ignoreragdoll = 1;
                body _gibentity(localclientnum, 50 | 384, 1, 0);
            }
        }
    }
}

// Namespace gibclientutils/gib
// Params 4, eflags: 0x6 linked
// Checksum 0x49b0e787, Offset: 0xdc8
// Size: 0x182
function private _clonegibdata(*localclientnum, entity, var_c3317960, clone) {
    clone.gib_data = spawnstruct();
    clone.gib_data.gib_state = entity.gib_state;
    clone.gib_data.gibdef = function_d956078a(entity, var_c3317960);
    clone.gib_data.hatmodel = entity.hatmodel;
    clone.gib_data.head = entity.head;
    clone.gib_data.legdmg1 = entity.legdmg1;
    clone.gib_data.legdmg2 = entity.legdmg2;
    clone.gib_data.legdmg3 = entity.legdmg3;
    clone.gib_data.legdmg4 = entity.legdmg4;
    clone.gib_data.torsodmg1 = entity.torsodmg1;
    clone.gib_data.torsodmg2 = entity.torsodmg2;
    clone.gib_data.torsodmg3 = entity.torsodmg3;
    clone.gib_data.torsodmg4 = entity.torsodmg4;
    clone.gib_data.torsodmg5 = entity.torsodmg5;
}

// Namespace gibclientutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0x1a0157c6, Offset: 0xf58
// Size: 0x72
function private _getgibbedstate(*localclientnum, entity) {
    if (isdefined(entity.gib_data) && isdefined(entity.gib_data.gib_state)) {
        return entity.gib_data.gib_state;
    } else if (isdefined(entity.gib_state)) {
        return entity.gib_state;
    }
    return 0;
}

// Namespace gibclientutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0x4e2ea0be, Offset: 0xfd8
// Size: 0x14a
function private _getgibbedlegmodel(localclientnum, entity) {
    gibstate = _getgibbedstate(localclientnum, entity);
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

// Namespace gibclientutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0xec6636e6, Offset: 0x1130
// Size: 0xbc
function private _getgibextramodel(*localclientnumm, entity, gibflag) {
    if (gibflag == 4) {
        return (isdefined(entity.gib_data) ? entity.gib_data.hatmodel : entity.hatmodel);
    }
    if (gibflag == 8) {
        return (isdefined(entity.gib_data) ? entity.gib_data.head : entity.head);
    }
    assertmsg("<unknown string>");
}

// Namespace gibclientutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0x2e73d995, Offset: 0x11f8
// Size: 0x14a
function private _getgibbedtorsomodel(localclientnum, entity) {
    gibstate = _getgibbedstate(localclientnum, entity);
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

// Namespace gibclientutils/gib
// Params 4, eflags: 0x4
// Checksum 0xe5e26748, Offset: 0x1350
// Size: 0x78
function private _gibpiecetag(*localclientnum, entity, gibflag, var_c3317960) {
    if (!_hasgibdef(self, var_c3317960)) {
        return;
    }
    gibpiece = function_69db754(entity, gibflag, var_c3317960);
    if (isdefined(gibpiece)) {
        return gibpiece.gibfxtag;
    }
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0x1f292edf, Offset: 0x13d0
// Size: 0x72
function private function_ba120c50(gibflags) {
    var_ec7623a6 = 0;
    if (gibflags & 12) {
        var_ec7623a6 |= 1;
    }
    if (gibflags & 48) {
        var_ec7623a6 |= 2;
    }
    if (gibflags & 384) {
        var_ec7623a6 |= 4;
    }
    return var_ec7623a6;
}

// Namespace gibclientutils/gib
// Params 4, eflags: 0x6 linked
// Checksum 0xb3b47c28, Offset: 0x1450
// Size: 0x46e
function private _gibentity(localclientnum, gibflags, shouldspawngibs, var_c3317960) {
    entity = self;
    if (!_hasgibdef(entity, var_c3317960)) {
        return;
    }
    currentgibflag = 2;
    gibdir = undefined;
    gibdirscale = undefined;
    if (isplayer(entity) || entity isplayercorpse()) {
        yaw_bits = gibflags >> 14 & 8 - 1;
        yaw = getanglefrombits(yaw_bits, 3);
        gibdir = anglestoforward((0, yaw, 0));
    }
    while (gibflags >= currentgibflag) {
        if (gibflags & currentgibflag) {
            if (currentgibflag == 2) {
                if (isplayer(entity) || entity isplayercorpse()) {
                    var_c0c9eae3 = entity function_4976d5ee();
                    if (isdefined(var_c0c9eae3)) {
                        _playgibfx(localclientnum, entity, var_c0c9eae3[#"fx"], var_c0c9eae3[#"tag"]);
                    }
                } else {
                    gibpiece = function_69db754(entity, currentgibflag, var_c3317960);
                    if (isdefined(gibpiece)) {
                        _playgibfx(localclientnum, entity, gibpiece.gibfx, gibpiece.gibfxtag);
                        if (isdefined(gibpiece.var_42c89fa1)) {
                            if (function_92beaa28(localclientnum)) {
                                _playgibfx(localclientnum, entity, gibpiece.var_42c89fa1, gibpiece.gibfxtag);
                            }
                        }
                        _playgibsound(localclientnum, entity, gibpiece.gibsound);
                    }
                }
                entity hide();
                entity.ignoreragdoll = 1;
            } else {
                gibpiece = function_69db754(entity, currentgibflag, var_c3317960);
                if (isdefined(gibpiece)) {
                    if (shouldspawngibs) {
                        var_cd61eb7d = function_ba120c50(currentgibflag);
                        entity thread _gibpiece(localclientnum, entity, gibpiece.gibmodel, gibpiece.gibtag, gibpiece.gibdynentfx, gibdir, gibdirscale, var_cd61eb7d);
                        if (isdefined(gibpiece.gibhidetag) && entity isplayercorpse() && entity hasdobj(localclientnum)) {
                            entity function_7a198d8c(localclientnum, gibpiece.gibhidetag, "", 1);
                        }
                    }
                    _playgibfx(localclientnum, entity, gibpiece.gibfx, gibpiece.gibfxtag);
                    if (isdefined(gibpiece.var_42c89fa1)) {
                        if (function_92beaa28(localclientnum)) {
                            _playgibfx(localclientnum, entity, gibpiece.var_42c89fa1, gibpiece.gibfxtag);
                        }
                    }
                    _playgibsound(localclientnum, entity, gibpiece.gibsound);
                }
            }
            _handlegibcallbacks(localclientnum, entity, currentgibflag);
        }
        currentgibflag <<= 1;
    }
}

// Namespace gibclientutils/gib
// Params 4, eflags: 0x6 linked
// Checksum 0xf99e7ee8, Offset: 0x18c8
// Size: 0xa2
function private _setgibbed(localclientnum, entity, gibflag, var_c3317960) {
    gib_state = (_getgibbedstate(localclientnum, entity) & 512 - 1 | gibflag & 512 - 1) + (var_c3317960 << 9);
    if (isdefined(entity.gib_data)) {
        entity.gib_data.gib_state = gib_state;
        return;
    }
    entity.gib_state = gib_state;
}

// Namespace gibclientutils/gib
// Params 4, eflags: 0x6 linked
// Checksum 0x44aec546, Offset: 0x1978
// Size: 0x1ac
function private _gibcliententityinternal(localclientnum, entity, gibflag, var_c3317960) {
    if (!util::is_mature() || util::is_gib_restricted_build()) {
        return;
    }
    if (!isdefined(entity) || !_hasgibdef(entity, var_c3317960)) {
        return;
    }
    if (entity.type !== "scriptmover") {
        return;
    }
    if (isgibbed(localclientnum, entity, gibflag)) {
        return;
    }
    if (!(_getgibbedstate(localclientnum, entity) < 16)) {
        legmodel = _getgibbedlegmodel(localclientnum, entity);
        entity detach(legmodel, "");
    }
    _setgibbed(localclientnum, entity, gibflag, var_c3317960);
    entity setmodel(_getgibbedtorsomodel(localclientnum, entity));
    entity attach(_getgibbedlegmodel(localclientnum, entity), "");
    entity _gibentity(localclientnum, gibflag, 1, var_c3317960);
}

// Namespace gibclientutils/gib
// Params 4, eflags: 0x6 linked
// Checksum 0x77b13bb8, Offset: 0x1b30
// Size: 0x1c4
function private _gibclientextrainternal(localclientnum, entity, gibflag, var_c3317960) {
    if (!util::is_mature() || util::is_gib_restricted_build()) {
        return;
    }
    if (!isdefined(entity)) {
        return;
    }
    if (entity.type !== "scriptmover") {
        return;
    }
    if (isgibbed(localclientnum, entity, gibflag)) {
        return;
    }
    gibmodel = _getgibextramodel(localclientnum, entity, gibflag);
    if (isdefined(gibmodel) && entity isattached(gibmodel, "")) {
        entity detach(gibmodel, "");
    }
    if (gibflag == 8) {
        if (isdefined(isdefined(entity.gib_data) ? entity.gib_data.torsodmg5 : entity.torsodmg5)) {
            entity attach(isdefined(entity.gib_data) ? entity.gib_data.torsodmg5 : entity.torsodmg5, "");
        }
    }
    _setgibbed(localclientnum, entity, gibflag, var_c3317960);
    entity _gibentity(localclientnum, gibflag, 1, var_c3317960);
}

// Namespace gibclientutils/gib
// Params 7, eflags: 0x6 linked
// Checksum 0x2a744149, Offset: 0x1d00
// Size: 0x1d2
function private _gibhandler(localclientnum, oldvalue, newvalue, bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    entity = self;
    var_c3317960 = fieldname >> 9 & 32 - 1;
    if (16 < var_c3317960) {
        var_c3317960 = 0;
    }
    if (isplayer(entity) || entity isplayercorpse()) {
        if (!util::is_mature() || util::is_gib_restricted_build()) {
            return;
        }
    } else {
        if (isdefined(entity.maturegib) && entity.maturegib && (!util::is_mature() || !isshowgibsenabled())) {
            return;
        }
        if (isdefined(entity.restrictedgib) && entity.restrictedgib && !isshowgibsenabled()) {
            return;
        }
    }
    gibflags = binitialsnap ^ fieldname;
    shouldspawngibs = !(fieldname & 1);
    if (wasdemojump) {
        gibflags = 0 ^ fieldname;
    }
    entity _gibentity(bnewent, gibflags, shouldspawngibs, var_c3317960);
    entity.gib_state = fieldname;
}

// Namespace gibclientutils/gib
// Params 8, eflags: 0x2 linked
// Checksum 0x5286499, Offset: 0x1ee0
// Size: 0x3cc
function _gibpiece(localclientnum, entity, gibmodel, gibtag, gibfx, gibdir, gibdirscale, var_bf41adc0) {
    if (!isdefined(gibtag) || !isdefined(gibmodel)) {
        return;
    }
    if (gibmodel == #"") {
        return;
    }
    startposition = entity gettagorigin(gibtag);
    startangles = entity gettagangles(gibtag);
    endposition = startposition;
    endangles = startangles;
    forwardvector = undefined;
    if (!isdefined(startposition) || !isdefined(startangles)) {
        return;
    }
    if (isdefined(gibdir) && !isdefined(gibdirscale)) {
        startposition = (0, 0, 0);
        forwardvector = gibdir;
        forwardvector *= randomfloatrange(100, 500);
    } else {
        waitframe(1);
        if (isdefined(entity)) {
            endposition = entity gettagorigin(gibtag);
            endangles = entity gettagangles(gibtag);
        } else {
            endposition = startposition + anglestoforward(startangles) * 10;
            endangles = startangles;
        }
        if (!isdefined(endposition) || !isdefined(endangles)) {
            return;
        }
        scale = randomfloatrange(0.6, 1);
        dir = (randomfloatrange(0, 0.2), randomfloatrange(0, 0.2), randomfloatrange(0.2, 0.7));
        if (isdefined(gibdir) && isdefined(gibdirscale) && gibdirscale > 0) {
            dir = gibdir + dir;
            scale = gibdirscale;
        }
        forwardvector = vectornormalize(endposition - startposition);
        forwardvector *= scale;
        forwardvector += dir;
    }
    if (isdefined(entity)) {
        if (!isdefined(entity.var_f9a4eb08)) {
            entity.var_f9a4eb08 = [];
        }
        gibentity = createdynentandlaunch(localclientnum, gibmodel, endposition, endangles, startposition, forwardvector, gibfx, 1, !is_true(level.var_2f78f66c));
        if (!isdefined(entity.var_f9a4eb08)) {
            entity.var_f9a4eb08 = [];
        } else if (!isarray(entity.var_f9a4eb08)) {
            entity.var_f9a4eb08 = array(entity.var_f9a4eb08);
        }
        entity.var_f9a4eb08[entity.var_f9a4eb08.size] = gibentity;
        if (isdefined(gibentity)) {
            function_1cfbe3d4(gibentity, entity function_c70446c2(), var_bf41adc0);
        }
    }
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x6 linked
// Checksum 0xe1590ee5, Offset: 0x22b8
// Size: 0xc6
function private _handlegibcallbacks(localclientnum, entity, gibflag) {
    if (isdefined(entity._gibcallbacks) && isdefined(entity._gibcallbacks[gibflag])) {
        foreach (callback in entity._gibcallbacks[gibflag]) {
            [[ callback ]](localclientnum, entity, gibflag);
        }
    }
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0xbe164332, Offset: 0x2388
// Size: 0x7c
function private _handlegibannihilate(localclientnum) {
    entity = self;
    entity endon(#"death");
    entity waittillmatch({#notetrack:"gib_annihilate"}, #"_anim_notify_");
    cliententgibannihilate(localclientnum, entity);
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0x7c4174f7, Offset: 0x2410
// Size: 0x7c
function private _handlegibhead(localclientnum) {
    entity = self;
    entity endon(#"death");
    entity waittillmatch({#notetrack:"gib = \"head\""}, #"_anim_notify_");
    cliententgibhead(localclientnum, entity, 0);
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0xe375163a, Offset: 0x2498
// Size: 0x7c
function private _handlegibrightarm(localclientnum) {
    entity = self;
    entity endon(#"death");
    entity waittillmatch({#notetrack:"gib = \"arm_right\""}, #"_anim_notify_");
    cliententgibrightarm(localclientnum, entity, 0);
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0xfb249b1c, Offset: 0x2520
// Size: 0x7c
function private _handlegibleftarm(localclientnum) {
    entity = self;
    entity endon(#"death");
    entity waittillmatch({#notetrack:"gib = \"arm_left\""}, #"_anim_notify_");
    cliententgibleftarm(localclientnum, entity, 0);
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0x796c8080, Offset: 0x25a8
// Size: 0x7c
function private _handlegibrightleg(localclientnum) {
    entity = self;
    entity endon(#"death");
    entity waittillmatch({#notetrack:"gib = \"leg_right\""}, #"_anim_notify_");
    cliententgibrightleg(localclientnum, entity, 0);
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x6 linked
// Checksum 0x9c469d01, Offset: 0x2630
// Size: 0x7c
function private _handlegibleftleg(localclientnum) {
    entity = self;
    entity endon(#"death");
    entity waittillmatch({#notetrack:"gib = \"leg_left\""}, #"_anim_notify_");
    cliententgibleftleg(localclientnum, entity, 0);
}

// Namespace gibclientutils/gib
// Params 2, eflags: 0x6 linked
// Checksum 0x59efa3b3, Offset: 0x26b8
// Size: 0x90
function private _hasgibdef(entity, var_c3317960) {
    return isdefined(entity.gib_data) && isdefined(entity.gib_data.gibdef) || isdefined(entity.gibdef) || isdefined(entity getplayergibdef("arms", var_c3317960)) && isdefined(entity getplayergibdef("legs", var_c3317960));
}

// Namespace gibclientutils/gib
// Params 4, eflags: 0x2 linked
// Checksum 0x75cff62c, Offset: 0x2750
// Size: 0xea
function _playgibfx(localclientnum, entity, fxfilename, fxtag) {
    if (isdefined(fxfilename) && isdefined(fxtag) && entity hasdobj(localclientnum)) {
        fx = util::playfxontag(localclientnum, fxfilename, entity, fxtag);
        if (isdefined(fx)) {
            if (isdefined(entity.team)) {
                setfxteam(localclientnum, fx, entity.team);
            }
            if (is_true(level.setgibfxtoignorepause)) {
                setfxignorepause(localclientnum, fx, 1);
            }
        }
        return fx;
    }
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0x381b54b1, Offset: 0x2848
// Size: 0x5c
function _playgibsound(localclientnum, entity, soundalias) {
    if (level.var_c91b202 === 1) {
        return;
    }
    if (isdefined(soundalias)) {
        playsound(localclientnum, soundalias, entity.origin);
    }
}

// Namespace gibclientutils/gib
// Params 4, eflags: 0x2 linked
// Checksum 0x6dd4ea22, Offset: 0x28b0
// Size: 0xc0
function addgibcallback(*localclientnum, entity, gibflag, callbackfunction) {
    assert(isfunctionptr(callbackfunction));
    if (!isdefined(entity._gibcallbacks)) {
        entity._gibcallbacks = [];
    }
    if (!isdefined(entity._gibcallbacks[gibflag])) {
        entity._gibcallbacks[gibflag] = [];
    }
    gibcallbacks = entity._gibcallbacks[gibflag];
    gibcallbacks[gibcallbacks.size] = callbackfunction;
    entity._gibcallbacks[gibflag] = gibcallbacks;
}

// Namespace gibclientutils/gib
// Params 2, eflags: 0x2 linked
// Checksum 0x5bc675ef, Offset: 0x2978
// Size: 0x74
function cliententgibannihilate(localclientnum, entity) {
    if (!util::is_mature() || util::is_gib_restricted_build()) {
        return;
    }
    entity.ignoreragdoll = 1;
    entity _gibentity(localclientnum, 50 | 384, 1, 0);
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0x6916636e, Offset: 0x29f8
// Size: 0x3c
function cliententgibhead(localclientnum, entity, var_c3317960) {
    _gibclientextrainternal(localclientnum, entity, 8, var_c3317960);
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0x6ef9dd37, Offset: 0x2a40
// Size: 0x54
function cliententgibleftarm(localclientnum, entity, var_c3317960) {
    if (isgibbed(localclientnum, entity, 16)) {
        return;
    }
    _gibcliententityinternal(localclientnum, entity, 32, var_c3317960);
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0x123a744b, Offset: 0x2aa0
// Size: 0x54
function cliententgibrightarm(localclientnum, entity, var_c3317960) {
    if (isgibbed(localclientnum, entity, 32)) {
        return;
    }
    _gibcliententityinternal(localclientnum, entity, 16, var_c3317960);
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0xc1f88f8d, Offset: 0x2b00
// Size: 0x3c
function cliententgibleftleg(localclientnum, entity, var_c3317960) {
    _gibcliententityinternal(localclientnum, entity, 256, var_c3317960);
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0xfda42d42, Offset: 0x2b48
// Size: 0x3c
function cliententgibrightleg(localclientnum, entity, var_c3317960) {
    _gibcliententityinternal(localclientnum, entity, 128, var_c3317960);
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x0
// Checksum 0xd841c69d, Offset: 0x2b90
// Size: 0x308
function createscriptmodelofentity(localclientnum, entity, var_c3317960) {
    clone = spawn(localclientnum, entity.origin, "script_model");
    clone.angles = entity.angles;
    _clonegibdata(localclientnum, entity, var_c3317960, clone);
    gibstate = _getgibbedstate(localclientnum, clone);
    if (!util::is_mature() || util::is_gib_restricted_build()) {
        gibstate = 0;
    }
    if (!(_getgibbedstate(localclientnum, entity) < 16)) {
        clone setmodel(_getgibbedtorsomodel(localclientnum, entity));
        clone attach(_getgibbedlegmodel(localclientnum, entity), "");
    } else {
        clone setmodel(entity.model);
    }
    if (gibstate & 8) {
        if (isdefined(isdefined(clone.gib_data) ? clone.gib_data.torsodmg5 : clone.torsodmg5)) {
            clone attach(isdefined(clone.gib_data) ? clone.gib_data.torsodmg5 : clone.torsodmg5, "");
        }
    } else {
        if (isdefined(isdefined(clone.gib_data) ? clone.gib_data.head : clone.head)) {
            clone attach(isdefined(clone.gib_data) ? clone.gib_data.head : clone.head, "");
        }
        if (!(gibstate & 4) && isdefined(isdefined(clone.gib_data) ? clone.gib_data.hatmodel : clone.hatmodel)) {
            clone attach(isdefined(clone.gib_data) ? clone.gib_data.hatmodel : clone.hatmodel, "");
        }
    }
    return clone;
}

// Namespace gibclientutils/gib
// Params 3, eflags: 0x2 linked
// Checksum 0x16227315, Offset: 0x2ea0
// Size: 0x38
function isgibbed(localclientnum, entity, gibflag) {
    return _getgibbedstate(localclientnum, entity) & gibflag;
}

// Namespace gibclientutils/gib
// Params 2, eflags: 0x0
// Checksum 0xd5b92aeb, Offset: 0x2ee0
// Size: 0x2e
function isundamaged(localclientnum, entity) {
    return _getgibbedstate(localclientnum, entity) == 0;
}

// Namespace gibclientutils/gib
// Params 1, eflags: 0x0
// Checksum 0x4891b8bb, Offset: 0x2f18
// Size: 0xac
function handlegibnotetracks(localclientnum) {
    entity = self;
    entity thread _handlegibannihilate(localclientnum);
    entity thread _handlegibhead(localclientnum);
    entity thread _handlegibrightarm(localclientnum);
    entity thread _handlegibleftarm(localclientnum);
    entity thread _handlegibrightleg(localclientnum);
    entity thread _handlegibleftleg(localclientnum);
}

