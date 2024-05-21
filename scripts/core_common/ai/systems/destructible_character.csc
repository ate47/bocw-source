// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\struct.csc;

#namespace destructclientutils;

// Namespace destructclientutils/destructible_character
// Params 0, eflags: 0x5
// Checksum 0x760a7a7, Offset: 0x1d8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"destructible_character", &preinit, undefined, undefined, undefined);
}

// Namespace destructclientutils/destructible_character
// Params 0, eflags: 0x6 linked
// Checksum 0x2dc53bd2, Offset: 0x220
// Size: 0x610
function private preinit() {
    clientfield::register("actor", "destructible_character_state", 1, 21, "int", &_destructhandler, 0, 0);
    destructibles = getscriptbundles("destructiblecharacterdef");
    processedbundles = [];
    foreach (destructible in destructibles) {
        destructbundle = spawnstruct();
        destructbundle.piececount = destructible.piececount;
        destructbundle.pieces = [];
        destructbundle.name = destructible.name;
        for (index = 1; index <= destructbundle.piececount; index++) {
            piecestruct = spawnstruct();
            piecestruct.gibmodel = destructible.("piece" + index + "_gibmodel");
            piecestruct.gibtag = destructible.("piece" + index + "_gibtag");
            if (isdefined(destructible.("piece" + index + "_gibdirX")) || isdefined(destructible.("piece" + index + "_gibdirY")) || isdefined(destructible.("piece" + index + "_gibdirZ"))) {
                piecestruct.gibdir = (isdefined(destructible.("piece" + index + "_gibdirX")) ? destructible.("piece" + index + "_gibdirX") : 0, isdefined(destructible.("piece" + index + "_gibdirY")) ? destructible.("piece" + index + "_gibdirY") : 0, isdefined(destructible.("piece" + index + "_gibdirZ")) ? destructible.("piece" + index + "_gibdirZ") : 0);
            }
            piecestruct.gibdirscale = destructible.("piece" + index + "_gibdirscale");
            piecestruct.gibdynentfx = destructible.("piece" + index + "_gibdynentfx");
            piecestruct.gibfx = destructible.("piece" + index + "_gibfx");
            piecestruct.gibfxtag = destructible.("piece" + index + "_gibeffecttag");
            piecestruct.var_ed372a00 = destructible.("piece" + index + "_gibfx2");
            piecestruct.var_e230b617 = destructible.("piece" + index + "_gibeffecttag2");
            piecestruct.gibsound = destructible.("piece" + index + "_gibsound");
            piecestruct.hitlocation = destructible.("piece" + index + "_hitlocation");
            piecestruct.hidetag = destructible.("piece" + index + "_hidetag");
            piecestruct.detachmodel = destructible.("piece" + index + "_detachmodel");
            if (isdefined(destructible.("piece" + index + "_hittags"))) {
                piecestruct.hittags = [];
                foreach (var_5440c126 in destructible.("piece" + index + "_hittags")) {
                    if (!isdefined(piecestruct.hittags)) {
                        piecestruct.hittags = [];
                    } else if (!isarray(piecestruct.hittags)) {
                        piecestruct.hittags = array(piecestruct.hittags);
                    }
                    piecestruct.hittags[piecestruct.hittags.size] = var_5440c126.hittag;
                }
            }
            destructbundle.pieces[destructbundle.pieces.size] = piecestruct;
        }
        processedbundles[destructible.name] = destructbundle;
    }
    level.destructiblecharacterdefs = processedbundles;
}

// Namespace destructclientutils/destructible_character
// Params 1, eflags: 0x6 linked
// Checksum 0x25b7b666, Offset: 0x838
// Size: 0x20
function private _getdestructibledef(entity) {
    return level.destructiblecharacterdefs[entity.destructibledef];
}

