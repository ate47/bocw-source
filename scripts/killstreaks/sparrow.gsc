// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace sparrow;

// Namespace sparrow/sparrow
// Params 0, eflags: 0x5
// Checksum 0x434931fe, Offset: 0x138
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"sparrow", &__init__, undefined, undefined, #"killstreaks");
}

// Namespace sparrow/sparrow
// Params 0, eflags: 0x2 linked
// Checksum 0x7b0fb7e7, Offset: 0x188
// Size: 0x114
function __init__() {
    killstreaks::register_killstreak("killstreak_sparrow", &killstreaks::function_fc82c544);
    weapon = getweapon("sig_bow_flame");
    inventoryweapon = getweapon("inventory_sig_bow_flame");
    var_2bd3ceea = getstatuseffect(#"dot_sig_bow_flame");
    if (!isdefined(level.var_cc63b5fe)) {
        level.var_cc63b5fe = [];
    }
    level.var_cc63b5fe[weapon] = var_2bd3ceea;
    level.var_cc63b5fe[inventoryweapon] = var_2bd3ceea;
    callback::add_weapon_damage(weapon, &function_8ea68ead);
    callback::add_weapon_damage(inventoryweapon, &function_8ea68ead);
}

// Namespace sparrow/sparrow
// Params 5, eflags: 0x2 linked
// Checksum 0xceb5aab, Offset: 0x2a8
// Size: 0xe4
function function_8ea68ead(eattacker, einflictor, weapon, meansofdeath, *damage) {
    if (!isplayer(self)) {
        return;
    }
    if (self isplayerswimming()) {
        return;
    }
    if (isdefined(weapon) && is_under_water(weapon.origin)) {
        return;
    }
    if (damage == "MOD_DOT") {
        return;
    }
    var_8d498080 = getstatuseffect(#"dot_sig_bow_flame");
    self status_effect::status_effect_apply(var_8d498080, meansofdeath, einflictor);
}

// Namespace sparrow/missile_fire
// Params 1, eflags: 0x20
// Checksum 0x32456c82, Offset: 0x398
// Size: 0x294
function event_handler[missile_fire] function_8cd77cf6(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    missile = eventstruct.projectile;
    weapon = eventstruct.weapon;
    missile thread function_1bb4a86d();
    missile thread function_be16c377();
    if (function_119a2a90(weapon)) {
        missile.soundmod = "player";
        missile thread weapons::check_stuck_to_player(1, 0, weapon);
        waitresult = missile waittill(#"projectile_impact_explode", #"projectile_impact_player", #"bow_projectile_deleted");
        if (waitresult._notify == "bow_projectile_deleted") {
            return;
        }
        bundle = killstreaks::get_script_bundle(weapon.name);
        if (isdefined(waitresult.normal)) {
            fxforward = waitresult.normal;
        } else {
            fxforward = vectornormalize(missile.var_59ba00f5) * -1;
        }
        position = missile.origin;
        if (is_under_water(position)) {
            if (isdefined(bundle.var_6512abed)) {
                explosionfx = bundle.var_6512abed;
            }
        } else if (waitresult._notify == "projectile_impact_player") {
            if (isdefined(bundle.var_2636f3b9)) {
                explosionfx = bundle.var_2636f3b9;
            }
        } else if (isdefined(bundle.var_b41d3fc0)) {
            explosionfx = bundle.var_b41d3fc0;
        }
        if (isdefined(explosionfx)) {
            angles = vectortoangles(fxforward);
            playfx(explosionfx, position, fxforward, anglestoup(angles));
        }
    }
}

// Namespace sparrow/sparrow
// Params 0, eflags: 0x2 linked
// Checksum 0xa348f48c, Offset: 0x638
// Size: 0x2e
function function_1bb4a86d() {
    self waittill(#"death");
    waittillframeend();
    self notify(#"bow_projectile_deleted");
}

// Namespace sparrow/sparrow
// Params 0, eflags: 0x2 linked
// Checksum 0xc0817eb2, Offset: 0x670
// Size: 0x7a
function function_be16c377() {
    self endon(#"projectile_impact_explode", #"death");
    while (true) {
        self.var_59ba00f5 = self getvelocity();
        wait(float(function_60d95f53()) / 1000);
    }
}

// Namespace sparrow/sparrow
// Params 1, eflags: 0x2 linked
// Checksum 0xda9cbd30, Offset: 0x6f8
// Size: 0x42
function is_under_water(position) {
    water_depth = getwaterheight(position) - position[2];
    return water_depth >= 16;
}

// Namespace sparrow/sparrow
// Params 1, eflags: 0x6 linked
// Checksum 0xe12c90b0, Offset: 0x748
// Size: 0x20
function private function_119a2a90(weapon) {
    return weapon.statname == "sig_bow_flame";
}

