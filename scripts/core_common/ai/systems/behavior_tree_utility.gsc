// Atian COD Tools GSC CW decompiler test
#namespace behaviortreenetworkutility;

// Namespace behaviortreenetworkutility/behavior_tree_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x39369a3d, Offset: 0x80
// Size: 0xe4
function registerbehaviortreescriptapi(functionname, functionptr, allowedcallsperframe) {
    if (!isdefined(level._behaviortreescriptfunctions)) {
        level._behaviortreescriptfunctions = [];
    }
    assert(isdefined(functionname) && isdefined(functionptr), "<unknown string>");
    /#
        if (!is_true(level.var_70f1c402)) {
            assert(!isdefined(level._behaviortreescriptfunctions[functionname]), "<unknown string>");
        }
    #/
    level._behaviortreescriptfunctions[functionname] = functionptr;
    if (isdefined(allowedcallsperframe)) {
        registerlimitedbehaviortreeapi(functionname, allowedcallsperframe);
    }
}

// Namespace behaviortreenetworkutility/behavior_tree_utility
// Params 4, eflags: 0x2 linked
// Checksum 0x669eca6, Offset: 0x170
// Size: 0x1ea
function registerbehaviortreeaction(actionname, startfuncptr, updatefuncptr, terminatefuncptr) {
    if (!isdefined(level._behaviortreeactions)) {
        level._behaviortreeactions = [];
    }
    assert(isdefined(actionname), "<unknown string>");
    /#
        if (!is_true(level.var_70f1c402)) {
            assert(!isdefined(level._behaviortreeactions[actionname]), "<unknown string>" + actionname + "<unknown string>");
        }
    #/
    level._behaviortreeactions[actionname] = array();
    if (isdefined(startfuncptr)) {
        assert(isfunctionptr(startfuncptr), "<unknown string>");
        level._behaviortreeactions[actionname][#"bhtn_action_start"] = startfuncptr;
    }
    if (isdefined(updatefuncptr)) {
        assert(isfunctionptr(updatefuncptr), "<unknown string>");
        level._behaviortreeactions[actionname][#"bhtn_action_update"] = updatefuncptr;
    }
    if (isdefined(terminatefuncptr)) {
        assert(isfunctionptr(terminatefuncptr), "<unknown string>");
        level._behaviortreeactions[actionname][#"bhtn_action_terminate"] = terminatefuncptr;
    }
}

