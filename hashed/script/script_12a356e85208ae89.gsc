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

#namespace doa_wild;

// Namespace doa_wild/doa_wild
// Params 0, eflags: 0x2 linked
// Checksum 0xe0ef36a9, Offset: 0x1e0
// Size: 0x254
function init() {
    clientfield::register("world", "setWild", 1, 2, "int", &setwild, 0, 0);
    clientfield::register("world", "setWildTOD", 1, 3, "int", &settod, 0, 0);
    clientfield::register("world", "setWildSection", 1, 3, "int", &setsection, 0, 0);
    clientfield::register("world", "wilddeactivated", 1, 1, "counter", &wilddeactivated, 0, 0);
    var_581c8f9a = struct::get_array("doa_wild");
    level.doa.var_581c8f9a = [];
    foreach (wild in var_581c8f9a) {
        var_f784a248 = spawnstruct();
        var_f784a248.name = wild.script_noteworthy;
        var_f784a248.id = int(wild.script_int);
        level.doa.var_581c8f9a[level.doa.var_581c8f9a.size] = var_f784a248;
    }
    function_32d5e898();
}

// Namespace doa_wild/doa_wild
// Params 1, eflags: 0x2 linked
// Checksum 0xe4e088c2, Offset: 0x440
// Size: 0x8e
function function_32d5e898(localclientnum) {
    level.doa.var_47dcd1f = undefined;
    level.doa.var_f9d8fba5 = undefined;
    level.doa.var_7c19cda1 = undefined;
    if (isdefined(level.doa.var_e2a9584a)) {
        stopradiantexploder(localclientnum, level.doa.var_e2a9584a);
        level.doa.var_e2a9584a = undefined;
    }
}

// Namespace doa_wild/doa_wild
// Params 7, eflags: 0x2 linked
// Checksum 0x47e5d4f, Offset: 0x4d8
// Size: 0x54
function wilddeactivated(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    function_32d5e898(bwastimejump);
}

// Namespace doa_wild/doa_wild
// Params 7, eflags: 0x2 linked
// Checksum 0xe6ee4851, Offset: 0x538
// Size: 0xf0
function setwild(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.doa.var_47dcd1f = undefined;
    foreach (wild in level.doa.var_581c8f9a) {
        if (wild.id == bwastimejump) {
            level.doa.var_47dcd1f = wild;
            return;
        }
    }
}

// Namespace doa_wild/doa_wild
// Params 7, eflags: 0x2 linked
// Checksum 0x57841d66, Offset: 0x630
// Size: 0x56
function setsection(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.doa.var_f9d8fba5 = bwastimejump + 1;
}

// Namespace doa_wild/doa_wild
// Params 7, eflags: 0x2 linked
// Checksum 0xc51a9db, Offset: 0x690
// Size: 0x35c
function settod(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(level.doa.var_e2a9584a)) {
        stopradiantexploder(fieldname, level.doa.var_e2a9584a);
        level.doa.var_e2a9584a = undefined;
    }
    if (!isdefined(level.doa.var_47dcd1f)) {
        return;
    }
    level.doa.var_7c19cda1 = "morning";
    switch (bwastimejump) {
    case 0:
        level.doa.var_7c19cda1 = "morning";
        setworldfogactivebank(fieldname, 1);
        break;
    case 1:
        level.doa.var_7c19cda1 = "noon";
        setworldfogactivebank(fieldname, 2);
        break;
    case 2:
        level.doa.var_7c19cda1 = "dusk";
        setworldfogactivebank(fieldname, 4);
        break;
    case 3:
        level.doa.var_7c19cda1 = "night";
        setworldfogactivebank(fieldname, 8);
        break;
    default:
        level.doa.var_7c19cda1 = "morning";
        setworldfogactivebank(fieldname, 1);
        break;
    }
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + level.doa.var_47dcd1f.name + "<unknown string>" + level.doa.var_7c19cda1);
    #/
    level.doa.var_e2a9584a = "fxexp_" + level.doa.var_47dcd1f.name + "_section_" + level.doa.var_f9d8fba5 + "_" + level.doa.var_7c19cda1;
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + level.doa.var_e2a9584a + "<unknown string>" + fieldname);
    #/
    playradiantexploder(fieldname, level.doa.var_e2a9584a);
}

