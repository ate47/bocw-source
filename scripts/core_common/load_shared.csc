// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using script_18b9d0e77614c97;
#using scripts\core_common\dev_shared.csc;
#using scripts\core_common\activecamo_shared.csc;
#using scripts\core_common\delete.csc;

#namespace load;

// Namespace load/load_shared
// Params 0, eflags: 0x5
// Checksum 0x8781ce26, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"load", &preinit, undefined, undefined, undefined);
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x291e7f35, Offset: 0x120
// Size: 0x34
function main() {
    assert(isdefined(level.var_f18a6bd6));
    [[ level.var_f18a6bd6 ]]();
}

// Namespace load/load_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xc69033f6, Offset: 0x160
// Size: 0x8c
function private preinit() {
    if (sessionmodeiscampaigngame()) {
        level.game_mode_suffix = "_cp";
    } else if (sessionmodeiszombiesgame()) {
        level.game_mode_suffix = "_zm";
    } else {
        level.game_mode_suffix = "_mp";
    }
    /#
        level thread first_frame();
    #/
    apply_mature_filter();
}

/#

    // Namespace load/load_shared
    // Params 0, eflags: 0x0
    // Checksum 0x2989ad46, Offset: 0x1f8
    // Size: 0x38
    function first_frame() {
        level.first_frame = 1;
        waitframe(1);
        level.first_frame = undefined;
        level.var_22944a63 = 1;
    }

#/

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb2f16b99, Offset: 0x238
// Size: 0xb8
function apply_mature_filter() {
    if (!util::is_mature()) {
        a_mature_models = findstaticmodelindexarray("mature_content");
        foreach (model in a_mature_models) {
            hidestaticmodel(model);
        }
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x0
// Checksum 0x3a6dec54, Offset: 0x2f8
// Size: 0x3c
function art_review() {
    if (getdvarint(#"art_review", 0)) {
        level waittill(#"forever");
    }
}

