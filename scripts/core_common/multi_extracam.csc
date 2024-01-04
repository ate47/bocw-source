// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;

#namespace multi_extracam;

// Namespace multi_extracam/multi_extracam
// Params 2, eflags: 0x2 linked
// Checksum 0x91a067e7, Offset: 0xa8
// Size: 0xb6
function extracam_reset_index(localclientnum, index) {
    if (!isdefined(level.camera_ents) || !isdefined(level.camera_ents[localclientnum])) {
        return;
    }
    if (isdefined(level.camera_ents[localclientnum][index])) {
        level.camera_ents[localclientnum][index] clearextracam();
        level.camera_ents[localclientnum][index] delete();
        level.camera_ents[localclientnum][index] = undefined;
    }
}

// Namespace multi_extracam/multi_extracam
// Params 3, eflags: 0x2 linked
// Checksum 0xe1cbe91, Offset: 0x168
// Size: 0x5a
function extracam_init_index(localclientnum, target, index) {
    camerastruct = struct::get(target, "targetname");
    return extracam_init_item(localclientnum, camerastruct, index);
}

// Namespace multi_extracam/multi_extracam
// Params 3, eflags: 0x2 linked
// Checksum 0xba714c5, Offset: 0x1d0
// Size: 0x16a
function extracam_init_item(localclientnum, copy_ent, index) {
    if (!isdefined(level.camera_ents)) {
        level.camera_ents = [];
    }
    if (!isdefined(level.camera_ents[localclientnum])) {
        level.camera_ents[localclientnum] = [];
    }
    if (isdefined(level.camera_ents[localclientnum][index])) {
        level.camera_ents[localclientnum][index] clearextracam();
        level.camera_ents[localclientnum][index] delete();
        level.camera_ents[localclientnum][index] = undefined;
    }
    if (isdefined(copy_ent)) {
        level.camera_ents[localclientnum][index] = spawn(localclientnum, copy_ent.origin, "script_origin");
        level.camera_ents[localclientnum][index].angles = copy_ent.angles;
        level.camera_ents[localclientnum][index] setextracam(index);
        return level.camera_ents[localclientnum][index];
    }
    return undefined;
}

