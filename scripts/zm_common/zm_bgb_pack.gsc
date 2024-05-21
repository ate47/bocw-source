// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\trials\zm_trial_disable_bgbs.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace bgb_pack;

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x5
// Checksum 0x3cb6201b, Offset: 0x1f0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"bgb_pack", &preinit, &postinit, undefined, undefined);
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x6 linked
// Checksum 0xbb744626, Offset: 0x248
// Size: 0x9c
function private preinit() {
    /#
        function_72ffe91();
    #/
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    if (!is_true(level.bgb_in_use)) {
        return;
    }
    /#
        if (!sessionmodeisonlinegame()) {
            level.var_4af38aa3 = 1;
        }
    #/
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x6 linked
// Checksum 0x94218484, Offset: 0x2f0
// Size: 0x3c
function private postinit() {
    if (!is_true(level.bgb_in_use)) {
        return;
    }
    /#
        level thread setup_devgui();
    #/
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x6 linked
// Checksum 0xf8fc9ae3, Offset: 0x338
// Size: 0x40
function private on_player_connect() {
    self.var_2d8082a0 = [];
    for (x = 0; x < 4; x++) {
        self.var_2d8082a0[x] = 0;
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x6 linked
// Checksum 0x8792c265, Offset: 0x380
// Size: 0xe4
function private on_player_spawned() {
    self endon(#"disconnect");
    if (!is_true(level.bgb_in_use)) {
        return;
    }
    if (isbot(self)) {
        return;
    }
    level flag::wait_till("start_zombie_round_logic");
    waitframe(1);
    self thread function_efe33e13();
    self thread function_40849636();
    self function_4650bb90(1);
    self function_2ca4f95b(1);
    self function_b18274fd();
}

// Namespace bgb_pack/zm_bgb_pack
// Params 3, eflags: 0x0
// Checksum 0xb1c32788, Offset: 0x470
// Size: 0xae
function function_9d4db403(name, var_81f8ab0f, var_f1d1c3e6) {
    assert(isdefined(level.bgb[name]), "<unknown string>" + name + "<unknown string>");
    assert(isdefined(var_81f8ab0f), "<unknown string>");
    level.bgb[name].var_81f8ab0f = var_81f8ab0f;
    level.bgb[name].var_f1d1c3e6 = var_f1d1c3e6;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x0
// Checksum 0x26c50102, Offset: 0x528
// Size: 0x6a
function function_430d063b(name) {
    assert(isdefined(level.bgb[name]), "<unknown string>" + name + "<unknown string>");
    level.bgb[name].var_58860b3 = 1;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x0
// Checksum 0x963f3fee, Offset: 0x5a0
// Size: 0x6a
function function_a1194b9a(name) {
    assert(isdefined(level.bgb[name]), "<unknown string>" + name + "<unknown string>");
    level.bgb[name].var_8fd0fb47 = 1;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x0
// Checksum 0x24b3aad3, Offset: 0x618
// Size: 0x6a
function function_4de6c08a(name) {
    assert(isdefined(level.bgb[name]), "<unknown string>" + name + "<unknown string>");
    level.bgb[name].var_8b1ba43c = 1;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x4
// Checksum 0x8e8abf89, Offset: 0x690
// Size: 0x11c
function private function_ed1b1a8e(n_index) {
    if (self scene::is_igc_active()) {
        return;
    }
    if (function_2ee076a7()) {
        if (self meleebuttonpressed() || self sprintbuttonpressed() || self isinmovemode("ufo", "noclip") || level flag::get(#"menu_open")) {
            return;
        }
    }
    if (zm_trial_disable_bgbs::is_active()) {
        self zm_trial_util::function_97444b02();
    }
    if (!self function_6f7d5230(n_index)) {
        self function_ea17bc2a(n_index);
    }
}

// Namespace bgb_pack/button_bit_actionslot_1_pressed
// Params 0, eflags: 0x20
// Checksum 0x80f724d1, Offset: 0x7b8
// Size: 0x4
function event_handler[button_bit_actionslot_1_pressed] function_58d265ea() {
    
}

// Namespace bgb_pack/button_bit_actionslot_2_pressed
// Params 0, eflags: 0x20
// Checksum 0x80f724d1, Offset: 0x7c8
// Size: 0x4
function event_handler[button_bit_actionslot_2_pressed] function_3c626fd() {
    
}

// Namespace bgb_pack/button_bit_actionslot_3_pressed
// Params 0, eflags: 0x20
// Checksum 0x80f724d1, Offset: 0x7d8
// Size: 0x4
function event_handler[button_bit_actionslot_3_pressed] function_aaaaeef4() {
    
}

// Namespace bgb_pack/button_bit_actionslot_4_pressed
// Params 0, eflags: 0x20
// Checksum 0x80f724d1, Offset: 0x7e8
// Size: 0x4
function event_handler[button_bit_actionslot_4_pressed] function_f05fb7a0() {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x2 linked
// Checksum 0x4f964f2c, Offset: 0x7f8
// Size: 0x26
function function_40849636() {
    self.var_bd0d5874 = 0;
    self.var_8ef176f3 = 0;
    self.var_9302665 = 0;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x0
// Checksum 0xbbc2a036, Offset: 0x828
// Size: 0x3be
function function_a1cb16a2() {
    self notify(#"hash_67100af32a422470");
    self endon(#"hash_67100af32a422470", #"disconnect");
    self.var_bd0d5874 = 0;
    self.var_8ef176f3 = 0;
    self.var_9302665 = 0;
    while (isdefined(self)) {
        if (function_2ee076a7()) {
            if (self meleebuttonpressed() || self sprintbuttonpressed() || self isinmovemode("ufo", "noclip") || level flag::get(#"menu_open")) {
                self.var_7c6f53f9 = 1;
                waitframe(1);
                continue;
            } else if (is_true(self.var_7c6f53f9)) {
                self.var_7c6f53f9 = undefined;
                waitframe(1);
            }
        }
        if (self scene::is_igc_active()) {
            waitframe(1);
            continue;
        }
        if (zm_trial_disable_bgbs::is_active() && (self actionslotonebuttonpressed() || self actionslotfourbuttonpressed() || self actionslottwobuttonpressed() || self actionslotthreebuttonpressed())) {
            self zm_trial_util::function_97444b02();
            do {
                waitframe(1);
            } while (self actionslotonebuttonpressed() || self actionslotfourbuttonpressed() || self actionslottwobuttonpressed() || self actionslotthreebuttonpressed());
            continue;
        }
        n_index = 0;
        if (self actionslotonebuttonpressed() && !self function_6f7d5230(n_index)) {
            self function_ea17bc2a(n_index);
        }
        n_index = 1;
        if (self actionslotfourbuttonpressed() && !self function_6f7d5230(n_index)) {
            self function_ea17bc2a(n_index);
        }
        n_index = 2;
        if (self actionslottwobuttonpressed() && !self function_6f7d5230(n_index)) {
            self function_ea17bc2a(n_index);
        }
        n_index = 3;
        if (self actionslotthreebuttonpressed() && !self function_6f7d5230(n_index)) {
            self function_ea17bc2a(n_index);
        }
        waitframe(1);
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xb7a9d373, Offset: 0xbf0
// Size: 0x5c
function function_ea17bc2a(n_index) {
    if (self bgb::get_bgb_available(self.bgb_pack[n_index])) {
        self function_763a8a50(n_index);
        return;
    }
    self function_23b7cdd8(n_index);
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xaa37b10d, Offset: 0xc58
// Size: 0x54
function function_763a8a50(n_index) {
    if (self function_4f8aa77a(n_index)) {
        self thread function_23b7cdd8(n_index);
        return;
    }
    self activate_elixir(n_index);
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0x5b6bc336, Offset: 0xcb8
// Size: 0x300
function activate_elixir(n_index) {
    self endon(#"disconnect");
    level endon(#"end_game");
    has_succeeded = 0;
    if (isdefined(level.var_3c8ad64b) && level.var_3c8ad64b != n_index) {
        return has_succeeded;
    }
    if ((self function_834d35e(n_index) == 0 || is_true(level.var_4af38aa3) && self function_834d35e(n_index) == 3) && !self zm_utility::is_drinking() && !self laststand::player_is_in_laststand()) {
        has_succeeded = 0;
        str_bgb = self.bgb_pack[n_index];
        if (!isdefined(str_bgb) || str_bgb == "") {
            self thread function_23b7cdd8(n_index);
            return 0;
        }
        if (!self bgb::function_e98aa964(0, str_bgb)) {
            self thread function_23b7cdd8(n_index);
            return 0;
        }
        self function_91586d27();
        if (level.bgb[str_bgb].limit_type == "activated") {
            if (is_true(level.bgb[str_bgb].var_4a9b0cdc) || self bgb::function_e98aa964(1, str_bgb)) {
                has_succeeded = self function_5d618bb4(str_bgb, n_index);
                if (has_succeeded) {
                    self notify(#"hash_27b238d082f65849", str_bgb);
                    self bgb::activation_start();
                    self thread bgb::run_activation_func(str_bgb);
                }
            } else {
                self thread function_23b7cdd8(n_index);
                has_succeeded = 0;
            }
        } else {
            self function_5d618bb4(str_bgb, n_index);
        }
        self.var_8ef176f3 = 0;
        if (has_succeeded) {
            self notify(#"bgb_activation", str_bgb);
        }
    } else {
        self thread function_23b7cdd8(n_index);
    }
    return has_succeeded;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0xca0f63b1, Offset: 0xfc0
// Size: 0x120
function function_5d618bb4(str_bgb, n_index) {
    b_succeed = self bgb::bgb_gumball_anim(str_bgb);
    b_succeed = is_true(b_succeed);
    if (b_succeed) {
        if (isdefined(self.bgb_pack[n_index]) && isdefined(level.bgb[self.bgb_pack[n_index]]) && !is_true(level.bgb[self.bgb_pack[n_index]].var_8fd0fb47)) {
            self.var_22fbe1cc++;
        }
        self function_b2308cd(n_index, 1);
        self bgb::sub_consumable_bgb(str_bgb);
        self thread function_fba5f0e1(n_index);
    }
    return b_succeed;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xe9151035, Offset: 0x10e8
// Size: 0x166
function function_23b7cdd8(n_index) {
    self endon(#"death");
    if (!is_true(self.var_7148f2c)) {
        self.var_7148f2c = 1;
        self playlocalsound(#"hash_678b4eee9797e94f");
        switch (n_index) {
        case 0:
            while (self actionslotonebuttonpressed()) {
                waitframe(1);
            }
            break;
        case 1:
            while (self actionslotfourbuttonpressed()) {
                waitframe(1);
            }
            break;
        case 2:
            while (self actionslottwobuttonpressed()) {
                waitframe(1);
            }
            break;
        case 3:
            while (self actionslotthreebuttonpressed()) {
                waitframe(1);
            }
            break;
        }
        self.var_7148f2c = 0;
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x0
// Checksum 0x20b7455a, Offset: 0x1258
// Size: 0x13e
function function_579411ff() {
    self disableweaponcycling();
    self allowjump(0);
    str_stance = self getstance();
    switch (str_stance) {
    case #"crouch":
        self allowstand(0);
        self allowprone(0);
        break;
    case #"prone":
        self allowstand(0);
        self allowcrouch(0);
        break;
    default:
        self allowcrouch(0);
        self allowprone(0);
        break;
    }
    self.var_9302665 = 1;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x2 linked
// Checksum 0x8d5b73b8, Offset: 0x13a0
// Size: 0x86
function function_91586d27() {
    self enableweaponcycling();
    self allowjump(1);
    self allowstand(1);
    self allowcrouch(1);
    self allowprone(1);
    self.var_9302665 = 0;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x0
// Checksum 0x404b48d1, Offset: 0x1430
// Size: 0xa6
function function_c47c57e8() {
    self notify(#"hash_25f0b773a3164732");
    self endon(#"hash_25f0b773a3164732", #"disconnect");
    for (;;) {
        if (!self secondaryoffhandbuttonpressed()) {
            wait(0.05);
            continue;
        }
        self.var_8ef176f3 = 1;
        for (;;) {
            wait(0.05);
            if (!self secondaryoffhandbuttonpressed()) {
                break;
            }
        }
        self.var_8ef176f3 = 0;
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x0
// Checksum 0xaabe919e, Offset: 0x14e0
// Size: 0xae
function function_619ee0f4() {
    self notify(#"hash_2ee12d1cd927db0c");
    self endon(#"hash_2ee12d1cd927db0c", #"disconnect");
    self.zmb_weapons_mastery_lmg = 0;
    for (;;) {
        if (!self secondaryoffhandbuttonpressed()) {
            wait(0.05);
            continue;
        }
        self.zmb_weapons_mastery_lmg = 1;
        for (;;) {
            wait(0.05);
            if (!self secondaryoffhandbuttonpressed()) {
                break;
            }
        }
        self.zmb_weapons_mastery_lmg = 0;
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x0
// Checksum 0x51a4fc68, Offset: 0x1598
// Size: 0xae
function function_261a46f4() {
    self notify(#"hash_5f9bde10649db4f9");
    self endon(#"hash_5f9bde10649db4f9", #"disconnect");
    self.var_6e1ea617 = 0;
    for (;;) {
        if (!self actionslotfourbuttonpressed()) {
            wait(0.05);
            continue;
        }
        self.var_6e1ea617 = 1;
        for (;;) {
            wait(0.05);
            if (!self actionslotfourbuttonpressed()) {
                break;
            }
        }
        self.var_6e1ea617 = 0;
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x2 linked
// Checksum 0xb60ac7f0, Offset: 0x1650
// Size: 0x98
function function_efe33e13() {
    self notify(#"hash_5d9f5eee2722843a");
    self endon(#"hash_5d9f5eee2722843a", #"disconnect");
    self.var_22fbe1cc = 0;
    for (;;) {
        level waittill(#"end_of_round");
        self.var_22fbe1cc = 0;
        if (!zm_trial_disable_bgbs::is_active()) {
            self function_f2173c97(0);
        }
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xb96ed013, Offset: 0x16f0
// Size: 0x3c
function function_fba5f0e1(n_index) {
    self thread global_cooldown(n_index);
    self thread slot_cooldown(n_index);
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0x97e44171, Offset: 0x1738
// Size: 0x256
function global_cooldown(n_index) {
    self notify("5d39cd8389b804f8");
    self endon("5d39cd8389b804f8");
    self endon(#"disconnect");
    self.var_bd0d5874 = 1;
    self function_a1f97e79(1, n_index);
    n_cooldown = 30;
    if (self hasperk(#"specialty_mod_cooldown")) {
        n_cooldown *= 0.9;
    }
    switch (zm_custom::function_901b751c(#"zmelixirscooldown")) {
    case 1:
    default:
        break;
    case 2:
        n_cooldown = floor(n_cooldown / 2);
        break;
    case 0:
        n_cooldown *= 2;
        break;
    }
    /#
        if (is_true(level.var_7c3d4959)) {
            n_cooldown = function_b29fc421();
        }
    #/
    result = self waittilltimeout(n_cooldown, #"hash_738988561a113fac");
    /#
        if (result._notify === "<unknown string>") {
            var_10b7b97a = 1;
        }
    #/
    self function_a1f97e79(0, undefined, var_10b7b97a);
    if (self.var_22fbe1cc >= 4) {
        self function_f2173c97(1);
    } else {
        self playlocalsound(#"hash_2a9d100a5cbc7dbe");
    }
    self.var_bd0d5874 = 0;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0x8174f07e, Offset: 0x1998
// Size: 0xa4
function function_6f7d5230(n_index) {
    if (self.var_bd0d5874 && isdefined(self.bgb_pack[n_index]) && isdefined(level.bgb[self.bgb_pack[n_index]]) && !is_true(level.bgb[self.bgb_pack[n_index]].var_8b1ba43c)) {
        self thread function_23b7cdd8(n_index);
        return true;
    }
    return false;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xf98a8875, Offset: 0x1a48
// Size: 0x5e4
function slot_cooldown(n_index) {
    self endon(#"disconnect");
    str_elixir = self.bgb_pack[n_index];
    self waittill("bgb_update_take_" + str_elixir);
    if (!self bgb::get_bgb_available(self.bgb_pack[n_index])) {
        if (!isdefined(self.var_82971641) || self.var_82971641.size == 0 || !isdefined(self.var_2b74c8fe) || self.var_2b74c8fe.size == 0) {
            self function_b2308cd(n_index, 3);
            return;
        } else {
            self function_b2308cd(n_index, 2);
        }
    } else {
        self function_b2308cd(n_index, 2);
    }
    self function_69b5ca2a(n_index, 1);
    function_1d5d39b0(n_index, 0);
    if (zm_utility::is_standard()) {
        n_cooldown = 180;
    } else {
        n_rarity = level.bgb[str_elixir].rarity;
        switch (n_rarity) {
        case 2:
            n_cooldown = 30;
            break;
        case 3:
            n_cooldown = 30;
            break;
        case 5:
            n_cooldown = 30;
            break;
        case 4:
            n_cooldown = 30;
            break;
        case 6:
            n_cooldown = 30;
            break;
        default:
            n_round = zm_round_logic::get_round_number();
            if (n_round >= 21) {
                n_cooldown = 1200;
            } else if (n_round >= 11) {
                n_cooldown = 900;
            } else if (n_round >= 6) {
                n_cooldown = 600;
            } else {
                n_cooldown = 300;
            }
            break;
        }
    }
    switch (zm_custom::function_901b751c(#"zmelixirscooldown")) {
    case 1:
    default:
        break;
    case 2:
        n_cooldown = floor(n_cooldown / 2);
        break;
    case 0:
        n_cooldown *= 2;
        break;
    }
    if (self hasperk(#"specialty_mod_cooldown")) {
        n_cooldown *= 0.9;
    }
    if (isdefined(level.bgb[str_elixir].var_81f8ab0f)) {
        n_cooldown = level.bgb[str_elixir].var_81f8ab0f;
    }
    /#
        if (is_true(level.var_7c3d4959)) {
            n_cooldown = 10;
        }
    #/
    self thread function_7dd2a9c9(n_index, n_cooldown);
    wait(0.05);
    result = self waittilltimeout(n_cooldown, #"hash_738988561a113fac");
    /#
        if (result._notify === "<unknown string>") {
            var_10b7b97a = 1;
        }
    #/
    if (self.var_2d8082a0[n_index] <= 0 || is_true(var_10b7b97a)) {
        self playsoundtoplayer(#"hash_78bd6c84a567b714", self);
        self notify("end_slot_cooldown" + n_index);
        self function_1d5d39b0(n_index, 1);
        self function_b2308cd(n_index, 0);
        if (!self bgb::get_bgb_available(self.bgb_pack[n_index]) && isdefined(self.var_82971641) && self.var_82971641.size && isdefined(self.var_2b74c8fe) && self.var_2b74c8fe.size) {
            zm_stats::function_ea5b4947();
            var_b8c2f693 = self function_be89decb();
            self.bgb_pack[n_index] = var_b8c2f693;
            self function_7b91e81c(n_index, level.bgb[var_b8c2f693].item_index);
        }
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0x2e0d1e78, Offset: 0x2038
// Size: 0x150
function function_7dd2a9c9(n_index, n_cooldown) {
    self notify("end_slot_cooldown" + n_index);
    self endon("end_slot_cooldown" + n_index, #"disconnect", #"hash_738988561a113fac");
    if (n_cooldown > 0) {
        n_percentage = 0.01 * n_cooldown / 20;
        n_step = 1 / n_cooldown * 20;
        var_729b3c2f = 0;
        n_count = 0;
        while (var_729b3c2f <= 1) {
            wait(0.05);
            n_count++;
            var_729b3c2f += n_step;
            var_729b3c2f = math::clamp(var_729b3c2f, 0, 1);
            self.var_2d8082a0[n_index] = n_cooldown - n_cooldown * var_729b3c2f;
            if (!self.var_bd0d5874) {
                self function_1d5d39b0(n_index, var_729b3c2f);
            }
        }
    }
    self.var_2d8082a0[n_index] = 0;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x6 linked
// Checksum 0xbd456a48, Offset: 0x2190
// Size: 0x19c
function private function_d84ec5ee(var_707fd977) {
    self endon(#"disconnect", #"hash_738988561a113fac");
    n_cooldown = 30;
    if (self hasperk(#"specialty_mod_cooldown")) {
        n_cooldown *= 0.9;
    }
    /#
        if (is_true(level.var_7c3d4959)) {
            n_cooldown = function_b29fc421();
        }
    #/
    if (n_cooldown > 0 && var_707fd977) {
        n_percentage = 0.01 * n_cooldown / 20;
        n_step = 1 / n_cooldown * 20;
        var_729b3c2f = 0;
        n_count = 0;
        while (var_729b3c2f < 1) {
            wait(0.05);
            n_count++;
            var_729b3c2f += n_step;
            var_729b3c2f = math::clamp(var_729b3c2f, 0, 1);
            self function_4650bb90(var_729b3c2f);
        }
        self function_4650bb90(1);
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x2 linked
// Checksum 0xa2a3a057, Offset: 0x2338
// Size: 0x2e
function function_b29fc421() {
    if (is_true(level.var_7c3d4959)) {
        return 10;
    }
    return 30;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x2 linked
// Checksum 0x1ac6cfd5, Offset: 0x2370
// Size: 0x11c
function function_b18274fd() {
    /#
        if (!sessionmodeisonlinegame()) {
            return;
        }
    #/
    for (x = 0; x < 4; x++) {
        if (!self bgb::get_bgb_available(self.bgb_pack[x])) {
            if (isdefined(self.var_82971641) && self.var_82971641.size && isdefined(self.var_2b74c8fe) && self.var_2b74c8fe.size) {
                var_b8c2f693 = self function_be89decb();
                self.bgb_pack[x] = var_b8c2f693;
                self function_7b91e81c(x, level.bgb[var_b8c2f693].item_index);
                continue;
            }
            self function_b2308cd(x, 3);
        }
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0x85329e20, Offset: 0x2498
// Size: 0xc
function function_2ca4f95b(*visible) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0xb81dcf9d, Offset: 0x24b0
// Size: 0x14
function function_7b91e81c(*slot_index, *item_index) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0xc691f894, Offset: 0x24d0
// Size: 0x14
function function_1d5d39b0(*slot_index, *cooldown_perc) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0x2436dca9, Offset: 0x24f0
// Size: 0xc
function function_4650bb90(*cooldown_perc) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0xbaad51fb, Offset: 0x2508
// Size: 0x7a
function function_69b5ca2a(slot_index, *var_b23960a) {
    if (isdefined(self.bgb_pack[var_b23960a]) && isdefined(level.bgb[self.bgb_pack[var_b23960a]]) && !is_true(level.bgb[self.bgb_pack[var_b23960a]].var_58860b3)) {
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xa9cbf654, Offset: 0x2590
// Size: 0xc
function function_4f8aa77a(*slot_index) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0x44b9dcd6, Offset: 0x25a8
// Size: 0x48
function function_da912bff(slot_index, *var_b23960a) {
    if (isdefined(self.bgb_pack[var_b23960a]) && isdefined(level.bgb[self.bgb_pack[var_b23960a]])) {
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x0
// Checksum 0xdaa5b620, Offset: 0x25f8
// Size: 0xc
function function_a9ecc0a0(*slot_index) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0x71302fd8, Offset: 0x2610
// Size: 0x14
function function_b2308cd(*slot_index, *state) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xf9c721d4, Offset: 0x2630
// Size: 0xc
function function_834d35e(*slot_index) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 3, eflags: 0x2 linked
// Checksum 0xcc515351, Offset: 0x2648
// Size: 0x1ec
function function_a1f97e79(var_707fd977, n_index, var_10b7b97a) {
    for (x = 0; x < 4; x++) {
        if (!self bgb::get_bgb_available(self.bgb_pack[x])) {
            continue;
        }
        if (var_707fd977) {
            if (self.var_2d8082a0[x] < function_b29fc421() && x != n_index && isdefined(self.bgb_pack[x]) && isdefined(level.bgb[self.bgb_pack[x]]) && !is_true(level.bgb[self.bgb_pack[x]].var_8b1ba43c)) {
                self function_b2308cd(x, 2);
                self function_1d5d39b0(x, 0);
            }
            continue;
        }
        if ((self.var_2d8082a0[x] <= 0 || is_true(var_10b7b97a)) && self function_834d35e(x) == 2) {
            self notify("end_slot_cooldown" + x);
            self function_1d5d39b0(x, 1);
            self function_b2308cd(x, 0);
        }
    }
    self thread function_d84ec5ee(var_707fd977);
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x6 linked
// Checksum 0xdf4c13c3, Offset: 0x2840
// Size: 0x10e
function private function_f2173c97(var_607319eb) {
    if (var_607319eb) {
        self playsoundtoplayer(#"hash_54adb87d474be3d2", self);
    } else {
        self playsoundtoplayer(#"hash_686b41e25622cb04", self);
    }
    for (x = 0; x < 4; x++) {
        if (isdefined(self.bgb_pack[x]) && isdefined(level.bgb[self.bgb_pack[x]]) && !is_true(level.bgb[self.bgb_pack[x]].var_58860b3) && self function_834d35e(x) != 3) {
        }
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x0
// Checksum 0x4bf87df, Offset: 0x2958
// Size: 0xc
function function_73d4ab82(*slot_index) {
    
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x0
// Checksum 0x1adb35b8, Offset: 0x2970
// Size: 0x6
function function_7a00e117() {
    return false;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x2 linked
// Checksum 0xbe7c3317, Offset: 0x2980
// Size: 0x98
function function_be89decb() {
    if (getplayers().size == 1) {
        var_b8c2f693 = array::random(self.var_2b74c8fe);
    } else {
        var_b8c2f693 = array::random(self.var_82971641);
    }
    arrayremovevalue(self.var_82971641, var_b8c2f693);
    arrayremovevalue(self.var_2b74c8fe, var_b8c2f693);
    return var_b8c2f693;
}

// Namespace bgb_pack/zm_bgb_pack
// Params 1, eflags: 0x2 linked
// Checksum 0xf1239823, Offset: 0x2a20
// Size: 0x7c
function function_ac9cb612(b_disable = 1) {
    self function_da912bff(0, b_disable);
    self function_da912bff(1, b_disable);
    self function_da912bff(2, b_disable);
    self function_da912bff(3, b_disable);
}

// Namespace bgb_pack/zm_bgb_pack
// Params 2, eflags: 0x2 linked
// Checksum 0x3c82d65b, Offset: 0x2aa8
// Size: 0xd0
function function_59004002(str_bgb, b_disable = 1) {
    if (isarray(self.bgb_pack)) {
        foreach (n_slot, var_8024f0e5 in self.bgb_pack) {
            if (str_bgb === var_8024f0e5) {
                self function_da912bff(n_slot, b_disable);
            }
        }
    }
}

/#

    // Namespace bgb_pack/zm_bgb_pack
    // Params 0, eflags: 0x0
    // Checksum 0x381b8062, Offset: 0x2b80
    // Size: 0x130
    function function_72ffe91() {
        level.var_d03d9cf3 = [];
        level.var_d03d9cf3[0] = array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>");
        level.var_d03d9cf3[1] = array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>");
        level.var_d03d9cf3[2] = array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>");
        level.var_d03d9cf3[3] = array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>");
    }

    // Namespace bgb_pack/zm_bgb_pack
    // Params 0, eflags: 0x4
    // Checksum 0xe301133c, Offset: 0x2cb8
    // Size: 0x278
    function private setup_devgui() {
        level flag::wait_till("<unknown string>");
        wait(1);
        bgb_devgui_base = "<unknown string>";
        keys = getarraykeys(level.bgb);
        zm_devgui::add_custom_devgui_callback(&function_c1091a8f);
        adddebugcommand(bgb_devgui_base + "<unknown string>");
        adddebugcommand(bgb_devgui_base + "<unknown string>");
        adddebugcommand(bgb_devgui_base + "<unknown string>");
        adddebugcommand(bgb_devgui_base + "<unknown string>");
        adddebugcommand(bgb_devgui_base + "<unknown string>" + "<unknown string>");
        adddebugcommand(bgb_devgui_base + "<unknown string>" + "<unknown string>");
        adddebugcommand(bgb_devgui_base + "<unknown string>" + "<unknown string>");
        adddebugcommand(bgb_devgui_base + "<unknown string>" + "<unknown string>");
        foreach (key in keys) {
            name = function_9e72a96(level.bgb[key].name);
            adddebugcommand(bgb_devgui_base + name + "<unknown string>" + name + "<unknown string>");
        }
    }

    // Namespace bgb_pack/zm_bgb_pack
    // Params 2, eflags: 0x4
    // Checksum 0xebb0a1b0, Offset: 0x2f38
    // Size: 0x33a
    function private function_c1091a8f(str_cmd, key) {
        var_8327ff7c = getdvarint(#"hash_7877ee182ba11433", 0);
        a_players = getplayers();
        keys = getarraykeys(level.bgb);
        var_6c522f60 = 0;
        switch (str_cmd) {
        case #"hash_2f68979bf97ad43a":
            level.var_4af38aa3 = 1;
            break;
        case #"hash_972ca08eb9fbf0c":
            level.var_4af38aa3 = 0;
            break;
        case #"hash_628ffe45aab5f07":
            level.var_7c3d4959 = 1;
            break;
        case #"default_cooldowns":
            level.var_7c3d4959 = 0;
            break;
        case #"slot0":
            level.var_c20342bc = 0;
            break;
        case #"slot1":
            level.var_c20342bc = 1;
            break;
        case #"slot2":
            level.var_c20342bc = 2;
            break;
        case #"slot3":
            level.var_c20342bc = 3;
            break;
        }
        if (!isdefined(level.var_c20342bc)) {
            level.var_c20342bc = 0;
        }
        a_keys = getarraykeys(level.bgb);
        b_found = 0;
        foreach (key in a_keys) {
            if (key == str_cmd) {
                b_found = 1;
            }
        }
        if (b_found) {
            for (i = 0; i < a_players.size; i++) {
                if (var_8327ff7c != -1 && var_8327ff7c != i) {
                    continue;
                }
                a_players[i].bgb_pack[level.var_c20342bc] = hash(str_cmd);
                a_players[i] function_7b91e81c(level.var_c20342bc, level.bgb[str_cmd].item_index);
            }
            var_6c522f60 = 1;
        }
        return var_6c522f60;
    }

#/