// Namespace destructclientutils/destructible_character
// Params 7, eflags: 0x6 linked
// Checksum 0x19110fe9, Offset: 0x860
// Size: 0x136
function private _destructhandler(localclientnum, oldvalue, newvalue, bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (!util::is_mature() || util::is_gib_restricted_build()) {
        return;
    }
    entity = self;
    destructflags = binitialsnap ^ fieldname;
    shouldspawngibs = fieldname & 1;
    if (wasdemojump) {
        destructflags = 0 ^ fieldname;
    }
    if (!isdefined(entity.destructibledef)) {
        return;
    }
    currentdestructflag = 2;
    for (piecenumber = 1; destructflags >= currentdestructflag; piecenumber++) {
        if (destructflags & currentdestructflag) {
            _destructpiece(bnewent, entity, piecenumber, shouldspawngibs);
        }
        currentdestructflag <<= 1;
    }
    entity._destruct_state = fieldname;
}

// Namespace destructclientutils/destructible_character
// Params 4, eflags: 0x6 linked
// Checksum 0xe4e22fc2, Offset: 0x9a0
// Size: 0x1b4
function private _destructpiece(localclientnum, entity, piecenumber, shouldspawngibs) {
    if (!isdefined(entity.destructibledef)) {
        return;
    }
    destructbundle = _getdestructibledef(entity);
    piece = destructbundle.pieces[piecenumber - 1];
    if (isdefined(piece)) {
        if (shouldspawngibs) {
            gibclientutils::_playgibfx(localclientnum, entity, piece.gibfx, piece.gibfxtag);
            gibclientutils::_playgibfx(localclientnum, entity, piece.var_ed372a00, piece.var_e230b617);
            entity thread gibclientutils::_gibpiece(localclientnum, entity, piece.gibmodel, piece.gibtag, piece.gibdynentfx, piece.gibdir, piece.gibdirscale, 1 | 2 | 4);
            gibclientutils::_playgibsound(localclientnum, entity, piece.gibsound);
        } else if (isdefined(piece.gibfx) && function_9229eb67(piece.gibfx)) {
            gibclientutils::_playgibfx(localclientnum, entity, piece.gibfx, piece.gibfxtag);
        }
        _handledestructcallbacks(localclientnum, entity, piecenumber);
    }
}

// Namespace destructclientutils/destructible_character
// Params 2, eflags: 0x6 linked
// Checksum 0x68af5139, Offset: 0xb60
// Size: 0x32
function private _getdestructstate(*localclientnum, entity) {
    if (isdefined(entity._destruct_state)) {
        return entity._destruct_state;
    }
    return 0;
}

// Namespace destructclientutils/destructible_character
// Params 3, eflags: 0x6 linked
// Checksum 0xaa82e44, Offset: 0xba0
// Size: 0xdc
function private _handledestructcallbacks(localclientnum, entity, piecenumber) {
    if (isdefined(entity._destructcallbacks) && isdefined(entity._destructcallbacks[piecenumber])) {
        foreach (callback in entity._destructcallbacks[piecenumber]) {
            if (isfunctionptr(callback)) {
                [[ callback ]](localclientnum, entity, piecenumber);
            }
        }
    }
}

// Namespace destructclientutils/destructible_character
// Params 4, eflags: 0x2 linked
// Checksum 0xb3231ced, Offset: 0xc88
// Size: 0xc0
function adddestructpiececallback(*localclientnum, entity, piecenumber, callbackfunction) {
    assert(isfunctionptr(callbackfunction));
    if (!isdefined(entity._destructcallbacks)) {
        entity._destructcallbacks = [];
    }
    if (!isdefined(entity._destructcallbacks[piecenumber])) {
        entity._destructcallbacks[piecenumber] = [];
    }
    destructcallbacks = entity._destructcallbacks[piecenumber];
    destructcallbacks[destructcallbacks.size] = callbackfunction;
    entity._destructcallbacks[piecenumber] = destructcallbacks;
}

// Namespace destructclientutils/destructible_character
// Params 3, eflags: 0x2 linked
// Checksum 0x14d1284, Offset: 0xd50
// Size: 0x3e
function ispiecedestructed(localclientnum, entity, piecenumber) {
    return _getdestructstate(localclientnum, entity) & 1 << piecenumber;
}

