// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\ai\systems\destructible_character.csc;
#using scripts\core_common\struct.csc;

#namespace fx_character;

// Namespace fx_character/fx_character
// Params 0, eflags: 0x1
// Checksum 0x7954633a, Offset: 0xf0
// Size: 0x268
function autoexec main() {
    fxbundles = getscriptbundles("fxcharacterdef");
    processedfxbundles = [];
    foreach (fxbundle in fxbundles) {
        effectcount = isdefined(fxbundle.effectcount) ? fxbundle.effectcount : 0;
        processedfxbundle = spawnstruct();
        processedfxbundle.effectcount = effectcount;
        processedfxbundle.fx = [];
        processedfxbundle.name = fxbundle.name;
        for (index = 1; index <= effectcount; index++) {
            fx = fxbundle.("effect" + index + "_fx");
            if (isdefined(fx)) {
                fxstruct = spawnstruct();
                fxstruct.attachtag = fxbundle.("effect" + index + "_attachtag");
                fxstruct.fx = fxbundle.("effect" + index + "_fx");
                fxstruct.stopongib = fxclientutils::_gibpartnametogibflag(fxbundle.("effect" + index + "_stopongib"));
                fxstruct.stoponpiecedestroyed = fxbundle.("effect" + index + "_stoponpiecedestroyed");
                processedfxbundle.fx[processedfxbundle.fx.size] = fxstruct;
            }
        }
        processedfxbundles[fxbundle.name] = processedfxbundle;
    }
    level.fxcharacterdefs = processedfxbundles;
}

#namespace fxclientutils;

// Namespace fxclientutils/fx_character
// Params 1, eflags: 0x6 linked
// Checksum 0x4ec6680a, Offset: 0x360
// Size: 0x1c
function private _getfxbundle(name) {
    return level.fxcharacterdefs[name];
}

