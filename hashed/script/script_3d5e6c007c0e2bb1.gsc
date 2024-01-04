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

#namespace namespace_bf41daf8;

// Namespace namespace_bf41daf8/namespace_28beea98
// Params 1, eflags: 0x2 linked
// Checksum 0x69664f53, Offset: 0x240
// Size: 0x568
function function_52e9d773(model_name = "zombietron_barrel") {
    self notify(#"hash_562d458e34274132");
    if (isplayer(self)) {
        self endon(#"disconnect");
    }
    waitframe(1);
    self endon(#"hash_3e2226cc328d43a7", #"hash_562d458e34274132");
    org = namespace_ec06fe4a::function_e22ae9b3(self.origin, "tag_origin");
    if (isdefined(org)) {
        org.targetname.org = "barrelUpdate";
        org.angles.org = (0, randomint(180), 0);
        self.var_8cff5775.var_ba83e9 = org;
        if (isplayer(self)) {
            org thread namespace_ec06fe4a::function_ae010bb4(self);
        }
    } else {
        return;
    }
    var_b9264d0e = namespace_ec06fe4a::function_e22ae9b3(self.origin + vectorscale((0, 1, 0), 90), model_name);
    if (isdefined(var_b9264d0e)) {
        var_b9264d0e.targetname.var_b9264d0e = "barrel1";
        var_b9264d0e setplayercollision(0);
        var_b9264d0e linkto(org, "tag_origin", vectorscale((0, 1, 0), 90));
        if (isplayer(self)) {
            var_b9264d0e thread namespace_ec06fe4a::function_ae010bb4(self);
        }
        trigger = namespace_ec06fe4a::function_b5731057("trigger_radius", var_b9264d0e.origin, 1 & 512 & 8, 40, 50);
        if (isdefined(trigger)) {
            if (isplayer(self)) {
                trigger thread namespace_ec06fe4a::function_ae010bb4(self);
            }
            trigger.targetname.trigger = "barrel1";
            trigger enablelinkto();
            trigger linkto(var_b9264d0e);
            trigger thread function_7c757878(self);
        }
    }
    org.var_6763b7eb = var_b9264d0e;
    org.trigger1 = trigger;
    var_b9264d0e = namespace_ec06fe4a::function_e22ae9b3(self.origin + vectorscale((0, -1, 0), 90), model_name);
    if (isdefined(var_b9264d0e)) {
        if (isplayer(self)) {
            var_b9264d0e thread namespace_ec06fe4a::function_ae010bb4(self);
        }
        var_b9264d0e.targetname.var_b9264d0e = "barrel2";
        var_b9264d0e setmodel(model_name);
        var_b9264d0e setplayercollision(0);
        var_b9264d0e linkto(org, "tag_origin", vectorscale((0, -1, 0), 90));
        trigger = namespace_ec06fe4a::function_b5731057("trigger_radius", var_b9264d0e.origin, 1 & 512 & 8, 40, 50);
        if (isdefined(trigger)) {
            if (isplayer(self)) {
                trigger thread namespace_ec06fe4a::function_ae010bb4(self);
            }
            trigger.targetname.trigger = "barrel2";
            trigger enablelinkto();
            trigger linkto(var_b9264d0e);
            trigger thread function_7c757878(self);
        }
    }
    org.var_55291376 = var_b9264d0e;
    org.trigger2 = trigger;
    org linkto(self, "", vectorscale((0, 0, 1), 10), (0, 0, 0));
    self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_barrel_active_lp");
    self thread function_61888137(org);
    self thread function_f0855523(org);
    org thread function_6ad92846(self);
    while (isdefined(org) && isdefined(self)) {
        org.origin.org = self.origin;
        org rotateto(org.angles + vectorscale((0, 1, 0), 180), 1.2);
        wait(1.2);
    }
}

// Namespace namespace_bf41daf8/namespace_28beea98
// Params 3, eflags: 0x6 linked
// Checksum 0x1f3889ef, Offset: 0x7b0
// Size: 0x2a8
function private function_7c757878(player, mod = "MOD_UNKNOWN", var_70c63791) {
    player endon(#"hash_3e2226cc328d43a7");
    if (isplayer(player)) {
        player endon(#"disconnect");
    }
    self endon(#"death");
    while (1) {
        result = undefined;
        result = self waittill(#"trigger");
        guy = result.activator;
        if (!isdefined(guy)) {
            continue;
        }
        if (isplayer(guy)) {
            continue;
        }
        if (is_true(guy.var_b88e74c3) || is_true(guy.boss)) {
            continue;
        }
        if (isalive(guy) == 0) {
            continue;
        }
        if (self namespace_ec06fe4a::function_22d11b92()) {
            continue;
        }
        curtime = gettime();
        if (isdefined(guy.var_f84f4372) && curtime - guy.var_f84f4372 < 500) {
            continue;
        }
        guy.var_f84f4372 = curtime;
        guy namespace_e32bb68::function_3a59ec34("evt_doa_pickup_barrel_active_impact");
        if (isdefined(var_70c63791)) {
            guy thread [[ var_70c63791 ]]();
        }
        if (isactor(guy)) {
            dir = guy.origin - self.origin;
            guy thread namespace_ec06fe4a::function_b4ff2191(dir, 50, undefined, player);
        } else {
            guy dodamage(guy.health + 1, guy.origin, player, player, "none", mod, 0, level.var_8cff5775.var_c6e5e8d9);
        }
        player playrumbleonentity("damage_light");
    }
}

// Namespace namespace_bf41daf8/namespace_28beea98
// Params 1, eflags: 0x6 linked
// Checksum 0x857bb948, Offset: 0xa60
// Size: 0x116
function private function_61888137(*org) {
    self endon(#"hash_3e2226cc328d43a7", #"hash_562d458e34274132");
    if (isplayer(self)) {
        self endon(#"disconnect");
    }
    timeout = max(max(30, self namespace_1c2a96f9::function_4808b985(30)), self namespace_1c2a96f9::function_2ce61fb9(30));
    while (!namespace_dfc652ee::function_f759a457()) {
        waitframe(1);
    }
    wait(timeout - 3);
    if (isdefined(self)) {
        self notify(#"hash_6733dfa48ff87a81");
    }
    wait(3);
    self notify(#"hash_3e2226cc328d43a7");
}

// Namespace namespace_bf41daf8/namespace_28beea98
// Params 1, eflags: 0x6 linked
// Checksum 0x2998299b, Offset: 0xb80
// Size: 0x114
function private function_6ad92846(player) {
    self endon(#"death");
    if (isplayer(player)) {
        player waittill(#"disconnect");
    } else {
        return;
    }
    if (isdefined(self.trigger1)) {
        self.trigger1 delete();
    }
    if (isdefined(self.trigger2)) {
        self.trigger2 delete();
    }
    if (isdefined(self.var_6763b7eb)) {
        self.var_6763b7eb delete();
    }
    if (isdefined(self.var_55291376)) {
        self.var_55291376 delete();
    }
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_bf41daf8/namespace_28beea98
// Params 1, eflags: 0x6 linked
// Checksum 0x7a9b5326, Offset: 0xca0
// Size: 0x37c
function private function_f0855523(org) {
    if (isplayer(self)) {
        self endon(#"disconnect");
    }
    self waittill(#"hash_3e2226cc328d43a7", #"entering_last_stand", #"hash_77af89fb2b44942f", #"hash_df25520ab279dff", #"hash_562d458e34274132", #"player_died", #"enter_vehicle", #"clone_shutdown", #"death");
    if (isdefined(self)) {
        self notify(#"hash_3e2226cc328d43a7");
    }
    if (isdefined(org) && isdefined(org.trigger1)) {
        org.trigger1 delete();
    }
    if (isdefined(org) && isdefined(org.trigger2)) {
        org.trigger2 delete();
    }
    if (isdefined(org) && isdefined(org.var_6763b7eb)) {
        org.var_6763b7eb unlink();
    }
    if (isdefined(org) && isdefined(org.var_55291376)) {
        org.var_55291376 unlink();
    }
    if (isdefined(self)) {
        if (isdefined(org) && isdefined(org.var_6763b7eb)) {
            vel = org.var_6763b7eb.origin - self.origin;
            org.var_6763b7eb physicslaunch(org.var_6763b7eb.origin, vel);
        }
        if (isdefined(org) && isdefined(org.var_55291376)) {
            vel = org.var_55291376.origin - self.origin;
            org.var_55291376 physicslaunch(org.var_55291376.origin, vel);
        }
        self.var_8cff5775.var_ba83e9 = undefined;
        self namespace_e32bb68::function_ae271c0b("evt_doa_pickup_barrel_active_lp");
        self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_barrel_active_end");
    }
    wait(5);
    if (isdefined(org) && isdefined(org.var_6763b7eb)) {
        org.var_6763b7eb delete();
    }
    if (isdefined(org) && isdefined(org.var_55291376)) {
        org.var_55291376 delete();
    }
    if (isdefined(org)) {
        org delete();
    }
}

