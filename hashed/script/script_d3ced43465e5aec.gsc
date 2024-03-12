// Atian COD Tools GSC CW decompiler test
#using script_54c0478b7e9d6d81;
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
#using scripts\core_common\animation_shared.csc;
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

#namespace namespace_5d515bd5;

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0x10be4304, Offset: 0x1a0
// Size: 0xdc
function init() {
    clientfield::register("actor", "clone_activated", 1, 1, "int", &clone_activated, 0, 1);
    clientfield::register("actor", "clone_damaged", 1, 1, "int", &clone_damaged, 0, 0);
    clientfield::register("allplayers", "clone_activated", 1, 1, "int", &function_7ea4075e, 0, 0);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 7, eflags: 0x2 linked
// Checksum 0xc338d9d3, Offset: 0x288
// Size: 0x8c
function clone_activated(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self._isclone = 1;
        if (isdefined(level._monitor_tracker)) {
            self thread [[ level._monitor_tracker ]](fieldname);
        }
        self thread namespace_57627cf3::function_67d3eb46(fieldname);
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 7, eflags: 0x2 linked
// Checksum 0x916eca02, Offset: 0x320
// Size: 0xac
function function_7ea4075e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        self thread namespace_57627cf3::function_67d3eb46(fieldname);
        return;
    }
    self notify(#"hash_43636cae68b91404");
    self mapshaderconstant(fieldname, 0, "scriptVector3", 1, 0, 0, 1);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 1, eflags: 0x2 linked
// Checksum 0x7549b940, Offset: 0x3d8
// Size: 0x5a
function function_56d6762(*localclientnum) {
    self endon(#"death");
    self notify(#"hash_15a1bbeff1241ea4");
    self endon(#"hash_15a1bbeff1241ea4");
    self waittill(#"hash_4c5a99ebb842562e");
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0xe3ef54fa, Offset: 0x440
// Size: 0x56
function function_d8a90cf2() {
    self endon(#"death");
    self endon(#"hash_15a1bbeff1241ea4");
    self endon(#"hash_4c5a99ebb842562e");
    wait(0.2);
    self notify(#"hash_4c5a99ebb842562e");
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 7, eflags: 0x2 linked
// Checksum 0x408a9250, Offset: 0x4a0
// Size: 0x74
function clone_damaged(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self thread function_56d6762(fieldname);
        return;
    }
    self thread function_d8a90cf2();
}

