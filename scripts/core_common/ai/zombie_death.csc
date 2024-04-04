// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;

#namespace zombie_death;

// Namespace zombie_death/zombie_death
// Params 0, eflags: 0x1
// Checksum 0x90fc33b0, Offset: 0x140
// Size: 0x74
function autoexec init_fire_fx() {
    waitframe(1);
    if (!isdefined(level._effect)) {
        level._effect = [];
    }
    level._effect[#"character_fire_death_sm"] = #"hash_c9cf0acc938a7f6";
    level._effect[#"character_fire_death_torso"] = #"hash_5686def5b4c85661";
}

// Namespace zombie_death/zombie_death
// Params 1, eflags: 0x2 linked
// Checksum 0x3c3adc8c, Offset: 0x1c0
// Size: 0xf8
function on_fire_timeout(localclientnum) {
    self endon(#"death");
    wait(12);
    if (isdefined(self) && isalive(self)) {
        self.is_on_fire = 0;
        self notify(#"stop_flame_damage");
        if (isdefined(self.firefx)) {
            foreach (fx in self.firefx) {
                stopfx(localclientnum, fx);
            }
        }
    }
}

// Namespace zombie_death/zombie_death
// Params 1, eflags: 0x0
// Checksum 0xf302f755, Offset: 0x2c0
// Size: 0x3fc
function flame_death_fx(localclientnum) {
    self notify("7aa92aa1140c6031");
    self endon("7aa92aa1140c6031");
    if (!isalive(self)) {
        return;
    }
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    if (is_true(self.is_on_fire)) {
        return;
    }
    self.is_on_fire = 1;
    if (!isdefined(self.firefx)) {
        self.firefx = [];
    }
    self thread on_fire_timeout(localclientnum);
    if (isdefined(level._effect) && isdefined(level._effect[#"character_fire_death_torso"])) {
        fire_tag = "j_spinelower";
        if (!isdefined(self gettagorigin(fire_tag))) {
            fire_tag = "tag_origin";
        }
        if (!isdefined(self.isdog) || !self.isdog) {
            self.firefx[self.firefx.size] = util::playfxontag(localclientnum, level._effect[#"character_fire_death_torso"], self, fire_tag);
        }
    } else {
        println("<unknown string>");
    }
    if (isdefined(level._effect) && isdefined(level._effect[#"character_fire_death_sm"])) {
        if (self.archetype !== "parasite" && self.archetype !== "raps") {
            wait(1);
            tagarray = [];
            tagarray[0] = "J_Elbow_LE";
            tagarray[1] = "J_Elbow_RI";
            tagarray[2] = "J_Knee_RI";
            tagarray[3] = "J_Knee_LE";
            tagarray = randomize_array(tagarray);
            self.firefx[self.firefx.size] = util::playfxontag(localclientnum, level._effect[#"character_fire_death_sm"], self, tagarray[0]);
            wait(1);
            tagarray[0] = "J_Wrist_RI";
            tagarray[1] = "J_Wrist_LE";
            if (!is_true(self.missinglegs)) {
                tagarray[2] = "J_Ankle_RI";
                tagarray[3] = "J_Ankle_LE";
            }
            tagarray = randomize_array(tagarray);
            self.firefx[self.firefx.size] = util::playfxontag(localclientnum, level._effect[#"character_fire_death_sm"], self, tagarray[0]);
            self.firefx[self.firefx.size] = util::playfxontag(localclientnum, level._effect[#"character_fire_death_sm"], self, tagarray[1]);
        }
        return;
    }
    println("<unknown string>");
}

// Namespace zombie_death/zombie_death
// Params 1, eflags: 0x2 linked
// Checksum 0x746ec1c1, Offset: 0x6c8
// Size: 0x7e
function randomize_array(array) {
    for (i = 0; i < array.size; i++) {
        j = randomint(array.size);
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}

