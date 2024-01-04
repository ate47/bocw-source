// Atian COD Tools GSC CW decompiler test
#using script_3c8eb74f9fce795a;
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_6b71c9befed901f2;
#using script_75c3996cce8959f7;
#using script_71603a58e2da0698;
#using script_30c7fb449869910;
#using script_771f5bff431d8d57;
#using script_42cbbdcd1e160063;
#using script_3314b730521b9666;
#using script_77163d5a569e2071;
#using script_38635d174016f682;
#using script_18910f59cc847b42;
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\spawning_shared.csc;
#using scripts\core_common\spawner_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_83eb6304;

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 0, eflags: 0x2 linked
// Checksum 0xe62bcdb8, Offset: 0x17e0
// Size: 0x1914
function init() {
    level.var_11c4dca4 = [];
    clientfield::register("scriptmover", "play_fx", 1, 8, "int", &play_fx, 0, 0);
    clientfield::register("allplayers", "play_fx", 1, 8, "int", &function_368dc9eb, 0, 0);
    clientfield::register("actor", "play_fx", 1, 8, "int", &play_fx, 0, 0);
    clientfield::register("vehicle", "play_fx", 1, 8, "int", &play_fx, 0, 0);
    clientfield::register("scriptmover", "stop_fx", 1, 8, "int", &function_546012c3, 0, 0);
    clientfield::register("allplayers", "stop_fx", 1, 8, "int", &function_546012c3, 0, 0);
    clientfield::register("actor", "stop_fx", 1, 8, "int", &function_546012c3, 0, 0);
    clientfield::register("vehicle", "stop_fx", 1, 8, "int", &function_546012c3, 0, 0);
    level._effect[#"bomb"] = "zombie/fx_concussive_wave_impact_zdo";
    level._effect[#"hash_6f6e926dad241b0d"] = "zombie/fx_debris_body_nuke_dust_doa";
    level._effect[#"hash_4aa003ac5586842a"] = "doa/fx9_impact_turret_land";
    level._effect[#"hash_290b21dba9ffeed7"] = "explosions/fx_exp_grenade_dirt";
    level._effect[#"character_fire_death_torso"] = "zombie/fx_fire_torso_os_doa";
    level._effect[#"character_fire_death_sm"] = "zombie/fx_fire_zombie_sm_os_doa";
    level._effect[#"hash_1bd1aca7803defd8"] = "zombie/fx_blood_torso_explo_zmb";
    level._effect[#"hash_7dc3095b19e01572"] = "blood/fx_blood_trail_zmb";
    level._effect[#"zombie_guts_explosion"] = "zombie/fx_blood_torso_explo_lg_os_zmb";
    level._effect[#"hash_551e1d0fcdb105e6"] = "zombie/fx_fire_arm_left_os_doa";
    level._effect[#"hash_4b37c12194af9a3b"] = "zombie/fx_fire_arm_right_os_doa";
    level._effect[#"hash_7ce5c47eb2a473c1"] = "zombie/fx_fire_torso_os_doa";
    level._effect[#"hash_1d9e53a201883cb"] = "doa/fx_fire_arm_left_purple_os_doa";
    level._effect[#"hash_2b3bc9d34326bcf7"] = "doa/fx_trail_gem_red_doa";
    level._effect[#"hash_643cb9decadbd5ed"] = "doa/fx_trail_gem_white_doa";
    level._effect[#"hash_45d7e77138d2f9c"] = "doa/fx_trail_gem_blue_doa";
    level._effect[#"hash_4540309e6c61cdb3"] = "doa/fx_trail_gem_green_doa";
    level._effect[#"hash_4eef6665b120858"] = "doa/fx_trail_gem_yellow_doa";
    level._effect[#"hash_769ced45964e8397"] = "doa/fx9_trail_player_green";
    level._effect[#"hash_2e19c0ba916605a0"] = "doa/fx9_trail_player_blue";
    level._effect[#"hash_41431c8652eb8f8b"] = "doa/fx9_trail_player_red";
    level._effect[#"hash_736adc53f92e74ac"] = "doa/fx9_trail_player_yellow";
    level._effect[#"hash_7c98dbb28346d079"] = "doa/fx_light_doa_pickup_glow_blue";
    level._effect[#"hash_588bd2b0d5c9f565"] = "doa/fx_light_doa_pickup_glow_gold";
    level._effect[#"hash_47439ddaef397ed8"] = "doa/fx_light_doa_pickup_glow_green";
    level._effect[#"hash_314b37db0596cbc8"] = "doa/fx_light_doa_pickup_glow_red";
    level._effect[#"hash_32d4989e8df74dca"] = "doa/fx_light_doa_pickup_glow_white";
    level._effect[#"hash_786fd953e56ce2f2"] = "doa/fx_light_doa_pickup_glow_white";
    level._effect[#"hash_364ef23f15d07355"] = "doa/fx_light_doa_pickup_glow_blue";
    level._effect[#"hash_37f2a7cc18b7b286"] = "doa/fx_light_doa_pickup_glow_red";
    level._effect[#"hash_4bee6b6585f9cacd"] = "explosions/fx8_exp_elec_killstreak";
    level._effect[#"hash_f3feb233200b24b"] = "explosions/fx8_exp_equipment_lg";
    level._effect[#"hash_2ba7079a15be757c"] = "doa/fx9_spawn_blood_hand_burst_zmb";
    level._effect[#"hash_7207b019e119bc7d"] = "doa/fx9_spawn_blood_body_billowing_zmb";
    level._effect[#"hash_4dd7773ae2a48977"] = "zombie/fx_spawn_dirt_hand_burst_zmb";
    level._effect[#"hash_4f9dc73a09ccac6c"] = "zombie/fx_spawn_dirt_body_billowing_zmb";
    level._effect[#"hash_21fb0da62b00ec91"] = "doa/fx9_spawn_demon_burst";
    level._effect[#"hash_156e49d4ed00065c"] = "doa/fx9_shield_red_loop";
    level._effect[#"hash_44dd5d7dcebd4083"] = "doa/fx9_shield_red_os";
    level._effect[#"hash_232a36afb5c83cdd"] = "zombie/fx_shield_red_zdo";
    level._effect[#"hash_70be7ffec8546e63"] = "zombie/fx_shield_zdo";
    level._effect[#"hash_3c90d26f35e390c5"] = "zombie/fx_shield_gone_zdo";
    level._effect[#"hash_5bc493104aea486a"] = "zombie/fx_shield_side_zdo";
    level._effect[#"hash_2f395262073313a0"] = "zombie/fx_shield_gone_side_zdo";
    level._effect[#"headshot"] = "zombie/fx_bul_flesh_head_fatal_zmb";
    level._effect[#"headshot_nochunks"] = "zombie/fx_bul_flesh_head_nochunks_zmb";
    level._effect[#"bloodspurt"] = "zombie/fx_bul_flesh_neck_spurt_zmb";
    level._effect[#"hash_71f7e57f364aed4a"] = "doa/fx_bio_chicken_death_doa";
    level._effect[#"hash_374150b522db3805"] = "zombie/fx_concussive_wave_impact_zdo";
    level._effect[#"hash_2e46efe374a502f0"] = "doa/fx9_exp_chest_pirate_wood";
    level._effect[#"hash_1e33728986f5a387"] = "doa/fx9_marker_tele_white_dist";
    level._effect[#"hash_21fb0da62b00ec91"] = "doa/fx9_spawn_demon_burst";
    level._effect[#"hash_12a9f4a719a68aa9"] = "doa/fx9_marker_exit_fog_md";
    level._effect[#"hash_7e9082829bc9203f"] = "zombie/fx_powerup_boxer_gloves_impact_doa";
    level._effect[#"hash_22e2efebdd0883c4"] = "zombie/fx_powerup_boxer_gloves_impact_stars_doa";
    level._effect[#"hash_156ab78f93710649"] = "zombie/fx_magnet_ring_zdo";
    level._effect[#"hash_2ee0a25585734c56"] = "zombie/fx_magnet_ring_fade_doa";
    level._effect[#"hash_587602b29d4a0692"] = "doa/fx_fire_furiousfeet_os_zdo";
    level._effect[#"hash_1f180520cfe07430"] = "doa/fx_powerup_timeshift_doa";
    level._effect[#"hash_1f538ef0e3d36bcb"] = "doa/fx_powerup_timeshift_impact_doa";
    level._effect[#"hash_1f85d28ef7f4b6b"] = "doa/fx_powerup_timeshift_fade_doa";
    level._effect[#"divine_shield"] = "doa/fx_powerup_timeshift_impact_nolight_doa";
    level._effect[#"divine_shield_off"] = "doa/fx_powerup_timeshift_nolight_os";
    level._effect[#"hash_4c8bb4d9c4f2af53"] = "doa/fx_horn_doa";
    level._effect[#"hash_577a73ed592349a8"] = "doa/fx_powerup_timeshift_red_doa";
    level._effect[#"hash_162bc07f3ef57dff"] = "zm_weapons/fx8_cymbal_monkey_light";
    level._effect[#"hash_194b022e3fe79f20"] = "maps/zm_white/fx8_monkey_bomb_reveal";
    level._effect[#"hash_e28ee99aeb7b6c1"] = "doa/fx_exp_rpg_purple_doa";
    level._effect[#"hash_3a4bc3f3452f689c"] = "doa/fx_powerup_stun_bear_fear_doa";
    level._effect[#"hash_607c49e52ba406d4"] = "doa/fx_powerup_stun_bear_shield_impact_doa";
    level._effect[#"hash_29409144866fd127"] = "doa/fx_powerup_stun_bear_shield_doa";
    level._effect[#"hash_653bbbb4a0260cde"] = "animals/fx_bio_butterfly_top";
    level._effect[#"hash_4fdf5dc737c3a8ea"] = "doa/fx_elec_sparks_burst_blue";
    level._effect[#"hash_66295fe40fc570c0"] = "electric/fx8_elec_sparks_fixture_blue_md";
    level._effect[#"hash_da0ff40267cc8d7"] = "doa/fx_trail_tesla_balls_doa";
    level._effect[#"tesla_shock"] = "doa/fx_tesla_shock_doa";
    level._effect[#"tesla_shock_eyes"] = "zombie/fx_tesla_shock_eyes_zmb";
    level._effect[#"hash_2f51cc952693b62e"] = "doa/fx_sprinkler_active_doa";
    level._effect[#"hash_5b372ff3383519c9"] = "doa/fx_sprinkler_impact_doa";
    level._effect[#"hash_60fc0e63f8979c1c"] = "doa/fx_sprinkler_impact_doa";
    level._effect[#"hash_47f183b1ce3830f4"] = "player/fx_plyr_clone_reaper_orb";
    level._effect[#"hash_6969e3fd14b23dda"] = "player/fx_plyr_clone_reaper_appear";
    level._effect[#"hash_7aa838a0b161e1e8"] = "player/fx_plyr_clone_vanish";
    level._effect[#"hash_3beed201a3f72217"] = "doa/fx_powerup_egg_hatch_doa";
    level._effect[#"hash_1efdbb2a074f69ac"] = "doa/fx_powerup_egg_destroy_doa";
    level._effect[#"hash_28adfb7441ac652e"] = "doa/fx9_fire_barrel_red_os";
    level._effect[#"hash_7a849162fd13237a"] = "doa/fx9_red_barrel_fire_os";
    level._effect[#"hash_770afa1045080796"] = "doa/fx9_exp_doa_lg";
    level._effect[#"hash_5afada6e55f6b926"] = "doa/fx9_mech_wpn_115_blob_exp_doa";
    level._effect[#"hash_574f0114feb550d1"] = "doa/fx_elec_sparks_burst_med_os_doa";
    level._effect[#"hash_421821990a6b6849"] = "doa/fx_trap_red_light_doa";
    level._effect[#"hash_4b8b4e325b91e1cd"] = "doa/fx_trap_green_light_doa";
    level._effect[#"hash_479440bc717b91c"] = "zombie/fx_electric_trap_zdo";
    level._effect[#"hash_4c83639bb82942d8"] = "zombie/fx_electric_trap_sm_light_zdo";
    level._effect[#"hash_31788894031794da"] = "electric/fx_sparks_burst_dir_md_z270_blue_os";
    level._effect[#"hash_736ccca7e9759188"] = "fire/fx9_spot_md_blue";
    level._effect[#"hash_5e060d5f293c4067"] = "zombie/fx_electric_trap_zdo";
    level._effect[#"hash_429d125723073dbc"] = "doa/fx_ai_raven_dissolve_torso";
    level._effect[#"hash_458cf82d87c28c77"] = "doa/fx_ai_raven_teleport";
    level._effect[#"hash_65ddc2e1305c6a17"] = "doa/fx_ai_raven_teleport_in";
    level._effect[#"hash_4ecc2b4dec82cf64"] = "doa/fx_ai_raven_juke_out";
    level._effect[#"hash_1f63d3d9b97361c7"] = "doa/fx_ai_dni_rez_in";
    level._effect[#"hash_7fb19df63df2dd4c"] = "doa/fx_ai_dni_rez_out_clean";
    level._effect[#"hash_1ba28014cdeb28f"] = "doa/fx_raven_teleport_doa";
    level._effect[#"hash_29c3655d15982fd7"] = "doa/fx_glow_smokeman_doa";
    level._effect[#"hash_2e65d5696e71b8e9"] = "zombie/fx_blood_torso_explo_lg_os_zmb";
    level._effect[#"hash_120ff5b1d446ab7a"] = "zombie/fx_spawn_body_cp_zmb";
    level._effect[#"hash_34210bcf377d91c7"] = "doa/fx_trashcan_doa";
    level._effect[#"hash_40442f82b0ea5839"] = "doa/fx_trashcan_damaged_doa";
    level._effect[#"hash_aa66ddd7560f0e4"] = "doa/fx9_trap_spike_tell";
    level._effect[#"hash_44e0174d8514961c"] = "doa/fx9_trap_spike_damage";
    level._effect[#"hash_1ef0dffc2b5074ec"] = "doa/fx9_trap_spike_damage_player";
    level._effect[#"nova_crawler_aura_fx"] = "zm_ai/fx8_nova_crawler_aura";
    level._effect[#"hash_b8c9f7d0954ae51"] = "zm_ai/fx8_nova_crawler_gas_release";
    level._effect[#"hash_33c517be0d698d3e"] = "zm_ai/fx8_nova_crawler_aura";
    level._effect[#"hash_5c9476c34322ade7"] = "zombie/fx_spawn_dirt_hand_burst_zmb";
    level._effect[#"hash_be39ccf81ffe519"] = "zombie/fx_debris_body_nuke_dust_doa";
    level._effect[#"hash_47cdb54f9a887290"] = "zombie/fx_exp_noxious_gas";
    level._effect[#"hash_64ef260584630ddd"] = "doa/fx_ability_light_chest_immolation";
    level._effect[#"hash_44cfe8bcf434c3ac"] = "doa/fx9_portal_loop";
    level._effect[#"hash_7468c014ffd3e657"] = "doa/fx9_exp_chest_pirate_wood";
    level._effect[#"hash_68028e848af3b66f"] = "zm_ai/fx8_dog_lightning_spawn";
    level._effect[#"hash_7060dbf2eaaa798d"] = "doa/fx9_elec_pulse_os";
    level._effect[#"hash_7f68e64009bc6293"] = "doa/fx9_elec_burst_radial_os";
    level._effect[#"hash_66464b063cb81fdd"] = "doa/fx9_trap_dragon_mouth_fire";
    level._effect[#"hash_32798caf5739ee28"] = "doa/fx9_exp_skull_blood_lg";
    level._effect[#"hash_1bbf465fb13f8de1"] = "doa/fx9_exp_skull_bones_lg";
    level._effect[#"hash_6990f0d9a05599ff"] = "doa/fx9_elec_burst_radial_os";
    level._effect[#"hash_66d682aa3af31e36"] = "doa/fx9_exp_chest_pirate_wood";
    level._effect[#"hash_723424ef52a8b99e"] = "doa/fx9_fireworks_gate";
    level._effect[#"fireworks"] = "doa/fx9_fireworks_gate";
    level._effect[#"hash_17af4085645039ad"] = "light/fx9_light_wz_doa_fire_animated";
    level._effect[#"hash_5452f43eb18944cd"] = "doa/fx9_char_crawler_vomit_stream_rnr";
    level._effect[#"hash_12612606a5823870"] = "doa/fx9_axe_trail_vis";
    level._effect[#"hash_7a6d9f513658bbe3"] = "doa/fx9_char_ethereal_spawn";
    level._effect[#"hash_28ae9c5ae357e205"] = "zm_ai/fx8_blightfather_vomit";
    level._effect[#"hash_57935345b4ffe15b"] = "doa/fx_player_respawn_doa";
    level._effect[#"hash_2e10378a016fbf34"] = "doa/fx_player_respawn_blue_doa";
    level._effect[#"hash_1d529ee752fe310f"] = "doa/fx_player_respawn_red_doa";
    level._effect[#"hash_1d529ee752fe310f"] = "doa/fx_player_respawn_yellow_doa";
    level._effect[#"hash_1f1f418adb4db3ff"] = "doa/fx_ammo_can_doa";
    level._effect[#"hash_6210e42404dd74cf"] = "destruct/fx9_red_barrel_exp";
    level._effect[#"hash_3d509db58d77a828"] = "zombie/fx_meatball_explo_zod_zmb";
    level._effect[#"hash_59ae6c65fe5d2463"] = "doa/fx9_ui_heal_aura_loop_red";
    level._effect[#"hash_685a449c9bf8e715"] = "doa/fx9_ui_heal_aura_os_red";
    level._effect[#"hash_47351561ef7bc93e"] = "doa/fx9_marker_1st_person";
    level._effect[#"hash_208bf79c66c3594f"] = "doa/fx9_marker_lantern";
    level._effect[#"hash_badc0ab59ed3826"] = "doa/fx9_marker_lantern_os";
    level._effect[#"hash_5ce33e3764873463"] = "doa/fx9_hellhound_ghost_exp";
    level._effect[#"hash_8e2b849e0253db1"] = "zm_ai/fx8_cata_plasma_blast";
    level._effect[#"hash_67afb213fe7ebbd7"] = "doa/fx9_exp_skeleton_fb";
    level._effect[#"hash_107c6009ac2232d"] = "doa/fx9_exp_skeleton_fb_giant";
    level._effect[#"hash_680bbc57dd854a8b"] = "zm_ai/fx8_dog_lightning_spawn";
    level._effect[#"hash_1d2b9e195c40660b"] = "zombie/fx_electric_trap_zdo";
    level._effect[#"hash_ae735f9ee8a6ae4"] = "doa/fx9_cannon_ball_fuse";
    level._effect[#"hash_75d047703f91db4b"] = "player/fx8_plyr_emote_bubbles_sm";
    level._effect[#"hash_444be56956fb0f98"] = "doa/fx_incoming_impact_doa";
    level._effect[#"hash_379c4b08ae7c355e"] = "doa/fx9_debris_lawn_mower";
    level._effect[#"hash_261898a71a2ddfc6"] = "doa/fx9_hazard_elec_pole";
    level._effect[#"hash_255dd00c30245d50"] = "electric/fx_sparks_burst_dir_md_z270_blue_os";
    level._effect[#"hash_28c1e4ce78b7e9aa"] = "weapon/fx9_muz_md_gas_3p";
    level._effect[#"hash_7d35b54a48886448"] = "explosions/fx9_bm_exp_surface_water_250";
    level._effect[#"water_geyser"] = "doa/fx8_geyser";
    level._effect[#"water_geyser_sm"] = "water/fx_water_geyser_md";
    level._effect[#"water_boil_ambient"] = "doa/fx9_water_boil_area_ambient";
    level._effect[#"water_boil_deathzone"] = "doa/fx9_water_boil_death_area_rnr";
    level._effect[#"hash_3de1bc10eda31dc7"] = "doa/fx9_marker_lightbulb";
    namespace_7e1ec234::function_10d1200d();
    level.var_8056ac44 = array(level._effect[#"hash_551e1d0fcdb105e6"], level._effect[#"hash_4b37c12194af9a3b"], level._effect[#"hash_7ce5c47eb2a473c1"], level._effect[#"hash_551e1d0fcdb105e6"], level._effect[#"hash_4b37c12194af9a3b"]);
    level.var_75aaaa81 = array("j_elbow_le", "j_elbow_ri", "j_spine4", "j_knee_le", "j_knee_ri");
    level.gibresettime = 0.5;
    level.gibmaxcount = 3;
    level.gibtimer = 0;
    level.gibcount = 0;
    level.var_45fa1b3d = vectorscale((0, 0, 1), 4);
    level.var_e696e731 = 3;
    level.var_be2bb100 = 2;
    level.var_49fcf1d9 = 0.5;
    level.var_48152abe = array("zombietron_gib_chunk_fat", "zombietron_gib_chunk_bone_01", "zombietron_gib_chunk_bone_02", "zombietron_gib_chunk_bone_03", "zombietron_gib_chunk_flesh_01", "zombietron_gib_chunk_flesh_02", "zombietron_gib_chunk_flesh_03", "zombietron_gib_chunk_meat_01", "zombietron_gib_chunk_meat_02", "zombietron_gib_chunk_meat_03");
    function_3385d776(#"hash_6eb76641c88275b0");
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 2, eflags: 0x2 linked
// Checksum 0xf63d2d2d, Offset: 0x3100
// Size: 0x294
function function_79f3460b(localclientnum, cmd) {
    self notify("4589039b6c0d3db6");
    self endon("4589039b6c0d3db6");
    self endon(#"disconnect", #"entityshutdown", #"death");
    if (!isdefined(self.var_7d4b2574)) {
        self.var_7d4b2574 = [];
    }
    cmd.time.cmd = gettime();
    if (!isdefined(self.var_7d4b2574)) {
        self.var_7d4b2574 = [];
    } else if (!isarray(self.var_7d4b2574)) {
        self.var_7d4b2574 = array(self.var_7d4b2574);
    }
    self.var_7d4b2574[self.var_7d4b2574.size] = cmd;
    self util::waittill_dobj(localclientnum);
    namespace_1e25ad94::function_f5f0c0f8("============================================== Processing DOBJ FX Queue");
    while (isdefined(self.var_7d4b2574) && self.var_7d4b2574.size) {
        cmd = self.var_7d4b2574[0];
        arrayremoveindex(self.var_7d4b2574, 0);
        if (cmd.on === 1) {
            namespace_1e25ad94::function_f5f0c0f8("" + self getentitynumber() + "++++++++++++++++++++++++++++++++++++++++++> ON " + cmd.name + " issued at: " + cmd.time);
            self function_d0edb8b6(localclientnum, cmd.name, cmd.tag, cmd.unique);
        } else {
            namespace_1e25ad94::function_f5f0c0f8("" + self getentitynumber() + "-----------------------------------------> OFF " + cmd.name + " issued at: " + cmd.time);
            self function_a28211cd(localclientnum, cmd.name);
        }
        waitframe(1);
    }
    self.var_7d4b2574 = undefined;
    namespace_1e25ad94::function_f5f0c0f8("============================================== FINISHED DOBJ FX Queue");
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 4, eflags: 0x2 linked
// Checksum 0x1f19fabb, Offset: 0x33a0
// Size: 0x74
function function_d0edb8b6(localclientnum, name, tag, unique) {
    if (isdefined(self.fxorigin)) {
        self.fxorigin thread function_f58618d7(localclientnum, name, tag, unique);
    } else {
        self thread function_f58618d7(localclientnum, name, tag, unique);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 5, eflags: 0x2 linked
// Checksum 0xa4d43bd4, Offset: 0x3420
// Size: 0x16c
function function_e76f738(localclientnum, name, tag, unique, var_1fbeccf = 0) {
    if (var_1fbeccf) {
        self endon(#"disconnect", #"entityshutdown", #"death");
        while (isdefined(self) && !isdefined(self.fxorigin)) {
            waitframe(1);
        }
    }
    if (!isdefined(self) || !isdefined(localclientnum)) {
        return;
    }
    if (self hasdobj(localclientnum) === 0 || isdefined(self.var_7d4b2574)) {
        cmd = {#unique:unique, #tag:tag, #name:name, #on:1};
        self thread function_79f3460b(localclientnum, cmd);
        return;
    }
    self function_d0edb8b6(localclientnum, name, tag, unique);
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 7, eflags: 0x2 linked
// Checksum 0xc5d7d24b, Offset: 0x3598
// Size: 0x94
function play_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != 0) {
        self thread function_e76f738(fieldname, function_43755017(bwastimejump), function_a3682ae2(bwastimejump), function_7450c5f4(bwastimejump));
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 7, eflags: 0x2 linked
// Checksum 0x53d2796f, Offset: 0x3638
// Size: 0x9c
function function_368dc9eb(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != 0) {
        self thread function_e76f738(fieldname, function_43755017(bwastimejump), function_a3682ae2(bwastimejump), function_7450c5f4(bwastimejump), 1);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 2, eflags: 0x2 linked
// Checksum 0x84865618, Offset: 0x36e0
// Size: 0x5c
function function_a28211cd(localclientnum, name) {
    if (isdefined(self.fxorigin)) {
        self.fxorigin function_8b1a4e9c(localclientnum, name);
    } else {
        self function_8b1a4e9c(localclientnum, name);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 2, eflags: 0x2 linked
// Checksum 0x99302d27, Offset: 0x3748
// Size: 0xac
function function_68c546ac(localclientnum, name) {
    if (self hasdobj(localclientnum) === 0 || isdefined(self.var_7d4b2574)) {
        cmd = {#name:name, #on:0};
        self thread function_79f3460b(localclientnum, cmd);
        return;
    }
    self function_a28211cd(localclientnum, name);
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 7, eflags: 0x2 linked
// Checksum 0xfe50a5f5, Offset: 0x3800
// Size: 0x74
function function_546012c3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != 0) {
        self thread function_68c546ac(fieldname, function_43755017(bwastimejump));
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 5, eflags: 0x2 linked
// Checksum 0x8f3c92a5, Offset: 0x3880
// Size: 0x11c
function function_4060ccb4(name, tag, *unused1 = "tag_origin", forcestream = 0, var_23a371c9 = 0) {
    var_318e5b78 = level.var_11c4dca4.size;
    /#
        assert(var_318e5b78 < 256, "zombie/fx_magnet_ring_zdo");
    #/
    level.var_11c4dca4[var_318e5b78] = {#unique:var_23a371c9, #id:var_318e5b78, #tag:unused1, #name:tag};
    if (forcestream) {
        function_3385d776(level._effect[tag]);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x0
// Checksum 0x45007b82, Offset: 0x39a8
// Size: 0x9e
function function_ede08af4(name) {
    foreach (fx in level.var_11c4dca4) {
        if (fx.name == name) {
            return fx.id;
        }
    }
    return 0;
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x98d81fa4, Offset: 0x3a50
// Size: 0x52
function function_43755017(type) {
    /#
        assert(isdefined(level.var_11c4dca4[type]), "player/fx_plyr_clone_reaper_appear");
    #/
    return level.var_11c4dca4[type].name;
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0xb88e19d9, Offset: 0x3ab0
// Size: 0x52
function function_a3682ae2(type) {
    /#
        assert(isdefined(level.var_11c4dca4[type]), "player/fx_plyr_clone_reaper_appear");
    #/
    return level.var_11c4dca4[type].tag;
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0xdec3aca1, Offset: 0x3b10
// Size: 0x52
function function_7450c5f4(type) {
    /#
        assert(isdefined(level.var_11c4dca4[type]), "player/fx_plyr_clone_reaper_appear");
    #/
    return level.var_11c4dca4[type].unique;
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 2, eflags: 0x2 linked
// Checksum 0xecf608a1, Offset: 0x3b70
// Size: 0x162
function function_8b1a4e9c(localclientnum, name) {
    profilestart();
    if (!isdefined(self.var_10b0846b)) {
        profilestop();
        return;
    }
    if (isdefined(self.var_10b0846b[name])) {
        stopfx(localclientnum, self.var_10b0846b[name]);
        self.var_10b0846b[name] = undefined;
    }
    if (isdefined(self.var_15b0b40[name])) {
        self.var_15b0b40[name] delete();
        self.var_15b0b40[name] = undefined;
    }
    if (isdefined(self.var_a7bcf699[name])) {
        foreach (fx in self.var_a7bcf699[name]) {
            stopfx(localclientnum, fx);
        }
        self.var_a7bcf699[name] = undefined;
    }
    profilestop();
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 4, eflags: 0x2 linked
// Checksum 0x2a59e69c, Offset: 0x3ce0
// Size: 0x4d0
function function_f58618d7(localclientnum, name, tag, var_fc8ee72b = 0) {
    self endon(#"entityshutdown", #"death", #"disconnect");
    if (!isdefined(localclientnum)) {
        return;
    }
    while (!clienthassnapshot(localclientnum)) {
        waitframe(1);
    }
    if (!is_true(self.hasdobj)) {
        self util::waittill_dobj(localclientnum);
        self.hasdobj = 1;
    }
    if (!isdefined(self.var_10b0846b)) {
        self.var_10b0846b = [];
    }
    if (!isdefined(self.var_15b0b40)) {
        self.var_15b0b40 = [];
    }
    if (!isdefined(self.var_a7bcf699)) {
        self.var_a7bcf699 = [];
    }
    if (tag == "special") {
        self thread function_d8c789b8(localclientnum, name);
    } else if (tag == "fakelink") {
        org = namespace_ec06fe4a::function_e22ae9b3(localclientnum, self.origin, "tag_origin", self.angles, "fx fakelink");
        if (!isdefined(org)) {
            return;
        }
        org.fx.org = util::playfxontag(localclientnum, level._effect[name], org, "tag_origin");
        if (isdefined(self.var_10b0846b[name])) {
            stopfx(localclientnum, self.var_10b0846b[name]);
        }
        if (isdefined(self.var_15b0b40[name])) {
            self.var_15b0b40[name] delete();
        }
        if (var_fc8ee72b && isdefined(self.var_10b0846b[name]) && isfxplaying(localclientnum, self.var_10b0846b[name])) {
            killfx(localclientnum, self.var_10b0846b[name]);
        }
        self.var_10b0846b[name] = org.fx;
        self.var_15b0b40[name] = org;
        org thread namespace_ec06fe4a::function_73d79e7d(self);
    } else if (tag == "none") {
        if (var_fc8ee72b && isdefined(self.var_10b0846b[name]) && isfxplaying(localclientnum, self.var_10b0846b[name])) {
            killfx(localclientnum, self.var_10b0846b[name]);
        }
        self.var_10b0846b[name] = playfx(localclientnum, level._effect[name], self.origin, anglestoforward(self.angles), anglestoup(self.angles));
    } else {
        if (isdefined(tag) && tag != "tag_origin") {
            tagorigin = self gettagorigin(tag);
            if (!isdefined(tagorigin)) {
                tag = "tag_origin";
            }
        }
        var_91bd4506 = isdefined(self.var_f3b82c6d) ? self.var_f3b82c6d : self;
        if (var_fc8ee72b && isdefined(self.var_10b0846b[name]) && isfxplaying(localclientnum, self.var_10b0846b[name])) {
            killfx(localclientnum, self.var_10b0846b[name]);
        }
        self.var_10b0846b[name] = util::playfxontag(localclientnum, level._effect[name], var_91bd4506, tag);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x3cb5ad7a, Offset: 0x41b8
// Size: 0x16c
function function_a65eebe3(localclientnum) {
    self notify("65618fc845e4916b");
    self endon("65618fc845e4916b");
    result = undefined;
    result = self waittill(#"entityshutdown", #"death", #"disconnect");
    if (isdefined(self.var_a7bcf699)) {
        foreach (var_4212fdee in self.var_a7bcf699) {
            foreach (fx in var_4212fdee) {
                stopfx(localclientnum, fx);
            }
        }
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 3, eflags: 0x2 linked
// Checksum 0xf21fa006, Offset: 0x4330
// Size: 0xc92
function function_d8c789b8(localclientnum, name, *tag) {
    self endon(#"entityshutdown", #"death", #"disconnect");
    self thread function_a65eebe3(name);
    switch (tag) {
    case #"hash_4a5d10a201708a87":
        self annihilate(name);
        break;
    case #"hash_1deabb64c2dc123d":
        self zombie_gut_explosion(name);
        break;
    case #"hash_18ee462515be7820":
        self function_e5d3c2b4(name);
        break;
    case #"hash_5fe4ac4b2c4901fa":
        self function_96d7f2e2(name);
        break;
    case #"hash_1421900fa568846":
        self zombie_wait_explode(name);
        break;
    case #"hash_5dc905162c6304bf":
        self function_8fd3b08d(name, undefined);
        break;
    case #"hash_2104a9c982c0d5dd":
        self function_1b728474(name);
        break;
    case #"hash_59784409ec081e9e":
        playfx(name, level._effect[#"hash_2ba7079a15be757c"], self.origin);
        wait(0.25);
        playfx(name, level._effect[#"hash_7207b019e119bc7d"], self.origin);
        break;
    case #"hash_6af7e6da3b75c130":
        playfx(name, level._effect[#"hash_4dd7773ae2a48977"], self.origin);
        wait(0.25);
        playfx(name, level._effect[#"hash_4f9dc73a09ccac6c"], self.origin);
        break;
    case #"hash_255dd00c30245d50":
        currentangle = randomint(360);
        var_5ccd914d = rotatepointaroundaxis((1, 0, 0), (0, 0, 1), currentangle);
        playfx(name, level._effect[#"hash_255dd00c30245d50"], self.origin, var_5ccd914d, (0, 0, 1));
        break;
    case #"hash_2488c7de86684bbd":
        if (isdefined(self.var_a7bcf699[tag])) {
            foreach (fx in self.var_a7bcf699[tag]) {
                stopfx(name, fx);
            }
        }
        self.var_a7bcf699[tag] = [];
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = util::playfxontag(name, level._effect[#"hash_2488c7de86684bbd"], self, "j_belly");
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = util::playfxontag(name, level._effect[#"hash_2fbce616d1238481"], self, "j_ankle_le");
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = util::playfxontag(name, level._effect[#"hash_2fbce616d1238481"], self, "j_ankle_ri");
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = util::playfxontag(name, level._effect[#"hash_2fbce616d1238481"], self, "j_wrist_le");
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = util::playfxontag(name, level._effect[#"hash_2fbce616d1238481"], self, "j_wrist_ri");
        break;
    case #"hash_65ddc2e1305c6a17":
        playfx(name, level._effect[#"hash_65ddc2e1305c6a17"], self.origin);
        playfx(name, level._effect[#"hash_1f63d3d9b97361c7"], self.origin);
        playfx(name, level._effect[#"hash_1ba28014cdeb28f"], self.origin);
        break;
    case #"hash_4ecc2b4dec82cf64":
        playfx(name, level._effect[#"hash_429d125723073dbc"], self.origin);
        playfx(name, level._effect[#"hash_2e65d5696e71b8e9"], self.origin);
        playfx(name, level._effect[#"hash_7fb19df63df2dd4c"], self.origin);
        break;
    case #"hash_479440bc717b91c":
        if (isdefined(self.var_a7bcf699[tag])) {
            foreach (fx in self.var_a7bcf699[tag]) {
                stopfx(name, fx);
            }
        }
        self.var_a7bcf699[tag] = [];
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = playfx(name, level._effect[tag], self.origin + vectorscale((0, 0, 1), 100));
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = playfx(name, level._effect[#"hash_4c83639bb82942d8"], self.origin + vectorscale((0, 0, 1), 124));
        break;
    case #"hash_421821990a6b6849":
    case #"hash_4b8b4e325b91e1cd":
        if (isdefined(self.var_a7bcf699[tag])) {
            foreach (fx in self.var_a7bcf699[tag]) {
                stopfx(name, fx);
            }
        }
        self.var_a7bcf699[tag] = [];
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = playfx(name, level._effect[tag], self.origin + vectorscale((0, 0, 1), 124));
        break;
    case #"hash_290b21dba9ffeed7":
        if (isdefined(self.var_a7bcf699[tag])) {
            foreach (fx in self.var_a7bcf699[tag]) {
                stopfx(name, fx);
            }
        }
        self.var_a7bcf699[tag] = [];
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = playfx(name, level._effect[tag], self gettagorigin("j_ball_ri"));
        break;
    case #"hash_75d047703f91db4b":
        if (isdefined(self.var_a7bcf699[tag])) {
            foreach (fx in self.var_a7bcf699[tag]) {
                stopfx(name, fx);
            }
        }
        self.var_a7bcf699[tag] = [];
        if (!isdefined(self.var_8d26e38d)) {
            self.var_8d26e38d = self.origin + vectorscale((1, 0, 0), 16) + anglestoforward(self.angles) * 16;
            self.var_f5ec511d = anglestoforward(self.angles + vectorscale((0, -1, 0), 135));
        }
        self.var_a7bcf699[tag][self.var_a7bcf699[tag].size] = playfx(name, level._effect[tag], self.var_8d26e38d, self.var_f5ec511d);
        break;
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 3, eflags: 0x2 linked
// Checksum 0x9d0f8dea, Offset: 0x4fd0
// Size: 0x1cc
function function_918c5de1(origin, count = 3, dir) {
    while (count) {
        if (!isdefined(dir)) {
            dir = (level.var_45fa1b3d + (randomfloatrange(level.var_be2bb100 * -1 - count, level.var_be2bb100 + count), randomfloatrange(level.var_be2bb100 * -1 - count, level.var_be2bb100 + count), randomintrange(level.var_e696e731 * -1 - count, level.var_e696e731 + count))) * level.var_49fcf1d9;
        }
        model = level.var_48152abe[randomint(level.var_48152abe.size)];
        var_c180650d = origin + (randomintrange(-12, 12), randomintrange(-12, 12), randomintrange(-40, 12));
        createdynentandlaunch(0, model, var_c180650d, (0, 0, 0), var_c180650d, dir, level._effect[#"hash_7dc3095b19e01572"], 1);
        count--;
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x6e4e476e, Offset: 0x51a8
// Size: 0x24
function annihilate(localclientnum) {
    gibclientutils::cliententgibannihilate(localclientnum, self);
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x953dfbbf, Offset: 0x51d8
// Size: 0xcc
function zombie_gut_explosion(localclientnum) {
    if (isdefined(level._effect[#"zombie_guts_explosion"]) && util::is_mature()) {
        where = self gettagorigin("J_SpineLower");
        if (!isdefined(where)) {
            where = self.origin;
        }
        playfx(localclientnum, level._effect[#"zombie_guts_explosion"], where);
        level thread function_918c5de1(where, 6);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x58441cf6, Offset: 0x52b0
// Size: 0xc4
function function_e5d3c2b4(localclientnum) {
    if (isdefined(level._effect[#"zombie_guts_explosion"]) && util::is_mature()) {
        where = self gettagorigin("J_SpineLower");
        if (!isdefined(where)) {
            where = self.origin;
        }
        playfx(localclientnum, level._effect[#"zombie_guts_explosion"], where);
        level thread function_918c5de1(where);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0x2f5b2e1d, Offset: 0x5380
// Size: 0xcc
function function_96d7f2e2(localclientnum) {
    if (isdefined(level._effect[#"hash_432fb4891367ab24"]) && util::is_mature()) {
        where = self gettagorigin("J_SpineLower");
        if (!isdefined(where)) {
            where = self.origin;
        }
        playfx(localclientnum, level._effect[#"hash_432fb4891367ab24"], where);
        level thread function_918c5de1(where, 5);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0xe84e0bea, Offset: 0x5458
// Size: 0x114
function zombie_wait_explode(localclientnum) {
    where = self gettagorigin("J_SpineLower");
    if (!isdefined(where)) {
        where = self.origin;
    }
    start = gettime();
    while (gettime() - start < 2000) {
        if (isdefined(self)) {
            where = self gettagorigin("J_SpineLower");
            if (!isdefined(where)) {
                where = self.origin;
            }
        }
        wait(0.05);
    }
    if (isdefined(level._effect[#"zombie_guts_explosion"]) && util::is_mature()) {
        playfx(localclientnum, level._effect[#"zombie_guts_explosion"], where);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 1, eflags: 0x2 linked
// Checksum 0xf1a4b538, Offset: 0x5578
// Size: 0xcc
function function_1b728474(localclientnum) {
    if (isdefined(level._effect[#"zombie_guts_explosion"]) && util::is_mature()) {
        where = self gettagorigin("J_SpineLower");
        if (!isdefined(where)) {
            where = self.origin;
        }
        playfx(localclientnum, level._effect[#"zombie_guts_explosion"], where);
        level thread function_918c5de1(where, 1);
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 2, eflags: 0x2 linked
// Checksum 0xccbe2e3b, Offset: 0x5650
// Size: 0xd2
function function_9b1a8f91(localclientnum, mask = randomint(1 << level.var_8056ac44.size)) {
    for (idx = 0; mask > 0; idx++) {
        if (mask & 1) {
            util::playfxontag(localclientnum, isdefined(self.var_600c0020) ? self.var_600c0020[idx] : level.var_8056ac44[idx], self, level.var_75aaaa81[idx]);
        }
        mask = mask >> 1;
    }
}

// Namespace namespace_83eb6304/namespace_83eb6304
// Params 2, eflags: 0x2 linked
// Checksum 0xafb2748d, Offset: 0x5730
// Size: 0xa4
function function_8fd3b08d(localclientnum, mask) {
    if (!self hasdobj(localclientnum)) {
        return;
    }
    if (!isdefined(self.var_48dac788)) {
        self.var_48dac788 = 0;
    }
    if (gettime() < self.var_48dac788) {
        return;
    }
    self.var_48dac788 = gettime() + getdvarint(#"hash_75f1994694418afc", 1500);
    self function_9b1a8f91(localclientnum, mask);
}

