// Atian COD Tools GSC CW decompiler test
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_6b71c9befed901f2;
#using script_75c3996cce8959f7;
#using script_71603a58e2da0698;
#using script_30c7fb449869910;
#using script_771f5bff431d8d57;
#using script_42cbbdcd1e160063;
#using script_3314b730521b9666;
#using script_77163d5a569e2071;
#using script_38635d174016f682;
#using script_18910f59cc847b42;
#using scripts\core_common\struct.csc;
#using scripts\core_common\spawning_shared.csc;
#using scripts\core_common\spawner_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_ec06fe4a;

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x4650e45, Offset: 0x158
// Size: 0x8c
function function_73d79e7d(parent, offset = (0, 0, 0)) {
    self endon(#"entityshutdown", #"death");
    while (isdefined(parent)) {
        self.origin = parent.origin + offset;
        waitframe(1);
    }
    self delete();
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xa1db2625, Offset: 0x1f0
// Size: 0xb4
function function_d55f042c(other, note) {
    if (!isdefined(other)) {
        return;
    }
    self endon(#"entityshutdown", #"death");
    if (isplayer(other)) {
        if (note == "disconnect") {
            other waittill(note);
        } else {
            other waittill(note, #"disconnect");
        }
    } else {
        other waittill(note);
    }
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 5, eflags: 0x2 linked
// Checksum 0xbb401297, Offset: 0x2b0
// Size: 0xc2
function spawnmodel(localclientnum, origin, modelname = "tag_origin", angles, targetname) {
    if (!function_3238d10d(origin)) {
        return;
    }
    if (getnumfreeentities(localclientnum) <= 0) {
        return;
    }
    mdl = util::spawn_model(localclientnum, modelname, origin, angles);
    if (isdefined(mdl) && isdefined(targetname)) {
        mdl.targetname = targetname;
    }
    return mdl;
}

