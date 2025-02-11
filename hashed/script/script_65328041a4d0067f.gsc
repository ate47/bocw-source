#using script_41e8adffbda93483;
#using script_77f51076c7c89596;
#using scripts\core_common\array_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\spawner_shared;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;

#namespace namespace_bb59e7e8;

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 1, eflags: 0x0
// Checksum 0x6d1584ff, Offset: 0x158
// Size: 0x3c
function function_dccb21b3(*str_objective) {
    namespace_534279a::spawn_allies("parapet_start");
    level thread namespace_9e5ef376::function_b7e649c0();
}

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 2, eflags: 0x0
// Checksum 0x95680d0, Offset: 0x1a0
// Size: 0x13c
function function_f554eb14(*str_objective, *var_50cc0d4f) {
    level.player namespace_534279a::function_a3c3a2b0();
    level thread function_a7bfc002();
    level thread function_596aab36();
    var_c31a6f62 = getent("aa_parapet", "targetname");
    if (!isdefined(objectives::function_285e460(#"hash_75d3caceed12ab7d", var_c31a6f62))) {
        level objectives::kill(#"hash_75d3caceed12ab7d", var_c31a6f62, #"hash_5c22b5de1fc16f25", undefined, 0, 1);
    }
    function_6ea2cd94();
    objectives::complete(#"hash_75d3caceed12ab7d");
    level thread skipto::function_4e3ab877("parapet");
}

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 4, eflags: 0x0
// Checksum 0xfec1a952, Offset: 0x2e8
// Size: 0x24
function function_23b06946(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
    
}

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x318
// Size: 0x4
function function_596aab36() {
    
}

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x328
// Size: 0x4
function private function_a7bfc002() {
    
}

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 0, eflags: 0x0
// Checksum 0x4795657e, Offset: 0x338
// Size: 0x3c
function function_6ea2cd94() {
    level thread function_7e171808();
    level flag::wait_till("flg_aa_parapet_destroyed");
}

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 0, eflags: 0x0
// Checksum 0x81151d19, Offset: 0x380
// Size: 0x98
function function_7e171808() {
    var_80d256bf = getent("aa_parapet", "targetname");
    var_80d256bf namespace_534279a::function_2a8ee50f("parapet");
    level flag::set("flg_aa_parapet_destroyed");
    level notify(#"hash_7797b485016eeeed");
    var_80d256bf notify(#"remove_objective");
}

// Namespace namespace_bb59e7e8/namespace_bb59e7e8
// Params 0, eflags: 0x0
// Checksum 0xe0c536d9, Offset: 0x420
// Size: 0x7c
function function_43222371() {
    level flag::wait_till("flg_parapet_objective_complete");
    var_c3d060a6 = [];
    var_c3d060a6 = arraycombine(var_c3d060a6, spawner::get_ai_group_ai("right_path_catacomb_hallway_group"));
    array::run_all(var_c3d060a6, &deletedelay);
}

