// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_util.gsc;
#using scripts\abilities\ability_gadgets.gsc;

#namespace ability_power;

/#

    // Namespace ability_power/ability_power
    // Params 2, eflags: 0x0
    // Checksum 0x3056b043, Offset: 0xf8
    // Size: 0x104
    function cpower_print(slot, str) {
        color = "<unknown string>";
        toprint = color + "<unknown string>" + str;
        weaponname = "<unknown string>";
        if (isdefined(self._gadgets_player[slot])) {
            weaponname = self._gadgets_player[slot].name;
        }
        if (getdvarint(#"scr_cpower_debug_prints", 0) > 0) {
            self iprintlnbold(toprint);
            return;
        }
        println(self.playername + "<unknown string>" + weaponname + "<unknown string>" + toprint);
    }

#/

// Namespace ability_power/ability_power
// Params 1, eflags: 0x0
// Checksum 0x609c30d0, Offset: 0x208
// Size: 0x1a
function power_is_hero_ability(gadget) {
    return gadget.gadget_type != 0;
}

// Namespace ability_power/ability_power
// Params 2, eflags: 0x2 linked
// Checksum 0xec8795e2, Offset: 0x230
// Size: 0x40
function function_9d78823f(gadget, weapon) {
    if (!isdefined(level.var_d0b212bd)) {
        level.var_d0b212bd = [];
    }
    level.var_d0b212bd[weapon] = gadget;
}

// Namespace ability_power/ability_power
// Params 2, eflags: 0x2 linked
// Checksum 0x185a7269, Offset: 0x278
// Size: 0x56
function is_weapon_or_variant_same_as_gadget(weapon, gadget) {
    if (weapon == gadget) {
        return true;
    }
    if (isdefined(level.var_d0b212bd)) {
        if (level.var_d0b212bd[weapon] === gadget) {
            return true;
        }
    }
    return false;
}

// Namespace ability_power/ability_power
// Params 4, eflags: 0x2 linked
// Checksum 0xa3b55c08, Offset: 0x2d8
// Size: 0x374
function power_gain_event_score(*event, eattacker, score, weapon) {
    if (!isplayer(self)) {
        return;
    }
    if (score <= 0) {
        return;
    }
    if (self.gadgetthiefactive === 1) {
        return;
    }
    var_f1ee6456 = 1;
    /#
        var_f1ee6456 *= getdvarfloat(#"hash_eae9a8ee387705d", 1);
    #/
    if (!isdefined(level.var_607bc6e7)) {
        level.var_607bc6e7 = getgametypesetting(#"scoreheropowergainfactor");
        if (level.var_73e51905 === 1) {
            var_d2260acb = getdvarfloat(#"hash_1cfb84145f54fa01", 0.59);
            if (var_d2260acb > 0) {
                level.var_607bc6e7 = var_d2260acb;
            }
        }
    }
    gametypefactor = level.var_607bc6e7;
    perkfactor = 1;
    if (self hasperk(#"specialty_overcharge")) {
        perkfactor = getdvarfloat(#"gadgetpoweroverchargeperkscorefactor", 0);
    }
    var_ec6ee937 = score * gametypefactor * perkfactor * var_f1ee6456;
    if (var_ec6ee937 <= 0) {
        return;
    }
    var_18fc605 = getdvarint(#"hash_74d01f2fd0317f08", 0) || isdefined(weapon) && weapon.var_f23e9d19;
    for (slot = 0; slot < 3; slot++) {
        gadget = self._gadgets_player[slot];
        if (isdefined(gadget)) {
            ignoreself = gadget.gadget_powergainscoreignoreself;
            var_503ccf9e = isdefined(weapon) && is_weapon_or_variant_same_as_gadget(weapon, gadget);
            if (ignoreself && var_503ccf9e || var_18fc605 && !var_503ccf9e) {
                continue;
            }
            ignorewhenactive = gadget.gadget_powergainscoreignorewhenactive;
            if (ignorewhenactive && self gadgetisactive(slot)) {
                continue;
            }
            scorefactor = gadget.gadget_powergainscorefactor;
            if (scorefactor > 0) {
                gaintoadd = scorefactor * var_ec6ee937;
                self power_gain_event(slot, eattacker, gaintoadd, "score");
            }
        }
    }
}

// Namespace ability_power/ability_power
// Params 1, eflags: 0x0
// Checksum 0x1cd7ad68, Offset: 0x658
// Size: 0x84
function power_gain_event_damage_actor(eattacker) {
    basegain = 0;
    if (basegain > 0) {
        for (slot = 0; slot < 3; slot++) {
            if (isdefined(self._gadgets_player[slot])) {
                self power_gain_event(slot, eattacker, basegain, "damaged actor");
            }
        }
    }
}

// Namespace ability_power/ability_power
// Params 2, eflags: 0x0
// Checksum 0x8bfb84a0, Offset: 0x6e8
// Size: 0xd4
function power_gain_event_killed_actor(eattacker, *meansofdeath) {
    basegain = 5;
    for (slot = 0; slot < 3; slot++) {
        if (isdefined(self._gadgets_player[slot])) {
            if (self._gadgets_player[slot].gadget_powerreplenishfactor > 0) {
                gaintoadd = basegain * self._gadgets_player[slot].gadget_powerreplenishfactor;
                if (gaintoadd > 0) {
                    source = "killed actor";
                    self power_gain_event(slot, meansofdeath, gaintoadd, source);
                }
            }
        }
    }
}

// Namespace ability_power/ability_power
// Params 4, eflags: 0x2 linked
// Checksum 0xb55703ed, Offset: 0x7c8
// Size: 0x184
function power_gain_event(slot, *eattacker, val, source) {
    if (!isdefined(self) || !isalive(self)) {
        return;
    }
    powertoadd = val;
    if (abs(powertoadd) > 0.0001) {
        maxscore = self._gadgets_player[eattacker].var_1e89f40;
        if (maxscore && 0 < powertoadd) {
            if (powertoadd + self.var_aec4af05[eattacker] > maxscore) {
                powertoadd = maxscore - self.var_aec4af05[eattacker];
                if (0 >= powertoadd) {
                    return;
                }
            }
        }
        powerleft = self gadgetpowerchange(eattacker, powertoadd);
        if (0 < powertoadd) {
            self.var_aec4af05[eattacker] = self.var_aec4af05[eattacker] + powertoadd;
        }
        /#
            self cpower_print(eattacker, "<unknown string>" + powertoadd + "<unknown string>" + source + "<unknown string>" + powerleft);
        #/
    }
}

// Namespace ability_power/ability_power
// Params 5, eflags: 0x2 linked
// Checksum 0xd82ac0c5, Offset: 0x958
// Size: 0x16c
function power_loss_event_took_damage(eattacker, *einflictor, *weapon, *smeansofdeath, idamage) {
    if (!isdefined(self._gadgets_player)) {
        return;
    }
    baseloss = idamage;
    for (slot = 0; slot < 3; slot++) {
        if (isdefined(self._gadgets_player[slot])) {
            if (self gadgetisactive(slot)) {
                powerloss = baseloss * self._gadgets_player[slot].gadget_poweronlossondamage;
                if (powerloss > 0) {
                    self power_loss_event(slot, smeansofdeath, powerloss, "took damage with power on");
                }
                if (self._gadgets_player[slot].gadget_flickerondamage > 0) {
                    self ability_gadgets::setflickering(slot, self._gadgets_player[slot].gadget_flickerondamage);
                }
                continue;
            }
            powerloss = baseloss * self._gadgets_player[slot].gadget_powerofflossondamage;
            if (powerloss > 0) {
                self power_loss_event(slot, smeansofdeath, powerloss, "took damage");
            }
        }
    }
}

// Namespace ability_power/ability_power
// Params 4, eflags: 0x2 linked
// Checksum 0x3a045889, Offset: 0xad0
// Size: 0xcc
function power_loss_event(slot, *eattacker, val, source) {
    powertoremove = val * -1;
    if (powertoremove > 0.1 || powertoremove < -0.1) {
        powerleft = self gadgetpowerchange(eattacker, powertoremove);
        /#
            self cpower_print(eattacker, "<unknown string>" + powertoremove + "<unknown string>" + source + "<unknown string>" + powerleft);
        #/
    }
}

// Namespace ability_power/ability_power
// Params 1, eflags: 0x0
// Checksum 0xc8d91304, Offset: 0xba8
// Size: 0x4e
function power_drain_completely(slot) {
    powerleft = self gadgetpowerchange(slot, 0);
    powerleft = self gadgetpowerchange(slot, powerleft * -1);
}

// Namespace ability_power/ability_power
// Params 0, eflags: 0x2 linked
// Checksum 0xa479c83f, Offset: 0xc00
// Size: 0x6e
function ismovingpowerloss() {
    velocity = self getvelocity();
    speedsq = lengthsquared(velocity);
    return speedsq > self._gadgets_player.gadget_powermovespeed * self._gadgets_player.gadget_powermovespeed;
}

// Namespace ability_power/ability_power
// Params 2, eflags: 0x2 linked
// Checksum 0xa30a1a1d, Offset: 0xc78
// Size: 0x230
function power_consume_timer_think(slot, *weapon) {
    self endon(#"death");
    if (!isdefined(self._gadgets_player)) {
        return;
    }
    time = gettime();
    while (true) {
        wait(0.1);
        if (!isdefined(self._gadgets_player[weapon])) {
            return;
        }
        if (!self gadgetisactive(weapon)) {
            return;
        }
        currenttime = gettime();
        interval = currenttime - time;
        time = currenttime;
        powerconsumpted = 0;
        if (self isonground()) {
            if (self._gadgets_player[weapon].gadget_powersprintloss > 0 && self issprinting()) {
                powerconsumpted += 1 * float(interval) / 1000 * self._gadgets_player[weapon].gadget_powersprintloss;
            } else if (self._gadgets_player[weapon].gadget_powermoveloss && self ismovingpowerloss()) {
                powerconsumpted += 1 * float(interval) / 1000 * self._gadgets_player[weapon].gadget_powermoveloss;
            }
        }
        if (powerconsumpted > 0.1) {
            self power_loss_event(weapon, self, powerconsumpted, "consume");
            if (self._gadgets_player[weapon].gadget_flickeronpowerloss > 0) {
                self ability_gadgets::setflickering(weapon, self._gadgets_player[weapon].gadget_flickeronpowerloss);
            }
        }
    }
}

