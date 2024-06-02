// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace burnplayer;

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x5
// Checksum 0xe443729e, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"burnplayer", &preinit, undefined, undefined, undefined);
}

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x6 linked
// Checksum 0xfec55e4f, Offset: 0x138
// Size: 0x94
function private preinit() {
    clientfield::register("allplayers", "burn", 1, 1, "int");
    clientfield::register("allplayers", "burn_fx_3p", 11001, 1, "int");
    clientfield::register("playercorpse", "burned_effect", 1, 1, "int");
}

// Namespace burnplayer/burnplayer
// Params 6, eflags: 0x2 linked
// Checksum 0x83951295, Offset: 0x1d8
// Size: 0x104
function setplayerburning(duration, interval, damageperinterval, attacker, weapon, var_852d429a = 0) {
    self clientfield::set("burn", 1);
    if (is_true(var_852d429a)) {
        self clientfield::set("burn_fx_3p", 1);
    }
    self thread watchburntimer(duration);
    self thread watchburndamage(interval, damageperinterval, attacker, weapon);
    self thread watchforwater();
    self thread watchburnfinished();
}

// Namespace burnplayer/burnplayer
// Params 3, eflags: 0x2 linked
// Checksum 0x45715098, Offset: 0x2e8
// Size: 0xbc
function takingburndamage(eattacker, weapon, *smeansofdeath) {
    if (isdefined(self.doing_scripted_burn_damage)) {
        self.doing_scripted_burn_damage = undefined;
        return;
    }
    if (smeansofdeath == level.weaponnone) {
        return;
    }
    if (smeansofdeath.burnduration == 0) {
        return;
    }
    self setplayerburning(float(smeansofdeath.burnduration) / 1000, float(smeansofdeath.burndamageinterval) / 1000, smeansofdeath.burndamage, weapon, smeansofdeath);
}

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x2 linked
// Checksum 0xc73d5721, Offset: 0x3b0
// Size: 0x7c
function watchburnfinished() {
    self endon(#"disconnect");
    self waittill(#"death", #"burn_finished");
    self clientfield::set("burn", 0);
    self clientfield::set("burn_fx_3p", 0);
}

// Namespace burnplayer/burnplayer
// Params 1, eflags: 0x2 linked
// Checksum 0x181a5f0b, Offset: 0x438
// Size: 0x66
function watchburntimer(duration) {
    self notify(#"burnplayer_watchburntimer");
    self endon(#"burnplayer_watchburntimer", #"disconnect", #"death");
    wait(duration);
    self notify(#"burn_finished");
}

// Namespace burnplayer/burnplayer
// Params 4, eflags: 0x2 linked
// Checksum 0x89c6ebb3, Offset: 0x4a8
// Size: 0xd2
function watchburndamage(interval, damage, attacker, weapon) {
    if (damage == 0) {
        return;
    }
    self endon(#"disconnect", #"death", #"burnplayer_watchburntimer", #"burn_finished");
    while (true) {
        wait(interval);
        self.doing_scripted_burn_damage = 1;
        self dodamage(damage, self.origin, attacker, undefined, undefined, "MOD_BURNED", 0, weapon);
        self.doing_scripted_burn_damage = undefined;
    }
}

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x2 linked
// Checksum 0xb7ffb8a7, Offset: 0x588
// Size: 0x74
function watchforwater() {
    self endon(#"disconnect", #"death", #"burn_finished");
    while (true) {
        if (self isplayerunderwater()) {
            self notify(#"burn_finished");
        }
        wait(0.05);
    }
}

