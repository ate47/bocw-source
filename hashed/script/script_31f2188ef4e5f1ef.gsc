// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_9a981837;

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x4a10476e, Offset: 0x278
// Size: 0x124
function function_c44464c8() {
    clientfield::register("toplayer", "pstfx_sprite_rain_loop", 1, 1, "int");
    clientfield::register("toplayer", "pstfx_slowed", 1, 1, "int");
    clientfield::register("toplayer", "pstfx_vignette", 1, 1, "int");
    clientfield::register("vehicle", "bamboo_heli_landing_rain_fx", 1, 1, "int");
    clientfield::register("toplayer", "postfx_bundle_explosive_damage", 1, 1, "int");
    clientfield::register("toplayer", "forest_pbg_switch", 1, 1, "int");
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x754aaaff, Offset: 0x3a8
// Size: 0xe4
function init_fx() {
    thread function_d54bb61();
    level._effect[#"hash_75a6e0287f64b467"] = #"hash_b6ab7aa2e4af0ce";
    level._effect[#"hash_1d9204870892bf9c"] = #"hash_3d58577d8964749b";
    level._effect[#"hash_7e6d961e2c87c2c9"] = #"hash_1195c44b2991b9e";
    level._effect[#"hash_430013754d2d4603"] = #"hash_5cad1a1b9fdc43ee";
    thread exploder::kill_exploder("fx_firebase_nukeretrieve");
    thread exploder::kill_exploder("fx_firebase_nukeretrieve_downdraft");
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x0
// Checksum 0x63c4811f, Offset: 0x498
// Size: 0x44
function function_82a143d2() {
    playfx(level._effect[#"hash_7e6d961e2c87c2c9"], self.origin + (0, 0, -150));
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x80619391, Offset: 0x4e8
// Size: 0xbc
function function_d54bb61() {
    level flag::wait_till("all_players_spawned");
    getplayers()[0] endon(#"death");
    level waittill(#"hash_7bfe2feb57babd0b");
    level.player clientfield::set_to_player("postfx_bundle_explosive_damage", 1);
    level waittill(#"hash_291826dce45def2d");
    level.player clientfield::set_to_player("postfx_bundle_explosive_damage", 0);
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x390b73e7, Offset: 0x5b0
// Size: 0x50
function function_121aeba5() {
    while (true) {
        wait(80);
        exploder::exploder("Flying_ocean");
        wait(91.5);
        exploder::exploder("Flying_ambience");
    }
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x0
// Checksum 0x4af9aaab, Offset: 0x608
// Size: 0xe4
function function_62dae110() {
    level.player endon(#"death");
    level.var_7466d419 endon(#"death");
    level waittill(#"hash_7a85fc4b002ec719");
    playfxontag(level._effect[#"hash_75a6e0287f64b467"], level.var_7466d419, "tag_attach");
    level.player clientfield::set_to_player("pstfx_sprite_rain_loop", 1);
    level waittill(#"hash_2d8371713a24b057");
    level.player clientfield::set_to_player("pstfx_sprite_rain_loop", 0);
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x55711913, Offset: 0x6f8
// Size: 0x1e
function function_ba76755f() {
    level.player endon(#"death");
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0xc925101a, Offset: 0x720
// Size: 0x84
function function_13093150() {
    level flag::wait_till("flag_vo_gearup_reach_chopper");
    level.vip endon(#"death");
    level.player endon(#"death");
    self endon(#"death");
    level flag::wait_till("flag_vo_chopper_chatter_2");
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x0
// Checksum 0x29336d1c, Offset: 0x7b0
// Size: 0x27c
function function_ee673d3d() {
    self endon(#"death");
    level notify(#"hash_1849624165c8255f");
    level.var_7466d419.var_6bbdd0a5 = spawn("script_model", level.var_7466d419.origin);
    level.var_7466d419.var_6bbdd0a5 setmodel(#"tag_origin");
    level.var_7466d419.var_6bbdd0a5 enablelinkto();
    level.var_7466d419.var_6bbdd0a5 linkto(level.var_7466d419, "tag_fire_extinguisher_attach", (0, 0, 35), (90, 0, 0));
    level.var_7466d419.var_585ee020 = #"hash_7401be881ac98bd9";
    level waittill(#"hash_227cc8ce5802e6b5");
    level.var_7466d419.var_6bbdd0a5 delete();
    level waittill(#"hash_1849624165c8255f");
    level.var_7466d419.var_6bbdd0a5 = spawn("script_model", level.var_7466d419.origin);
    level.var_7466d419.var_6bbdd0a5 setmodel(#"tag_origin");
    level.var_7466d419.var_6bbdd0a5 enablelinkto();
    level.var_7466d419.var_6bbdd0a5 linkto(level.var_7466d419, "tag_fire_extinguisher_attach", (0, 0, 35), (90, 0, 0));
    playfxontag(level.var_7466d419.var_585ee020, level.var_7466d419.var_6bbdd0a5, "tag_origin");
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 1, eflags: 0x2 linked
// Checksum 0xca9123a2, Offset: 0xa38
// Size: 0x1c
function function_fcea30b4(*var_c38706bb) {
    thread function_bffbd256();
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0xc219f756, Offset: 0xa60
// Size: 0x54
function function_bffbd256() {
    level.player setnosunshadow();
    level flag::wait_till("flag_vo_chopper_chatter_2");
    level.player removenosunshadow();
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 1, eflags: 0x2 linked
// Checksum 0x2a2b68a8, Offset: 0xac0
// Size: 0x1a4
function function_a9a0debb(params) {
    if (isarray(params)) {
    } else {
        args = strtok(params, ",");
        foreach (arg in args) {
            var_102cf4ae = strtok(arg, "=");
            switch (var_102cf4ae[0]) {
            case #"hash_a67f20a6e605d14":
                var_486f31cd = float(var_102cf4ae[1]);
                break;
            case #"hash_48ac5ace9c46cec8":
                var_e9f7aace = float(var_102cf4ae[1]);
                break;
            }
        }
    }
    if (!isdefined(var_486f31cd)) {
        var_486f31cd = 108;
    }
    if (!isdefined(var_e9f7aace)) {
        freqpitch = 1;
    }
    thread function_d48e9844(var_486f31cd, var_e9f7aace);
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 2, eflags: 0x2 linked
// Checksum 0xd70cad2c, Offset: 0xc70
// Size: 0x6c
function function_d48e9844(var_486f31cd, var_e9f7aace) {
    if (isdefined(level.player)) {
        level.player thread fx::function_82104e32(var_486f31cd, var_e9f7aace);
        return;
    }
    wait(1);
    level.player thread fx::function_82104e32(var_486f31cd, var_e9f7aace);
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x6cb9e62c, Offset: 0xce8
// Size: 0x24
function function_7e002ff8() {
    level.player flag::clear("flag_autofocus_on");
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 1, eflags: 0x0
// Checksum 0xc6f0480f, Offset: 0xd18
// Size: 0x54
function function_633130e5(a_ents) {
    level.player thread fx::function_70ba68f1(a_ents[0], 0.025, 0.05);
    wait(7);
    thread function_7e002ff8();
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x0
// Checksum 0x40f1d564, Offset: 0xd78
// Size: 0x2c
function function_5c261946() {
    setdvar(#"r_dofmode", 1);
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x16bfcdd3, Offset: 0xdb0
// Size: 0x44
function function_67987ae7() {
    level.player endon(#"death");
    level.player clientfield::set_to_player("forest_pbg_switch", 1);
}

// Namespace namespace_9a981837/namespace_81e6fa1d
// Params 0, eflags: 0x2 linked
// Checksum 0x7bc59b51, Offset: 0xe00
// Size: 0x44
function function_3f0940c0() {
    level.player endon(#"death");
    level.player clientfield::set_to_player("forest_pbg_switch", 0);
}

