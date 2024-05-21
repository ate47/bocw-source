// Atian COD Tools GSC CW decompiler test
#using scripts\cp\cp_ger_hub_post_cuba.gsc;
#using scripts\cp\cp_ger_hub_post_kgb.gsc;
#using scripts\cp\cp_ger_hub_post_yamantau.gsc;
#using scripts\cp\cp_ger_hub_post_armada.gsc;
#using script_9e487583a27d590;
#using script_19971192452f4209;
#using scripts\cp_common\skipto.gsc;
#using script_32399001bdb550da;
#using script_67c9a990c0db216c;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\activities_util.gsc;

#namespace cp_ger_hub;

// Namespace cp_ger_hub/level_init
// Params 1, eflags: 0x20
// Checksum 0x43e64147, Offset: 0x2b8
// Size: 0x7c
function event_handler[level_init] main(*eventstruct) {
    setclearanceceiling(16);
    namespace_31c67f6d::function_1c920347();
    level function_5b503df2();
    function_b0bc875b();
    load::main();
    namespace_31c67f6d::function_9fa4f621();
}

// Namespace cp_ger_hub/cp_ger_hub
// Params 0, eflags: 0x2 linked
// Checksum 0x2c3629b7, Offset: 0x340
// Size: 0x53c
function function_5b503df2() {
    skipto::add("chapter_selection", &namespace_31c67f6d::function_13fc27ea, &namespace_31c67f6d::function_4613fab8, "lab_start", undefined, ["safehouse"]);
    skipto::add("character_creation", &namespace_31c67f6d::function_58f8a0d8, &namespace_31c67f6d::function_b438df4d, "lab_start", undefined, ["safehouse", "lab"]);
    skipto::add("post_takedown", &hub_post_takedown::main, &hub_post_takedown::starting, "safehouse_start", &hub_post_takedown::cleanup, ["safehouse"]);
    skipto::add("post_takedown_skip_briefing", &hub_post_takedown::function_e695c6d4, &hub_post_takedown::function_e937a9b, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_takedown_skip_ambient", &hub_post_takedown::function_7fb12c66, &hub_post_takedown::function_c6fd7841, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_armada", &hub_post_armada::main, &hub_post_armada::starting);
    skipto::add("post_armada_skip_briefing", &hub_post_armada::function_428d9889, &hub_post_armada::function_7e4e7cf4, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_armada_skip_ambient", &hub_post_armada::function_d3875afa, &hub_post_armada::function_5ae6f952, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_yamantau", &hub_post_yamantau::main, &hub_post_yamantau::starting, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_yamantau_skip_briefing", &hub_post_yamantau::function_29390787, &hub_post_yamantau::function_6b03a78e, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_kgb", &hub_post_kgb::main, &hub_post_kgb::starting, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_kgb_skip_briefing", &hub_post_kgb::function_223f05aa, &hub_post_kgb::function_b58272a1, "safehouse_start", undefined, ["safehouse"]);
    skipto::add("post_cuba", &hub_post_cuba::main, &hub_post_cuba::starting, "safehouse_start", undefined, ["safehouse"]);
    /#
        skipto::add_dev("<unknown string>", &hub_post_cuba::main, &hub_post_cuba::starting, "<unknown string>");
        skipto::add_dev("<unknown string>", &hub_post_cuba::main, &hub_post_cuba::starting, "<unknown string>");
        skipto::add_dev("<unknown string>", &hub_post_cuba::main, &hub_post_cuba::starting, "<unknown string>");
    #/
}

// Namespace cp_ger_hub/cp_ger_hub
// Params 0, eflags: 0x2 linked
// Checksum 0x9240bdd0, Offset: 0x888
// Size: 0x224
function function_b0bc875b() {
    var_56528c9b = skipto::function_5a61e21a()[0];
    var_93fe9edf = skipto::function_3a4ee594(var_56528c9b);
    missionname = "cp_ger_hub";
    if (level.map_name == "cp_ger_hub") {
        if (var_93fe9edf >= skipto::function_3a4ee594(skipto::function_5011fee2("cp_ger_hub_post_cuba"))) {
            missionname = "cp_ger_hub_post_cuba";
        } else if (var_93fe9edf >= skipto::function_3a4ee594(skipto::function_5011fee2("cp_ger_hub_post_kgb"))) {
            missionname = "cp_ger_hub_post_kgb";
        } else if (var_93fe9edf >= skipto::function_3a4ee594(skipto::function_5011fee2("cp_ger_hub_post_yamantau"))) {
            missionname = "cp_ger_hub_post_yamantau";
        } else if (var_93fe9edf >= skipto::function_3a4ee594(skipto::function_5011fee2("cp_ger_hub_post_armada"))) {
            missionname = "cp_ger_hub_post_armada";
        } else if (var_93fe9edf >= skipto::function_3a4ee594(skipto::function_5011fee2("cp_ger_hub"))) {
            missionname = "cp_ger_hub";
        }
        activities::function_b73af3c(missionname);
        savegame::function_87dafd45(missionname);
        if (var_93fe9edf == skipto::function_3a4ee594(skipto::function_5011fee2(missionname))) {
            savegame::function_81534803(#"transient");
        }
    }
}