// Namespace fxclientutils/fx_character
// Params 2, eflags: 0x6 linked
// Checksum 0x31b3d4f5, Offset: 0x388
// Size: 0x13c
function private _configentity(localclientnum, entity) {
    if (!isdefined(entity._fxcharacter)) {
        entity._fxcharacter = [];
        handledgibs = array(8, 16, 32, 128, 256);
        foreach (gibflag in handledgibs) {
            gibclientutils::addgibcallback(localclientnum, entity, gibflag, &_gibhandler);
        }
        for (index = 1; index <= 20; index++) {
            destructclientutils::adddestructpiececallback(localclientnum, entity, index, &_destructhandler);
        }
    }
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x6 linked
// Checksum 0x3e4e8ab2, Offset: 0x4d0
// Size: 0x132
function private _destructhandler(localclientnum, entity, piecenumber) {
    if (!isdefined(entity._fxcharacter)) {
        return;
    }
    foreach (fxbundlename, fxbundleinst in entity._fxcharacter) {
        fxbundle = _getfxbundle(fxbundlename);
        for (index = 0; index < fxbundle.fx.size; index++) {
            if (isdefined(fxbundleinst[index]) && fxbundle.fx[index].stoponpiecedestroyed === piecenumber) {
                stopfx(localclientnum, fxbundleinst[index]);
                fxbundleinst[index] = undefined;
            }
        }
    }
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x6 linked
// Checksum 0xe0b8a954, Offset: 0x610
// Size: 0x132
function private _gibhandler(localclientnum, entity, gibflag) {
    if (!isdefined(entity._fxcharacter)) {
        return;
    }
    foreach (fxbundlename, fxbundleinst in entity._fxcharacter) {
        fxbundle = _getfxbundle(fxbundlename);
        for (index = 0; index < fxbundle.fx.size; index++) {
            if (isdefined(fxbundleinst[index]) && fxbundle.fx[index].stopongib === gibflag) {
                stopfx(localclientnum, fxbundleinst[index]);
                fxbundleinst[index] = undefined;
            }
        }
    }
}

// Namespace fxclientutils/fx_character
// Params 1, eflags: 0x6 linked
// Checksum 0xbd95b03b, Offset: 0x750
// Size: 0x92
function private _gibpartnametogibflag(gibpartname) {
    if (isdefined(gibpartname)) {
        switch (gibpartname) {
        case #"head":
            return 8;
        case #"right arm":
            return 16;
        case #"left arm":
            return 32;
        case #"right leg":
            return 128;
        case #"left leg":
            return 256;
        }
    }
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x6 linked
// Checksum 0xb45a7ca7, Offset: 0x7f0
// Size: 0x42
function private _isgibbed(localclientnum, entity, stopongibflag) {
    if (!isdefined(stopongibflag)) {
        return 0;
    }
    return gibclientutils::isgibbed(localclientnum, entity, stopongibflag);
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x6 linked
// Checksum 0xc667960e, Offset: 0x840
// Size: 0x42
function private _ispiecedestructed(localclientnum, entity, stoponpiecedestroyed) {
    if (!isdefined(stoponpiecedestroyed)) {
        return 0;
    }
    return destructclientutils::ispiecedestructed(localclientnum, entity, stoponpiecedestroyed);
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x6 linked
// Checksum 0x3a76802f, Offset: 0x890
// Size: 0x6e
function private _shouldplayfx(localclientnum, entity, fxstruct) {
    if (_isgibbed(localclientnum, entity, fxstruct.stopongib)) {
        return false;
    }
    if (_ispiecedestructed(localclientnum, entity, fxstruct.stoponpiecedestroyed)) {
        return false;
    }
    return true;
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x0
// Checksum 0xf645719f, Offset: 0x908
// Size: 0x144
function playfxbundle(localclientnum, entity, fxscriptbundle) {
    if (!isdefined(entity) || !isdefined(fxscriptbundle)) {
        return;
    }
    _configentity(localclientnum, entity);
    fxbundle = _getfxbundle(fxscriptbundle);
    if (isdefined(entity._fxcharacter[fxbundle.name])) {
        return;
    }
    if (isdefined(fxbundle)) {
        playingfx = [];
        for (index = 0; index < fxbundle.fx.size; index++) {
            fxstruct = fxbundle.fx[index];
            if (_shouldplayfx(localclientnum, entity, fxstruct)) {
                playingfx[index] = gibclientutils::_playgibfx(localclientnum, entity, fxstruct.fx, fxstruct.attachtag);
            }
        }
        if (playingfx.size > 0) {
            entity._fxcharacter[fxbundle.name] = playingfx;
        }
    }
}

// Namespace fxclientutils/fx_character
// Params 2, eflags: 0x0
// Checksum 0x291f489c, Offset: 0xa58
// Size: 0x130
function stopallfxbundles(localclientnum, entity) {
    _configentity(localclientnum, entity);
    fxbundlenames = [];
    foreach (fxbundlename, fxbundle in entity._fxcharacter) {
        fxbundlenames[fxbundlenames.size] = fxbundlename;
    }
    foreach (fxbundlename in fxbundlenames) {
        stopfxbundle(localclientnum, entity, fxbundlename);
    }
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x2 linked
// Checksum 0xe19a8c5e, Offset: 0xb90
// Size: 0x124
function stopfxbundle(localclientnum, entity, fxscriptbundle) {
    if (!isdefined(fxscriptbundle)) {
        return;
    }
    _configentity(localclientnum, entity);
    fxbundle = _getfxbundle(fxscriptbundle);
    if (isdefined(entity._fxcharacter[fxbundle.name])) {
        foreach (fx in entity._fxcharacter[fxbundle.name]) {
            if (isdefined(fx)) {
                stopfx(localclientnum, fx);
            }
        }
        entity._fxcharacter[fxbundle.name] = undefined;
    }
}

// Namespace fxclientutils/fx_character
// Params 3, eflags: 0x0
// Checksum 0xd723db4d, Offset: 0xcc0
// Size: 0x124
function function_ae92446(localclientnum, entity, fxscriptbundle) {
    if (!isdefined(fxscriptbundle)) {
        return;
    }
    _configentity(localclientnum, entity);
    fxbundle = _getfxbundle(fxscriptbundle);
    if (isdefined(entity._fxcharacter[fxbundle.name])) {
        foreach (fx in entity._fxcharacter[fxbundle.name]) {
            if (isdefined(fx)) {
                killfx(localclientnum, fx);
            }
        }
        entity._fxcharacter[fxbundle.name] = undefined;
    }
}

