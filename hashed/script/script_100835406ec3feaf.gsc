// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace zm_platinum_ww_quest;

// Namespace zm_platinum_ww_quest/namespace_719bbd07
// Params 0, eflags: 0x2 linked
// Checksum 0x82420a24, Offset: 0x178
// Size: 0x11c
function function_f8a8ff3f() {
    clientfield::register("scriptmover", "" + #"hash_1fc683b0af884f6b", 24000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_6d58634b9c00e983", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_35b587dfb54ded2a", 24000, 4, "int");
    level.var_ea51eeb9 = {};
    level.var_ea51eeb9 thread function_756f46cf();
    level.var_ea51eeb9 thread function_faf723a();
    /#
        level thread function_63a18814();
    #/
}

// Namespace zm_platinum_ww_quest/namespace_719bbd07
// Params 0, eflags: 0x2 linked
// Checksum 0xb269aa19, Offset: 0x2a0
// Size: 0x2c4
function function_756f46cf() {
    a_locs = [3, 3, 3];
    n_bits = getminbitcountfornum(39);
    a_data = [];
    assert(-1);
    assert(a_locs.size == 3);
    for (i = 0; i < 3; i++) {
        number = randomintrange(0, 40);
        location = randomint(a_locs[i]);
        if (!isdefined(a_data)) {
            a_data = [];
        } else if (!isarray(a_data)) {
            a_data = array(a_data);
        }
        a_data[a_data.size] = (location << n_bits) + number;
        if (!isdefined(self.numbers)) {
            self.numbers = [];
        } else if (!isarray(self.numbers)) {
            self.numbers = array(self.numbers);
        }
        self.numbers[self.numbers.size] = number;
        if (!isdefined(self.input)) {
            self.input = [];
        } else if (!isarray(self.input)) {
            self.input = array(self.input);
        }
        self.input[self.input.size] = 0;
    }
    var_75804f33 = (a_data[0], a_data[1], a_data[2]);
    var_4188f862 = util::spawn_model("tag_origin", var_75804f33);
    util::wait_network_frame();
    if (isdefined(var_4188f862)) {
        var_4188f862 clientfield::set("" + #"hash_1fc683b0af884f6b", 1);
    }
}

// Namespace zm_platinum_ww_quest/namespace_719bbd07
// Params 1, eflags: 0x2 linked
// Checksum 0xf802a4e2, Offset: 0x570
// Size: 0x9c
function function_19a410e2(var_a370eede) {
    var_4d05aafa = self.n_index + 1;
    if (var_a370eede) {
        var_4d05aafa |= 4;
    }
    self clientfield::set("" + #"hash_35b587dfb54ded2a", var_4d05aafa);
    self.var_2cc651d5 clientfield::set("" + #"hash_35b587dfb54ded2a", var_4d05aafa | 8);
}

// Namespace zm_platinum_ww_quest/namespace_719bbd07
// Params 0, eflags: 0x2 linked
// Checksum 0x3d213b6f, Offset: 0x618
// Size: 0x204
function function_faf723a() {
    e_safe = getent("ww_safe", "targetname");
    self.safe = e_safe;
    for (i = 0; i < 3; i++) {
        var_9a00bf02 = "tag_dial_" + i;
        v_origin = e_safe gettagorigin(var_9a00bf02);
        v_angles = e_safe gettagangles(var_9a00bf02);
        e_lock = util::spawn_model(#"hash_4f1e10f734edcd48" + i, v_origin, v_angles);
        var_2cc651d5 = util::spawn_model(#"hash_32784def46e0e975" + i, v_origin, v_angles);
        e_lock linkto(e_safe, var_9a00bf02);
        var_2cc651d5 linkto(e_safe, var_9a00bf02);
        e_lock.n_index = i;
        e_lock.var_2cc651d5 = var_2cc651d5;
        if (!isdefined(self.locks)) {
            self.locks = [];
        } else if (!isarray(self.locks)) {
            self.locks = array(self.locks);
        }
        self.locks[self.locks.size] = e_lock;
        util::wait_network_frame();
        e_lock function_19a410e2(0);
    }
}

// Namespace zm_platinum_ww_quest/namespace_719bbd07
// Params 0, eflags: 0x2 linked
// Checksum 0x47ad03c4, Offset: 0x828
// Size: 0x176
function function_4395371c() {
    var_8468438a = self getplayercamerapos();
    var_a364d7fa = anglestoforward(self getplayerangles());
    var_c575b928 = 0.9744;
    var_afa4131f = undefined;
    foreach (e_lock in level.var_ea51eeb9.locks) {
        var_d5d9a61a = e_lock.origin - var_8468438a;
        n_dist = length(var_d5d9a61a);
        if (n_dist <= 45) {
            var_17b38a0e = vectordot(var_d5d9a61a / n_dist, var_a364d7fa);
            if (var_17b38a0e > var_c575b928) {
                var_c575b928 = var_17b38a0e;
                var_afa4131f = e_lock;
            }
        }
    }
    return var_afa4131f;
}

// Namespace zm_platinum_ww_quest/namespace_719bbd07
// Params 1, eflags: 0x2 linked
// Checksum 0xf63f41dc, Offset: 0x9a8
// Size: 0x596
function function_8b40c670(e_trigger) {
    level endon(#"end_game");
    self endon(#"disconnect", #"death");
    self.var_eddb113e = 1;
    var_ba127c46 = self.var_19f4406e;
    self.var_19f4406e = 0;
    self flag::set(#"hash_2d6980738132f263");
    self val::set(#"hash_c13c4143edde35b", "disable_weapons", 1);
    self val::set(#"hash_c13c4143edde35b", "allow_jump", 0);
    self val::set(#"hash_c13c4143edde35b", "allow_stand", 0);
    self val::set(#"hash_c13c4143edde35b", "allow_prone", 0);
    self val::set(#"hash_c13c4143edde35b", "ignoreme", 1);
    while (self getstance() != "crouch") {
        waitframe(1);
    }
    if (isdefined(e_trigger)) {
        self playerlinkto(e_trigger, undefined, 0, 30, 30, 0, 16);
    }
    self.var_9e8e7b78 = undefined;
    while (isdefined(e_trigger) && self istouching(e_trigger) && !self laststand::player_is_in_laststand()) {
        if (level flag::get(#"hash_7b5643f5ecc16c8f") || level flag::get(#"boss_fight_started")) {
            break;
        }
        var_1806c69c = self gamepadusedlast();
        var_e109599a = self buttonbitstate("BUTTON_BIT_ANY_DOWN");
        if (var_e109599a) {
            break;
        }
        input = 0;
        e_lock = self function_4395371c();
        if (self.var_9e8e7b78 !== e_lock) {
            if (isdefined(self.var_9e8e7b78)) {
                self.var_9e8e7b78 function_19a410e2(0);
            }
            self.var_9e8e7b78 = e_lock;
            if (isdefined(e_lock)) {
                e_lock function_19a410e2(1);
            }
        }
        if (isdefined(self.var_9e8e7b78)) {
            var_844c4420 = self secondaryoffhandbuttonpressed();
            var_7b75f8c2 = var_1806c69c ? self fragbuttonpressed() : self meleebuttonpressed();
            if (var_844c4420) {
                input++;
            }
            if (var_7b75f8c2) {
                input--;
            }
            if (input != 0) {
                n_index = self.var_9e8e7b78.n_index;
                level.var_ea51eeb9.input[n_index] = (level.var_ea51eeb9.input[n_index] + input + 40) % 40;
                playsoundatposition(#"hash_16474e80e8a1f9d", self.var_9e8e7b78.origin);
                /#
                    iprintlnbold("<unknown string>" + n_index + "<unknown string>" + level.var_ea51eeb9.input[n_index] + "<unknown string>" + level.var_ea51eeb9.numbers[n_index]);
                #/
                self.var_9e8e7b78 linktoupdateoffset((0, 0, 0), (level.var_ea51eeb9.input[n_index] * 9, 0, 0));
                wait(0.2);
                continue;
            }
        }
        waitframe(1);
    }
    self unlink();
    waitframe(1);
    self val::reset_all(#"hash_c13c4143edde35b");
    if (var_ba127c46 != 0) {
        self.var_19f4406e = var_ba127c46;
        self flag::set(#"hash_2d6980738132f263");
    }
    self.var_eddb113e = undefined;
}

// Namespace zm_platinum_ww_quest/namespace_719bbd07
// Params 0, eflags: 0x2 linked
// Checksum 0x7a7b88df, Offset: 0xf48
// Size: 0x11c
function function_7d0eaace() {
    var_8b27029a = 1;
    for (i = 0; i < 3; i++) {
        if (level.var_ea51eeb9.input[i] != level.var_ea51eeb9.numbers[i]) {
            var_8b27029a = 0;
            break;
        }
    }
    if (var_8b27029a) {
        level flag::set(#"hash_358a79602429d556");
        /#
            iprintlnbold("<unknown string>");
        #/
        return;
    }
    level.var_ea51eeb9.locks[1] playsound(#"hash_437516da741e5140");
    /#
        iprintlnbold("<unknown string>");
    #/
}

/#

    // Namespace zm_platinum_ww_quest/namespace_719bbd07
    // Params 0, eflags: 0x0
    // Checksum 0xce0898c0, Offset: 0x1070
    // Size: 0x5c
    function function_63a18814() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace zm_platinum_ww_quest/namespace_719bbd07
    // Params 1, eflags: 0x0
    // Checksum 0x58396e06, Offset: 0x10d8
    // Size: 0x82
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_4121f85b9490b08c":
            function_9fa3d0d(0);
            break;
        case #"hash_4121f95b9490b23f":
            function_9fa3d0d(1);
            break;
        default:
            break;
        }
    }

    // Namespace zm_platinum_ww_quest/namespace_719bbd07
    // Params 1, eflags: 0x0
    // Checksum 0x663c04db, Offset: 0x1168
    // Size: 0xd4
    function function_9fa3d0d(index) {
        player = getplayers()[index];
        if (!isdefined(player)) {
            return;
        }
        if (!isdefined(player.blacklight)) {
            player.blacklight = 0;
        }
        player.blacklight = (player.blacklight + 1) % 2;
        if (player.blacklight) {
            player.var_19f4406e = 2;
            player flag::set(#"hash_2d6980738132f263");
            return;
        }
        player.var_19f4406e = 0;
        player flag::set(#"hash_2d6980738132f263");
    }

#/
