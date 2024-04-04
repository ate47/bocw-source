// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_progress.csc;
#using scripts\zm_common\zm_items.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zm_crafting;

// Namespace zm_crafting/zm_crafting
// Params 0, eflags: 0x5
// Checksum 0xd01c0f89, Offset: 0xe8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_crafting", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_crafting/zm_crafting
// Params 0, eflags: 0x6 linked
// Checksum 0xe2d800ee, Offset: 0x140
// Size: 0x1c
function private preinit() {
    level.var_5df2581a = [];
    level.crafting_components = [];
}

// Namespace zm_crafting/zm_crafting
// Params 0, eflags: 0x6 linked
// Checksum 0xf00a149e, Offset: 0x168
// Size: 0x14
function private postinit() {
    function_60a6c623();
}

// Namespace zm_crafting/zm_crafting
// Params 0, eflags: 0x2 linked
// Checksum 0xcc2587fd, Offset: 0x188
// Size: 0xa8
function function_60a6c623() {
    foundries = getscriptbundles("craftfoundry");
    foreach (foundry in foundries) {
        setup_craftfoundry(foundry);
    }
}

// Namespace zm_crafting/zm_crafting
// Params 1, eflags: 0x2 linked
// Checksum 0x3e0a32a8, Offset: 0x238
// Size: 0x222
function setup_craftfoundry(craftfoundry) {
    if (isdefined(craftfoundry)) {
        if (!is_true(craftfoundry.loaded)) {
            craftfoundry.loaded = 1;
            craftfoundry.blueprints = [];
            switch (craftfoundry.var_2a2adea3) {
            case 8:
                craftfoundry.blueprints[7] = function_b18074d0(craftfoundry.blueprint08);
            case 7:
                craftfoundry.blueprints[6] = function_b18074d0(craftfoundry.blueprint07);
            case 6:
                craftfoundry.blueprints[5] = function_b18074d0(craftfoundry.blueprint06);
            case 5:
                craftfoundry.blueprints[4] = function_b18074d0(craftfoundry.blueprint05);
            case 4:
                craftfoundry.blueprints[3] = function_b18074d0(craftfoundry.blueprint04);
            case 3:
                craftfoundry.blueprints[2] = function_b18074d0(craftfoundry.blueprint03);
            case 2:
                craftfoundry.blueprints[1] = function_b18074d0(craftfoundry.blueprint02);
            case 1:
                craftfoundry.blueprints[0] = function_b18074d0(craftfoundry.blueprint01);
                break;
            }
        }
    }
}

// Namespace zm_crafting/zm_crafting
// Params 1, eflags: 0x2 linked
// Checksum 0xaf13d4fe, Offset: 0x468
// Size: 0x2c8
function function_b18074d0(name) {
    blueprint = getscriptbundle(name);
    if (isdefined(blueprint)) {
        if (!is_true(blueprint.loaded)) {
            blueprint.loaded = 1;
            blueprint.name = name;
            blueprint.components = [];
            switch (blueprint.componentcount) {
            case 8:
                blueprint.components[7] = get_component(blueprint.var_f4d434cb);
            case 7:
                blueprint.components[6] = get_component(blueprint.var_e71f1961);
            case 6:
                blueprint.components[5] = get_component(blueprint.registerperk_packa_seepainterminate);
            case 5:
                blueprint.components[4] = get_component(blueprint.var_4282502a);
            case 4:
                blueprint.components[3] = get_component(blueprint.var_7b8e4241);
            case 3:
                blueprint.components[2] = get_component(blueprint.var_2e0a273a);
            case 2:
                blueprint.components[1] = get_component(blueprint.var_670f9944);
            case 1:
                blueprint.components[0] = get_component(blueprint.var_99577dd3);
                break;
            }
            blueprint.var_54a97edd = get_component(blueprint.result);
            level.var_5df2581a[name] = blueprint;
            if (!isdefined(blueprint.var_4dbc4aee)) {
                blueprint.var_4dbc4aee = "ERROR: Missing Prompt String";
            }
        }
    } else {
        assertmsg("<unknown string>" + name);
    }
    return blueprint;
}

// Namespace zm_crafting/zm_crafting
// Params 1, eflags: 0x2 linked
// Checksum 0xd9504d1c, Offset: 0x738
// Size: 0x50
function get_component(component) {
    if (!isdefined(level.crafting_components[component.name])) {
        level.crafting_components[component.name] = component;
    }
    return level.crafting_components[component.name];
}

