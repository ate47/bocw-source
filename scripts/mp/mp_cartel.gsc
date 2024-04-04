// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using script_67ce8e728d8f37ba;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\compass.gsc;

#namespace mp_cartel;

// Namespace mp_cartel/level_init
// Params 1, eflags: 0x20
// Checksum 0xb270c5ed, Offset: 0x290
// Size: 0x14c
function event_handler[level_init] main(*eventstruct) {
    killstreaks::function_257a5f13("straferun", 40);
    killstreaks::function_257a5f13("helicopter_comlink", 75);
    level.missileremotelaunchvert = 9000;
    namespace_66d6aa44::function_3f3466c9();
    function_24198689();
    callback::on_end_game(&on_end_game);
    callback::function_6700e8b5(&function_aa95c0bb);
    if (getdvarstring(#"g_gametype") === "prop") {
        callback::on_spawned(&function_705159cd);
    }
    load::main();
    compass::setupminimap("");
    level thread function_bb57ca1a();
}

// Namespace mp_cartel/mp_cartel
// Params 0, eflags: 0x2 linked
// Checksum 0x699d9293, Offset: 0x3e8
// Size: 0x9c
function function_24198689() {
    var_780f74b5 = [];
    var_780f74b5[var_780f74b5.size] = "mp_spawn_point";
    var_780f74b5[var_780f74b5.size] = "mp_spawn_point_axis";
    var_780f74b5[var_780f74b5.size] = "mp_spawn_point_allies";
    spawning::move_spawn_point(var_780f74b5, (902, 3489, 200.313), (935.51, 3913.98, 191.707), (0, -104.985, 0));
}

// Namespace mp_cartel/mp_cartel
// Params 0, eflags: 0x2 linked
// Checksum 0xb495023f, Offset: 0x490
// Size: 0x94
function function_aa95c0bb() {
    scene::add_scene_func("cin_mp_cartel_intro_north", &function_7a9eb99a, "init");
    scene::add_scene_func("cin_mp_cartel_intro_north", &function_9cb21c4a, "sh010");
    scene::add_scene_func("cin_mp_cartel_intro_north", &function_8337682d, "sh020");
}

// Namespace mp_cartel/mp_cartel
// Params 0, eflags: 0x2 linked
// Checksum 0xc0107f9, Offset: 0x530
// Size: 0x266
function function_705159cd() {
    if (!self isprop()) {
        return;
    }
    self endon(#"death", #"disconnect");
    while (true) {
        if (isdefined(self.prop)) {
            prop = undefined;
            if (isdefined(self.propclones)) {
                foreach (clone in self.propclones) {
                    if ((clone.model === "p8_aml_chicken_female_02" || clone.model === "p8_aml_chicken_female_03") && !clone isplayinganimscripted()) {
                        prop = clone;
                        break;
                    }
                }
            }
            if (!isdefined(prop)) {
                prop = self.prop;
            }
            if ((prop.model === "p8_aml_chicken_female_02" || prop.model === "p8_aml_chicken_female_03") && !prop isplayinganimscripted()) {
                prop useanimtree("generic");
                prop animscripted("chicken_idle", prop.origin, prop.angles, "a_chicken_idle", "normal", "root", 1, 0);
            } else if (!(prop.model === "p8_aml_chicken_female_02" || prop.model === "p8_aml_chicken_female_03") && prop isplayinganimscripted()) {
                prop stopanimscripted();
            }
        }
        waitframe(1);
    }
}

// Namespace mp_cartel/mp_cartel
// Params 0, eflags: 0x2 linked
// Checksum 0x6d638a76, Offset: 0x7a0
// Size: 0x4a
function isprop() {
    return isdefined(self.pers[#"team"]) && self.pers[#"team"] == game.defenders;
}

// Namespace mp_cartel/mp_cartel
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x7f8
// Size: 0x4
function on_end_game() {
    
}

// Namespace mp_cartel/mp_cartel
// Params 1, eflags: 0x2 linked
// Checksum 0xcae995af, Offset: 0x808
// Size: 0x14c
function function_74906a8b(var_8f9fbf19) {
    var_56411b8a = getent("prb_tn_us_heli_lg_cockpit", "targetname");
    var_2ad45d4e = getent("prb_tn_us_heli_lg_cabin", "targetname");
    var_56411b8a unlink();
    var_2ad45d4e unlink();
    var_56411b8a dontinterpolate();
    var_2ad45d4e dontinterpolate();
    if (isdefined(var_8f9fbf19 gettagorigin("tag_probe_cockpit"))) {
        var_56411b8a linkto(var_8f9fbf19, "tag_probe_cockpit", (0, 0, 0), (0, 0, 0));
    }
    if (isdefined(var_8f9fbf19 gettagorigin("tag_probe_cabin"))) {
        var_2ad45d4e linkto(var_8f9fbf19, "tag_probe_cabin", (0, 0, 0), (0, 0, 0));
    }
}

// Namespace mp_cartel/mp_cartel
// Params 1, eflags: 0x2 linked
// Checksum 0xb09081c3, Offset: 0x960
// Size: 0x64
function function_7a9eb99a(a_ents) {
    if (!isdefined(a_ents[#"hash_7adc8fdd333fd073"])) {
        /#
            iprintlnbold("<unknown string>");
        #/
        return;
    }
    function_74906a8b(a_ents[#"hash_7adc8fdd333fd073"]);
}

// Namespace mp_cartel/mp_cartel
// Params 1, eflags: 0x2 linked
// Checksum 0x8ea93f33, Offset: 0x9d0
// Size: 0x64
function function_9cb21c4a(a_ents) {
    if (!isdefined(a_ents[#"hash_7adc8fdd333fd073"])) {
        /#
            iprintlnbold("<unknown string>");
        #/
        return;
    }
    function_74906a8b(a_ents[#"hash_7adc8fdd333fd073"]);
}

// Namespace mp_cartel/mp_cartel
// Params 1, eflags: 0x2 linked
// Checksum 0xd4f6884a, Offset: 0xa40
// Size: 0x64
function function_8337682d(a_ents) {
    if (!isdefined(a_ents[#"hash_7adc8fdd333fd073"])) {
        /#
            iprintlnbold("<unknown string>");
        #/
        return;
    }
    function_74906a8b(a_ents[#"hash_7adc8fdd333fd073"]);
}

// Namespace mp_cartel/mp_cartel
// Params 0, eflags: 0x2 linked
// Checksum 0x7f83c10f, Offset: 0xab0
// Size: 0x7c
function function_bb57ca1a() {
    var_c9a91b4a = array("dom10v10", "koth10v10", "war12v12", "tdm10v10");
    if (!isinarray(var_c9a91b4a, util::get_game_type())) {
        hidemiscmodels("pole_turret");
    }
}

