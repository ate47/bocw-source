// Atian COD Tools GSC CW decompiler test
#namespace plannerblackboard;

/#

    // Namespace plannerblackboard/planner_blackboard
    // Params 0, eflags: 0x1
    // Checksum 0xc5ce24cf, Offset: 0x90
    // Size: 0x34
    function autoexec main() {
        level.__ai_debugplannerblackboard = getdvarint(#"ai_debugplannerblackboard", 0);
    }

#/

// Namespace plannerblackboard/planner_blackboard
// Params 1, eflags: 0x2 linked
// Checksum 0xe9cdf164, Offset: 0xd0
// Size: 0x3e
function clearundostack(blackboard) {
    assert(isstruct(blackboard));
    blackboard.undostack = [];
}

// Namespace plannerblackboard/planner_blackboard
// Params 1, eflags: 0x2 linked
// Checksum 0x42fa3a9b, Offset: 0x118
// Size: 0x80
function create(&blackboardvalues) {
    assert(isarray(blackboardvalues));
    blackboard = spawnstruct();
    blackboard.undostack = [];
    blackboard.values = blackboardvalues;
    setreadmode(blackboard);
    return blackboard;
}

// Namespace plannerblackboard/planner_blackboard
// Params 2, eflags: 0x2 linked
// Checksum 0xe8913676, Offset: 0x1a0
// Size: 0xf8
function getattribute(blackboard, attribute) {
    assert(isstruct(blackboard));
    assert(isstring(attribute) || ishash(attribute));
    assert(isarray(blackboard.values));
    value = blackboard.values[attribute];
    if (isarray(value)) {
        return arraycopy(value);
    }
    return value;
}

// Namespace plannerblackboard/planner_blackboard
// Params 1, eflags: 0x2 linked
// Checksum 0xb39a1657, Offset: 0x2a0
// Size: 0x70
function getundostacksize(blackboard) {
    assert(isstruct(blackboard));
    assert(isarray(blackboard.undostack));
    return blackboard.undostack.size;
}

// Namespace plannerblackboard/planner_blackboard
// Params 4, eflags: 0x2 linked
// Checksum 0x14da3484, Offset: 0x318
// Size: 0x2ac
function setattribute(blackboard, attribute, value, readonly = 0) {
    assert(isstruct(blackboard));
    assert(isstring(attribute) || ishash(attribute));
    assert(isarray(blackboard.values));
    assert(isarray(blackboard.undostack));
    assert(blackboard.mode === "<unknown string>");
    /#
        if (isdefined(level.__ai_debugplannerblackboard) && level.__ai_debugplannerblackboard > 0 && !readonly) {
            assert(!isstruct(value), "<unknown string>");
            if (isarray(value)) {
                foreach (entryvalue in value) {
                    assert(!isstruct(entryvalue), "<unknown string>");
                }
            }
        }
    #/
    stackvalue = spawnstruct();
    stackvalue.attribute = attribute;
    stackvalue.value = blackboard.values[attribute];
    blackboard.undostack[blackboard.undostack.size] = stackvalue;
    blackboard.values[attribute] = value;
}

// Namespace plannerblackboard/planner_blackboard
// Params 1, eflags: 0x2 linked
// Checksum 0x7cc370cf, Offset: 0x5d0
// Size: 0x1a
function setreadmode(blackboard) {
    blackboard.mode = "r";
}

// Namespace plannerblackboard/planner_blackboard
// Params 1, eflags: 0x2 linked
// Checksum 0xd68b0840, Offset: 0x5f8
// Size: 0x1a
function setreadwritemode(blackboard) {
    blackboard.mode = "rw";
}

// Namespace plannerblackboard/planner_blackboard
// Params 2, eflags: 0x2 linked
// Checksum 0xbd476e95, Offset: 0x620
// Size: 0x144
function undo(blackboard, stackindex) {
    assert(isstruct(blackboard));
    assert(isarray(blackboard.values));
    assert(isarray(blackboard.undostack));
    assert(stackindex < blackboard.undostack.size);
    for (index = blackboard.undostack.size - 1; index > stackindex; index--) {
        stackvalue = blackboard.undostack[index];
        blackboard.values[stackvalue.attribute] = stackvalue.value;
        arrayremoveindex(blackboard.undostack, index);
    }
}

