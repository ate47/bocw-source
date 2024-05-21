// Atian COD Tools GSC CW decompiler test
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_60a2f38d6d37fd6a;
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

#namespace namespace_8c04284b;

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x3c6911e2, Offset: 0x1c0
// Size: 0xa4
function init() {
    clientfield::register("world", "setArena", 1, 5, "int", &setarena, 0, 0);
    clientfield::register("world", "setTOD", 1, 3, "int", &settod, 0, 0);
    function_32d5e898();
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x64a4f49b, Offset: 0x270
// Size: 0x2be
function function_32d5e898(*localclientnum) {
    level.doa.arenas = [];
    level.doa.var_72b899ad = undefined;
    arenas = struct::get_array("arena_center", "targetname");
    var_7f6c6c04 = [];
    foreach (arena in arenas) {
        args = strtok(arena.script_parameters, ";");
        order = int(args[0]);
        if (args.size > 1) {
            assert(args.size == 4);
            arena.var_13ea8aea = (float(args[1]), float(args[2]), float(args[3]));
        } else {
            arena.var_13ea8aea = (75, 0, 0);
        }
        arena.var_46f3a17d = arena.var_13ea8aea + (0, 180, 0);
        var_7f6c6c04[order] = arena;
    }
    id = 0;
    for (index = 0; index < 100; index++) {
        if (isdefined(var_7f6c6c04[index])) {
            var_7f6c6c04[index].id = id;
            level.doa.arenas[id] = var_7f6c6c04[index];
            id++;
        }
    }
    level.doa.var_72b899ad = level.doa.arenas[0];
    level.doa.arenas[3].camera_max_height = 1000;
    level.doa.arenas[14].camera_max_height = 1100;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 7, eflags: 0x2 linked
// Checksum 0x1e17dfdc, Offset: 0x538
// Size: 0x1cc
function setarena(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    cleanupspawneddynents();
    level.doa.var_72b899ad = undefined;
    if (bwastimejump != 32 - 1) {
        level.doa.var_72b899ad = level.doa.arenas[bwastimejump];
        /#
            namespace_1e25ad94::debugmsg("<unknown string>" + level.doa.var_72b899ad.script_noteworthy);
        #/
    }
    var_129a290 = 1;
    if (getlocalplayers().size > 1) {
        var_129a290 = 4;
    }
    foreach (player in getlocalplayers()) {
        player namespace_ac2a80f5::changecamera(isdefined(player.doa) ? player.doa.cameramode : var_129a290);
    }
    namespace_9fc66ac::function_5beeba99();
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 7, eflags: 0x2 linked
// Checksum 0xb00ad198, Offset: 0x710
// Size: 0x33c
function settod(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(level.doa.var_1fc44fbc)) {
        stopradiantexploder(fieldname, level.doa.var_1fc44fbc);
        level.doa.var_1fc44fbc = undefined;
    }
    if (!isdefined(level.doa.var_72b899ad)) {
        return;
    }
    level.doa.var_3303cb0d = "morning";
    switch (bwastimejump) {
    case 0:
        level.doa.var_3303cb0d = "morning";
        setworldfogactivebank(fieldname, 1);
        break;
    case 1:
        level.doa.var_3303cb0d = "noon";
        setworldfogactivebank(fieldname, 2);
        break;
    case 2:
        level.doa.var_3303cb0d = "dusk";
        setworldfogactivebank(fieldname, 4);
        break;
    case 3:
        level.doa.var_3303cb0d = "night";
        setworldfogactivebank(fieldname, 8);
        break;
    default:
        level.doa.var_3303cb0d = "morning";
        setworldfogactivebank(fieldname, 1);
        break;
    }
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + level.doa.var_72b899ad.script_noteworthy + "<unknown string>" + level.doa.var_3303cb0d);
    #/
    level.doa.var_1fc44fbc = "fxexp_" + level.doa.var_72b899ad.script_noteworthy + "_" + level.doa.var_3303cb0d;
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + level.doa.var_1fc44fbc + "<unknown string>" + fieldname);
    #/
    playradiantexploder(fieldname, level.doa.var_1fc44fbc);
}

