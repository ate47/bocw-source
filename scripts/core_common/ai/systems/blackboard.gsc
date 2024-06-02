// Atian COD Tools GSC CW decompiler test
#namespace blackboard;

// Namespace blackboard/blackboard
// Params 4, eflags: 0x0
// Checksum 0x5fd05a3f, Offset: 0x80
// Size: 0x11c
function registerblackboardattribute(entity, attributename, defaultattributevalue, getterfunction) {
    assert(isdefined(entity.__blackboard), "<unknown string>");
    assert(!isdefined(entity.__blackboard[attributename]), "<unknown string>" + attributename + "<unknown string>");
    if (isdefined(getterfunction)) {
        assert(isfunctionptr(getterfunction));
        entity.__blackboard[attributename] = getterfunction;
    } else {
        if (!isdefined(defaultattributevalue)) {
            defaultattributevalue = undefined;
        }
        entity.__blackboard[attributename] = defaultattributevalue;
    }
    /#
        if (isactor(entity)) {
            entity trackblackboardattribute(attributename);
        }
    #/
}

// Namespace blackboard/blackboard
// Params 2, eflags: 0x2 linked
// Checksum 0x103b8158, Offset: 0x1a8
// Size: 0xc2
function getstructblackboardattribute(struct, attributename) {
    assert(isstruct(struct) || isentity(struct));
    if (isfunctionptr(struct.__blackboard[attributename])) {
        getterfunction = struct.__blackboard[attributename];
        attributevalue = struct [[ getterfunction ]]();
        return attributevalue;
    }
    return struct.__blackboard[attributename];
}

// Namespace blackboard/blackboard
// Params 3, eflags: 0x0
// Checksum 0xbd3fd081, Offset: 0x278
// Size: 0xec
function setstructblackboardattribute(struct, attributename, attributevalue) {
    assert(isstruct(struct) || isentity(struct));
    if (isdefined(struct.__blackboard[attributename])) {
        if (!isdefined(attributevalue) && isfunctionptr(struct.__blackboard[attributename])) {
            return;
        }
        assert(!isfunctionptr(struct.__blackboard[attributename]), "<unknown string>");
    }
    struct.__blackboard[attributename] = attributevalue;
}

// Namespace blackboard/blackboard
// Params 1, eflags: 0x0
// Checksum 0x2582d08, Offset: 0x370
// Size: 0x7c
function createblackboardforentity(entity) {
    if (!isdefined(entity.__blackboard)) {
        entity.__blackboard = [];
        if (isentity(entity)) {
            entity createblackboardentries();
        }
    }
    if (!isdefined(level._setblackboardattributefunc)) {
        level._setblackboardattributefunc = &setblackboardattribute;
    }
}

// Namespace blackboard/blackboard
// Params 1, eflags: 0x0
// Checksum 0xadedf93, Offset: 0x3f8
// Size: 0xfc
function cloneblackboardfromstruct(struct) {
    assert(isstruct(struct) || isentity(struct));
    blackboard = [];
    if (isdefined(struct.__blackboard)) {
        foreach (k, v in struct.__blackboard) {
            blackboard[k] = getstructblackboardattribute(struct, k);
        }
    }
    return blackboard;
}

