// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_b0e844dd;

// Namespace namespace_b0e844dd/namespace_d3a7c285
// Params 1, eflags: 0x2 linked
// Checksum 0xed457933, Offset: 0x220
// Size: 0x1f0
function function_922745a1(player) {
    self endon(#"death");
    self endon(#"hash_1e744934a54fe4bc");
    player endon(#"disconnect");
    weapon = getweapon("zombietron_sprinkler_grenade");
    top = self.origin + vectorscale((0, 0, 1), 32);
    while (1) {
        self rotateto(self.angles + vectorscale((0, 1, 0), 15), 0.2);
        wait(0.2);
        forward = anglestoforward(self.angles + vectorscale((0, 0, 1), 500));
        velocity = forward * (getdvarint(#"hash_6e23b1c0ac2fdd38", 150) + randomintrange(-50, 50));
        boost = sin(self.angles[1]);
        if (boost < 0) {
            boost = boost * -1;
        }
        up = mapfloat(0, 1, 300, 900, boost);
        velocity = velocity + (0, 0, up);
        player magicgrenadetype(weapon, top, velocity);
    }
}

// Namespace namespace_b0e844dd/namespace_d3a7c285
// Params 2, eflags: 0x2 linked
// Checksum 0x5f95795c, Offset: 0x418
// Size: 0x2d4
function function_d275f769(player, origin) {
    var_497e327b = origin + vectorscale((0, 0, 1), 800);
    var_e2797039 = namespace_ec06fe4a::function_e22ae9b3(var_497e327b, "zombietron_sprinkler");
    if (!isdefined(var_e2797039)) {
        return;
    }
    var_e2797039.targetname.var_e2797039 = "sprinkler";
    var_e2797039 notsolid();
    target = player.origin;
    if (isdefined(player.var_8cff5775.vehicle)) {
        target = namespace_ec06fe4a::function_65ee50ba(player.origin);
    }
    var_403e6f0 = target + vectorscale((0, 0, 1), 12);
    var_e2797039 moveto(var_403e6f0, 0.5);
    var_e2797039 waittilltimeout(1, #"movedone");
    var_e2797039 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_sprinkler_land");
    var_e2797039 namespace_83eb6304::function_3ecfde67("sprinkler_land");
    physicsexplosionsphere(var_403e6f0, 200, 128, 2);
    playrumbleonposition("grenade_rumble", var_403e6f0);
    wait(1);
    if (isdefined(player)) {
        var_e2797039 namespace_83eb6304::function_3ecfde67("sprinkler_active");
        var_e2797039 thread function_922745a1(player);
        timeout = player namespace_1c2a96f9::function_4808b985(10);
        player waittilltimeout(timeout, #"disconnect");
    }
    var_e2797039 notify(#"hash_1e744934a54fe4bc");
    var_e2797039 namespace_83eb6304::turnofffx("sprinkler_active");
    wait(2);
    var_e2797039 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_sprinkler_takeoff");
    var_e2797039 namespace_83eb6304::function_3ecfde67("sprinkler_takeoff");
    var_e2797039 moveto(var_497e327b, 0.5);
    var_e2797039 waittilltimeout(1, #"movedone");
    var_e2797039 delete();
}
