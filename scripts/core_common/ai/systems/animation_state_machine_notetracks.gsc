// Atian COD Tools GSC CW decompiler test
#namespace animationstatenetwork;

// Namespace animationstatenetwork/animation_state_machine_notetracks
// Params 0, eflags: 0x1
// Checksum 0x59e4f092, Offset: 0x80
// Size: 0x10
function autoexec initnotetrackhandler() {
    level._notetrack_handler = [];
}

// Namespace animationstatenetwork/runnotetrackhandler
// Params 1, eflags: 0x24
// Checksum 0x7b71a8, Offset: 0x98
// Size: 0x8c
function private event_handler[runnotetrackhandler] runnotetrackhandler(eventstruct) {
    assert(isarray(eventstruct.notetracks));
    for (index = 0; index < eventstruct.notetracks.size; index++) {
        handlenotetrack(eventstruct.entity, eventstruct.notetracks[index]);
    }
}

// Namespace animationstatenetwork/animation_state_machine_notetracks
// Params 2, eflags: 0x6 linked
// Checksum 0x4f76da15, Offset: 0x130
// Size: 0x84
function private handlenotetrack(entity, notetrack) {
    notetrackhandler = level._notetrack_handler[notetrack];
    if (!isdefined(notetrackhandler)) {
        return;
    }
    if (isfunctionptr(notetrackhandler)) {
        [[ notetrackhandler ]](entity);
        return;
    }
    entity setblackboardattribute(notetrackhandler.blackboardattributename, notetrackhandler.blackboardvalue);
}

// Namespace animationstatenetwork/animation_state_machine_notetracks
// Params 2, eflags: 0x2 linked
// Checksum 0xd2a7c853, Offset: 0x1c0
// Size: 0xc4
function registernotetrackhandlerfunction(notetrackname, notetrackfuncptr) {
    assert(isstring(notetrackname), "<unknown string>");
    assert(isfunctionptr(notetrackfuncptr), "<unknown string>");
    assert(!isdefined(level._notetrack_handler[notetrackname]), "<unknown string>" + notetrackname + "<unknown string>");
    level._notetrack_handler[notetrackname] = notetrackfuncptr;
}

// Namespace animationstatenetwork/animation_state_machine_notetracks
// Params 3, eflags: 0x2 linked
// Checksum 0xb6f83b8b, Offset: 0x290
// Size: 0x5c
function registerblackboardnotetrackhandler(notetrackname, blackboardattributename, blackboardvalue) {
    notetrackhandler = spawnstruct();
    notetrackhandler.blackboardattributename = blackboardattributename;
    notetrackhandler.blackboardvalue = blackboardvalue;
    level._notetrack_handler[notetrackname] = notetrackhandler;
}

