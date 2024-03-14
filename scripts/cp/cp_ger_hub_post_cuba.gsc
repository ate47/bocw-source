// Atian COD Tools GSC CW decompiler test
#using script_4052585f7ae90f3a;
#using script_19971192452f4209;
#using scripts\cp_common\util.gsc;
#using script_4ae261b2785dda9f;
#using scripts\cp_common\skipto.gsc;
#using scripts\cp_common\load.gsc;
#using script_1478fbd17fe393cf;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace hub_post_cuba;

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 1, eflags: 0x2 linked
// Checksum 0xf21bb987, Offset: 0x240
// Size: 0xc
function starting(*var_d3440450) {
    
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 2, eflags: 0x2 linked
// Checksum 0xb00cc22f, Offset: 0x258
// Size: 0x214
function main(var_d3440450, *var_50cc0d4f) {
    level thread namespace_31c67f6d::function_f2cd5fc0();
    if (level.var_b28c2c3a == "dev_post_cuba_park_survived") {
        level.player player_decision::function_ff7e19cb(0);
    }
    if (level.var_b28c2c3a == "dev_post_cuba_lazar_survived") {
        level.player player_decision::function_ff7e19cb(1);
    }
    if (level.var_b28c2c3a == "dev_post_cuba_no_survivors") {
        level.player player_decision::function_ff7e19cb(2);
    }
    level namespace_31c67f6d::function_6194f34a("post_cuba", 1);
    level namespace_31c67f6d::function_4316ab41();
    level thread function_ff7cb1bd();
    level thread namespace_4ed3ce47::function_7edafa59(var_50cc0d4f + "_briefing");
    setlightingstate(3);
    level thread namespace_31c67f6d::function_29279de1("post_cuba");
    level thread namespace_31c67f6d::function_b0558ba2("7");
    level.player thread clientfield::set_to_player("set_hub_fov", 7);
    level function_107195fb();
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
    skipto::function_1c2dfc20("cp_nam_prisoner");
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 0, eflags: 0x2 linked
// Checksum 0x851b895e, Offset: 0x478
// Size: 0x34
function function_26282537() {
    level waittill(#"hash_181bf4d7bd0b8108");
    level thread namespace_4ed3ce47::function_dbf416c4();
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 0, eflags: 0x2 linked
// Checksum 0xe5b4781b, Offset: 0x4b8
// Size: 0x34
function function_eeb6e2e1() {
    level waittill(#"hash_6e37b7c047667b8e");
    level thread namespace_4ed3ce47::function_c05156e2();
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 0, eflags: 0x2 linked
// Checksum 0x3bb51ad4, Offset: 0x4f8
// Size: 0x34
function function_d2e1f6b8() {
    level waittill(#"hash_795bc852357a8d1d");
    level thread namespace_4ed3ce47::function_97d155da();
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 0, eflags: 0x2 linked
// Checksum 0xe06be658, Offset: 0x538
// Size: 0xf2
function function_107195fb() {
    var_ea95c1e7 = namespace_31c67f6d::function_c9dc0e79();
    thread function_26282537();
    thread function_eeb6e2e1();
    thread function_d2e1f6b8();
    switch (var_ea95c1e7) {
    case #"park":
        function_276264f4("scene_hub_post_cuba_briefing_park_survived");
        break;
    case #"lazar":
        function_276264f4("scene_hub_post_cuba_briefing_lazar_survived");
        break;
    case #"sims":
        function_276264f4("scene_hub_post_cuba_briefing_no_survivor");
        break;
    }
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 1, eflags: 0x2 linked
// Checksum 0x110ffe3, Offset: 0x638
// Size: 0x1a2
function function_276264f4(str_scene) {
    level scene::init(str_scene);
    level flag::wait_till("level_is_go");
    while (!isdefined(level.player_connected) || isdefined(level.player_connected) && level.player_connected != 1) {
        waitframe(1);
    }
    level thread namespace_4ed3ce47::function_8cb75a6();
    wait(3);
    if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
        level.player flag::set(level.var_d7d201ba);
    }
    level flag::wait_till(#"gameplay_started");
    level thread namespace_31c67f6d::function_82743d25(isdefined(level.var_f5552371) ? level.var_f5552371 : "", 1);
    level thread scene::play(str_scene);
    level waittill(#"hash_475b36446c5bf12");
    level thread namespace_31c67f6d::function_abeb9b2d(10, 1, 1, undefined, 5);
    wait(5);
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 0, eflags: 0x2 linked
// Checksum 0xcdbef977, Offset: 0x7e8
// Size: 0x24
function function_f50bc4b9() {
    level flag::init("flag_post_cuba_complete");
}

// Namespace hub_post_cuba/cp_ger_hub_post_cuba
// Params 0, eflags: 0x2 linked
// Checksum 0x97312fcd, Offset: 0x818
// Size: 0x4c
function function_ff7cb1bd() {
    level thread namespace_4ed3ce47::function_9ac95ec9();
    level thread namespace_4ed3ce47::function_d6c61f8();
    level thread namespace_4ed3ce47::function_b7c50de7();
}

