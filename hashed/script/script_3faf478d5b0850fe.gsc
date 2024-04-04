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
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_9fc66ac;

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0xdf2c5fa0, Offset: 0x238
// Size: 0x34
function init() {
    clientfield::register("world", "doa_announce", 1, 11, "int");
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0xbd0b0610, Offset: 0x278
// Size: 0x24
function main() {
    level clientfield::set("doa_announce", 0);
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 2, eflags: 0x2 linked
// Checksum 0x205b2c, Offset: 0x2a8
// Size: 0xcc
function announce(id, var_971e1071 = 15) {
    if (!isdefined(id)) {
        return;
    }
    assert(id >= 0 && id <= 72, "<unknown string>");
    payload = (id << 4) + var_971e1071;
    level clientfield::set("doa_announce", payload);
    util::wait_network_frame();
    level clientfield::set("doa_announce", 0);
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 2, eflags: 0x2 linked
// Checksum 0x627d0e90, Offset: 0x380
// Size: 0x114
function function_a77649db(name, onoff) {
    if (is_true(onoff)) {
        level.var_7704256 = level.musicstate;
        if (name === "slideways" || name === "slideways2" || name === "slideways3" || name === "slideways4" || name === "slideways5" || name === "eggxit") {
            function_5e3127a5(undefined, "slideways");
        } else {
            function_5e3127a5(#"bonusroom");
        }
        return;
    }
    function_5e3127a5(undefined, level.var_7704256);
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0x948c7dc9, Offset: 0x4a0
// Size: 0xbc
function function_5beeba99() {
    if (!isdefined(level.doa.var_39e3fa99)) {
        return;
    }
    name = [[ level.doa.var_39e3fa99 ]]->getname();
    var_8576a4b1 = level.doa.roundnumber;
    if (name === "boss") {
        function_5e3127a5(#"bossfight");
        return;
    }
    function_5e3127a5(#"arena");
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0x12f588d, Offset: 0x568
// Size: 0x62
function function_2fc07d61() {
    if (!isdefined(level.doa.var_39e3fa99)) {
        return;
    }
    name = [[ level.doa.var_39e3fa99 ]]->getname();
    var_8576a4b1 = level.doa.roundnumber;
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0x3ebf4b22, Offset: 0x5d8
// Size: 0xda
function function_65fcd877() {
    switch (level.doa.world_state) {
    case 0:
        break;
    case 4:
        function_5e3127a5(#"overworld");
        break;
    case 5:
        function_5e3127a5(#"dungeon");
        break;
    case 1:
        function_5e3127a5(undefined, "winners_circle");
        break;
    }
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 2, eflags: 0x2 linked
// Checksum 0x28cd716, Offset: 0x6c0
// Size: 0x220
function function_5e3127a5(var_75e87d7f, var_6ea1719d = undefined) {
    if (!isdefined(level.var_402c5b0e)) {
        level.var_402c5b0e = [];
    }
    if (!isdefined(level.var_402c5b0e[#"arena"])) {
        level.var_402c5b0e[#"arena"] = [];
    }
    if (!isdefined(level.var_402c5b0e[#"overworld"])) {
        level.var_402c5b0e[#"overworld"] = [];
    }
    if (!isdefined(level.var_402c5b0e[#"dungeon"])) {
        level.var_402c5b0e[#"dungeon"] = [];
    }
    if (!isdefined(level.var_402c5b0e[#"bossfight"])) {
        level.var_402c5b0e[#"bossfight"] = [];
    }
    if (!isdefined(level.var_402c5b0e[#"bonusroom"])) {
        level.var_402c5b0e[#"bonusroom"] = [];
    }
    if (is_true(level.var_1c6708d0)) {
        return;
    }
    if (isdefined(var_6ea1719d)) {
        music::setmusicstate(var_6ea1719d);
        return;
    }
    if (!isdefined(var_75e87d7f)) {
        return;
    }
    if (level.var_402c5b0e[var_75e87d7f].size <= 0) {
        function_914016fe(var_75e87d7f);
    }
    music::setmusicstate(level.var_402c5b0e[var_75e87d7f][0]);
    level.var_402c5b0e[var_75e87d7f] = array::remove_index(level.var_402c5b0e[var_75e87d7f], 0);
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 1, eflags: 0x2 linked
// Checksum 0xf3a2ed3f, Offset: 0x8e8
// Size: 0x178
function function_914016fe(var_75e87d7f) {
    switch (var_75e87d7f) {
    case #"arena":
        min = 0;
        max = 8;
        str_prefix = "arena_0";
        break;
    case #"overworld":
        min = 0;
        max = 2;
        str_prefix = "overworld_0";
        break;
    case #"dungeon":
        min = 0;
        max = 2;
        str_prefix = "dungeon_0";
        break;
    case #"bossfight":
        min = 0;
        max = 0;
        str_prefix = "bossfight_0";
        break;
    case #"bonusroom":
        min = 0;
        max = 1;
        str_prefix = "bonusroom_0";
        break;
    }
    for (i = min; i < max + 1; i++) {
        level.var_402c5b0e[var_75e87d7f][i] = str_prefix + i;
    }
    level.var_402c5b0e[var_75e87d7f] = array::randomize(level.var_402c5b0e[var_75e87d7f]);
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0xb1d8d36b, Offset: 0xa70
// Size: 0x50
function networksafereset() {
    self notify("736ddcf43ece996d");
    self endon("736ddcf43ece996d");
    while (true) {
        level.doa.var_3d0539c1 = 0;
        util::wait_network_frame();
    }
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0x64d30bdd, Offset: 0xac8
// Size: 0x6c
function sndisnetworksafe() {
    if (!isdefined(level.doa.var_3d0539c1)) {
        level thread networksafereset();
    }
    if (level.doa.var_3d0539c1 >= 2) {
        return false;
    }
    level.doa.var_3d0539c1++;
    return true;
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 3, eflags: 0x2 linked
// Checksum 0x354df962, Offset: 0xb40
// Size: 0x8c
function function_ba33d23d(var_78c0dedd, var_8871bfcd, var_43d8daa2) {
    self.var_2b45c795 = {#var_6ceeee01:var_78c0dedd, #var_71846889:var_8871bfcd, #death:var_43d8daa2};
    self thread function_7e8995ce();
    self thread function_55aa8bb7();
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0x63abe487, Offset: 0xbd8
// Size: 0xe4
function function_7e8995ce() {
    str_alias = self.var_2b45c795.death;
    var_acdd3525 = self.var_2b45c795.var_6ceeee01;
    var_9a9e90a8 = self.var_2b45c795.var_71846889;
    self waittill(#"death");
    if (isdefined(self)) {
        if (isdefined(var_acdd3525)) {
            self stopsound(var_acdd3525);
        }
        if (isdefined(var_9a9e90a8)) {
            self stopsound(var_9a9e90a8);
        }
        if (isdefined(str_alias) && namespace_ec06fe4a::function_a8975c67()) {
            self playsound(str_alias);
        }
    }
}

// Namespace namespace_9fc66ac/namespace_9fc66ac
// Params 0, eflags: 0x2 linked
// Checksum 0xd6347bc6, Offset: 0xcc8
// Size: 0x120
function function_55aa8bb7() {
    self endon(#"death");
    wait(1);
    if (!isdefined(self.var_2b45c795)) {
        return;
    }
    while (true) {
        if (isdefined(self.zombie_move_speed)) {
            if (self.zombie_move_speed === "sprint" || self.zombie_move_speed === "run") {
                str_alias = self.var_2b45c795.var_71846889;
            } else {
                str_alias = self.var_2b45c795.var_6ceeee01;
            }
        } else {
            str_alias = self.var_2b45c795.var_71846889;
        }
        if (namespace_ec06fe4a::function_a8975c67()) {
            if (sndisnetworksafe()) {
                self playsound(str_alias);
            }
        }
        wait(randomfloatrange(1.5, 5));
    }
}

