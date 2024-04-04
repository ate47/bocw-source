// Atian COD Tools GSC CW decompiler test
#namespace animationselectortable;

// Namespace animationselectortable/animation_selector_table
// Params 2, eflags: 0x2 linked
// Checksum 0x845416cd, Offset: 0x80
// Size: 0xa4
function registeranimationselectortableevaluator(functionname, functionptr) {
    if (!isdefined(level._astevaluatorscriptfunctions)) {
        level._astevaluatorscriptfunctions = [];
    }
    functionname = tolower(functionname);
    assert(isdefined(functionname) && isdefined(functionptr));
    assert(!isdefined(level._astevaluatorscriptfunctions[functionname]));
    level._astevaluatorscriptfunctions[functionname] = functionptr;
}

