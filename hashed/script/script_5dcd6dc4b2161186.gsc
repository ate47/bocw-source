// Atian COD Tools GSC CW decompiler test
#using script_13114d8a31c6152a;
#using scripts\core_common\values_shared.gsc;
#using script_4937c6974f43bb71;
#using script_7d0013bbc05623b9;
#using script_35ae72be7b4fec10;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;

#namespace namespace_a9a79253;

// Namespace namespace_a9a79253/namespace_a9a79253
// Params 6, eflags: 0x0
// Checksum 0xe9dbe2f6, Offset: 0x178
// Size: 0x414
function function_97c69304(var_e1ab1198, var_ad825676 = 1, var_4d757ace = 2, var_34c6a562 = #"hash_7cf7750cf3228d3f", var_5d0591d = #"hash_5f8dea2ec57cdca9", var_ec9a3f05 = 0) {
    if (!namespace_61e6d095::exists(#"hash_495fb25cf24868b4")) {
        namespace_61e6d095::create(#"hash_495fb25cf24868b4", #"hash_3ddadc19cc3c44ad");
    }
    self val::set(#"hash_495fb25cf24868b4", "show_crosshair", 0);
    self val::set(#"hash_495fb25cf24868b4", "freezecontrols_allowlook", 1);
    self val::set(#"hash_495fb25cf24868b4", "disable_weapon_cycling", 1);
    if (var_ad825676) {
        prompts::function_86eedc();
    }
    var_6fdd3a3a = getscriptbundle(var_e1ab1198);
    assert(isdefined(var_6fdd3a3a), "<unknown string>" + var_e1ab1198);
    len = var_6fdd3a3a.var_df2d0a90.size;
    namespace_61e6d095::function_9ade1d9b(#"hash_495fb25cf24868b4", "priority", 1);
    namespace_61e6d095::set_state(#"hash_495fb25cf24868b4", var_ec9a3f05);
    line_num = 0;
    for (i = line_num; i < len; i++) {
        line_num = i + 1;
        var_c1deb575 = var_6fdd3a3a.var_df2d0a90[i];
        namespace_61e6d095::function_f2a9266(#"hash_495fb25cf24868b4", line_num, "index", i);
        namespace_61e6d095::function_f2a9266(#"hash_495fb25cf24868b4", line_num, "translate", -1);
        namespace_61e6d095::function_f2a9266(#"hash_495fb25cf24868b4", line_num, "text_untranslated", var_c1deb575.var_f49bdf40);
        namespace_61e6d095::function_f2a9266(#"hash_495fb25cf24868b4", line_num, "text_translated", var_c1deb575.var_c9d25687);
    }
    namespace_82bfe441::fade(1, "FadeImmediate");
    namespace_61e6d095::function_9ade1d9b(#"hash_495fb25cf24868b4", "image", var_6fdd3a3a.var_85ca818b);
    self playsound(var_34c6a562);
    wait(var_4d757ace);
    self thread function_50f1b098(len);
    namespace_c8e236da::function_ebf737f8(#"hash_1aefb4de625039be");
    self thread function_f432e1fd(var_5d0591d);
}

// Namespace namespace_a9a79253/namespace_a9a79253
// Params 1, eflags: 0x4
// Checksum 0x1358158d, Offset: 0x598
// Size: 0x8c
function private function_50f1b098(var_64de02b5) {
    self endon(#"hash_3fea3efdd8cc1e01");
    linenum = 0;
    for (i = linenum; i < var_64de02b5; i++) {
        linenum = i + 1;
        namespace_61e6d095::function_f2a9266(#"hash_495fb25cf24868b4", linenum, "translate", 1);
    }
}

// Namespace namespace_a9a79253/namespace_a9a79253
// Params 1, eflags: 0x4
// Checksum 0x4a636838, Offset: 0x630
// Size: 0x5c
function private function_f432e1fd(var_5d0591d) {
    self endon(#"hash_3fea3efdd8cc1e01");
    self namespace_61e6d095::function_b0bad5ff("note_display_closed", undefined, 1);
    function_62296e85(var_5d0591d);
}

// Namespace namespace_a9a79253/namespace_a9a79253
// Params 1, eflags: 0x0
// Checksum 0xcac54589, Offset: 0x698
// Size: 0x116
function function_62296e85(var_5d0591d) {
    self playsound(var_5d0591d);
    prompts::function_d675f5a4();
    namespace_c8e236da::removelist();
    namespace_61e6d095::function_9ade1d9b(#"hash_495fb25cf24868b4", "priority", 0);
    if (namespace_61e6d095::exists(#"hash_495fb25cf24868b4")) {
        namespace_61e6d095::remove(#"hash_495fb25cf24868b4");
    }
    namespace_82bfe441::fade(0, "FadeImmediate");
    val::reset_all(#"hash_495fb25cf24868b4");
    self function_e0c7d69(1);
    self notify(#"hash_3fea3efdd8cc1e01");
}

