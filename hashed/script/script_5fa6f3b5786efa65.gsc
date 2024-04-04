// Atian COD Tools GSC CW decompiler test
#using script_76983b49bef66b2e;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_6b6510e124bad778;
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

#namespace namespace_6d0b8a1a;

// Namespace namespace_6d0b8a1a/namespace_1174089d
// Params 2, eflags: 0x2 linked
// Checksum 0xd7f0e87b, Offset: 0x308
// Size: 0x3b2
function function_44cc3493(var_2177e1d4 = 2, player) {
    self endon(#"death");
    level endon(#"game_over");
    while (var_2177e1d4 > 0) {
        var_77e4cc0b = arraysortclosest(getaiteamarray(#"axis"), self.origin);
        var_bca95f5f = [];
        foreach (guy in var_77e4cc0b) {
            if (is_true(guy.var_85a0c6e6)) {
                continue;
            }
            if (!isdefined(var_bca95f5f)) {
                var_bca95f5f = [];
            } else if (!isarray(var_bca95f5f)) {
                var_bca95f5f = array(var_bca95f5f);
            }
            var_bca95f5f[var_bca95f5f.size] = guy;
        }
        foreach (guy in var_bca95f5f) {
            if (isdefined(guy)) {
                if (is_true(guy.boss)) {
                    continue;
                }
                if (is_true(guy.var_85a0c6e6)) {
                    continue;
                }
                if (is_true(guy.tesla_death)) {
                    continue;
                }
                var_79bbbf1c = util::within_fov(self.origin, self.angles, guy.origin, 0.9);
                if (!var_79bbbf1c) {
                    continue;
                }
                self namespace_83eb6304::function_3ecfde67("teleporter_disabled");
                var_2177e1d4--;
                guy.var_85a0c6e6 = 1;
                self.org.origin = self.origin + (0, 0, 40);
                self.org namespace_83eb6304::function_3ecfde67("tesla_trail");
                self.org moveto(guy.origin + (0, 0, 40), 0.4);
                wait(0.4);
                self.org namespace_83eb6304::turnofffx("tesla_trail");
                level thread namespace_9038b9d9::function_8d45f3be(guy, player);
                wait(randomfloatrange(0.4, 2));
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_6d0b8a1a/namespace_1174089d
// Params 2, eflags: 0x2 linked
// Checksum 0xbbb3fc9c, Offset: 0x6c8
// Size: 0x4ec
function function_465aaf09(player, origin) {
    if (is_true(level.doa.var_41adf604)) {
        return;
    }
    if (isdefined(level.doa.var_54c5c3e6)) {
        return;
    }
    var_d98803e1 = namespace_ec06fe4a::function_65ee50ba(origin);
    origin = (origin[0], origin[1], var_d98803e1[2]);
    var_c95d22c = namespace_ec06fe4a::spawnmodel(origin + (0, 0, 12), "zombietron_arcademachine", player.angles + (0, 180, 0), "zombietron_arcademachine");
    if (!isdefined(var_c95d22c)) {
        return;
    }
    var_c95d22c endon(#"death");
    var_c95d22c.org = namespace_ec06fe4a::spawnmodel(origin + (0, 0, 12), "tag_origin", (0, 0, 0), "zombietron_arcademachine_org");
    if (!isdefined(var_c95d22c.org)) {
        var_c95d22c delete();
        return;
    }
    var_c95d22c.org thread namespace_ec06fe4a::function_d55f042c(var_c95d22c, "death");
    var_c95d22c thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    rooms = array("slideways", "slideways2", "slideways3", "slideways4", "slideways5");
    level.doa.var_848746c8 = is_true(level.doa.hardcoremode) ? undefined : rooms[randomint(rooms.size)];
    level.doa.var_54c5c3e6 = var_c95d22c;
    var_c95d22c namespace_e32bb68::function_3a59ec34("evt_doa_pickup_arcade_active_lp");
    var_c95d22c thread namespace_ec06fe4a::function_2d920b3c(1, 0);
    timeout = gettime() + 30000;
    while (timeout > gettime()) {
        if (level flag::get("doa_round_over")) {
            break;
        }
        result = level waittilltimeout(randomfloatrange(1, 4), #"exit_taken", #"arena_completed");
        var_c95d22c namespace_83eb6304::function_3ecfde67("lightningStrike");
        var_c95d22c namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        var_c95d22c thread function_44cc3493(randomintrange(1, 5), player);
        if (result._notify != #"timeout") {
            break;
        }
    }
    var_c95d22c namespace_83eb6304::function_3ecfde67("arcade_spark");
    var_c95d22c notify(#"hash_7bf2519960a3852a");
    var_c95d22c namespace_83eb6304::function_3ecfde67("wild_portal_radial_burst");
    var_c95d22c namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_wilds_burst");
    var_c95d22c namespace_83eb6304::function_3ecfde67("turret_impact");
    var_c95d22c namespace_e32bb68::function_3a59ec34("evt_doa_pickup_sentry_land");
    var_c95d22c moveto(var_c95d22c.origin + (0, 0, 3000), 1);
    level.doa.var_54c5c3e6 = undefined;
    wait(1);
    var_c95d22c.org namespace_83eb6304::turnofffx("tesla_trail");
    var_c95d22c.org delete();
    var_c95d22c delete();
}

