// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_hud.gsc;
#using script_2f560596a9a134ab;
#using script_4ce5d94e8c797350;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace zm_silver_zones;

// Namespace zm_silver_zones/zm_silver_zones
// Params 0, eflags: 0x1
// Checksum 0xfe1ee685, Offset: 0x970
// Size: 0x154
function autoexec init() {
    callback::on_spawned(&function_44b1279a);
    level.var_65c43c31 = [14:"zone_trans_south_pap_room", 13:"zone_trans_north_pap_room", 12:"zone_trans_south_tunnel", 11:"zone_power_tunnel", 10:"zone_center_lower", 9:"zone_center_upper", 8:"zone_center_upper_north", 7:"zone_center_upper_west", 6:"zone_trans_south", 5:"zone_trans_north", 4:"zone_power_trans_south", 3:"zone_power_trans_north", 2:"zone_power_room_outside", 1:"zone_power_room", 0:"zone_tunnel_interior"];
    level.var_aa3b88c5 = &function_27028b8e;
    level.var_27028b8e = &function_27028b8e;
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 0, eflags: 0x2 linked
// Checksum 0x3cde16a, Offset: 0xad0
// Size: 0xff4
function zone_init() {
    level flag::init("always_on");
    level flag::set("always_on");
    zm_zonemgr::zone_init("zone_proto_start");
    zm_zonemgr::add_adjacent_zone("zone_proto_start", "zone_proto_start2", "always_on", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_start", "zone_proto_interior_lower", "connect_start_to_proto_interior", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_start", "zone_power_tunnel", "connect_to_power_tunnel", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_start2", "zone_proto_interior_cave", "connect_start_to_proto_cave", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_upstairs", "zone_proto_plane_exterior", "connect_upstairs_to_proto_plane_exterior", 0);
    zm_zonemgr::add_zone_flags("connect_upstairs_to_proto_plane_exterior", "connect_upstairs_to_roof");
    zm_zonemgr::add_zone_flags("connect_upstairs_to_proto_cave", "connect_upstairs_to_roof");
    zm_zonemgr::add_adjacent_zone("zone_proto_roof_plane", "zone_proto_plane_exterior", "connect_roof_to_plane", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_roof_plane", "zone_proto_roof_center", "connect_interior_to_proto_upstairs_2", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_roof_plane", "zone_proto_roof_center", "connect_upstairs_to_proto_cave", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_interior_cave", "zone_proto_upstairs", "connect_upstairs_to_proto_cave", 0);
    zm_zonemgr::add_zone_flags("connect_start_to_proto_interior", "connect_interior_lower");
    zm_zonemgr::add_zone_flags("connect_cave_to_proto_interior", "connect_interior_lower");
    zm_zonemgr::add_zone_flags("connect_interior_to_proto_upstairs_2", "connect_interior_lower");
    zm_zonemgr::add_adjacent_zone("zone_proto_interior_lower", "zone_proto_interior_cave", "connect_cave_to_proto_interior", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_interior_lower", "zone_proto_upstairs_2", "connect_interior_to_proto_upstairs_2", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_interior_lower", "zone_proto_exterior_rear", "connect_interior_to_proto_exterior_rear", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_interior_lower", "zone_wonder_weapon_room", "open_wonder_weapon_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_upstairs_2", "zone_proto_upstairs", "connect_upstairs_2_to_proto_upstairs", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_upstairs_2", "zone_proto_exterior_rear", "connect_upstairs_2_to_proto_exterior_rear", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_upstairs_2", "zone_proto_roof_center", "connect_upstairs_2_to_roof", 0);
    zm_zonemgr::add_zone_flags("connect_interior_to_proto_upstairs_2", "connect_upstairs_2_to_roof");
    zm_zonemgr::add_zone_flags("connect_upstairs_2_to_proto_upstairs", "connect_upstairs_2_to_roof");
    zm_zonemgr::add_zone_flags("connect_upstairs_2_to_proto_exterior_rear", "connect_upstairs_2_to_roof");
    zm_zonemgr::add_adjacent_zone("zone_proto_plane_exterior", "zone_proto_exterior_rear", "connect_plane_2_to_proto_front", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_plane_exterior", "zone_tunnel_interior", "connect_plane_to_tunnel", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_plane_exterior", "zone_proto_plane_exterior2", "connect_plane_exterior", 0);
    zm_zonemgr::add_zone_flags("connect_upstairs_to_proto_plane_exterior", "connect_plane_exterior");
    zm_zonemgr::add_zone_flags("connect_roof_to_plane", "connect_plane_exterior");
    zm_zonemgr::add_zone_flags("connect_plane_2_to_proto_front", "connect_plane_exterior");
    zm_zonemgr::add_zone_flags("connect_plane_to_tunnel", "connect_plane_exterior");
    zm_zonemgr::add_adjacent_zone("zone_proto_exterior_rear2", "zone_tunnel_interior", "connect_proto_exterior_rear_to_tunnel", 0);
    zm_zonemgr::add_adjacent_zone("zone_proto_exterior_rear2", "zone_proto_exterior_rear", "connect_exterior_rear", 0);
    zm_zonemgr::add_zone_flags("connect_proto_exterior_rear_to_tunnel", "connect_exterior_rear");
    zm_zonemgr::add_zone_flags("connect_upstairs_2_to_proto_exterior_rear", "connect_exterior_rear");
    zm_zonemgr::add_zone_flags("connect_plane_2_to_proto_front", "connect_exterior_rear");
    zm_zonemgr::add_zone_flags("connect_upstairs_2_to_proto_exterior_rear", "connect_exterior_rear");
    zm_zonemgr::add_adjacent_zone("zone_tunnel_interior", "zone_power_room", "connect_tunnel_to_power_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_tunnel_interior", "zone_power_room_outside", "connect_tunnel_to_power_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_power_room_outside", "zone_power_room", "connect_tunnel_to_power_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_power_room", "zone_power_trans_north", "connect_power_trans_north_to_trans_north_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_power_room_outside", "zone_power_trans_north", "connect_power_trans_north_to_trans_north_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_power_room", "zone_power_trans_south", "connect_power_trans_south_to_trans_south_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_power_room_outside", "zone_power_trans_south", "connect_power_trans_south_to_trans_south_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_power_trans_north", "zone_trans_north", "connect_power_trans_north_to_trans_north_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_trans_north", "zone_center_upper_north", "connect_trans_to_particle_accelerator", 0);
    zm_zonemgr::add_adjacent_zone("zone_trans_north", "zone_trans_north_pap_room", "connect_zone_trans_north_pap_room_to_zone_trans_north", 0);
    zm_zonemgr::add_zone_flags("connect_power_trans_north_to_trans_north_room", "connect_medical_bay");
    zm_zonemgr::add_zone_flags("connect_trans_to_particle_accelerator", "connect_medical_bay");
    zm_zonemgr::add_adjacent_zone("zone_center_upper_north", "zone_center_lower", "connect_center_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_center_upper_north", "zone_center_upper", "connect_center_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_power_trans_south", "zone_trans_south", "connect_power_trans_south_to_trans_south_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_trans_south", "zone_trans_south_tunnel", "connect_trans_to_particle_accelerator", 0);
    zm_zonemgr::add_adjacent_zone("zone_trans_south", "zone_trans_south_pap_room", "connect_zone_trans_south_pap_room_to_zone_trans_south", 0);
    zm_zonemgr::add_zone_flags("connect_power_trans_south_to_trans_south_room", "connect_weapon_lab");
    zm_zonemgr::add_zone_flags("connect_trans_to_particle_accelerator", "connect_weapon_lab");
    zm_zonemgr::add_adjacent_zone("zone_center_upper_west", "zone_center_lower", "connect_center_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_center_upper_west", "zone_center_upper", "connect_center_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_center_upper_west", "zone_trans_south_tunnel", "connect_trans_to_particle_accelerator", 0);
    zm_zonemgr::add_adjacent_zone("zone_center_lower", "zone_center_upper", "connect_center_room", 0);
    zm_zonemgr::add_adjacent_zone("zone_center_upper", "zone_power_tunnel", "connect_to_power_tunnel", 0);
    zm_zonemgr::add_zone_flags("connect_trans_to_particle_accelerator", "connect_center_room");
    zm_zonemgr::add_zone_flags("connect_to_power_tunnel", "connect_center_room");
    zm_zonemgr::add_zone_flags("connect_proto_exterior_rear_to_tunnel", "connect_tunnel_to_power_room");
    zm_zonemgr::add_zone_flags("connect_plane_to_tunnel", "connect_tunnel_to_power_room");
    namespace_f0b43eb5::create_challenge(#"hash_60b2f29696c25fc4", 90, array("zone_proto_start", "zone_proto_start2"), undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_yard", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc);
    namespace_f0b43eb5::create_challenge(#"hash_57c709d0608e925f", 90, "zone_proto_interior_lower", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_west_ruins_1f", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc);
    namespace_f0b43eb5::create_challenge(#"hash_3e868812f1167436", 90, "zone_proto_upstairs", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_east_ruins_2f", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc);
    namespace_f0b43eb5::create_challenge(#"hash_403956d6660b774e", 90, array("zone_proto_roof_center", "zone_proto_roof_plane"), undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_ruins_roof", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc);
    namespace_f0b43eb5::create_challenge(#"hash_1417cb50f78e17e3", 90, "zone_power_tunnel", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_main_power", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc);
    namespace_f0b43eb5::create_challenge(#"hash_77344bcb8a308c09", 90, array("zone_power_room_outside", "zone_power_room"), undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_control_room", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc);
    s_challenge = namespace_f0b43eb5::create_challenge(#"hash_7bfe0d876e389ddc", 90, "zone_proto_plane_exterior", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_plane_wing", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc);
    s_challenge.var_4e0096cd.s_challenge = #"hash_529ed1bcbf7f6525";
    namespace_f0b43eb5::create_challenge(#"hash_7cb657a5f657cbbe", 90, array("zone_proto_start", "zone_proto_start2"), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_yard", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f);
    namespace_f0b43eb5::create_challenge(#"hash_756817dc68da56e9", 90, array("zone_proto_exterior_rear", "zone_proto_exterior_rear2"), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_pond", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f);
    namespace_f0b43eb5::create_challenge(#"hash_2272d4303498d425", 90, array("zone_proto_plane_exterior", "zone_proto_plane_exterior2"), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_crash_site", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f);
    namespace_f0b43eb5::create_challenge(#"hash_7e17eba37f893fb4", 90, "zone_tunnel_interior", undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_tunnel", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f);
    namespace_f0b43eb5::create_challenge(#"hash_795ccb5ead8f853e", 90, "zone_trans_north", undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_medical_bay", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f);
    namespace_f0b43eb5::create_challenge(#"hash_7f0be97960376eb0", 90, array("zone_center_upper", "zone_center_lower", "zone_center_upper_north", "zone_center_upper_west"), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_particle_accelerator", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f);
    namespace_f0b43eb5::create_challenge(#"hash_aee5cb4bd88c4ee", 90, "zone_trans_south", undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_weapons_lab", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f);
    level thread function_2ccf9bdc();
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 0, eflags: 0x2 linked
// Checksum 0x7da646ef, Offset: 0x1ad0
// Size: 0x7c
function function_2ccf9bdc() {
    level flag::wait_till(#"hash_5c4e5d3571f5e1f6");
    namespace_f0b43eb5::create_challenge(#"hash_28a0e374fc2d128b", 90, undefined, undefined, #"hash_136efa9e9c0bcf06", undefined, &function_a0910b80, &function_f62d4e38);
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 0, eflags: 0x2 linked
// Checksum 0xb1b54cfa, Offset: 0x1b58
// Size: 0x24
function function_a0910b80() {
    callback::on_ai_killed(&function_34c9de53);
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 1, eflags: 0x2 linked
// Checksum 0xd9a16de9, Offset: 0x1b88
// Size: 0x84
function function_34c9de53(params) {
    if (isplayer(params.eattacker) && level flag::get(#"hash_5c4e5d3571f5e1f6")) {
        params.eattacker namespace_f999c142::function_53a333a8(#"hash_1c39f9ea95f27462", level.var_8b7ab859 * 0.02);
    }
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 0, eflags: 0x2 linked
// Checksum 0x553681db, Offset: 0x1c18
// Size: 0x24
function function_f62d4e38() {
    callback::remove_on_ai_killed(&function_34c9de53);
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 1, eflags: 0x2 linked
// Checksum 0x513b52cc, Offset: 0x1c48
// Size: 0xb4
function function_a74dcd0a(player) {
    if (!isdefined(level.var_fdcaf3a6)) {
        return player zm_zonemgr::get_player_zone();
    } else {
        if (player.cached_zone.name === #"hash_4802456347c176c2" || player.cached_zone.name === #"hash_764f7bd07ef904") {
            return #"hash_764f7bd07ef904";
        }
        return player zm_zonemgr::get_player_zone();
    }
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 1, eflags: 0x2 linked
// Checksum 0x23b6c918, Offset: 0x1d08
// Size: 0x13e
function function_64c67df3(zone_path) {
    if (isdefined(level.var_fdcaf3a6) && isdefined(zone_path)) {
        if (zone_path.cost == 2) {
            if (self.cached_zone.name === #"hash_195633c405c3988f") {
                if (self.favoriteenemy.cached_zone.name === #"hash_4802456347c176c2") {
                    if (is_true(level.flag[#"hash_1b3a3f97ccd47121"])) {
                        return level.zones[#"hash_4802456347c176c2"];
                    }
                } else if (self.favoriteenemy.cached_zone.name === #"hash_764f7bd07ef904") {
                    if (is_true(level.flag[#"hash_1b3a3f97ccd47121"])) {
                        return level.zones[#"hash_4802456347c176c2"];
                    }
                }
            }
        }
    }
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 0, eflags: 0x2 linked
// Checksum 0x65bdfc4d, Offset: 0x1e50
// Size: 0x1a8
function function_44b1279a() {
    self notify("5fce8be004d71149");
    self endon("5fce8be004d71149");
    self endon(#"disconnect");
    while (1) {
        is_player_in_zone = self zm_zonemgr::is_player_in_zone(level.var_65c43c31, 0);
        var_c2858d41 = self clientfield::get_to_player("" + #"hash_464e0cd19b3b8c12");
        if (is_player_in_zone && var_c2858d41 == 0) {
            self clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 1);
            self clientfield::set_to_player("" + #"hash_464e0cd19b3b8c12", 1);
        } else if (!is_player_in_zone && var_c2858d41 == 1) {
            self clientfield::set_to_player("" + #"hash_464e0cd19b3b8c12", 0);
            self clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 0);
        }
        s_waitresult = undefined;
        s_waitresult = self waittill(#"zone_change");
    }
}

// Namespace zm_silver_zones/zm_silver_zones
// Params 1, eflags: 0x2 linked
// Checksum 0x8eb476c5, Offset: 0x2000
// Size: 0x36e
function function_27028b8e(str_zone) {
    if (!isdefined(str_zone)) {
        return undefined;
    }
    if (isarray(str_zone)) {
        str_zone = str_zone[0];
    }
    switch (str_zone) {
    case #"hash_451b8f4567cd5449":
    case #"hash_6f2ccc7f46dbfc21":
        var_601fee0 = #"hash_5dec24fd79fe88e4";
        break;
    case #"hash_4bfac014fc880d18":
        var_601fee0 = #"hash_1883157e3a8c1bcf";
        break;
    case #"hash_49e54a9675d18259":
        var_601fee0 = #"hash_3b12520037a181";
        break;
    case #"hash_1c373c9cac5e3c89":
        var_601fee0 = #"hash_48fcaccdc583f88a";
        break;
    case #"hash_60c49459301dfd95":
        var_601fee0 = #"hash_58e5493c26a40efd";
        break;
    case #"hash_3c7b4116c3fd33b0":
    case #"hash_457aa861105338e3":
        var_601fee0 = #"hash_29459d2873e524e";
        break;
    case #"hash_6b24d6ff0d5daec6":
    case #"hash_6d484763b630489c":
        var_601fee0 = #"hash_621ea24bd69a239";
        break;
    case #"hash_764f7bd07ef904":
    case #"hash_4802456347c176c2":
        var_601fee0 = #"hash_3b327c1463ec9f8d";
        break;
    case #"hash_195633c405c3988f":
        var_601fee0 = #"hash_32b5142fe11acb26";
        break;
    case #"hash_edcce88f14b33d9":
    case #"hash_20e44b5e1129fca5":
    case #"hash_3cd4f5e1b2d24760":
    case #"hash_4a026516a29ce916":
        var_601fee0 = #"hash_3f356cdd2bb6e576";
        break;
    case #"hash_29f4b15781050cd2":
    case #"hash_576acdea6900b046":
        var_601fee0 = #"hash_3e51b8ba7a93fbe";
        break;
    case #"hash_22b4abd2f2280a74":
    case #"hash_2dabd19b45d13a78":
    case #"hash_335dda1ec4569777":
        var_601fee0 = #"hash_7988e17f66389e69";
        break;
    case #"hash_14cab5eb5b4e617c":
    case #"hash_217b2348a69ea727":
    case #"hash_300981dae5d6f8ea":
    case #"hash_3868b398b27daf26":
        var_601fee0 = #"hash_57edcb7278524c75";
        break;
    case #"hash_f2d3d27f56207f4":
        var_601fee0 = #"hash_75f7127232f283bb";
        break;
    case #"hash_defdefdefdefdef0":
        var_601fee0 = undefined;
        break;
    }
    return var_601fee0;
}
