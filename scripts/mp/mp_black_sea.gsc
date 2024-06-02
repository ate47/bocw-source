// Atian COD Tools GSC CW decompiler test
#using script_72d96920f15049b8;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_67ce8e728d8f37ba;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\compass.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace mp_black_sea;

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x1
// Checksum 0xf64900c0, Offset: 0x490
// Size: 0x74
function autoexec function_7defddbd() {
    str_gametype = util::get_game_type();
    if (str_gametype === #"vip" || str_gametype === #"zsurvival") {
        setgametypesetting(#"hash_3a15393c2e90e121", 1);
    }
}

// Namespace mp_black_sea/level_init
// Params 1, eflags: 0x20
// Checksum 0x679a228, Offset: 0x510
// Size: 0x2b0
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("vehicle", "" + #"hash_51d1d2a4c63ed960", 1, 1, "int");
    callback::on_vehicle_spawned(&on_vehicle_spawned);
    callback::on_game_playing(&on_game_playing);
    namespace_66d6aa44::function_3f3466c9();
    killstreaks::function_257a5f13("straferun", 40);
    killstreaks::function_257a5f13("helicopter_comlink", 75);
    scene::function_497689f6("cin_mp_blacksea_intro_cia", "helicopter", "tag_probe_cabin", "prb_tn_us_heli_lg_cabin");
    scene::function_497689f6("cin_mp_blacksea_intro_cia", "helicopter", "tag_probe_cockpit", "prb_tn_us_heli_lg_cockpit");
    scene::add_scene_func(#"cin_mp_blacksea_intro_kgb", &function_c628239e, "play");
    level thread function_7f639bc1();
    load::main();
    compass::setupminimap("");
    level thread function_29584e41();
    if (function_be90acca(util::get_game_type()) !== #"zsurvival") {
        hidemiscmodels("magicbox_zbarrier");
    }
    level thread function_e8fa58f2();
    level callback::add_callback(#"hash_540f54ade63017ea", &function_54d03b3c);
    str_gametype = util::get_game_type();
    if (str_gametype === #"zsurvival") {
        level.var_d3b056a7 = 1;
    }
}

// Namespace mp_black_sea/mp_black_sea
// Params 1, eflags: 0x6 linked
// Checksum 0x9cd1f063, Offset: 0x7c8
// Size: 0x2c
function private function_54d03b3c(*eventstruct) {
    setgametypesetting(#"hash_3a15393c2e90e121", 0);
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0xc1624a30, Offset: 0x800
// Size: 0x4c
function on_vehicle_spawned() {
    if (isvehicle(self) && is_true(self.break_glass)) {
        self util::break_glass();
    }
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0x61e17e0f, Offset: 0x858
// Size: 0x14
function on_game_playing() {
    function_c0e7257();
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0x43b2894f, Offset: 0x878
// Size: 0x54
function function_c0e7257() {
    var_286f8241 = getent("fire_trigger_hurt", "targetname");
    if (isdefined(var_286f8241)) {
        var_286f8241 callback::on_trigger(&function_6691af0e);
    }
}

// Namespace mp_black_sea/mp_black_sea
// Params 1, eflags: 0x2 linked
// Checksum 0xb9c10e3c, Offset: 0x8d8
// Size: 0x74
function function_6691af0e(var_252cfb75) {
    activator = var_252cfb75.activator;
    if (isvehicle(activator) && isalive(activator)) {
        activator dodamage(self.dmg, activator.origin);
    }
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0x34fc6123, Offset: 0x958
// Size: 0x21c
function function_7f639bc1() {
    level endon(#"game_ended");
    var_f7d8aaa7 = strtok("koth10v10 ctf vip conf10v10 dom10v10 tdm10v10 war12v12 zsurvival", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_f7d8aaa7, gametype)) {
        level.var_633063a5 = 1;
        array::delete_all(getentarray("12v12_bounds", "targetname"));
        hidemiscmodels("12v12_bounds");
        hidemiscmodels("pole_turret");
        hidemiscmodels("zipline_flags");
        level flag::wait_till("first_player_spawned");
        exploder::exploder("fxexp_main_ship_oil_fire_level");
        return;
    }
    array::run_all(getentarray("12v12_navmesh_cutout", "targetname"), &disconnectpaths, undefined, 0);
    array::delete_all(getentarray("6v6_bounds", "targetname"));
    hidemiscmodels("6v6_bounds");
    level flag::wait_till("first_player_spawned");
    exploder::exploder("exp_lgt_12v12");
    exploder::exploder("fxexp_main_ship_oil_fire_level");
}

// Namespace mp_black_sea/mp_black_sea
// Params 1, eflags: 0x2 linked
// Checksum 0xd0acf95d, Offset: 0xb80
// Size: 0xf4
function function_c628239e(a_ents) {
    self notify("17f7b6813feb7577");
    self endon("17f7b6813feb7577");
    var_a6eece5c = a_ents[#"hash_6dcf151fd203a04e"];
    var_a6eece5c endon(#"death");
    var_a6eece5c waittill(#"hash_c29a94baff41fde");
    var_a6eece5c clientfield::set("" + #"hash_51d1d2a4c63ed960", 1);
    var_a6eece5c waittill(#"hash_1ecf339bfbbacc60");
    var_a6eece5c clientfield::set("" + #"hash_51d1d2a4c63ed960", 0);
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0x114e7e57, Offset: 0xc80
// Size: 0x170
function function_29584e41() {
    level flag::wait_till(#"item_world_reset");
    if (util::get_game_type() !== #"spy") {
        var_94c44cac = getdynentarray("spy_special_weapon_stash");
        var_de285f77 = getdynentarray("spy_ammo_stash");
        var_ffd6a2d3 = getdynentarray("spy_equipment_stash");
        var_3c1644b6 = arraycombine(var_94c44cac, var_de285f77);
        var_3c1644b6 = arraycombine(var_3c1644b6, var_ffd6a2d3);
        foreach (dynent in var_3c1644b6) {
            function_e2a06860(dynent, 3);
        }
    }
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0xc9327348, Offset: 0xdf8
// Size: 0x184
function function_e8fa58f2() {
    hidemiscmodels("sv_holdout_aetherfungus");
    hidemiscmodels("defend_corpses_1");
    hidemiscmodels("defend_corpses_2");
    hidemiscmodels("defend_corpses_3");
    hidemiscmodels("hvt_mechz_corpses");
    hidemiscmodels("hvt_mimic_corpses");
    hidemiscmodels("hvt_raz_corpses");
    hidemiscmodels("hvt_steiner_corpses");
    hidemiscmodels("payload_teleport_corpses");
    hidemiscmodels("payload_noteleport_corpses");
    hidemiscmodels("retrieval_corpses");
    hidemiscmodels("secure_corpses");
    hidemiscmodels("hordehunt_corpses_1");
    hidemiscmodels("hordehunt_corpses_2");
    hidemiscmodels("hordehunt_corpses_3");
    hidemiscmodels("fishing_setup");
}

