// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\gib.gsc;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
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

#namespace namespace_ed80aead;

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 0, eflags: 0x2 linked
// Checksum 0xaa785486, Offset: 0x3c0
// Size: 0x17a
function init() {
    level.doa.var_1c58e161 = array(getweapon("zombietron_deathmachine"), getweapon("zombietron_deathmachine_1"), getweapon("zombietron_deathmachine_2"), getweapon("zombietron_shotgun_fullauto_t9"), getweapon("zombietron_shotgun_fullauto_t9_1"), getweapon("zombietron_shotgun_fullauto_t9_2"), getweapon("zombietron_launcher_1"), getweapon("zombietron_launcher_2"));
    level.doa.var_d516e53 = array("MOD_GRENADE", "MOD_GRENADE_SPLASH", "MOD_PROJECTILE", "MOD_PROJECTIVLE_SPLASH", "MOD_EXPLOSIVE");
    level.doa.hitlocs = array("left_hand", "left_arm_lower", "left_arm_upper", "right_hand", "right_arm_lower", "right_arm_upper");
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 2, eflags: 0x2 linked
// Checksum 0x31ed20ed, Offset: 0x548
// Size: 0x84
function function_1f275794(*launchvector, *attacker) {
    if (!isdefined(self)) {
        return;
    }
    if (!isactor(self)) {
        return;
    }
    if (is_true(self.boss)) {
        return;
    }
    gibserverutils::giblegs(self, 0);
    self function_df5afb5e(1);
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 1, eflags: 0x2 linked
// Checksum 0x3bf280ad, Offset: 0x5d8
// Size: 0x104
function function_586ef822(attacker) {
    if (!isdefined(self)) {
        return;
    }
    if (!isactor(self)) {
        return;
    }
    if (is_true(self.boss)) {
        return;
    }
    self.takedamage = 1;
    self.allowdeath = 1;
    self thread namespace_ec06fe4a::function_570729f0(0.5, attacker);
    self dodamage(self.health + 187, self.origin, attacker);
    if (is_true(self.var_4dcf6637)) {
        return;
    }
    self thread namespace_ec06fe4a::function_52afe5df(0.75);
    gibserverutils::annihilate(self);
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 2, eflags: 0x2 linked
// Checksum 0x7fc7ba39, Offset: 0x6e8
// Size: 0xf4
function function_c25b3c76(launchvector, attacker) {
    if (!isdefined(self)) {
        return;
    }
    if (!isactor(self)) {
        return;
    }
    assert(!is_true(self.boss));
    if (is_true(self.boss)) {
        return;
    }
    self namespace_83eb6304::function_3ecfde67("gut_explode");
    if (isdefined(launchvector)) {
        self thread namespace_ec06fe4a::function_b4ff2191(launchvector, 100, undefined, attacker);
        return;
    }
    self dodamage(self.health + 101, self.origin, attacker, attacker);
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 7, eflags: 0x2 linked
// Checksum 0x163e5cfc, Offset: 0x7e8
// Size: 0x1dc
function trygibbinghead(entity, damage, weapon, var_fd90b0bb, hitloc = "head", isexplosive = 0, forced = 0) {
    var_c3317960 = gibserverutils::function_de4d9d(weapon, var_fd90b0bb);
    if (gibserverutils::isgibbed(entity, 8)) {
        return;
    }
    if (forced || isexplosive && randomfloatrange(0, 1) <= 0.5) {
        gibserverutils::gibhead(entity, var_c3317960);
        return;
    }
    if (isinarray(array("head", "neck", "helmet"), hitloc) && randomfloatrange(0, 1) <= 1) {
        gibserverutils::gibhead(entity, var_c3317960);
        return;
    }
    if (entity.health - damage <= 0 && randomfloatrange(0, 1) <= 0.25) {
        gibserverutils::gibhead(entity, var_c3317960);
    }
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 6, eflags: 0x2 linked
// Checksum 0x31a4db16, Offset: 0x9d0
// Size: 0x35c
function trygibbinglimb(entity, damage, weapon, var_fd90b0bb, hitloc, isexplosive = 0) {
    var_c3317960 = gibserverutils::function_de4d9d(weapon, var_fd90b0bb);
    if (!isdefined(hitloc)) {
        hitloc = level.doa.hitlocs[randomint(level.doa.hitlocs.size)];
    }
    if (isexplosive && randomfloatrange(0, 1) <= 0.35) {
        if (entity.health - damage <= 0 && entity.allowdeath && math::cointoss()) {
            if (!gibserverutils::isgibbed(entity, 16)) {
                gibserverutils::gibrightarm(entity, var_c3317960);
            }
        } else if (!gibserverutils::isgibbed(entity, 32)) {
            gibserverutils::gibleftarm(entity, var_c3317960);
        }
        return;
    }
    if (isinarray(array("left_hand", "left_arm_lower", "left_arm_upper"), hitloc)) {
        if (!gibserverutils::isgibbed(entity, 32)) {
            gibserverutils::gibleftarm(entity, var_c3317960);
        }
        return;
    }
    if (entity.health - damage <= 0 && entity.allowdeath && isinarray(array("right_hand", "right_arm_lower", "right_arm_upper"), hitloc)) {
        gibserverutils::gibrightarm(entity, var_c3317960);
        return;
    }
    if (entity.health - damage <= 0 && entity.allowdeath && randomfloatrange(0, 1) <= 0.45) {
        if (math::cointoss()) {
            if (!gibserverutils::isgibbed(entity, 32)) {
                gibserverutils::gibleftarm(entity, var_c3317960);
            }
            return;
        }
        if (!gibserverutils::isgibbed(entity, 16)) {
            gibserverutils::gibrightarm(entity, var_c3317960);
        }
    }
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 7, eflags: 0x2 linked
// Checksum 0xa7406431, Offset: 0xd38
// Size: 0x4b4
function trygibbinglegs(entity, damage, weapon, var_fd90b0bb, hitloc, isexplosive = 0, attacker) {
    var_c3317960 = gibserverutils::function_de4d9d(weapon, var_fd90b0bb);
    if (!isdefined(attacker)) {
        attacker = entity;
    }
    if (!isdefined(hitloc)) {
        hitloc = level.doa.hitlocs[randomint(level.doa.hitlocs.size)];
    }
    cangiblegs = entity.health - damage <= 0 && entity.allowdeath;
    cangiblegs = cangiblegs || (entity.health - damage) / entity.maxhealth <= 0.25 && distancesquared(entity.origin, attacker.origin) <= sqr(600) && entity.allowdeath;
    if (!is_true(entity.boss) && entity.health - damage <= 0 && entity.allowdeath && isexplosive && randomfloatrange(0, 1) <= 0.5) {
        if (!gibserverutils::isgibbed(entity, 384)) {
            gibserverutils::giblegs(entity, var_c3317960);
            entity function_df5afb5e(1);
        }
    } else if (entity.health - damage <= 0 && entity.allowdeath && randomfloatrange(0, 1) <= 0.25) {
        if (!gibserverutils::isgibbed(entity, 256)) {
            gibserverutils::gibleftleg(entity, var_c3317960);
            entity function_df5afb5e(1);
        }
        if (math::cointoss()) {
            if (!gibserverutils::isgibbed(entity, 128)) {
                gibserverutils::gibrightleg(entity, var_c3317960);
                entity function_df5afb5e(1);
            }
        }
    }
    if (cangiblegs && isinarray(array("left_leg_upper", "left_leg_lower", "left_foot"), hitloc) && randomfloatrange(0, 1) <= 1) {
        if (!gibserverutils::isgibbed(entity, 256)) {
            gibserverutils::gibleftleg(entity, var_c3317960);
            entity function_df5afb5e(1);
        }
    }
    if (cangiblegs && isinarray(array("right_leg_upper", "right_leg_lower", "right_foot"), hitloc) && randomfloatrange(0, 1) <= 1) {
        if (!gibserverutils::isgibbed(entity, 128)) {
            gibserverutils::gibrightleg(entity, var_c3317960);
            entity function_df5afb5e(1);
        }
    }
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 1, eflags: 0x2 linked
// Checksum 0x8ca86e4c, Offset: 0x11f8
// Size: 0x3a
function function_df5afb5e(missinglegs = 0) {
    if (missinglegs) {
        self.knockdown = 0;
    }
    self.missinglegs = missinglegs;
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 7, eflags: 0x2 linked
// Checksum 0xeda9a279, Offset: 0x1240
// Size: 0x234
function function_5e680689(attacker, damage, meansofdeath, weapon, var_fd90b0bb, hitloc, *vdir) {
    if (!isactor(self)) {
        return;
    }
    if (self.archetype != "zombie") {
        return;
    }
    if (weapon == "MOD_BURNED") {
        return;
    }
    time = gettime();
    if (self.var_60368e1e === time) {
        return;
    }
    self.var_60368e1e = gettime();
    self endon(#"death");
    isexplosive = isinarray(level.doa.var_d516e53, weapon);
    trygibbinglimb(self, meansofdeath, var_fd90b0bb, hitloc, vdir, isexplosive);
    trygibbinglegs(self, meansofdeath, var_fd90b0bb, hitloc, vdir, isexplosive, damage);
    if (meansofdeath >= self.health && gettime() > self.birthtime) {
        if (isinarray(level.doa.var_1c58e161, var_fd90b0bb)) {
            self namespace_83eb6304::function_3ecfde67("zombie_chunk");
        }
        if (var_fd90b0bb === level.doa.var_6a5eb56f || var_fd90b0bb === level.doa.var_3efdf9e5) {
            trygibbinghead(self, meansofdeath, var_fd90b0bb, hitloc, vdir, isexplosive);
            self namespace_83eb6304::function_3ecfde67("boost_explode");
        }
        if (var_fd90b0bb.doannihilate) {
            self function_586ef822(damage);
        }
    }
}

// Namespace namespace_ed80aead/namespace_ed80aead
// Params 1, eflags: 0x2 linked
// Checksum 0x7a440b1e, Offset: 0x1480
// Size: 0x11c
function gib_random_part(damage = 100) {
    if (is_true(self.no_gib)) {
        return;
    }
    if (namespace_ec06fe4a::function_a8975c67() && function_3238d10d(self.origin)) {
        playsoundatposition(#"zmb_death_gibss", self.origin);
    }
    val = randomint(100);
    if (val > 20) {
        trygibbinghead(self, damage);
    }
    if (val > 30) {
        trygibbinglegs(self, damage);
    }
    if (val > 50) {
        trygibbinglimb(self, damage);
    }
}

