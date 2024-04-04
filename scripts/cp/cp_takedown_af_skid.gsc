// Atian COD Tools GSC CW decompiler test
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using script_7cf3e180e994d17f;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\skipto.gsc;
#using script_31e9b35aaacbbd93;
#using scripts\cp_common\util.gsc;
#using script_61cfc2ab8e60625;
#using scripts\cp\cp_takedown_af_chase.gsc;
#using scripts\cp\cp_takedown_af_hill.gsc;
#using scripts\core_common\ai_shared.gsc;
#using script_4937c6974f43bb71;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace tkdn_af_skid;

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 1, eflags: 0x2 linked
// Checksum 0xd4122eae, Offset: 0x2e0
// Size: 0x19c
function starting(*var_d3440450) {
    namespace_b100dd86::function_5aabc3fb();
    level.af_plane = namespace_b100dd86::function_5431431d();
    namespace_b100dd86::function_c8381339(level.af_plane, 1);
    thread namespace_b100dd86::function_1c77193b(level.af_plane);
    level.var_49a5d2a4 = getvehiclearray("af_chase_veh", "targetname")[0];
    level.var_49a5d2a4 vehicle::lights_on();
    level.var_49a5d2a4 vehicle::toggle_force_driver_taillights(1);
    level.var_49a5d2a4 namespace_db2381c4::function_4c265dee();
    tkdn_af_hill::function_a2015343();
    a_ar = getweapon(#"ar_accurate_t9");
    level.adler setweapon(a_ar);
    level flag::set("af_start_enemy_crash_vehs");
    setdvar(#"hash_76c0d7e6385ee6de", 0.05);
    thread namespace_a052577e::function_3dbad6f5();
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 2, eflags: 0x2 linked
// Checksum 0x698a3cf9, Offset: 0x488
// Size: 0x1d4
function main(var_d3440450, *var_50cc0d4f) {
    player = getplayers()[0];
    setdvar(#"hash_3d9a09e7ecea2271", 0);
    level clientfield::set("crash_models", 1);
    var_c3025e74 = getvehiclearray();
    function_def1eb14(["smash_veh", "crash_veh_l", "crash_veh_r"]);
    wait(0.1);
    level flag::set("af_doing_crash");
    thread function_243c9d46(player);
    level notify(#"hash_2000b4f0550d06a6");
    level flag::wait_till("af_skid_complete");
    if (isdefined(level.adler)) {
        level.adler util::stop_magic_bullet_shield();
        level.adler delete();
    }
    setdvar(#"hash_3d9a09e7ecea2271", 1);
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 4, eflags: 0x2 linked
// Checksum 0x5c5190cd, Offset: 0x668
// Size: 0x44
function cleanup(*name, *starting, *direct, *player) {
    level clientfield::set("crash_models", 0);
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 0, eflags: 0x2 linked
// Checksum 0x3e746f33, Offset: 0x6b8
// Size: 0x44
function init_flags() {
    level flag::init("af_skid_complete");
    level flag::init("af_doing_crash");
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x708
// Size: 0x4
function init_clientfields() {
    
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x718
// Size: 0x4
function function_22b7fffd() {
    
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 1, eflags: 0x2 linked
// Checksum 0xba18b4a3, Offset: 0x728
// Size: 0xd0
function function_def1eb14(var_178982c8) {
    level.var_515a88e0 = [];
    foreach (name in var_178982c8) {
        veh = vehicle::simple_spawn_single(name);
        level.var_515a88e0[level.var_515a88e0.size] = veh;
        veh thread function_c5eaa394();
    }
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 0, eflags: 0x2 linked
// Checksum 0xcd0a511e, Offset: 0x800
// Size: 0x74
function function_c5eaa394() {
    wait(0.1);
    if (self.targetname == "smash_veh") {
        self waittill(#"turn_on_lights");
    }
    self vehicle::lights_on();
    self vehicle::toggle_force_driver_taillights(1);
    self thread tkdn_af_chase::function_6b9d341b();
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 1, eflags: 0x2 linked
// Checksum 0xae1faa73, Offset: 0x880
// Size: 0x574
function function_243c9d46(player) {
    player_veh = getvehiclearray("af_chase_veh", "targetname")[0];
    level.var_49a5d2a4 = player_veh;
    level.player = getplayers()[0];
    thread function_c0f9442c();
    thread function_e99dbb58(player);
    player_veh vehicle::get_off_path();
    woods = getactorarray("af_woods", "targetname");
    if (woods.size > 0) {
        woods[0] unlink();
    }
    plane = getent("cargo_plane", "targetname");
    plane unlink();
    level.adler unlink();
    util::nvidiaansel_scriptdisable(1);
    actors = level.var_515a88e0;
    level.fake_player = util::spawn_player_clone(level.player);
    level.fake_player.targetname = "FakePlayer";
    actors[#"fakeplayer"] = level.fake_player;
    level.fake_player hide();
    level thread scene::play_from_time("scene_tkd_hit3_planecrash_intro", "crash_fakeplayer", actors, 0.8, 0, 1);
    waitframe(1);
    level.fake_player hide();
    level.fake_player setinvisibletoall();
    player playerlinktodelta(level.fake_player, "tag_player", 1, 180, 180, 180, 180, 1, 0, 1);
    level waittill(#"hash_2d945658a781d296");
    namespace_82bfe441::fade(1, "FadeImmediate");
    player playerlinktoblend(level.fake_player, "tag_player", 0.2, 0, 0, 0.2, 0, 0, 1);
    wait(0.2);
    level.fake_player show();
    level.fake_player setvisibletoall();
    player val::set("crash", "disable_weapons", 2);
    player playerlinktodelta(level.fake_player, "tag_player", 1, 0, 0, 0, 0, 1, 0, 1);
    level waittill(#"hash_360943c8eac07426");
    waitframe(1);
    level.var_49a5d2a4 vehicle::lights_off();
    level.var_49a5d2a4 vehicle::toggle_force_driver_taillights(0);
    level.var_49a5d2a4 namespace_db2381c4::function_2c185955();
    level waittill(#"hash_557087a4ef59ae6c");
    wait(3);
    level flag::set("af_skid_complete");
    snd::function_7db65a93("af_skid_complete");
    player unlink();
    level.fake_player delete();
    player val::reset("crash", "disable_weapons");
    player val::reset("crash", "allow_crouch");
    player val::reset("crash", "allow_prone");
    player val::reset(#"chase", "allowdeath");
    util::nvidiaansel_scriptdisable(0);
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 0, eflags: 0x2 linked
// Checksum 0x5e2cf205, Offset: 0xe00
// Size: 0x54
function function_c0f9442c() {
    level waittill(#"hash_164bf872d25545af");
    level notify(#"hash_6f65948492627624");
    snd::function_7db65a93(#"hash_164bf872d25545af");
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 2, eflags: 0x0
// Checksum 0xc858e1e3, Offset: 0xe60
// Size: 0x70
function function_71a64494(player, *guy) {
    guy waittill(#"weapon_fired");
    level.player playhitmarker(undefined, 5, undefined, 1);
    wait(0.01);
    level notify(#"hash_79d44a2e92237673");
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 1, eflags: 0x0
// Checksum 0xa36f5040, Offset: 0xed8
// Size: 0x5e
function function_c2f81a50(notification) {
    level endon(notification);
    self waittill(#"damage");
    level.player playhitmarker(undefined, 5, undefined, 1);
    level notify(notification);
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 1, eflags: 0x2 linked
// Checksum 0xfcc36cba, Offset: 0xf40
// Size: 0x1b4
function function_e99dbb58(player) {
    player unlink();
    player playersetgroundreferenceent(undefined);
    level.var_49a5d2a4 setmovingplatformenabled(1, 0);
    player setstance("stand");
    waitframe(1);
    player val::set("crash", "allow_crouch", 0);
    player val::set("crash", "allow_prone", 0);
    wait(2);
    if (isdefined(level.rc_car)) {
        level.rc_car delete();
    }
    level waittill(#"hash_61855c3885c438e6");
    player shellshock(#"frag_grenade_mp", 4);
    level lui::screen_fade_out(0.2);
    player playrumbleonentity("damage_heavy");
    level notify(#"hash_351eb749d2c8fa9c");
    flag::clear("af_wing_smash");
}

// Namespace tkdn_af_skid/namespace_f74d9fde
// Params 0, eflags: 0x0
// Checksum 0x5c4b7076, Offset: 0x1100
// Size: 0x26
function function_c9f7e2d2() {
    var_c3025e74 = vehicle::simple_spawn_and_drive("af_enemy_crash_veh");
}

