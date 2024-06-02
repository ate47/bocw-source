// Atian COD Tools GSC CW decompiler test
#namespace animationstatenetworkutility;

// Namespace animationstatenetworkutility/animation_state_machine_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xe1abea16, Offset: 0x80
// Size: 0x44
function requeststate(entity, statename) {
    assert(isdefined(entity));
    entity asmrequestsubstate(statename);
}

// Namespace animationstatenetworkutility/animation_state_machine_utility
// Params 2, eflags: 0x0
// Checksum 0x3dfac3b9, Offset: 0xd0
// Size: 0x4c
function searchanimationmap(entity, aliasname) {
    if (isdefined(entity) && isdefined(aliasname)) {
        animationname = entity animmappingsearch(aliasname);
        return animationname;
    }
}

