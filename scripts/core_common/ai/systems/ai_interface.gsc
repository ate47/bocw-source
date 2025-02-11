#namespace ai_interface;

/#

    // Namespace ai_interface/ai_interface
    // Params 0, eflags: 0x1
    // Checksum 0xa6106f93, Offset: 0xd8
    // Size: 0x34
    function autoexec main() {
        level.__ai_debuginterface = getdvarint(#"ai_debuginterface", 0);
    }

    // Namespace ai_interface/ai_interface
    // Params 3, eflags: 0x4
    // Checksum 0x74b923bb, Offset: 0x118
    // Size: 0x31a
    function private _checkvalue(archetype, attributename, value) {
        attribute = level.__ai_interface[archetype][attributename];
        switch (attribute[#"type"]) {
        case #"_interface_entity":
            break;
        case #"_interface_match":
            possiblevalues = attribute[#"values"];
            assert(!isarray(possiblevalues) || isinarray(possiblevalues, value), "<dev string:x38>" + value + "<dev string:x41>" + attributename + "<dev string:x77>");
            break;
        case #"_interface_numeric":
            maxvalue = attribute[#"max_value"];
            minvalue = attribute[#"min_value"];
            assert(isint(value) || isfloat(value), "<dev string:x7d>" + attributename + "<dev string:x90>" + value + "<dev string:xb4>");
            assert(!isdefined(maxvalue) && !isdefined(minvalue) || value <= maxvalue && value >= minvalue, "<dev string:x38>" + value + "<dev string:xcb>" + minvalue + "<dev string:xf2>" + maxvalue + "<dev string:xf7>");
            break;
        case #"_interface_vector":
            if (isdefined(value)) {
                assert(isvec(value), "<dev string:x7d>" + attributename + "<dev string:xfd>" + value + "<dev string:xb4>");
            }
            break;
        default:
            assert("<dev string:x120>" + attribute[#"type"] + "<dev string:x143>" + attributename + "<dev string:x77>");
            break;
        }
    }

    // Namespace ai_interface/ai_interface
    // Params 2, eflags: 0x4
    // Checksum 0xa5020092, Offset: 0x440
    // Size: 0x30c
    function private _checkprerequisites(entity, attribute) {
        if (isdefined(level.__ai_debuginterface) && level.__ai_debuginterface > 0) {
            assert(isentity(entity) || isstruct(entity), "<dev string:x158>");
            assert(isactor(entity) || isvehicle(entity) || isstruct(entity) || isbot(entity), "<dev string:x18b>");
            assert(isstring(attribute), "<dev string:x1c8>");
            assert(isarray(entity.__interface), "<dev string:x1f4>" + function_9e72a96(entity.archetype) + "<dev string:x203>" + "<dev string:x237>");
            assert(isarray(level.__ai_interface), "<dev string:x269>");
            assert(isarray(level.__ai_interface[entity.archetype]), "<dev string:x2b5>" + function_9e72a96(entity.archetype) + "<dev string:x2da>");
            assert(isarray(level.__ai_interface[entity.archetype][attribute]), "<dev string:x7d>" + attribute + "<dev string:x2f5>" + function_9e72a96(entity.archetype) + "<dev string:x322>");
            assert(isstring(level.__ai_interface[entity.archetype][attribute][#"type"]), "<dev string:x32c>" + attribute + "<dev string:x77>");
        }
    }

    // Namespace ai_interface/ai_interface
    // Params 3, eflags: 0x4
    // Checksum 0xd844c171, Offset: 0x758
    // Size: 0xc4
    function private _checkregistrationprerequisites(archetype, attribute, callbackfunction) {
        assert(ishash(archetype), "<dev string:x355>");
        assert(ishash(attribute), "<dev string:x39b>");
        assert(!isdefined(callbackfunction) || isfunctionptr(callbackfunction), "<dev string:x3e1>");
    }

#/

// Namespace ai_interface/ai_interface
// Params 1, eflags: 0x4
// Checksum 0x3194a2cb, Offset: 0x828
// Size: 0x50
function private _initializelevelinterface(archetype) {
    if (!isdefined(level.__ai_interface)) {
        level.__ai_interface = [];
    }
    if (!isdefined(level.__ai_interface[archetype])) {
        level.__ai_interface[archetype] = [];
    }
}

#namespace ai;

// Namespace ai/ai_interface
// Params 1, eflags: 0x0
// Checksum 0x9a3fddf3, Offset: 0x880
// Size: 0x26
function createinterfaceforentity(entity) {
    if (!isdefined(entity.__interface)) {
        entity.__interface = [];
    }
}

// Namespace ai/ai_interface
// Params 2, eflags: 0x0
// Checksum 0x40291483, Offset: 0x8b0
// Size: 0x7c
function getaiattribute(entity, attribute) {
    /#
        ai_interface::_checkprerequisites(entity, attribute);
    #/
    if (!isdefined(entity.__interface[attribute])) {
        return level.__ai_interface[entity.archetype][attribute][#"default_value"];
    }
    return entity.__interface[attribute];
}

// Namespace ai/ai_interface
// Params 2, eflags: 0x0
// Checksum 0xbe1745e7, Offset: 0x938
// Size: 0x7a
function hasaiattribute(entity, attribute) {
    return isdefined(entity) && isdefined(attribute) && isdefined(entity.archetype) && isdefined(level.__ai_interface) && isdefined(level.__ai_interface[entity.archetype]) && isdefined(level.__ai_interface[entity.archetype][attribute]);
}

// Namespace ai/ai_interface
// Params 4, eflags: 0x0
// Checksum 0x364f2d6e, Offset: 0x9c0
// Size: 0x154
function registerentityinterface(archetype, attribute, defaultvalue, callbackfunction) {
    /#
        ai_interface::_checkregistrationprerequisites(archetype, attribute, callbackfunction);
    #/
    ai_interface::_initializelevelinterface(archetype);
    assert(!isdefined(level.__ai_interface[archetype][attribute]), "<dev string:x38>" + attribute + "<dev string:x434>" + archetype + "<dev string:x45f>");
    level.__ai_interface[archetype][attribute] = [];
    level.__ai_interface[archetype][attribute][#"callback"] = callbackfunction;
    level.__ai_interface[archetype][attribute][#"default_value"] = defaultvalue;
    level.__ai_interface[archetype][attribute][#"type"] = "_interface_entity";
    /#
        ai_interface::_checkvalue(archetype, attribute, defaultvalue);
    #/
}

// Namespace ai/ai_interface
// Params 5, eflags: 0x0
// Checksum 0x9c3b4fdd, Offset: 0xb20
// Size: 0x1bc
function registermatchedinterface(archetype, attribute, defaultvalue, possiblevalues, callbackfunction) {
    /#
        ai_interface::_checkregistrationprerequisites(archetype, attribute, callbackfunction);
        assert(!isdefined(possiblevalues) || isarray(possiblevalues), "<dev string:x464>");
    #/
    ai_interface::_initializelevelinterface(archetype);
    assert(!isdefined(level.__ai_interface[archetype][attribute]), "<dev string:x38>" + attribute + "<dev string:x434>" + archetype + "<dev string:x45f>");
    level.__ai_interface[archetype][attribute] = [];
    level.__ai_interface[archetype][attribute][#"callback"] = callbackfunction;
    level.__ai_interface[archetype][attribute][#"default_value"] = defaultvalue;
    level.__ai_interface[archetype][attribute][#"type"] = "_interface_match";
    level.__ai_interface[archetype][attribute][#"values"] = possiblevalues;
    /#
        ai_interface::_checkvalue(archetype, attribute, defaultvalue);
    #/
}

// Namespace ai/ai_interface
// Params 6, eflags: 0x0
// Checksum 0xf58fef53, Offset: 0xce8
// Size: 0x2ec
function registernumericinterface(archetype, attribute, defaultvalue, minimum, maximum, callbackfunction) {
    /#
        ai_interface::_checkregistrationprerequisites(archetype, attribute, callbackfunction);
        assert(!isdefined(minimum) || isint(minimum) || isfloat(minimum), "<dev string:x4ab>");
        assert(!isdefined(maximum) || isint(maximum) || isfloat(maximum), "<dev string:x4ec>");
        assert(!isdefined(minimum) && !isdefined(maximum) || isdefined(minimum) && isdefined(maximum), "<dev string:x52d>");
        assert(!isdefined(minimum) && !isdefined(maximum) || minimum <= maximum, "<dev string:x7d>" + attribute + "<dev string:x584>" + "<dev string:x5b0>");
    #/
    ai_interface::_initializelevelinterface(archetype);
    assert(!isdefined(level.__ai_interface[archetype][attribute]), "<dev string:x38>" + attribute + "<dev string:x434>" + archetype + "<dev string:x45f>");
    level.__ai_interface[archetype][attribute] = [];
    level.__ai_interface[archetype][attribute][#"callback"] = callbackfunction;
    level.__ai_interface[archetype][attribute][#"default_value"] = defaultvalue;
    level.__ai_interface[archetype][attribute][#"max_value"] = maximum;
    level.__ai_interface[archetype][attribute][#"min_value"] = minimum;
    level.__ai_interface[archetype][attribute][#"type"] = "_interface_numeric";
    /#
        ai_interface::_checkvalue(archetype, attribute, defaultvalue);
    #/
}

// Namespace ai/ai_interface
// Params 4, eflags: 0x0
// Checksum 0x5b050346, Offset: 0xfe0
// Size: 0x154
function registervectorinterface(archetype, attribute, defaultvalue, callbackfunction) {
    /#
        ai_interface::_checkregistrationprerequisites(archetype, attribute, callbackfunction);
    #/
    ai_interface::_initializelevelinterface(archetype);
    assert(!isdefined(level.__ai_interface[archetype][attribute]), "<dev string:x38>" + attribute + "<dev string:x434>" + archetype + "<dev string:x45f>");
    level.__ai_interface[archetype][attribute] = [];
    level.__ai_interface[archetype][attribute][#"callback"] = callbackfunction;
    level.__ai_interface[archetype][attribute][#"default_value"] = defaultvalue;
    level.__ai_interface[archetype][attribute][#"type"] = "_interface_vector";
    /#
        ai_interface::_checkvalue(archetype, attribute, defaultvalue);
    #/
}

// Namespace ai/ai_interface
// Params 3, eflags: 0x0
// Checksum 0x956add97, Offset: 0x1140
// Size: 0x110
function setaiattribute(entity, attribute, value) {
    /#
        ai_interface::_checkprerequisites(entity, attribute);
        ai_interface::_checkvalue(entity.archetype, attribute, value);
    #/
    oldvalue = entity.__interface[attribute];
    if (!isdefined(oldvalue)) {
        oldvalue = level.__ai_interface[entity.archetype][attribute][#"default_value"];
    }
    entity.__interface[attribute] = value;
    callback = level.__ai_interface[entity.archetype][attribute][#"callback"];
    if (isfunctionptr(callback)) {
        [[ callback ]](entity, attribute, oldvalue, value);
    }
}

