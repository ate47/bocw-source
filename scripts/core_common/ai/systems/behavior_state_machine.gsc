#namespace behaviorstatemachine;

// Namespace behaviorstatemachine/behavior_state_machine
// Params 2, eflags: 0x0
// Checksum 0x50cbe010, Offset: 0x80
// Size: 0xbc
function registerbsmscriptapiinternal(functionname, scriptfunction) {
    if (!isdefined(level._bsmscriptfunctions)) {
        level._bsmscriptfunctions = [];
    }
    assert(isdefined(scriptfunction) && isdefined(scriptfunction), "<dev string:x38>");
    /#
        if (!is_true(level.var_70f1c402)) {
            assert(!isdefined(level._bsmscriptfunctions[functionname]), "<dev string:x98>");
        }
    #/
    level._bsmscriptfunctions[functionname] = scriptfunction;
}

