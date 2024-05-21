// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\gamedifficulty.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\dialogue.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\turret_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace hms_util;

// Namespace hms_util/hms_util
// Params 4, eflags: 0x0
// Checksum 0x50c5e88d, Offset: 0x5f0
// Size: 0xfc
function function_2e7c81f6(var_6ec87b1c, var_1bf8e54c, var_67e93cde, var_16081583) {
    self takeallweapons();
    var_6cc14b7b = getweapon(#"null_offhand_primary");
    self giveweapon(var_6cc14b7b);
    self function_82c1c712(var_6ec87b1c, 1, 1);
    if (isdefined(var_1bf8e54c)) {
        self function_82c1c712(var_1bf8e54c);
    }
    if (isdefined(var_67e93cde)) {
        self function_2c192b72(var_67e93cde);
    }
    if (isdefined(var_16081583)) {
        self function_2c192b72(var_16081583);
    }
}

// Namespace hms_util/hms_util
// Params 3, eflags: 0x2 linked
// Checksum 0xcd2bf9b, Offset: 0x6f8
// Size: 0xfc
function function_82c1c712(var_7e50d895, var_3f0c288b = 1, var_908ce45b = 0) {
    assert(ishash(var_7e50d895) || isweapon(var_7e50d895), "glass");
    w_weapon = get_weapon(var_7e50d895);
    self giveweapon(w_weapon);
    if (var_3f0c288b) {
        self givemaxammo(w_weapon);
    }
    if (var_908ce45b) {
        self switchtoweapon(w_weapon);
    }
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x2 linked
// Checksum 0xf53d956, Offset: 0x800
// Size: 0xdc
function function_2c192b72(var_7e50d895, var_3f0c288b = 1) {
    assert(isstring(var_7e50d895) || ishash(var_7e50d895) || isweapon(var_7e50d895), "<unknown string>");
    w_weapon = get_weapon(var_7e50d895);
    self giveweapon(w_weapon);
    if (var_3f0c288b) {
        self givemaxammo(w_weapon);
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x6 linked
// Checksum 0x150f5aaa, Offset: 0x8e8
// Size: 0x8c
function private get_weapon(var_7e50d895) {
    w_weapon = var_7e50d895;
    if (ishash(w_weapon)) {
        w_weapon = getweapon(w_weapon);
    }
    if (isweapon(w_weapon)) {
        return w_weapon;
    }
    errormsg("<unknown string>");
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x0
// Checksum 0x9f3b3b, Offset: 0x980
// Size: 0x124
function function_d2913eb6(str_value, str_key = "targetname") {
    assert(isstring(str_value), "<unknown string>");
    assert(isstring(str_key), "<unknown string>");
    var_39a8d367 = struct::get(str_value, str_key);
    assert(isdefined(var_39a8d367), "<unknown string>" + str_key + "<unknown string>" + str_value + "<unknown string>");
    self setorigin(var_39a8d367.origin);
    self setplayerangles(var_39a8d367.angles);
}

/#

    // Namespace hms_util/hms_util
    // Params 1, eflags: 0x0
    // Checksum 0x35b15809, Offset: 0xab0
    // Size: 0x4c
    function print(string) {
        if (getdvarint(#"hash_392e1be829a88ce7", 0) != 0) {
            iprintlnbold(string);
        }
    }

    // Namespace hms_util/hms_util
    // Params 0, eflags: 0x0
    // Checksum 0xb979340, Offset: 0xb08
    // Size: 0x446
    function function_32397759() {
        level notify(#"hash_2053a8138b73b25");
        level endon(#"hash_2053a8138b73b25");
        level endon(#"nextmission");
        var_6a432250 = [];
        if (getdvarint(#"hash_392e1be829a88ce7", 0) == 0) {
            return;
        }
        while (true) {
            if (getdvarint(#"hash_6187089da5dd2a15", 1) == 0) {
                wait(1);
                continue;
            }
            var_6a432250[0] = getaiteamarray("<unknown string>").size;
            var_6a432250[1] = getaiteamarray("<unknown string>").size;
            var_6a432250[2] = getaiteamarray("<unknown string>").size;
            var_6a432250[1]--;
            n_total_count = 0;
            foreach (n_count in var_6a432250) {
                n_total_count += n_count;
            }
            var_d2a95eab = (1, 1, 1);
            if (n_total_count < 10) {
                var_d2a95eab = (0, 1, 0);
            } else if (n_total_count < 20) {
                var_d2a95eab = (1, 1, 0);
            } else {
                var_d2a95eab = (1, 0, 0);
            }
            n_xpos = 900;
            n_ypos = 10;
            foreach (n, n_count in var_6a432250) {
                var_9bed9f5d = "<unknown string>";
                switch (n) {
                case 0:
                    var_9bed9f5d = "<unknown string>";
                    break;
                case 1:
                    var_9bed9f5d = "<unknown string>";
                    break;
                case 2:
                    var_9bed9f5d = "<unknown string>";
                    break;
                }
                var_6a84dd2f = getdvarint(#"hash_799d70a49cc79c0f", 1920);
                var_b246b91d = getdvarint(#"hash_526c340ae912bbd0", 1080);
                var_b818a262 = int(var_6a84dd2f * n_xpos / 1920);
                var_68bff93e = int(var_b246b91d * n_ypos / 1080);
                debug2dtext((var_b818a262, var_68bff93e, 0), "<unknown string>" + n_count + var_9bed9f5d + "<unknown string>", var_d2a95eab, 1, (0, 0, 0), 0.2, 1);
                n_increment = int(var_b246b91d * 22 / 1080);
                n_ypos += n_increment;
            }
            waitframe(1);
        }
    }

    // Namespace hms_util/hms_util
    // Params 0, eflags: 0x0
    // Checksum 0xab6e5541, Offset: 0xf58
    // Size: 0x146
    function function_5056f90d() {
        if (getdvarint(#"hash_392e1be829a88ce7", 0) == 0) {
            return;
        }
        while (true) {
            if (isdefined(level.player.maxhealth) && level.player.maxhealth > 0) {
                break;
            }
            wait(1);
        }
        var_747bfbeb = gamedifficulty::function_eb59c79() / level.player.maxhealth;
        while (isdefined(level.player)) {
            var_3d30d8a4 = int(level.player.health * var_747bfbeb);
            debug2dtext((0, 1008, 0), "<unknown string>" + var_3d30d8a4, (1, 1, 0), undefined, undefined, 0.5, 1.5, 1);
            waitframe(1);
        }
    }

#/

// Namespace hms_util/hms_util
// Params 4, eflags: 0x2 linked
// Checksum 0x7d26a460, Offset: 0x10a8
// Size: 0x18c
function dialogue(var_8a9a3456, var_e7ee33b4, str_team_override, var_ee658ea4) {
    if (!isdefined(self)) {
        /#
            print("<unknown string>");
        #/
        return;
    }
    if (isdefined(str_team_override)) {
        self.var_e18a578d = str_team_override;
    } else {
        self.var_e18a578d = self.team;
    }
    if (isdefined(var_ee658ea4)) {
        self.var_2a7c06e0 = var_ee658ea4;
    } else {
        self.var_2a7c06e0 = self.name;
    }
    if (soundexists(var_8a9a3456)) {
        if (!isdefined(var_e7ee33b4) || var_e7ee33b4 == 0) {
            speaker = undefined;
            if (isai(self) || self.classname == "script_model") {
                speaker = self;
            } else {
                speaker = spawn("script_model", self.origin);
            }
            speaker dialogue::queue(var_8a9a3456);
        } else {
            self dialogue::radio(var_8a9a3456);
        }
        return;
    }
    /#
        self function_4fbbdb3a(var_8a9a3456);
    #/
}

/#

    // Namespace hms_util/hms_util
    // Params 1, eflags: 0x0
    // Checksum 0x2c0dc561, Offset: 0x1240
    // Size: 0x33c
    function function_4fbbdb3a(var_8a9a3456) {
        assert(isdefined(self.var_e18a578d));
        level notify(#"hash_c994d2af0329db3");
        var_1a057205 = newdebughudelem();
        var_1a057205 thread function_3b240a04();
        var_b246b91d = getdvarint(#"hash_526c340ae912bbd0", 1080);
        var_7dcf554 = int(var_b246b91d * 145 / 1080);
        var_1a057205.elemtype = "<unknown string>";
        var_1a057205.font = "<unknown string>";
        var_1a057205.fontscale = 1.5;
        var_1a057205.horzalign = "<unknown string>";
        var_1a057205.vertalign = "<unknown string>";
        var_1a057205.alignx = "<unknown string>";
        var_1a057205.aligny = "<unknown string>";
        var_1a057205.y = var_7dcf554;
        var_1a057205.sort = 2;
        var_1a057205.alpha = 1;
        var_1a057205.hidewheninmenu = 1;
        str_name = undefined;
        if (isdefined(self.var_2a7c06e0)) {
            str_name = self.var_2a7c06e0;
        } else if (self.var_e18a578d == "<unknown string>") {
            str_name = "<unknown string>";
        } else if (self.var_e18a578d == "<unknown string>") {
            str_name = "<unknown string>";
        } else if (self.var_e18a578d == "<unknown string>") {
            str_name = "<unknown string>";
        } else {
            assertmsg("<unknown string>");
        }
        if (self.var_e18a578d == "<unknown string>") {
            var_ac6f8704 = "<unknown string>";
        } else if (self.var_e18a578d == "<unknown string>") {
            var_ac6f8704 = "<unknown string>";
        } else if (self.var_e18a578d == "<unknown string>") {
            var_ac6f8704 = "<unknown string>";
        } else {
            assertmsg("<unknown string>");
        }
        var_1a057205 settext(var_ac6f8704 + str_name + "<unknown string>" + "<unknown string>" + var_8a9a3456);
        var_69ddbb87 = 2 + var_8a9a3456.size * 0.05;
        var_1a057205 thread function_b9afa497(var_69ddbb87);
        var_1a057205 waittill(#"hash_6387ba69ddfd9cab");
    }

    // Namespace hms_util/hms_util
    // Params 1, eflags: 0x0
    // Checksum 0x23f87f2, Offset: 0x1588
    // Size: 0xac
    function function_b9afa497(var_69ddbb87) {
        var_6eb2464 = gettime() + var_69ddbb87 * 1000;
        while (gettime() < var_6eb2464) {
            waitframe(1);
        }
        for (alpha = 1; alpha >= 0; alpha -= 0.1) {
            self.alpha = alpha;
            waitframe(1);
        }
        self notify(#"hash_6387ba69ddfd9cab");
        self destroy();
    }

    // Namespace hms_util/hms_util
    // Params 0, eflags: 0x0
    // Checksum 0x58897e53, Offset: 0x1640
    // Size: 0x50
    function function_3b240a04() {
        self endon(#"hash_6387ba69ddfd9cab");
        while (true) {
            level waittill(#"hash_c994d2af0329db3");
            self thread function_52f38f72();
        }
    }

    // Namespace hms_util/hms_util
    // Params 0, eflags: 0x0
    // Checksum 0xfde3e24d, Offset: 0x1698
    // Size: 0xf4
    function function_52f38f72() {
        var_b246b91d = getdvarint(#"hash_526c340ae912bbd0", 1080);
        var_ed2be267 = int(var_b246b91d * 30 / 1080);
        var_61483a9f = int(10);
        var_71241e23 = int(var_ed2be267 / var_61483a9f);
        for (n = 1; n <= var_61483a9f; n++) {
            if (isdefined(self)) {
                self.y += var_71241e23;
                waitframe(1);
                continue;
            }
            break;
        }
    }

#/

// Namespace hms_util/hms_util
// Params 7, eflags: 0x0
// Checksum 0xefe905b1, Offset: 0x1798
// Size: 0x24a
function function_ee1d1df6(var_98b4b8a9, var_4aac0a03, var_243c68ce, var_715f6e03, var_58d5c920, var_3383cd4e, var_5207b7a8) {
    assert(isdefined(var_98b4b8a9), "<unknown string>");
    str_targetname = isdefined(var_58d5c920) ? var_58d5c920 : var_98b4b8a9;
    ai = spawn_targetname(str_targetname);
    ai.animname = var_98b4b8a9;
    ai.name = var_4aac0a03;
    ai.script_friendname = var_4aac0a03;
    ai.attackeraccuracy = 0.1;
    ai.pushable = 1;
    ai bloodimpact("hero");
    ai pushplayer(0);
    ai val::set(#"hash_13ccb82fb7f72765", "magic_bullet_shield", 1);
    if (isdefined(var_3383cd4e)) {
        ai function_65d14a19(var_3383cd4e);
    }
    if (isdefined(var_715f6e03)) {
        level function_53531f27(var_715f6e03);
    }
    if (isdefined(var_5207b7a8)) {
        ai set_demeanor(var_5207b7a8);
    }
    s_teleport = struct::get(var_243c68ce, "targetname");
    if (isdefined(s_teleport)) {
        ai forceteleport(s_teleport.origin);
        ai setgoal(s_teleport.origin);
    } else {
        ai setgoal(ai.origin);
    }
    level.(var_98b4b8a9) = ai;
    return ai;
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0xb4ddb99a, Offset: 0x19f0
// Size: 0x102
function spawn_targetname(str_targetname) {
    splist = getentarray(str_targetname, "targetname");
    sp = undefined;
    ai = undefined;
    foreach (spawner in splist) {
        if (isspawner(spawner)) {
            sp = spawner;
            break;
        }
    }
    if (isdefined(sp)) {
        ai = spawner::simple_spawn_single(sp);
    }
    return ai;
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0xeba766e4, Offset: 0x1b00
// Size: 0xba
function set_demeanor(var_5207b7a8) {
    switch (var_5207b7a8) {
    case #"alert":
    case #"patrol":
    case #"combat":
    case #"cqb":
        self ai::set_behavior_attribute("_human_demeanor", var_5207b7a8);
        break;
    default:
        assertmsg("<unknown string>" + var_5207b7a8 + "<unknown string>");
        break;
    }
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x2 linked
// Checksum 0x40465665, Offset: 0x1bc8
// Size: 0x7c
function function_53531f27(str_trigger_name, str_val = "targetname") {
    trig = getent(str_trigger_name, str_val);
    if (isdefined(trig) && trig istriggerenabled()) {
        trig trigger::use();
    }
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0x43b65453, Offset: 0x1c50
// Size: 0x5c
function function_cdc39aec() {
    if (isalive(self)) {
        self val::reset(#"hash_13ccb82fb7f72765", "magic_bullet_shield");
        self deletedelay();
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0x312011a5, Offset: 0x1cb8
// Size: 0xd4
function function_d291d5c2(var_ebc9fa6c = 0) {
    var_ffbbfc35 = [];
    var_ffbbfc35[0] = function_e1449992(level.woods, "Woods's test dialogue.", "Woods's test radio dialogue.");
    var_ffbbfc35[1] = function_e1449992(level.player, "Player's test dialogue.");
    var_ffbbfc35[2] = function_e1449992(level.var_bea479b9, undefined, "Bob's test dialogue.");
    vo_knockout_manager("test_knockout_dialogue", var_ffbbfc35, var_ebc9fa6c);
}

// Namespace hms_util/hms_util
// Params 3, eflags: 0x2 linked
// Checksum 0xa85212c8, Offset: 0x1d98
// Size: 0xae
function function_e1449992(e_speaker, var_8a9a3456, var_cb47fc62) {
    assert(isdefined(e_speaker));
    assert(isdefined(var_8a9a3456) || isdefined(var_cb47fc62));
    s = spawnstruct();
    s.e_speaker = e_speaker;
    if (isdefined(var_8a9a3456)) {
        s.var_8a9a3456 = var_8a9a3456;
    }
    if (isdefined(var_cb47fc62)) {
        s.var_cb47fc62 = var_cb47fc62;
    }
    return s;
}

// Namespace hms_util/hms_util
// Params 7, eflags: 0x2 linked
// Checksum 0xf99dc329, Offset: 0x1e50
// Size: 0x124
function vo_knockout_manager(str_id, var_ffbbfc35, var_ebc9fa6c, var_d9930d91 = 1, var_d9e780d7, var_13cb5e17, var_8ad68e5f) {
    if (!isdefined(level.var_2f6b8bdb)) {
        level.var_2f6b8bdb = [];
    }
    if (!isdefined(level.var_2f6b8bdb[str_id])) {
        level.var_2f6b8bdb[str_id] = [];
        for (i = 0; i < var_ffbbfc35.size; i++) {
            var_ffbbfc35[i].var_d9e780d7 = var_d9e780d7;
            var_ffbbfc35[i].var_13cb5e17 = var_13cb5e17;
            var_ffbbfc35[i].var_8ad68e5f = var_8ad68e5f;
            var_ffbbfc35[i].b_used = 0;
            level.var_2f6b8bdb[str_id][i] = var_ffbbfc35[i];
        }
    }
    vo_knockout_manager_dialogue(str_id, var_ebc9fa6c, var_d9930d91);
}

// Namespace hms_util/hms_util
// Params 3, eflags: 0x2 linked
// Checksum 0xfcca4fb3, Offset: 0x1f80
// Size: 0x28c
function vo_knockout_manager_dialogue(str_id, var_ebc9fa6c, var_d9930d91) {
    if (var_d9930d91 == 0) {
        do_abort = 1;
        foreach (s in level.var_2f6b8bdb[str_id]) {
            if (s.b_used == 0) {
                do_abort = 0;
                break;
            }
        }
        if (do_abort == 1) {
            return;
        }
    }
    level.var_2f6b8bdb[str_id] = vo_knockout_manager_reset_check(level.var_2f6b8bdb[str_id]);
    i = vo_knockout_manager_get_random(level.var_2f6b8bdb[str_id]);
    level.var_2f6b8bdb[str_id][i].b_used = 1;
    if (isdefined(level.var_2f6b8bdb[str_id][i].e_speaker)) {
        e_speaker = undefined;
        if (isentity(level.var_2f6b8bdb[str_id][i].e_speaker)) {
            e_speaker = level.var_2f6b8bdb[str_id][i].e_speaker;
        } else {
            /#
                iprintlnbold("<unknown string>");
            #/
        }
        if (!isdefined(e_speaker.animname)) {
            e_speaker.animname = "generic";
        }
        if (!isdefined(var_ebc9fa6c) || var_ebc9fa6c == 0) {
            e_speaker thread dialogue(level.var_2f6b8bdb[str_id][i].var_8a9a3456);
            return;
        }
        e_speaker thread dialogue(level.var_2f6b8bdb[str_id][i].var_cb47fc62, 1);
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0xa64c8ae0, Offset: 0x2218
// Size: 0xc6
function vo_knockout_manager_reset_check(a_s) {
    foreach (s in a_s) {
        if (s.b_used == 0) {
            return a_s;
        }
    }
    for (i = 0; i < a_s.size; i++) {
        a_s[i].b_used = 0;
    }
    return a_s;
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0xf00d72a, Offset: 0x22e8
// Size: 0xe4
function vo_knockout_manager_get_random(a_s) {
    i = randomintrange(0, a_s.size);
    var_9e522061 = 0;
    var_fe0d73e0 = int(a_s.size * a_s.size);
    while (a_s[i].b_used == 1) {
        i = randomintrange(0, a_s.size);
        var_9e522061++;
        if (var_9e522061 > var_fe0d73e0) {
            for (j = 0; j < a_s.size; j++) {
                if (a_s[j].b_used == 0) {
                    return j;
                }
            }
        }
    }
    return i;
}

// Namespace hms_util/hms_util
// Params 4, eflags: 0x0
// Checksum 0x6d349184, Offset: 0x23d8
// Size: 0xc2
function function_3ab6b4b0(var_fa4801bb, n_min, n_max, str_endon) {
    assert(n_min > 0, "<unknown string>");
    self endon(str_endon);
    b_randomize = n_min != n_max;
    n_wait = 0;
    if (!b_randomize) {
        n_wait = n_min;
    }
    while (true) {
        if (b_randomize) {
            n_wait = randomfloatrange(n_min, n_max);
        }
        wait(n_wait);
        [[ var_fa4801bb ]]();
    }
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0xaaa17047, Offset: 0x24a8
// Size: 0xb0
function function_2f3616f8() {
    a_t = getentarray("trigger_out_of_bounds", "classname");
    foreach (t in a_t) {
        t triggerenable(0);
    }
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x0
// Checksum 0x7f759380, Offset: 0x2560
// Size: 0x190
function function_eaa0342e(var_8764771, var_64fdcdec) {
    level notify(#"hash_1cbb37dbc19ef261");
    if (isdefined(var_8764771)) {
        if (!isarray(var_8764771)) {
            var_8764771 = [var_8764771];
        }
        foreach (str in var_8764771) {
            level thread function_3b72c20(str);
        }
    }
    if (isdefined(var_64fdcdec)) {
        if (!isarray(var_64fdcdec)) {
            var_64fdcdec = [var_64fdcdec];
        }
        foreach (str in var_64fdcdec) {
            level thread function_35fdfa10(str);
        }
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0x71f66e10, Offset: 0x26f8
// Size: 0xd0
function function_3b72c20(str_targetname) {
    a_t = getentarray(str_targetname, "targetname");
    foreach (t in a_t) {
        t thread function_4f1192f6();
        /#
            t thread function_bc0a80c();
        #/
    }
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x2 linked
// Checksum 0xd9994d78, Offset: 0x27d0
// Size: 0x4c
function function_4f1192f6() {
    self triggerenable(1);
    level waittill(#"hash_1cbb37dbc19ef261");
    self triggerenable(0);
}

/#

    // Namespace hms_util/hms_util
    // Params 0, eflags: 0x0
    // Checksum 0xc8f3d23c, Offset: 0x2828
    // Size: 0xbe
    function function_bc0a80c() {
        level endon(#"hash_1cbb37dbc19ef261");
        while (true) {
            if (isdefined(getdvar(#"hash_5783d5fbedee8801")) && !getdvar(#"hash_5783d5fbedee8801")) {
                self triggerenable(0);
                waitframe(1);
                continue;
            } else {
                self triggerenable(1);
            }
            waitframe(1);
        }
    }

#/

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0xfad6f4dd, Offset: 0x28f0
// Size: 0xb8
function function_35fdfa10(str_targetname) {
    a_vol = getentarray(str_targetname, "targetname");
    foreach (vol in a_vol) {
        level thread function_d0f58bc6(vol);
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0xd8bea6ad, Offset: 0x29b0
// Size: 0x106
function function_d0f58bc6(vol) {
    level endon(#"hash_1cbb37dbc19ef261");
    level.player endon(#"death");
    while (true) {
        /#
            if (isdefined(getdvar(#"hash_5783d5fbedee8801")) && !getdvar(#"hash_5783d5fbedee8801")) {
                waitframe(1);
                continue;
            }
        #/
        if (level.player istouching(vol)) {
            util::function_2a8f4806(#"hash_4ee2d7dccb9b2b02");
            level notify(#"hash_1cbb37dbc19ef261");
            break;
        }
        waitframe(1);
    }
}

// Namespace hms_util/hms_util
// Params 5, eflags: 0x0
// Checksum 0xc379b84d, Offset: 0x2ac0
// Size: 0x2ba
function function_b72c5f95(var_7b23aa51 = 400, var_4e0e5493 = 250, var_e58f924c = 250, var_b8c7d3b1 = 10, var_e4ea7483 = 0) {
    self endon(#"death", #"hash_5b54b2be0ce0cc0c");
    while (true) {
        wait(randomfloatrange(0.25, 1.25));
        if (!isalive(level.player)) {
            break;
        }
        var_91d1913b = distance2d(self.origin, level.player.origin);
        if (var_91d1913b < var_7b23aa51) {
            /#
                if (var_e4ea7483) {
                    iprintlnbold(var_91d1913b);
                }
            #/
            continue;
        }
        var_dd1c8802 = anglestoforward(level.player.angles);
        if (level.player issprinting()) {
            var_9489a1b6 = var_4e0e5493 * 3;
        } else {
            var_9489a1b6 = var_4e0e5493;
        }
        var_efe6e9a0 = level.player.origin + var_dd1c8802 * var_9489a1b6;
        /#
            if (var_e4ea7483) {
                sphere(var_efe6e9a0, 10, (1, 0, 0), 0.5, 0, 20, 60);
                circle(var_efe6e9a0, var_e58f924c, (1, 0, 0), 0, 1, 60);
            }
        #/
        var_c412903e = getrandomnavpoint(var_efe6e9a0, var_e58f924c, self getpathfindingradius());
        if (isdefined(var_c412903e)) {
            self setgoal(var_c412903e, 1);
            self waittilltimeout(var_b8c7d3b1, #"goal");
        }
    }
}

// Namespace hms_util/hms_util
// Params 4, eflags: 0x0
// Checksum 0xbed83688, Offset: 0x2d88
// Size: 0x796
function function_d370236e(target, var_7b23aa51 = 500, var_e544dc47 = 400, tacquery = "ally_follow_player_tacquery") {
    self endon(#"death", #"hash_5b54b2be0ce0cc0c");
    coverdirection = undefined;
    var_5134ce37 = 0;
    self childthread function_c68d3621(target, var_7b23aa51);
    while (true) {
        if (!isalive(target)) {
            self function_a4a30cfd();
            return;
        }
        var_9a396209 = isdefined(self.combatstate) && self.combatstate == "combat_state_in_combat";
        if (var_9a396209 && isdefined(self.enemy) && isalive(self.enemy)) {
            coverdirection = vectornormalize(self.enemy.origin - self.origin);
            var_5134ce37 = 1;
        } else if (!var_5134ce37) {
            coverdirection = vectornormalize(target.origin - self.origin);
        }
        if (var_9a396209) {
            self.avoid_cover = undefined;
            self setgoal(target.origin, 0, var_e544dc47);
            self notify(#"hash_3ff11304576a123a");
            result = self waittill(#"hash_4f2aaaef2327c2a9", #"hash_1c5b621b87bcbdc6");
            /#
                if (getdvarint(#"hash_7f1fd7271ba70c67", 0) == 1) {
                    if (result._notify == #"hash_4f2aaaef2327c2a9") {
                        record3dtext("<unknown string>", self.origin + (0, 0, 32), (1, 1, 1));
                    } else if (result._notify == #"hash_1c5b621b87bcbdc6") {
                        record3dtext("<unknown string>", self.origin + (0, 0, 32), (1, 1, 1));
                    }
                }
            #/
            continue;
        }
        var_15efcda0 = target.origin + coverdirection * 1000;
        var_5f67409 = target.origin + anglestoforward(target.angles) * 1000;
        tacpoints = tacticalquery(tacquery, target, self, var_15efcda0, var_5f67409);
        /#
            if (getdvarint(#"hash_7f1fd7271ba70c67", 0) == 1) {
                recordcircle(target.origin, 500, (1, 1, 1), "<unknown string>", self);
                recordcircle(target.origin, 100, (1, 0, 0), "<unknown string>", self);
                recordcircle(target.origin, 25, (1, 0, 1), "<unknown string>", self);
                recordline(target.origin, var_15efcda0, (1, 0, 0), "<unknown string>", self);
                recordline(target.origin, var_5f67409, (1, 0, 1), "<unknown string>", self);
            }
        #/
        pickedpoint = undefined;
        var_be34b5c6 = undefined;
        if (isdefined(tacpoints)) {
            if (tacpoints.size == 0) {
                pickedpoint = getrandomnavpoint(target.origin, var_7b23aa51, self getpathfindingradius());
                if (!isdefined(pickedpoint)) {
                    pickedpoint = target.origin;
                }
            } else {
                foreach (tacpoint in tacpoints) {
                    if (!self isposinclaimedlocation(tacpoint.origin)) {
                        pickedpoint = tacpoint.origin;
                        var_be34b5c6 = tacpoint.node;
                        break;
                    }
                }
            }
        }
        if (isdefined(pickedpoint)) {
            pickedpoint = getclosestpointonnavmesh(pickedpoint, 64, 16);
            if (isdefined(pickedpoint)) {
                self notify(#"hash_3ff11304576a123a");
                if (isdefined(var_be34b5c6)) {
                    self.avoid_cover = undefined;
                    self setgoal(var_be34b5c6, 1);
                } else {
                    self.avoid_cover = 1;
                    self setgoal(pickedpoint, 1);
                    self childthread function_8b562a1(target, pickedpoint);
                }
                result = self waittill(#"hash_4f2aaaef2327c2a9", #"hash_1c5b621b87bcbdc6");
                /#
                    if (getdvarint(#"hash_7f1fd7271ba70c67", 0) == 1) {
                        if (result._notify == #"hash_4f2aaaef2327c2a9") {
                            record3dtext("<unknown string>", self.origin + (0, 0, 32), (1, 1, 1));
                        } else if (result._notify == #"hash_1c5b621b87bcbdc6") {
                            record3dtext("<unknown string>", self.origin + (0, 0, 32), (1, 1, 1));
                        }
                    }
                #/
                continue;
            }
        }
        self setgoal(self.origin, 0, var_e544dc47);
        wait(2);
    }
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x2 linked
// Checksum 0xf0b59694, Offset: 0x3528
// Size: 0x1e
function function_a4a30cfd() {
    self.avoid_cover = undefined;
    self notify(#"hash_5b54b2be0ce0cc0c");
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x2 linked
// Checksum 0x45e4fbcb, Offset: 0x3550
// Size: 0x164
function function_8b562a1(target, pickedpoint) {
    self endon(#"death", #"hash_3ff11304576a123a", #"hash_5b54b2be0ce0cc0c");
    while (distance2dsquared(pickedpoint, self.origin) > 16384) {
        waitframe(1);
    }
    var_713b0ea4 = generatenavmeshpath(pickedpoint, target.origin, self);
    if (isdefined(var_713b0ea4.pathpoints) && isdefined(var_713b0ea4.pathpoints[1])) {
        var_7aeb1d95 = var_713b0ea4.pathpoints[1] - pickedpoint;
    } else {
        var_7aeb1d95 = target.origin - pickedpoint;
    }
    var_7aeb1d95 = vectornormalize((var_7aeb1d95[0], var_7aeb1d95[1], 0));
    faceangles = vectortoangles(var_7aeb1d95);
    self setgoal(pickedpoint, 1, undefined, undefined, faceangles);
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x2 linked
// Checksum 0x305e660, Offset: 0x36c0
// Size: 0x204
function function_c68d3621(target, var_7b23aa51) {
    self endon(#"death", #"hash_5b54b2be0ce0cc0c");
    incombat = 0;
    startposition = target.origin;
    var_b7c3473e = gettime();
    while (isalive(target)) {
        waitframe(1);
        if (!isalive(target)) {
            break;
        }
        distancetotargetsq = distance2dsquared(startposition, target.origin);
        if (util::time_has_passed(var_b7c3473e, 1.5)) {
            var_713b0ea4 = generatenavmeshpath(startposition, target.origin, self);
            if (isdefined(var_713b0ea4) && isdefined(var_713b0ea4.pathdistance)) {
                distancetotargetsq = var_713b0ea4.pathdistance * var_713b0ea4.pathdistance;
            }
            var_b7c3473e = gettime();
        }
        if (distancetotargetsq > var_7b23aa51 * var_7b23aa51) {
            self notify(#"hash_4f2aaaef2327c2a9");
            startposition = target.origin;
            continue;
        }
        var_9a396209 = isdefined(self.combatstate) && self.combatstate == "combat_state_in_combat";
        var_8d755a9a = !incombat && var_9a396209;
        incombat = var_9a396209;
        if (var_8d755a9a) {
            self notify(#"hash_1c5b621b87bcbdc6");
            continue;
        }
    }
    self function_a4a30cfd();
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0x61b5e226, Offset: 0x38d0
// Size: 0xd4
function function_150e9e66(b_on = 1) {
    self vehicle::toggle_tread_fx(b_on);
    self vehicle::toggle_exhaust_fx(b_on);
    self vehicle::toggle_sounds(b_on);
    if (b_on) {
        self vehicle::lights_on();
        self setrotorspeed(1);
        return;
    }
    self vehicle::lights_off();
    self setrotorspeed(0);
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0xb08e2d0d, Offset: 0x39b0
// Size: 0x52
function function_e1015abd() {
    v_angles = (randomfloatrange(0, 360), randomfloatrange(0, 360), 0);
    return anglestoforward(v_angles);
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0x1a12961d, Offset: 0x3a10
// Size: 0x3a
function function_b649cf93() {
    v_angles = (0, randomfloatrange(0, 360), 0);
    return anglestoforward(v_angles);
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0xcac7a402, Offset: 0x3a58
// Size: 0x4a
function function_23271c2f(str_team) {
    assert(isai(self), "<unknown string>");
    self.team = str_team;
}

// Namespace hms_util/hms_util
// Params 4, eflags: 0x40
// Checksum 0x42343321, Offset: 0x3ab0
// Size: 0x222
function function_477de16b(var_b5311063, name_or_spawners, spawn_func, ...) {
    if (var_b5311063 <= 0) {
        return;
    }
    spawners = [];
    if (isstring(name_or_spawners)) {
        spawners = getspawnerarray(name_or_spawners, "targetname");
        assert(spawners.size, "<unknown string>" + name_or_spawners + "<unknown string>");
    } else {
        if (!isdefined(name_or_spawners)) {
            name_or_spawners = [];
        } else if (!isarray(name_or_spawners)) {
            name_or_spawners = array(name_or_spawners);
        }
        spawners = name_or_spawners;
    }
    a_spawned = [];
    bforcespawn = vararg[5];
    foreach (index, sp in spawners) {
        if (index >= var_b5311063) {
            break;
        }
        e_spawned = sp spawner::spawn(bforcespawn);
        if (isdefined(e_spawned)) {
            if (isdefined(spawn_func)) {
                util::single_thread_argarray(e_spawned, spawn_func, vararg);
            }
            if (!isdefined(a_spawned)) {
                a_spawned = [];
            } else if (!isarray(a_spawned)) {
                a_spawned = array(a_spawned);
            }
            a_spawned[a_spawned.size] = e_spawned;
        }
    }
    return a_spawned;
}

// Namespace hms_util/hms_util
// Params 4, eflags: 0x0
// Checksum 0xcb2d332, Offset: 0x3ce0
// Size: 0x7a
function function_65ec34cf(n_value, n_step, n_min, n_max) {
    n_new_value = n_value + n_step;
    n_size = n_max - n_min + 1;
    if (n_new_value < n_min) {
        n_new_value += n_size;
    } else if (n_new_value > n_max) {
        n_new_value -= n_size;
    }
    return n_new_value;
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x0
// Checksum 0xb753770a, Offset: 0x3d68
// Size: 0x4c
function function_7051ec77(var_adbdb929, value) {
    self endon(#"death");
    while (self [[ var_adbdb929 ]]() !== value) {
        wait(0.1);
    }
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x0
// Checksum 0xd2090ee5, Offset: 0x3dc0
// Size: 0xd8
function function_a7607f(var_b6423927, str_key) {
    a_new = [];
    foreach (thing in var_b6423927) {
        assert(isdefined(thing.(str_key)), "<unknown string>" + str_key);
        a_new[thing.(str_key)] = thing;
    }
    return a_new;
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0x46437e64, Offset: 0x3ea0
// Size: 0x15c
function function_ad6fd59c(var_a81df2cc = 1) {
    a_weapons = self getweaponslist();
    if (var_a81df2cc) {
        foreach (weapon in a_weapons) {
            if (weapon.islethalgrenade) {
                return weapon;
            }
        }
        return;
    }
    foreach (weapon in a_weapons) {
        if (weapon.istacticalgrenade || weapon.name === #"hash_364914e1708cb629") {
            return weapon;
        }
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0x6872a08d, Offset: 0x4008
// Size: 0x98
function function_f9279027(a_w_test) {
    foreach (w_test in a_w_test) {
        if (self hasweapon(w_test)) {
            return w_test;
        }
    }
}

// Namespace hms_util/hms_util
// Params 4, eflags: 0x0
// Checksum 0x7a59881e, Offset: 0x40b0
// Size: 0xc8
function function_9af8437c(var_ce6e52bd, var_c412903e, var_b7925ab5 = "shutoff_ally_follow_state", var_9be70610 = 0) {
    foreach (var_5ea01470 in self) {
        var_5ea01470 function_2f50100e(var_ce6e52bd, var_c412903e, var_b7925ab5, var_9be70610);
    }
}

// Namespace hms_util/hms_util
// Params 4, eflags: 0x2 linked
// Checksum 0x2bb0f06, Offset: 0x4180
// Size: 0x478
function function_2f50100e(var_ce6e52bd, var_c412903e, var_b7925ab5 = "shutoff_ally_follow_state", var_9be70610 = 0) {
    self endoncallback(&function_3f51d85c, #"death", var_b7925ab5);
    self notify("1298b0818e0c5635");
    self endon("1298b0818e0c5635");
    if (!isdefined(self.var_dfd2d506)) {
        self.var_dfd2d506 = 1;
    }
    self function_9ae1c50();
    switch (var_ce6e52bd) {
    case #"hash_4ad8a881d34f1061":
        var_9bf924b8 = -250;
        var_889e45c = -650;
        var_e5ba320e = -1050;
        break;
    case #"hash_35ece8f44b3ec269":
        var_9bf924b8 = 500;
        var_889e45c = 0;
        var_e5ba320e = -500;
        break;
    case #"hash_a78417145803116":
        var_9bf924b8 = 1050;
        var_889e45c = 650;
        var_e5ba320e = 250;
        break;
    default:
        assert(1, "<unknown string>");
        break;
    }
    var_2431c996 = 0;
    var_f8a9678c = undefined;
    str_current = undefined;
    while (true) {
        if (is_true(self.var_dfd2d506)) {
            if (var_9be70610) {
                var_8000281 = distance(self.origin, var_c412903e);
                var_96e16c65 = distance(level.player.origin, var_c412903e);
            } else {
                var_8000281 = distance2d(self.origin, var_c412903e);
                var_96e16c65 = distance2d(level.player.origin, var_c412903e);
            }
            n_distance = var_96e16c65 - var_8000281;
            if (n_distance > var_9bf924b8) {
                if (var_f8a9678c === "walk") {
                    var_2431c996 += 0.1;
                } else {
                    var_f8a9678c = "walk";
                    var_2431c996 = 0;
                }
            } else if (n_distance > var_889e45c) {
                if (var_f8a9678c === "jog") {
                    var_2431c996 += 0.1;
                } else {
                    var_f8a9678c = "jog";
                    var_2431c996 = 0;
                }
            } else if (n_distance > var_e5ba320e) {
                if (var_f8a9678c === "run") {
                    var_2431c996 += 0.1;
                } else {
                    var_f8a9678c = "run";
                    var_2431c996 = 0;
                }
            } else if (var_f8a9678c === "sprint") {
                var_2431c996 += 0.1;
            } else {
                var_f8a9678c = "sprint";
                var_2431c996 = 0;
            }
            if (var_2431c996 >= 1 && (!isdefined(str_current) || str_current != var_f8a9678c)) {
                /#
                    if (getdvarint(#"hash_4b1b931855fe49c3", 0)) {
                        iprintlnbold("<unknown string>" + var_f8a9678c);
                    }
                #/
                str_current = var_f8a9678c;
                if (var_f8a9678c == "sprint") {
                    self setdesiredspeed(265);
                } else {
                    self setdesiredspeed(var_f8a9678c);
                }
            }
        }
        wait(0.1);
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x6 linked
// Checksum 0x4726415d, Offset: 0x4600
// Size: 0x24
function private function_3f51d85c(*notifyhash) {
    self function_9ae1c50();
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0x28911894, Offset: 0x4630
// Size: 0x8c
function function_65d14a19(weapon) {
    assert(weapon != level.weaponnone, "<unknown string>");
    self aiutility::setprimaryweapon(weapon);
    self ai::gun_remove();
    self ai::gun_switchto(weapon, "right");
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x0
// Checksum 0xef392f18, Offset: 0x46c8
// Size: 0x1dc
function throw_grenade(v_target, var_9ff6ef8f = 0) {
    assert(isai(self), "<unknown string>");
    assert(isvec(v_target), "<unknown string>");
    self endon(#"death");
    if (self flag::get(#"hash_4f3df395433095a1")) {
        /#
            print("<unknown string>");
        #/
        return;
    }
    self flag::set(#"hash_4f3df395433095a1");
    if (!isdefined(self.grenadeammo)) {
        self.grenadeammo = 0;
    }
    if (self.grenadeammo == 0 && var_9ff6ef8f) {
        self.grenadeammo = 1;
    }
    if (self.grenadeammo != 0) {
        self.var_38754eac = v_target;
        while (true) {
            var_29b8f3d0 = self waittill(#"bhtn_action_terminate");
            if (var_29b8f3d0.action === #"grenade") {
                break;
            }
        }
        self.var_38754eac = undefined;
    }
    self flag::clear(#"hash_4f3df395433095a1");
}

// Namespace hms_util/hms_util
// Params 5, eflags: 0x0
// Checksum 0x95a99cee, Offset: 0x48b0
// Size: 0x590
function function_b064d2a4(var_6bb4ec43, var_c412903e, var_b7925ab5 = "shutoff_player_dynamic_speedscaling", var_2b536bb3 = 1, var_9be70610 = 0) {
    level endoncallback(&function_10e1aa28, var_b7925ab5);
    level.player endoncallback(&function_10e1aa28, var_b7925ab5, #"death");
    self notify("4f7b6d405030a1a6");
    self endon("4f7b6d405030a1a6");
    e_player = level.player;
    if (var_2b536bb3 < 0) {
        var_2b536bb3 = 0;
    } else if (var_2b536bb3 > 1) {
        var_2b536bb3 = 1;
    }
    e_player.var_7cb8999 = var_2b536bb3;
    switch (var_6bb4ec43) {
    case #"walk":
        var_133f0647 = 0.5;
        var_b89dea0e = 0.55;
        var_e7783b69 = 0.6;
        var_c7d0242c = 0.65;
        var_270ea048 = 0.7;
        var_9658ea43 = 50;
        var_f7abe58 = 75;
        var_3ebb2225 = 100;
        var_d67a7d0a = 125;
        break;
    case #"jog":
        var_133f0647 = 0.6;
        var_b89dea0e = 0.65;
        var_e7783b69 = 0.7;
        var_c7d0242c = 0.75;
        var_270ea048 = 0.8;
        var_9658ea43 = 100;
        var_f7abe58 = 135;
        var_3ebb2225 = 170;
        var_d67a7d0a = 205;
        break;
    case #"run":
        var_133f0647 = 0.7;
        var_b89dea0e = 0.75;
        var_e7783b69 = 0.8;
        var_c7d0242c = 0.85;
        var_270ea048 = 0.9;
        var_9658ea43 = 150;
        var_f7abe58 = 195;
        var_3ebb2225 = 240;
        var_d67a7d0a = 285;
        break;
    case #"sprint":
        var_133f0647 = 0.8;
        var_b89dea0e = 0.85;
        var_e7783b69 = 0.9;
        var_c7d0242c = 0.95;
        var_270ea048 = 1;
        var_9658ea43 = 200;
        var_f7abe58 = 255;
        var_3ebb2225 = 310;
        var_d67a7d0a = 365;
        break;
    default:
        assert(1, "<unknown string>");
        break;
    }
    var_ab3e25a2 = e_player getmovespeedscale();
    var_7d7ccfc0 = 0;
    while (true) {
        if (var_9be70610 == 1) {
            var_d85a63f6 = distance(e_player.origin, var_c412903e);
            var_d1764ea = distance(self.origin, var_c412903e);
        } else {
            var_d85a63f6 = distance2d(e_player.origin, var_c412903e);
            var_d1764ea = distance2d(self.origin, var_c412903e);
        }
        var_2b5e41bc = var_d85a63f6 - var_d1764ea;
        if (var_2b5e41bc < 0) {
            e_player flag::set("player_is_ahead_of_ally");
        } else {
            e_player flag::clear("player_is_ahead_of_ally");
        }
        if (var_2b5e41bc > var_d67a7d0a) {
            var_7d7ccfc0 = var_270ea048;
        } else if (var_2b5e41bc < var_9658ea43) {
            var_7d7ccfc0 = var_133f0647;
        } else if (var_2b5e41bc < var_f7abe58) {
            var_7d7ccfc0 = var_b89dea0e;
        } else if (var_2b5e41bc < var_3ebb2225) {
            var_7d7ccfc0 = var_e7783b69;
        } else if (var_2b5e41bc < var_d67a7d0a) {
            var_7d7ccfc0 = var_c7d0242c;
        }
        if (var_7d7ccfc0 != var_ab3e25a2) {
            n_diff = var_7d7ccfc0 - var_ab3e25a2;
            if (n_diff < 0) {
                n_diff *= -1;
            }
            var_90533e10 = n_diff / 0.2 / 4;
            var_56345404 = 0.5 * var_90533e10;
            var_ab3e25a2 = var_7d7ccfc0;
            e_player util::blend_movespeedscale(var_7d7ccfc0, var_56345404);
        }
        wait(0.1);
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0x67e25593, Offset: 0x4e48
// Size: 0x126
function function_10e1aa28(str_notify) {
    if (isdefined(str_notify) && str_notify != "death") {
        n_diff = level.player getmovespeedscale() - level.player.var_7cb8999;
        if (n_diff < 0) {
            n_diff *= -1;
        }
        var_90533e10 = n_diff / 0.2 / 4;
        var_56345404 = 0.5 * var_90533e10;
        if (var_56345404 < 0.1) {
            var_56345404 = 0.1;
        } else if (var_56345404 > 2) {
            var_56345404 = 2;
        }
        level.player util::blend_movespeedscale(level.player.var_7cb8999, var_56345404);
        level.player.var_7cb8999 = undefined;
    }
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x0
// Checksum 0xe167bc84, Offset: 0x4f78
// Size: 0x9c
function function_40e4ae8e(str_hint, var_3d455c82) {
    self endon(#"death");
    self util::create_cursor_hint(undefined, undefined, str_hint, undefined, 0.25, undefined, undefined, undefined, undefined, 1, 1, 1);
    self waittill(#"interact");
    self [[ var_3d455c82 ]]();
    self delete();
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0x4cba8ecb, Offset: 0x5020
// Size: 0x122
function function_17fe30b7() {
    assert(isweapon(self), "<unknown string>");
    var_3f2655c9 = array(getweapon(#"hash_165cf52ce418f5a1"), getweapon(#"hash_40a11ca4961bb778"), getweapon(#"hash_40a11da4961bb92b"), getweapon(#"hash_40a122a4961bc1aa"), getweapon(#"hash_40a123a4961bc35d"), getweapon(#"hash_40a120a4961bbe44"));
    return array::contains(var_3f2655c9, self);
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0xed39717f, Offset: 0x5150
// Size: 0x10c
function function_1062a852() {
    if (isdefined(self.mod)) {
        str_mod = self.mod;
    } else if (isdefined(self.smeansofdeath)) {
        str_mod = self.smeansofdeath;
    }
    if (isdefined(str_mod) && (str_mod == "MOD_GRENADE_SPLASH" || str_mod == "MOD_GRENADE" || str_mod == "MOD_EXPLOSIVE" || str_mod == "MOD_PROJECTILE_SPLASH")) {
        if (isdefined(self.weapon) && self.weapon is_tactical_grenade()) {
            return 0;
        } else {
            return 1;
        }
        return;
    }
    if (isdefined(self.weapon) && self.weapon.weapclass === "rocketlauncher") {
        return 1;
    }
    return 0;
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x2 linked
// Checksum 0x5031120d, Offset: 0x5268
// Size: 0x48
function is_tactical_grenade() {
    if (self.weapclass === "grenade" && !is_true(self.islethalgrenade)) {
        return 1;
    }
    return 0;
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0x4ebe8ddc, Offset: 0x52b8
// Size: 0xd2
function function_ca8302de() {
    var_7f025395 = "tag_fx_turret_spotlight";
    var_4776255f = self gettagorigin(var_7f025395);
    var_4ae95b10 = self gettagangles(var_7f025395);
    self.var_21c17c08 = spawn("script_model", var_4776255f);
    self.var_21c17c08 linkto(self, var_7f025395);
    self.var_21c17c08.team = "axis";
    self.var_21c17c08.name = "APC loudspeaker";
    self.var_21c17c08.speaking = 0;
}

// Namespace hms_util/hms_util
// Params 3, eflags: 0x0
// Checksum 0xb341e93c, Offset: 0x5398
// Size: 0x120
function function_a3bb1e9c(var_300847ca, var_a5a6c25b = "at_player", var_94e307c = undefined) {
    var_127d9a14 = vehicle::simple_spawn_single(var_300847ca);
    var_127d9a14 util::magic_bullet_shield();
    var_127d9a14.script_team = "axis";
    var_127d9a14 val::set(#"hash_785b0f56c5de70e2", "ignoreme", 1);
    if (isdefined(var_94e307c)) {
        var_127d9a14 turret::_init_turret(var_94e307c);
        var_127d9a14 thread function_c21ef1d8(var_a5a6c25b);
    } else if (!level flag::get("cp_hms_ai_test_chamber")) {
        var_127d9a14 thread function_52791e07(var_a5a6c25b);
    }
    return var_127d9a14;
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x0
// Checksum 0x8d4c6886, Offset: 0x54c0
// Size: 0x1a4
function function_7b8ccc06() {
    level flag::wait_till("flg_amk_player_spawned");
    var_467de2d4 = (0, 0, 5);
    self turret::enable(0, 0, var_467de2d4);
    self turret::set_burst_parameters(5, 10, 0.2, 0.4, 0);
    self turret::set_target(level.player, (0, 0, 5), 0);
    self turret::function_49c3b892(level.player, 0);
    self turret::function_41c79ce4(0, 0);
    self turret::set_ignore_line_of_sight(1, 0);
    self turret::function_8bbe7822(1, 0);
    self turret::set_on_target_angle(1, 0);
    self turret::function_3e5395(0.5, 0);
    self turret::function_f5e3e1de(0, 0);
    self turret::function_9c04d437(0);
    self turret::function_14223170(0);
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x2 linked
// Checksum 0xdb3021ef, Offset: 0x5670
// Size: 0x96c
function function_c21ef1d8(var_a5a6c25b = "shoot_player", target = undefined) {
    level flag::wait_till("flg_amk_player_spawned");
    s_turret = self.a_turrets[0];
    self.var_df85ad4e = var_a5a6c25b;
    self turret::clear_target(0);
    switch (var_a5a6c25b) {
    case #"scripted":
        if (isdefined(target)) {
            self turret::set_target(target, (0, 0, 0), 0, 1, 1);
        }
        self turret::function_49c3b892(undefined, 0);
        self turret::function_41c79ce4(1, 0);
        self turret::set_on_target_angle(0.1, 0);
        self turret::set_ignore_line_of_sight(1, 0);
        self turret::function_8bbe7822(1, 0);
        self turret::function_f5e3e1de(0, 0);
        self turret::function_9c04d437(1, 0);
        self turret::function_14223170(0);
        break;
    case #"suspend":
        self turret::set_target(level.player, (0, 0, 5), 0, 1);
        self turret::function_49c3b892(level.player, 0);
        self turret::set_on_target_angle(0.5, 0);
        self turret::set_ignore_line_of_sight(1, 0);
        self turret::function_8bbe7822(1, 0);
        self turret::function_f5e3e1de(1, 0);
        self turret::function_9c04d437(1, 0);
        self turret::function_14223170(0);
        break;
    case #"hash_263828d1b73f1c88":
        self turret::set_target(level.var_9ee055a8, (0, 0, 96), 0, 1);
        self turret::function_49c3b892(level.player, 0);
        self turret::function_41c79ce4(0, 0);
        self turret::set_on_target_angle(3, 0);
        self turret::set_ignore_line_of_sight(0, 0);
        self turret::function_8bbe7822(0, 0);
        self turret::function_f5e3e1de(1, 0);
        self turret::function_21827343(0);
        self turret::function_14223170(0);
        break;
    case #"hash_5dd6ef287ce43edd":
        self turret::set_target(level.var_9ee055a8, (0, 0, 96), 0, 1);
        self turret::function_49c3b892(level.player, 0);
        self turret::function_41c79ce4(0, 0);
        self turret::set_on_target_angle(2, 0);
        self turret::set_ignore_line_of_sight(1, 0);
        self turret::function_8bbe7822(1, 0);
        self turret::function_f5e3e1de(0, 0);
        self turret::function_21827343(0);
        self turret::function_14223170(0);
        break;
    case #"miss_player":
        self turret::set_target(level.player, (0, 0, 5), 0, 1);
        self turret::function_49c3b892(level.player, 0);
        self turret::function_41c79ce4(0, 0);
        self turret::set_on_target_angle(2.5, 0);
        self turret::set_ignore_line_of_sight(1, 0);
        self turret::function_8bbe7822(1, 0);
        self turret::function_f5e3e1de(1, 0);
        self turret::function_21827343(0);
        self turret::function_14223170(0);
        break;
    case #"kill_player":
        self turret::set_target(level.player, (0, 0, 5), 0, 1);
        self turret::function_49c3b892(level.player, 0);
        self turret::function_41c79ce4(1, 0);
        self turret::set_on_target_angle(0.5, 0);
        self turret::set_ignore_line_of_sight(1, 0);
        self turret::function_8bbe7822(1, 0);
        self turret::function_f5e3e1de(0, 0);
        self turret::function_21827343(0);
        self turret::function_14223170(0);
        break;
    case #"hash_481e638762e002ff":
        self turret::set_target(level.player, (0, 0, 5), 0, 1);
        self turret::function_49c3b892(level.player, 0);
        self turret::function_41c79ce4(0, 0);
        self turret::set_on_target_angle(1.5, 0);
        self turret::set_ignore_line_of_sight(0, 0);
        self turret::function_8bbe7822(1, 0);
        self turret::function_f5e3e1de(1, 0);
        self turret::function_21827343(0);
        self turret::function_14223170(0);
        break;
    case #"shoot_player":
    default:
        self turret::set_target(level.player, (0, 0, 5), 0, 1);
        self turret::function_49c3b892(level.player, 0);
        self turret::function_41c79ce4(0, 0);
        self turret::set_on_target_angle(1, 0);
        self turret::set_ignore_line_of_sight(1, 0);
        self turret::function_8bbe7822(1, 0);
        self turret::function_f5e3e1de(0, 0);
        self turret::function_21827343(0);
        self turret::function_14223170(0);
        break;
    }
    println("<unknown string>" + var_a5a6c25b);
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0xbc93aa32, Offset: 0x5fe8
// Size: 0x35c
function function_52791e07(var_a5a6c25b = "default") {
    self endon(#"death");
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    var_c197f9aa = "tag_flash";
    var_e3dd3903 = getweapon(#"hash_161ca1bfb05ce95c");
    var_4bc3c7b8 = 0.2;
    var_23058d7f = 20;
    var_12588ac8 = 3;
    var_651ba909 = 100;
    var_539ee6be = 0;
    var_7c968886 = 50;
    var_41e56412 = 0;
    var_34175fc3 = 10;
    var_ee8c7f3 = 0;
    var_a0d9a106 = 100;
    v_offset = (0, 0, 0);
    self.var_df85ad4e = var_a5a6c25b;
    var_64c006fe = 0;
    while (true) {
        if (self.var_df85ad4e == "suspend" || self.var_df85ad4e == "scripted") {
            wait(0.5);
            continue;
        }
        for (i = 0; i < var_23058d7f; i++) {
            var_1c8839e = self gettagorigin(var_c197f9aa) + (0, 0, 32);
            var_a6be6a4f = undefined;
            var_64c006fe = sighttracepassed(var_1c8839e, level.player getplayercamerapos(), 0, undefined);
            var_41e56412 = math::clamp(var_41e56412 + function_a1bfd89d(var_64c006fe), var_34175fc3 * -1, var_34175fc3);
            var_7c968886 = math::clamp(var_7c968886 + var_41e56412, var_539ee6be, var_651ba909);
            var_ee8c7f3 = var_a0d9a106 - var_7c968886;
            v_offset = var_ee8c7f3 == 0 ? (0, 0, 0) : math::random_vector(var_ee8c7f3);
            var_a6be6a4f = level.player getplayercamerapos() + v_offset;
            if (var_64c006fe == 0) {
                wait(0.5);
                continue;
            }
            assert(isdefined(var_a6be6a4f), "<unknown string>");
            self function_b5da96ca(var_a6be6a4f, 0);
            wait(var_4bc3c7b8);
        }
        wait(var_12588ac8);
    }
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x2 linked
// Checksum 0x1c3d13de, Offset: 0x6350
// Size: 0xc4
function function_a1bfd89d(var_64c006fe) {
    var_8f99bdb4 = 0;
    if (var_64c006fe == 1) {
        if (level.player issprinting()) {
            var_8f99bdb4 = -1;
        }
        stance = level.player getstance();
        if (stance == "crouch") {
            var_8f99bdb4 = 3;
        } else if (stance == "prone") {
            var_8f99bdb4 = 1;
        }
        var_8f99bdb4 = 5;
    } else {
        var_8f99bdb4 = -6;
    }
    return var_8f99bdb4;
}

// Namespace hms_util/hms_util
// Params 4, eflags: 0x2 linked
// Checksum 0x5e84f90d, Offset: 0x6420
// Size: 0x1fc
function function_b5da96ca(var_a6be6a4f, var_94e307c = undefined, var_a9cef3d5 = 1, var_53edfe53) {
    var_e3dd3903 = getweapon(#"hash_161ca1bfb05ce95c");
    if (isdefined(var_94e307c)) {
        self turret::function_aecc6bed([var_a6be6a4f], 1, var_94e307c);
    } else {
        var_c197f9aa = "tag_flash";
        var_8035574f = self gettagorigin(var_c197f9aa);
        var_230ef93a = self gettagangles(var_c197f9aa);
        var_f8fbe014 = anglestoforward(var_230ef93a);
        var_1c8839e = var_8035574f + var_f8fbe014 * 200;
        playfxontag(level._effect[#"hash_7fa91cf654f23aa0"], self, var_c197f9aa);
        magicbullet(var_e3dd3903, var_1c8839e, var_a6be6a4f, self);
    }
    if (var_a9cef3d5 == 1) {
        waitframe(1);
        self thread function_cef95010(var_a6be6a4f, var_53edfe53);
        radiusdamage(var_a6be6a4f, 32, 100, 1, level.player, "MOD_PROJECTILE_SPLASH", var_e3dd3903);
        physicsexplosionsphere(var_a6be6a4f, 32, 1, 1);
    }
}

// Namespace hms_util/hms_util
// Params 2, eflags: 0x2 linked
// Checksum 0xeb437837, Offset: 0x6628
// Size: 0x1f4
function function_cef95010(v_pos, var_53edfe53) {
    if (isdefined(var_53edfe53)) {
        switch (var_53edfe53) {
        case #"wood":
            var_2b13e443 = "fx9_bul_impact_wood_50cal_xlrg";
            var_2f4dfc87 = "exp_facade_debris_wood";
            break;
        case #"concrete":
            var_2b13e443 = "fx9_bul_impact_concrete_strafe_lg";
            var_2f4dfc87 = "exp_facade_debris_concrete";
            break;
        case #"metal":
            var_2b13e443 = "fx9_bul_impact_metal_strafe_lg";
            var_2f4dfc87 = "exp_facade_debris_metal";
            break;
        case #"glass":
            var_2b13e443 = "fx9_bul_impact_glass_lg";
            var_2f4dfc87 = "exp_facade_debris_glass";
            break;
        case #"mannequin":
            var_2b13e443 = "fx9_bul_impact_default_50cal_xlrg";
            var_2f4dfc87 = "exp_facade_debris_mannequin";
            break;
        default:
            var_2b13e443 = "fx9_bul_impact_default_50cal_xlrg";
            var_2f4dfc87 = "exp_facade_debris_concrete";
            break;
        }
    } else {
        var_2b13e443 = "fx9_bul_impact_default_50cal_xlrg";
        var_2f4dfc87 = "exp_facade_debris_concrete";
    }
    var_8035574f = self gettagorigin("tag_flash");
    if (var_53edfe53 === "glass") {
        v_fwd = v_pos - var_8035574f;
    } else {
        v_fwd = var_8035574f - v_pos;
    }
    playfx(level._effect[var_2b13e443], v_pos, v_fwd);
    snd::play(var_2f4dfc87, v_pos);
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x2 linked
// Checksum 0x6372f9d, Offset: 0x6828
// Size: 0xa4
function function_e385b740() {
    level.player val::set(#"player_scene", "show_weapon_hud", 0);
    level.player val::set(#"player_scene", "show_crosshair", 0);
    level.player val::set(#"player_scene", "disable_weapons", 1);
    wait(0.5);
}

// Namespace hms_util/hms_util
// Params 0, eflags: 0x2 linked
// Checksum 0x78f65ff3, Offset: 0x68d8
// Size: 0x2c
function function_6214e16e() {
    level.player val::reset_all(#"player_scene");
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0xe49c5ad8, Offset: 0x6910
// Size: 0x84
function function_78c3826c(str_scene) {
    level.player endon(#"death");
    function_e385b740();
    if (isdefined(str_scene)) {
        level scene::play(str_scene);
    } else {
        self scene::play();
    }
    function_6214e16e();
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0xc9f25e9, Offset: 0x69a0
// Size: 0x5c
function function_22099452(enable) {
    if (enable) {
        aiutility::addaioverridedamagecallback(self, &function_bb142fcc);
        return;
    }
    aiutility::removeaioverridedamagecallback(self, &function_bb142fcc);
}

// Namespace hms_util/hms_util
// Params 13, eflags: 0x2 linked
// Checksum 0x7711a25d, Offset: 0x6a08
// Size: 0xb4
function function_bb142fcc(*einflictor, *eattacker, idamage, *idflags, *smeansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *modelindex) {
    if (is_true(self.var_c48f9f7d) || is_true(self.var_29133295)) {
        modelindex = self.health + 1;
    }
    return modelindex;
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0x916ae473, Offset: 0x6ac8
// Size: 0xc4
function function_e93aa7b3(var_608ada91 = 0.1) {
    var_7df86393 = self getnormalizedcameramovement();
    var_1341634d = var_7df86393[0];
    if (abs(var_1341634d) < var_608ada91) {
        var_1341634d = 0;
    }
    var_f17d1fc5 = var_7df86393[1];
    if (abs(var_f17d1fc5) < var_608ada91) {
        var_f17d1fc5 = 0;
    }
    var_7df86393 = (var_1341634d, var_f17d1fc5, var_7df86393[2]);
    return var_7df86393;
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0x160498a3, Offset: 0x6b98
// Size: 0x24
function function_e9f3f20(var_77bf059) {
    self flag::set(var_77bf059);
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0xa2b48b27, Offset: 0x6bc8
// Size: 0x24
function function_cafa23ec(var_77bf059) {
    self flag::clear(var_77bf059);
}

// Namespace hms_util/hms_util
// Params 1, eflags: 0x0
// Checksum 0xc9fca614, Offset: 0x6bf8
// Size: 0xd6
function function_8b7cb19c(eventstruct) {
    result = 1;
    if (isdefined(eventstruct) && isdefined(eventstruct.action) && isai(self) && self.team == #"allies" && (eventstruct.action == "enemycontact" || eventstruct.action == "exposed")) {
        enemies = self getenemies();
        if (enemies.size == 0) {
            result = 0;
        }
    }
    return result;
}

