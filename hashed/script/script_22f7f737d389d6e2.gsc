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

#namespace namespace_ad27dfd8;

// Namespace namespace_ad27dfd8/namespace_bb2f55e0
// Params 2, eflags: 0x2 linked
// Checksum 0xd2fc1208, Offset: 0x2a0
// Size: 0x434
function function_8dbbde01(player, origin) {
    var_d98803e1 = namespace_ec06fe4a::function_65ee50ba(origin);
    origin = (origin[0], origin[1], var_d98803e1[2]);
    var_23141e86 = namespace_ec06fe4a::spawnmodel(origin + vectorscale((0, 0, 1), 36));
    if (!isdefined(var_23141e86)) {
        return;
    }
    org = namespace_ec06fe4a::spawnmodel(origin + vectorscale((0, 0, 1), 36), "tag_origin");
    if (!isdefined(org)) {
        var_23141e86 delete();
        return;
    }
    trigger = namespace_ec06fe4a::function_b5731057("trigger_radius", var_23141e86.origin, 1 | 512 | 8, 245, 60);
    if (!isdefined(trigger)) {
        var_23141e86 delete();
        org delete();
        return;
    }
    var_23141e86.targetname = "coat_of_arms";
    var_23141e86 setmodel("zombietron_coat_of_arms");
    var_23141e86 setscale(3);
    var_23141e86.angles = (0, 270, 75);
    var_23141e86 thread namespace_ec06fe4a::function_1ebe83a7(3, 0.1);
    var_23141e86 thread namespace_ec06fe4a::function_2d920b3c();
    var_23141e86 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_coatofarms_active_start");
    var_23141e86 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_coatofarms_active_lp");
    trigger.owner = player;
    trigger.targetname = "timeShifterUpdate";
    trigger enablelinkto();
    trigger linkto(var_23141e86);
    trigger.opentime = 3000;
    trigger.var_6de1c43b = gettime() + trigger.opentime;
    trigger.radiussq = function_a3f6cdac(245);
    timetowait = player namespace_1c2a96f9::function_4808b985(3.1);
    /#
    #/
    org namespace_83eb6304::function_3ecfde67("teamshift");
    trigger thread function_7649c09d();
    waitresult = undefined;
    waitresult = player waittilltimeout(timetowait, #"death", #"entering_last_stand", #"doa_exit_taken", #"disconnect");
    org namespace_83eb6304::turnofffx("teamshift");
    var_23141e86 namespace_e32bb68::function_ae271c0b("evt_doa_pickup_coatofarms_active_lp");
    var_23141e86 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_coatofarms_active_end");
    wait(1);
    if (isdefined(var_23141e86)) {
        var_23141e86 delete();
    }
    if (isdefined(trigger)) {
        trigger delete();
    }
    if (isdefined(org)) {
        org delete();
    }
}

// Namespace namespace_ad27dfd8/namespace_bb2f55e0
// Params 1, eflags: 0x6 linked
// Checksum 0x29f61e4d, Offset: 0x6e0
// Size: 0x25a
function private function_8ff2eaf3(trigger) {
    self endon(#"death");
    self notify("7dfb8ca7d01dea77");
    self endon("7dfb8ca7d01dea77");
    self.var_d55daa7c = 1;
    self namespace_83eb6304::function_3ecfde67("teamshift_contact");
    self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_coatofarms_zombie_lp");
    self.oldteam = self.team;
    var_c5107c6c = self.meleedamage;
    self.meleedamage = 750;
    if (isdefined(trigger.owner)) {
        self.team = trigger.owner.team;
    } else {
        self.team = "allies";
    }
    self.favoriteenemy = undefined;
    level.doa.var_e2e8967b[level.doa.var_e2e8967b.size] = self;
    self clearenemy();
    timeleft = gettime() + 20000;
    while (gettime() < timeleft) {
        result = undefined;
        result = self waittilltimeout(1, #"damage");
        if (isdefined(result.attacker) && isplayer(result.attacker)) {
            break;
        }
    }
    self namespace_83eb6304::turnofffx("teamshift_contact");
    self namespace_e32bb68::function_ae271c0b("evt_doa_pickup_coatofarms_zombie_lp");
    arrayremovevalue(level.doa.var_e2e8967b, self);
    self clearenemy();
    self.favoriteenemy = undefined;
    self.var_d55daa7c = undefined;
    self.team = self.oldteam;
    self.meleedamage = var_c5107c6c;
}

// Namespace namespace_ad27dfd8/namespace_bb2f55e0
// Params 0, eflags: 0x6 linked
// Checksum 0x9e3a6b4f, Offset: 0x948
// Size: 0x208
function private function_7649c09d() {
    self endon(#"death");
    while (1) {
        result = undefined;
        result = self waittill(#"trigger");
        guy = result.activator;
        if (is_true(guy.var_d55daa7c)) {
            continue;
        }
        if (!isactor(guy)) {
            continue;
        }
        if (is_true(guy.var_af545843) || is_true(guy.boss)) {
            continue;
        }
        if (guy isragdoll()) {
            continue;
        }
        if (!isalive(guy) || guy.health <= 0) {
            continue;
        }
        if (isdefined(self.var_6de1c43b)) {
            time = gettime();
            if (time < self.var_6de1c43b) {
                distsq = distancesquared(guy.origin, self.origin);
                frac = distsq / self.radiussq;
                diff = time - self.birthtime;
                var_9794857f = diff / self.opentime;
                if (frac > var_9794857f) {
                    continue;
                }
            }
        }
        guy thread function_8ff2eaf3(self);
        guy thread namespace_ec06fe4a::function_ad852085(level, "doa_exit_taken");
    }
}

