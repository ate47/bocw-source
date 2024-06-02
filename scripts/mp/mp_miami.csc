// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace mp_miami;

// Namespace mp_miami/level_init
// Params 1, eflags: 0x20
// Checksum 0xb94ec4b7, Offset: 0xf0
// Size: 0x1dc
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    setsaveddvar(#"phys_ragdoll_buoyancy", 1);
    setsaveddvar(#"hash_281a310f2cf89f87", 0);
    setsaveddvar(#"hash_7112f4ec5fd42556", 0);
    clientfield::register("scriptmover", "neon_rob", 1, 1, "counter", &function_336be979, 0, 0);
    callback::on_gameplay_started(&on_gameplay_started);
    load::main();
    level thread function_22faec66();
    util::waitforclient(0);
}

// Namespace mp_miami/mp_miami
// Params 1, eflags: 0x2 linked
// Checksum 0x191ad082, Offset: 0x2d8
// Size: 0x68
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(1200, 1.25);
    setdvar(#"phys_ragdoll_buoyancy", 1);
    level notify(#"hash_3eb74ffb77c6b4b6");
}

// Namespace mp_miami/mp_miami
// Params 7, eflags: 0x2 linked
// Checksum 0x7636b1b1, Offset: 0x348
// Size: 0xfc
function function_336be979(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = function_5c10bd79(bwastimejump);
    if (!isdefined(player) || !player function_21c0fa55() || !isdefined(self)) {
        return;
    }
    if (is_true(self.var_f74923b)) {
        self.var_f74923b = 0;
        self stoprenderoverridebundle("rob_miami_neon");
        return;
    }
    self.var_f74923b = 1;
    self playrenderoverridebundle("rob_miami_neon");
}

// Namespace mp_miami/mp_miami
// Params 0, eflags: 0x2 linked
// Checksum 0x5474f038, Offset: 0x450
// Size: 0x174
function function_22faec66() {
    level endon(#"hash_3eb74ffb77c6b4b6");
    while (true) {
        level waittill(#"hash_1facd0d4f9a1afe9");
        foreach (player in getlocalplayers()) {
            player postfx::playpostfxbundle(#"hash_882b6546895dd5f");
        }
        level waittill(#"hash_747258e42dd5af85");
        foreach (player in getlocalplayers()) {
            player postfx::exitpostfxbundle(#"hash_882b6546895dd5f");
        }
    }
}

