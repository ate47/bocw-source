// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using script_789f2367a00401d8;
#using script_437ce686d29bb81b;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using script_2618e0f3e5e11649;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_553954de;

// Namespace namespace_553954de/namespace_553954de
// Params 0, eflags: 0x2 linked
// Checksum 0xf4a153d6, Offset: 0x130
// Size: 0x3c
function function_14bada94() {
    self.var_7aa0d894 = 1;
    self.var_6696e200 = 1;
    self clientfield::set_player_uimodel("hudItems.srOverlayOpen", 1);
}

// Namespace namespace_553954de/namespace_553954de
// Params 0, eflags: 0x2 linked
// Checksum 0x38388abf, Offset: 0x178
// Size: 0x34
function function_548f282() {
    self.var_7aa0d894 = 0;
    self.var_6696e200 = undefined;
    self clientfield::set_player_uimodel("hudItems.srOverlayOpen", 0);
}

// Namespace namespace_553954de/namespace_553954de
// Params 2, eflags: 0x2 linked
// Checksum 0x1414688d, Offset: 0x1b8
// Size: 0x17c
function function_bde08b58(b_success = 1, var_131cc614 = 1) {
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::function_817e4d10(player, 0);
    }
    if (b_success || getdvarint(#"hash_15b141da1584bd0d", 1) == 0) {
        level thread function_8e066676();
        wait(1);
        level globallogic::endgame(#"allies");
        return;
    }
    level.var_1726e2c7 = 1;
    if (var_131cc614) {
        wait(4);
    }
    level thread globallogic::endgame(#"axis");
}

// Namespace namespace_553954de/namespace_553954de
// Params 0, eflags: 0x2 linked
// Checksum 0x9ad7f044, Offset: 0x340
// Size: 0x11e
function function_8e066676() {
    foreach (ai in getaiarray()) {
        if (isalive(ai) && !function_3132f113(ai)) {
            util::stop_magic_bullet_shield(ai);
            ai.allowdeath = 1;
            ai.takedamage = 1;
            ai kill(undefined, undefined, undefined, undefined, undefined, 1);
            waitframe(randomint(3) + 1);
        }
    }
}

// Namespace namespace_553954de/namespace_553954de
// Params 1, eflags: 0x2 linked
// Checksum 0xc6e4e21a, Offset: 0x468
// Size: 0x18c
function function_7c97e961(var_661691aa) {
    assert(isdefined(var_661691aa), "<unknown string>");
    level.var_b48509f9 = var_661691aa;
    setroundsplayed(var_661691aa);
    switch (level.var_b48509f9) {
    case 1:
        level.realm = 1;
        break;
    case 2:
        level.realm = 2;
        break;
    case 3:
    case 4:
        level.realm = 3;
        break;
    case 5:
    case 6:
    case 7:
        level.realm = 4;
        break;
    default:
        level.realm = 5;
        break;
    }
    namespace_ce1f29cc::function_15bf0b91(level.realm);
    callback::callback(#"hash_564379c43286f074");
}

// Namespace namespace_553954de/namespace_553954de
// Params 1, eflags: 0x2 linked
// Checksum 0x46f59334, Offset: 0x600
// Size: 0x214
function function_1aa044d3(map_name) {
    if (is_true(level.var_83e2326)) {
        return;
    }
    level notify(#"hash_80008492ea92df4");
    namespace_cf6efd05::function_ded56b14();
    namespace_cf6efd05::function_c484a9be(#"initialized", 1);
    namespace_cf6efd05::function_c484a9be(#"hash_1601cc3215f4f8b3", level.var_b48509f9);
    foreach (player in getplayers()) {
        if (is_true(player.var_e8bee75e)) {
            player stats::function_d0de7686(#"hash_5da5da5770a64639", 1, #"hash_4edbfffde3c9a22e");
        }
        namespace_cf6efd05::function_42f98bb6(player);
    }
    namespace_cf6efd05::function_9c9d3652();
    level callback::callback(#"hash_540f54ade63017ea");
    level.var_83e2326 = 1;
    switchmap_load(map_name, "");
    level waittilltimeout(25, #"switchmap_preload_finished");
    switchmap_switch();
}

// Namespace namespace_553954de/namespace_553954de
// Params 3, eflags: 0x2 linked
// Checksum 0x7a3e5be3, Offset: 0x820
// Size: 0x100
function function_6e9bb6b5(v_position, n_radius, var_faa5f280) {
    var_55363a21 = {#v_position:v_position, #n_radius:n_radius, #var_faa5f280:var_faa5f280};
    if (!isdefined(level.var_9ff8ac77)) {
        level.var_9ff8ac77 = [];
    } else if (!isarray(level.var_9ff8ac77)) {
        level.var_9ff8ac77 = array(level.var_9ff8ac77);
    }
    if (!isinarray(level.var_9ff8ac77, var_55363a21)) {
        level.var_9ff8ac77[level.var_9ff8ac77.size] = var_55363a21;
    }
}

// Namespace namespace_553954de/namespace_553954de
// Params 1, eflags: 0x2 linked
// Checksum 0x38f1574a, Offset: 0x928
// Size: 0x190
function function_78d9625d(var_faa5f280) {
    if (isarray(level.var_9ff8ac77)) {
        var_a40ff4f = [];
        foreach (var_55363a21 in level.var_9ff8ac77) {
            if (var_55363a21.var_faa5f280 === var_faa5f280) {
                if (!isdefined(var_a40ff4f)) {
                    var_a40ff4f = [];
                } else if (!isarray(var_a40ff4f)) {
                    var_a40ff4f = array(var_a40ff4f);
                }
                var_a40ff4f[var_a40ff4f.size] = var_55363a21;
            }
        }
        foreach (var_afea3d3b in var_a40ff4f) {
            arrayremovevalue(level.var_9ff8ac77, var_afea3d3b);
        }
    }
}

// Namespace namespace_553954de/namespace_553954de
// Params 1, eflags: 0x2 linked
// Checksum 0x45ec2017, Offset: 0xac0
// Size: 0x16c
function function_c1ced485(str_targetname) {
    if (!isstring(str_targetname) && !ishash(str_targetname)) {
        return;
    }
    var_7401ceb0 = struct::get_array(str_targetname);
    foreach (s_backup in var_7401ceb0) {
        if (!isdefined(level.var_273ba18f)) {
            level.var_273ba18f = [];
        } else if (!isarray(level.var_273ba18f)) {
            level.var_273ba18f = array(level.var_273ba18f);
        }
        if (!isinarray(level.var_273ba18f, s_backup)) {
            level.var_273ba18f[level.var_273ba18f.size] = s_backup;
        }
    }
}

// Namespace namespace_553954de/namespace_553954de
// Params 1, eflags: 0x2 linked
// Checksum 0x70ab5246, Offset: 0xc38
// Size: 0x108
function function_118215e2(str_targetname) {
    if (!isarray(level.var_273ba18f)) {
        return;
    }
    if (!isstring(str_targetname) && !ishash(str_targetname)) {
        return;
    }
    var_7401ceb0 = struct::get_array(str_targetname);
    foreach (s_backup in var_7401ceb0) {
        arrayremovevalue(level.var_273ba18f, s_backup);
    }
}

// Namespace namespace_553954de/namespace_553954de
// Params 0, eflags: 0x2 linked
// Checksum 0xaabd63ea, Offset: 0xd48
// Size: 0xe8
function function_d55a8df1() {
    self endon(#"death");
    while (true) {
        self flag::wait_till(#"hash_1e29d85de876dce8");
        if (isdefined(self.var_bb61ee3d)) {
            self namespace_68a80213::damageinfirearea(self.origin, undefined, undefined, getweapon(#"molotov_fire"), self.var_bb61ee3d, undefined, getscriptbundle("molotov_custom_settings"));
            self.var_bb61ee3d = undefined;
            wait(3);
        }
        self flag::clear(#"hash_1e29d85de876dce8");
    }
}

