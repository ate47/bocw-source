// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace mp_black_sea;

// Namespace mp_black_sea/level_init
// Params 1, eflags: 0x20
// Checksum 0x32501ba5, Offset: 0x150
// Size: 0x1e4
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("vehicle", "" + #"hash_51d1d2a4c63ed960", 1, 1, "int", &function_74feb59, 0, 0);
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    setsaveddvar(#"phys_ragdoll_buoyancy", 1);
    callback::on_gameplay_started(&on_gameplay_started);
    callback::on_end_game(&on_end_game);
    load::main();
    level thread function_22faec66();
    level thread function_7f639bc1();
    util::waitforclient(0);
}

// Namespace mp_black_sea/mp_black_sea
// Params 1, eflags: 0x2 linked
// Checksum 0xf856450a, Offset: 0x340
// Size: 0x90
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(900, 1.75);
    setdvar(#"phys_ragdoll_buoyancy", 1);
    setdvar(#"hash_1a7932faa613bd0f", 1);
    level notify(#"hash_3eb74ffb77c6b4b6");
}

// Namespace mp_black_sea/mp_black_sea
// Params 1, eflags: 0x2 linked
// Checksum 0x4c2bc8f9, Offset: 0x3d8
// Size: 0x2c
function on_end_game(*localclientnum) {
    setdvar(#"hash_1a7932faa613bd0f", 0);
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0x9c75ce59, Offset: 0x410
// Size: 0x174
function function_22faec66() {
    level endon(#"hash_3eb74ffb77c6b4b6");
    while (true) {
        level waittill(#"hash_20397d5f66793917");
        foreach (player in getlocalplayers()) {
            player postfx::playpostfxbundle(#"hash_50d5d465e2b9b355");
        }
        level waittill(#"hash_3acd8a1b1fe43b7b");
        foreach (player in getlocalplayers()) {
            player postfx::exitpostfxbundle(#"hash_50d5d465e2b9b355");
        }
    }
}

// Namespace mp_black_sea/mp_black_sea
// Params 7, eflags: 0x2 linked
// Checksum 0xeffccb08, Offset: 0x590
// Size: 0xde
function function_74feb59(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        self.var_9c17fbe4 = addboltedfxexclusionvolume(fieldname, self, "tag_origin", (100, 100, 100));
        return;
    }
    if (isdefined(self.var_9c17fbe4)) {
        removefxexclusionvolume(fieldname, self.var_9c17fbe4);
        self.var_9c17fbe4 = undefined;
    }
}

// Namespace mp_black_sea/mp_black_sea
// Params 0, eflags: 0x2 linked
// Checksum 0xe002068a, Offset: 0x678
// Size: 0x1e0
function function_7f639bc1() {
    waitframe(1);
    var_f7d8aaa7 = strtok("koth10v10 ctf vip conf10v10 dom10v10 tdm10v10 war12v12 zsurvival", " ");
    gametype = util::get_game_type();
    if (isinarray(var_f7d8aaa7, gametype)) {
        function_e7647ecd("6v6_occluder", 0);
        indices = findvolumedecalindexarray("6v6_bounds");
        foreach (index in indices) {
            hidevolumedecal(index);
        }
        return;
    }
    function_e7647ecd("6v6_occluder", 1);
    indices = findvolumedecalindexarray("12v12_bounds");
    foreach (index in indices) {
        hidevolumedecal(index);
    }
}

