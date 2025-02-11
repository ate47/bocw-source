#using scripts\core_common\compass;
#using scripts\core_common\load_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\scene_shared;

#namespace mp_russianbase_rm;

// Namespace mp_russianbase_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0xa4440005, Offset: 0xe0
// Size: 0x44
function event_handler[level_init] main(*eventstruct) {
    load::main();
    compass::setupminimap("");
    function_c3c859e1();
}

// Namespace mp_russianbase_rm/mp_russianbase_rm
// Params 0, eflags: 0x0
// Checksum 0xbe6f37db, Offset: 0x130
// Size: 0x3c
function function_c3c859e1() {
    if (getgametypesetting(#"allowmapscripting")) {
        level thread init_train();
    }
}

// Namespace mp_russianbase_rm/mp_russianbase_rm
// Params 0, eflags: 0x0
// Checksum 0xc492a013, Offset: 0x178
// Size: 0x138
function init_train() {
    level endon(#"game_ended");
    level scene::add_scene_func(#"hash_2084b22fe6837c77", &function_bfe6ca0b, "init");
    level scene::add_scene_func(#"hash_2084b22fe6837c77", &function_43561aca, "play");
    level scene::add_scene_func(#"hash_2084b22fe6837c77", &function_963b1a99, "done");
    level scene::init(#"hash_2084b22fe6837c77");
    while (true) {
        if (math::cointoss()) {
            level scene::play(#"hash_2084b22fe6837c77");
        }
        wait randomintrange(100, 130);
    }
}

// Namespace mp_russianbase_rm/mp_russianbase_rm
// Params 1, eflags: 0x0
// Checksum 0xe7337b73, Offset: 0x2b8
// Size: 0x8c
function function_bfe6ca0b(a_ents) {
    a_ents[#"prop 1"] hide();
    self.t_hurt = getent("train_hurt_trig", "targetname");
    self.t_hurt.start_pos = self.t_hurt.origin;
    self.t_hurt enablelinkto();
}

// Namespace mp_russianbase_rm/mp_russianbase_rm
// Params 1, eflags: 0x0
// Checksum 0xda332f42, Offset: 0x350
// Size: 0x64
function function_43561aca(a_ents) {
    a_ents[#"prop 1"] show();
    if (isdefined(self.t_hurt)) {
        self.t_hurt linkto(a_ents[#"prop 1"]);
    }
}

// Namespace mp_russianbase_rm/mp_russianbase_rm
// Params 1, eflags: 0x0
// Checksum 0xe200bc6b, Offset: 0x3c0
// Size: 0x72
function function_963b1a99(a_ents) {
    a_ents[#"prop 1"] hide();
    if (isdefined(self.t_hurt)) {
        self.t_hurt unlink();
        self.t_hurt.origin = self.t_hurt.start_pos;
    }
}

