// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapon_utils.gsc;
#using script_7d0013bbc05623b9;
#using script_52da18c20f45c56a;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace actions;

// Namespace actions/actions
// Params 0, eflags: 0x5
// Checksum 0xc11071bc, Offset: 0x290
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"actions", &preinit, undefined, undefined, undefined);
}

// Namespace actions/actions
// Params 0, eflags: 0x6 linked
// Checksum 0x8cfd7cd5, Offset: 0x2d8
// Size: 0x12c
function private preinit() {
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
    level.var_f467e5b0 = spawnstruct();
    level.var_f467e5b0.actions = [];
    animation::add_global_notetrack_handler("release", &function_303a7a74, 0);
    animation::add_global_notetrack_handler("chain", &function_3af7d065, 0);
    animation::add_global_notetrack_handler("event", &function_ebc59735, 0);
    animation::add_global_notetrack_handler("become_corpse", &action_utility::become_corpse, 0);
    function_9ddfe2d("root");
    callback::on_spawned(&on_player_spawned);
}

// Namespace actions/actions
// Params 0, eflags: 0x2 linked
// Checksum 0xe038e234, Offset: 0x410
// Size: 0xd0
function on_player_spawned() {
    self.var_f467e5b0 = spawnstruct();
    self.var_f467e5b0.enabled = [];
    self.var_f467e5b0.var_13a66c62 = [];
    foreach (action_name, action in level.var_f467e5b0.actions) {
        self function_b0868791(action_name, 1);
    }
}

// Namespace actions/actions
// Params 5, eflags: 0x2 linked
// Checksum 0xec59c143, Offset: 0x4e8
// Size: 0x310
function function_9ddfe2d(action_name, var_7eba8145, parent_name, var_9386e7ce, anim_name) {
    if (!isdefined(parent_name) && action_name != "root") {
        parent_name = "root";
    }
    if (!isdefined(var_9386e7ce)) {
        var_9386e7ce = "a";
    }
    if (!isdefined(anim_name)) {
        anim_name = action_name;
    }
    /#
        if (isdefined(level.var_f467e5b0.actions[action_name]) && level.var_f467e5b0.actions[action_name].var_7eba8145 != var_7eba8145) {
            assertmsg("<unknown string>");
            return;
        }
    #/
    action = spawnstruct();
    action.name = tolower(action_name);
    action.var_9386e7ce = tolower(var_9386e7ce);
    action.anim_name = tolower(anim_name);
    action.ender = "action_end_" + action.name;
    action.children = [];
    action.var_7eba8145 = var_7eba8145;
    level.var_f467e5b0.actions[action_name] = action;
    if (isdefined(parent_name)) {
        if (!isarray(parent_name)) {
            parent_name = [parent_name];
        }
        foreach (parent in parent_name) {
            thread function_ff81e3cc(parent, action_name);
        }
    }
    level notify(#"hash_2fd6623a6dbe43e9", {#action:action_name});
    foreach (player in getplayers()) {
        player function_b0868791(action_name, 1);
    }
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x8662e60a, Offset: 0x800
// Size: 0xec
function function_1028d928(action_name, var_9386e7ce) {
    if (!isdefined(level.var_f467e5b0.actions[action_name])) {
        return false;
    }
    var_9386e7ce = tolower(var_9386e7ce);
    foreach (child in level.var_f467e5b0.actions[action_name].children) {
        if (child.var_9386e7ce == var_9386e7ce) {
            return true;
        }
    }
    return false;
}

// Namespace actions/actions
// Params 4, eflags: 0x0
// Checksum 0xe88eeef1, Offset: 0x8f8
// Size: 0x128
function function_2ecf3fa7(var_5103505d, anim_name, var_17813638, phase) {
    if (!isarray(var_5103505d)) {
        var_5103505d = [var_5103505d];
    }
    foreach (action_name in var_5103505d) {
        key = function_4e61a046(action_name, phase);
        if (isdefined(anim_name)) {
            self.var_9d46265b[key] = [anim_name, var_17813638];
            continue;
        }
        self.var_9d46265b[key] = undefined;
    }
}

// Namespace actions/actions
// Params 0, eflags: 0x0
// Checksum 0xc1e5d9b, Offset: 0xa28
// Size: 0xe
function function_bf28d531() {
    self.var_9d46265b = undefined;
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0xc283ccad, Offset: 0xa40
// Size: 0x31e
function function_b1543a9d(anim_name, animset) {
    var_4f3681cc = getscriptbundle(animset);
    if (!isdefined(var_4f3681cc)) {
        assertmsg("<unknown string>" + animset + "<unknown string>");
        return;
    }
    assert(var_4f3681cc.type == "<unknown string>");
    assert(isdefined(level.var_f467e5b0));
    foreach (group in var_4f3681cc.animset) {
        foreach (index, animentry in group.anims) {
            entryname = anim_name + "_" + group.name;
            if (group.anims.size > 1) {
                entryname = entryname + "_" + index + 1;
            }
            level.var_f467e5b0.anims[group.animname][entryname] = animentry.xanim;
            if (group.blend !== 0.2) {
                level.var_f467e5b0.blend[group.animname][entryname] = isdefined(group.blend) ? group.blend : 0;
            }
            if (group.animname == "generic" && !isdefined(level.var_f467e5b0.anims[#"player"][entryname])) {
                level.var_f467e5b0.anims[#"player"][entryname] = animentry.xanim;
                level.var_f467e5b0.blend[#"player"][entryname] = group.blend;
            }
        }
    }
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x5d3bf9dd, Offset: 0xd68
// Size: 0xc0
function function_df6077(action_name, enabled) {
    assert(isactor(self));
    if (enabled && !is_true(self.var_f467e5b0.enabled[action_name])) {
        self.var_f467e5b0.enabled[action_name] = undefined;
        return;
    }
    if (!enabled) {
        if (!isdefined(self.var_f467e5b0)) {
            self.var_f467e5b0 = {};
        }
        self.var_f467e5b0.enabled[action_name] = 0;
    }
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x72848110, Offset: 0xe30
// Size: 0x16c
function function_b0868791(action_name, enabled) {
    assert(isplayer(self));
    if (enabled && !is_true(self.var_f467e5b0.enabled[action_name])) {
        self.var_f467e5b0.enabled[action_name] = 1;
    } else if (!enabled && is_true(self.var_f467e5b0.enabled[action_name])) {
        self notify(level.var_f467e5b0.actions[action_name].ender);
        self.var_f467e5b0.enabled[action_name] = undefined;
    }
    self function_3af7d065(1);
    self function_3af7d065(1, level.var_f467e5b0.actions[action_name].var_9386e7ce);
    self thread function_942d9213();
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x7064bc55, Offset: 0xfa8
// Size: 0x6c
function function_202ab848(enabled) {
    assert(isplayer(self));
    self.var_f467e5b0.disabled = enabled ? undefined : 1;
    self thread function_942d9213();
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x466b194f, Offset: 0x1020
// Size: 0x56
function function_6c59e78f(enabled) {
    assert(isplayer(self));
    self.var_f467e5b0.var_36a4a92c = enabled ? undefined : 1;
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0xe195af97, Offset: 0x1080
// Size: 0x8c
function function_8488e359(var_ecfa567f, var_c7a00bcb) {
    self.var_f467e5b0.var_c4e66a91 = undefined;
    if (isdefined(var_ecfa567f)) {
        self.var_f467e5b0.var_c4e66a91[var_ecfa567f] = 1;
        self notify("_plr_cmd_clk_" + var_ecfa567f);
    }
    if (isdefined(var_c7a00bcb)) {
        self.var_f467e5b0.var_c4e66a91[var_c7a00bcb] = 1;
        self notify("_plr_cmd_clk_" + var_c7a00bcb);
    }
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x487d482a, Offset: 0x1118
// Size: 0x4c
function function_1c027741(action_name) {
    assert(isplayer(self));
    self thread function_e3401e0e(action_name);
}

// Namespace actions/actions
// Params 2, eflags: 0x0
// Checksum 0xdc197ef5, Offset: 0x1170
// Size: 0x50
function function_d0cba98(action_name, override) {
    if (!isdefined(self.var_f467e5b0.overrides)) {
        self.var_f467e5b0.overrides = [];
    }
    self.var_f467e5b0.overrides[action_name] = override;
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x6f0899fc, Offset: 0x11c8
// Size: 0x48
function function_abaa32c(action_name) {
    if (!isdefined(self.var_f467e5b0.overrides)) {
        self.var_f467e5b0.overrides = [];
    }
    return self.var_f467e5b0.overrides[action_name];
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0xaa680f2a, Offset: 0x1218
// Size: 0x94
function function_3af7d065(enabled, var_9386e7ce) {
    assert(isplayer(self));
    if (!isalive(self)) {
        return;
    }
    flagname = function_f3f7e971(var_9386e7ce);
    self flag::set_val(flagname, enabled);
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x40d82180, Offset: 0x12b8
// Size: 0xcc
function function_c004e236(*prompt, var_9386e7ce) {
    self endon(#"death", #"disconnect");
    assert(isplayer(self));
    if (!isalive(self)) {
        return;
    }
    flagname = function_f3f7e971(var_9386e7ce);
    self flag::wait_till(flagname);
    self flag::wait_till_clear(flagname);
}

// Namespace actions/actions
// Params 3, eflags: 0x2 linked
// Checksum 0xa8d29067, Offset: 0x1390
// Size: 0x130
function function_83bde308(action, var_d61bdbea, var_1ad5f3d8) {
    self endon(#"death", #"disconnect");
    assert(isplayer(self));
    assert(isstruct(action));
    if (!isalive(self)) {
        return false;
    }
    if (isdefined(var_d61bdbea)) {
        self thread function_fb6a1439(action, var_d61bdbea, var_1ad5f3d8);
    }
    self flag::wait_till(function_f3f7e971(action));
    if (isdefined(var_d61bdbea)) {
        self flag::wait_till(function_3e2aeb63(var_d61bdbea));
    }
    return true;
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x3eea7374, Offset: 0x14c8
// Size: 0x84
function function_1927d2a8(immediate) {
    assert(isplayer(self));
    if (isdefined(self.var_2cb06cc6) && self.var_2cb06cc6 !== "root") {
        self.var_2cb06cc6.var_43769020 = immediate;
        self notify(self.var_2cb06cc6.ender);
        waitframe(1);
    }
}

// Namespace actions/actions
// Params 0, eflags: 0x2 linked
// Checksum 0x93570bd4, Offset: 0x1558
// Size: 0x1c
function function_942d9213() {
    self thread function_676e0128();
}

// Namespace actions/actions
// Params 0, eflags: 0x0
// Checksum 0x4226ac7c, Offset: 0x1580
// Size: 0x36
function function_c11b51e1() {
    return !isdefined(self.var_2cb06cc6.name) || self.var_2cb06cc6.name === "root";
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0xfded4861, Offset: 0x15c0
// Size: 0x1d8
function function_ff81e3cc(parent_name, action_name) {
    /#
        if (!isdefined(parent_name) || !isdefined(action_name)) {
            assertmsg("<unknown string>");
            return;
        }
        if (tolower(parent_name) == tolower(action_name)) {
            assertmsg("<unknown string>" + action_name + "<unknown string>");
            return;
        }
        if (!isdefined(level.var_f467e5b0.actions[action_name])) {
            assertmsg("<unknown string>" + action_name + "<unknown string>");
            return;
        }
    #/
    if (!isdefined(level.var_f467e5b0.actions[parent_name])) {
        level waittillmatch({#action:parent_name}, #"hash_2fd6623a6dbe43e9");
        if (!isdefined(level.var_f467e5b0.actions[parent_name])) {
            assertmsg("<unknown string>" + action_name + "<unknown string>" + parent_name + "<unknown string>");
            return;
        }
    }
    parent = level.var_f467e5b0.actions[parent_name];
    parent.children[action_name] = level.var_f467e5b0.actions[action_name];
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x1e0f79c6, Offset: 0x17a0
// Size: 0x108
function function_ebc59735(event_name, radius = 800) {
    ai = function_e45cbe76(self.origin, radius, self.team);
    foreach (guy in ai) {
        if (guy == self) {
            continue;
        }
        guy function_a3fcf9e0(event_name, getplayers()[0], self.origin);
    }
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x48c06a1f, Offset: 0x18b0
// Size: 0x90
function function_f3f7e971(var_a50a7fa0) {
    if (isstruct(var_a50a7fa0)) {
        action = var_a50a7fa0;
        return ("action_chain_enabled_" + action.var_9386e7ce);
    }
    if (isdefined(var_a50a7fa0)) {
        var_9386e7ce = var_a50a7fa0;
        return ("action_chain_enabled_" + tolower(var_9386e7ce));
    }
    return "action_chain_enabled_" + "a";
}

// Namespace actions/actions
// Params 0, eflags: 0x6 linked
// Checksum 0x66cab8c, Offset: 0x1948
// Size: 0xf8
function private function_303a7a74() {
    player = getplayers()[0];
    player thread action_utility::function_76e2ec80();
    player action_utility::function_2795d678(0);
    player action_utility::allow_weapon(1, 1);
    player enableweapons();
    player val::reset_all(#"action");
    var_13a66c62 = player.var_f467e5b0.var_13a66c62[player.var_2cb06cc6.name];
    if (isdefined(var_13a66c62)) {
        player [[ var_13a66c62 ]](player.var_2cb06cc6);
    }
}

// Namespace actions/actions
// Params 1, eflags: 0x0
// Checksum 0xaf2a4b0d, Offset: 0x1a48
// Size: 0x44
function function_fc288808(*quick) {
    if (isplayer(self)) {
        self action_utility::allow_weapon(1, 1);
    }
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0xf248a2e2, Offset: 0x1a98
// Size: 0x44
function function_e972f9a5(*quick) {
    if (isplayer(self)) {
        self action_utility::allow_weapon(0, 1);
    }
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x22dd609d, Offset: 0x1ae8
// Size: 0x42
function function_4e61a046(action_name, phase) {
    if (isdefined(action_name) && isdefined(phase)) {
        action_name = action_name + ":" + phase;
    }
    return action_name;
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x92bb0d8f, Offset: 0x1b38
// Size: 0x18
function function_3e2aeb63(var_d61bdbea) {
    return "action_command_" + var_d61bdbea;
}

// Namespace actions/actions
// Params 3, eflags: 0x2 linked
// Checksum 0xa5582b9c, Offset: 0x1b58
// Size: 0xdc
function function_fb6a1439(action, var_d61bdbea, var_1ad5f3d8) {
    self endon(action.ender);
    self endon(#"death", #"disconnect");
    flag = function_3e2aeb63(var_d61bdbea);
    self flag::clear(flag);
    var_414729dc = strtok(var_d61bdbea, "_");
    self function_2f22cd0b(action, var_414729dc[0], var_414729dc[1], flag);
    if (isdefined(var_1ad5f3d8)) {
    }
}

// Namespace actions/actions
// Params 4, eflags: 0x2 linked
// Checksum 0x7fe6197d, Offset: 0x1c40
// Size: 0xd4
function function_2f22cd0b(action, command, type = "click", flag) {
    if (type == "hold") {
        while (function_ae44e21b(action, command)) {
            self flag::set(flag);
            waitframe(1);
        }
        self flag::clear(flag);
        return;
    }
    self function_9cb5ca63(action, command);
    self flag::set(flag);
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x51ae0fec, Offset: 0x1d20
// Size: 0x164
function function_ae44e21b(*action, command) {
    if (isdefined(self.var_f467e5b0.var_c4e66a91)) {
        return isdefined(self.var_f467e5b0.var_c4e66a91[command]);
    }
    switch (command) {
    case #"melee":
        return self meleebuttonpressed();
    case #"ads":
        return self adsbuttonpressed();
    case #"use":
        return self usebuttonpressed();
    case #"frag":
        return self fragbuttonpressed();
    case #"smoke":
        return self secondaryoffhandbuttonpressed();
    case #"stance":
        return (self stancebuttonpressed() || self buttonbitstate("BUTTON_BIT_ANY_DOWN"));
    }
    return 0;
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0xfc623d00, Offset: 0x1e90
// Size: 0x32a
function function_9cb5ca63(action, command) {
    self endon(action.ender);
    self endon(#"death", #"disconnect");
    triggername = "_plr_cmd_clk_" + command;
    if (isdefined(self.var_f467e5b0.var_c4e66a91)) {
        waitframe(1);
        if (isdefined(self.var_f467e5b0.var_c4e66a91[command])) {
            return true;
        }
        self waittill(#"never");
    }
    switch (command) {
    case #"melee":
        self notifyonplayercommand(triggername, "+melee");
        self notifyonplayercommand(triggername, "+melee_breath");
        self notifyonplayercommand(triggername, "+melee_zoom");
        self thread function_7ca47b7c(action, triggername);
        break;
    case #"ads":
        self notifyonplayercommand(triggername, "+ads_akimbo_accessible");
        break;
    case #"use":
        self notifyonplayercommand(triggername, "+usereload");
        break;
    case #"frag":
        self notifyonplayercommand(triggername, "+frag");
        self notifyonplayercommand(triggername, "+equip_toggle_throw");
        break;
    case #"smoke":
        self notifyonplayercommand(triggername, "+smoke");
        self notifyonplayercommand(triggername, "+equip_toggle_throw");
        break;
    case #"stance":
        self notifyonplayercommand(triggername, "+stance");
        self notifyonplayercommand(triggername, "+movedown");
        self notifyonplayercommand(triggername, "+lowerstance");
        self notifyonplayercommand(triggername, "+prone");
        break;
    default:
        return false;
    }
    self waittill(triggername);
    return true;
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x7a995573, Offset: 0x21c8
// Size: 0xf2
function function_7ca47b7c(action, event) {
    self endon(action.ender);
    self endon(#"death", #"disconnect");
    self notifyonplayercommand("player_cmd_melee_atk", "+attack");
    self notifyonplayercommand("player_cmd_melee_atk", "+attack_akimbo_accessible");
    while (true) {
        self waittill(#"player_cmd_melee_atk");
        weapon = self getcurrentweapon();
        if (weapons::isknife(weapon)) {
            self notify(event);
        }
    }
}

// Namespace actions/actions
// Params 0, eflags: 0x2 linked
// Checksum 0x4e1fcb61, Offset: 0x22c8
// Size: 0x134
function function_676e0128() {
    assert(isplayer(self));
    self notify(#"hash_177677e1af36d866");
    self endon(#"death", #"disconnect", #"hash_177677e1af36d866");
    waitframe(1);
    self prompts::function_ee7adae5(#"actions");
    self prompts::function_d675f5a4();
    if (isdefined(self.var_6639d45b)) {
    }
    function_42a5d542(self.var_2cb06cc6);
    self action_utility::function_3fbe0931();
    if (self.var_f467e5b0.enabled.size > 0) {
        self util::delay(0.01, undefined, &function_1c027741, "root");
    }
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x73196f56, Offset: 0x2408
// Size: 0xda
function function_42a5d542(action, var_994af9bf) {
    if (isdefined(action) && action.name != "root") {
        if (isdefined(action.var_1eb98b2a)) {
            foreach (child in action.var_1eb98b2a) {
                if (!isdefined(var_994af9bf) || child != var_994af9bf) {
                    self notify(child.ender);
                }
            }
        }
    }
}

// Namespace actions/actions
// Params 1, eflags: 0x2 linked
// Checksum 0x9c459bf8, Offset: 0x24f0
// Size: 0x3ac
function function_e3401e0e(name) {
    assert(isplayer(self));
    if (!isalive(self)) {
        return;
    }
    self notify(#"hash_2f508e0571f37e47");
    self endon(#"death", #"disconnect", #"hash_2f508e0571f37e47");
    action = level.var_f467e5b0.actions[name];
    self thread function_1927d2a8();
    self.var_2cb06cc6 = action;
    self.var_2cb06cc6.var_43769020 = undefined;
    foreach (child in action.children) {
        self childthread function_2fc00159(name, child);
    }
    action.var_1eb98b2a = arraycopy(action.children);
    if (!isdefined(action.var_1eb98b2a)) {
        action.var_1eb98b2a = [];
    } else if (!isarray(action.var_1eb98b2a)) {
        action.var_1eb98b2a = array(action.var_1eb98b2a);
    }
    while (action.var_1eb98b2a.size > 0) {
        var_9c42c399 = self function_abc34a6c();
        foreach (result in var_9c42c399) {
            var_2b8c0efb = result[0];
            var_994b10ae = result[1];
            assert(isdefined(var_2b8c0efb), "<unknown string>");
            if (is_true(var_994b10ae)) {
                function_42a5d542(action, var_2b8c0efb);
                self thread function_e3401e0e(var_2b8c0efb.name);
                return;
            }
            if (var_2b8c0efb.ender != action.ender) {
                self notify(var_2b8c0efb.ender);
            }
            if (action.name == "root") {
                self childthread function_2fc00159(name, var_2b8c0efb);
                continue;
            }
            arrayremovevalue(action.var_1eb98b2a, var_2b8c0efb);
        }
    }
}

// Namespace actions/actions
// Params 2, eflags: 0x2 linked
// Checksum 0x5d5f189c, Offset: 0x28a8
// Size: 0x154
function function_2fc00159(var_498c5966, action) {
    self endon(#"hash_670dd8182b8b941");
    if (var_498c5966 == "root") {
        self flag::set(function_f3f7e971(action));
    } else {
        self flag::clear(function_f3f7e971(action));
    }
    waittillframeend();
    if (action.name != "root" && is_true(self.var_f467e5b0.disabled)) {
        return;
    }
    if (!is_true(self.var_f467e5b0.enabled[action.name])) {
        self function_43ad32c1(action);
        return;
    }
    if (isdefined(action.var_7eba8145)) {
        result = [[ action.var_7eba8145 ]](action);
        self function_43ad32c1(action, result);
    }
}

// Namespace actions/actions
// Params 0, eflags: 0x6 linked
// Checksum 0x8df6aa3a, Offset: 0x2a08
// Size: 0x4a
function private function_abc34a6c() {
    self notify("37f9bd8032719bae");
    self endon("37f9bd8032719bae");
    self.var_a7c7b958 = [];
    self waittill(#"hash_41a2ad64c03a0ec3");
    return self.var_a7c7b958;
}

// Namespace actions/actions
// Params 2, eflags: 0x6 linked
// Checksum 0x1bb6c, Offset: 0x2a60
// Size: 0x7e
function private function_43ad32c1(action, result) {
    if (isdefined(self) && !function_3132f113(self)) {
        self.var_a7c7b958[self.var_a7c7b958.size] = [action, result];
        self notify(#"hash_41a2ad64c03a0ec3");
    }
}

/#

    // Namespace actions/actions
    // Params 0, eflags: 0x0
    // Checksum 0x9ddec0, Offset: 0x2ae8
    // Size: 0x420
    function function_d661f822() {
        self notify(#"hash_2eaf8be0116c39a9");
        self endoncallback(&function_67860a50, #"hash_2eaf8be0116c39a9");
        var_5283788 = 8;
        self.var_56116d92 = [];
        for (i = 0; i < var_5283788; i++) {
            self.var_56116d92[i] = newdebughudelem();
            self.var_56116d92[i].x = 50;
            self.var_56116d92[i].y = 100 + i * 13;
            self.var_56116d92[i].alignx = "<unknown string>";
            self.var_56116d92[i].aligny = "<unknown string>";
            self.var_56116d92[i].horzalign = "<unknown string>";
            self.var_56116d92[i].vertalign = "<unknown string>";
            self.var_56116d92[i].fontscale = 1;
        }
        while (true) {
            waitframe(1);
            for (i = 0; i < var_5283788; i++) {
                text = "<unknown string>";
                switch (i) {
                case 0:
                    if (isdefined(self.var_2cb06cc6)) {
                        text += self.var_2cb06cc6.name + "<unknown string>";
                        foreach (child in self.var_2cb06cc6.var_1eb98b2a) {
                            text += child.name + "<unknown string>";
                        }
                        text += "<unknown string>";
                    }
                    break;
                case 1:
                    text = "<unknown string>";
                    if (isdefined(self.takedown.body)) {
                        text = "<unknown string>" + self.takedown.body getentitynumber();
                    }
                    break;
                case 2:
                    text = "<unknown string>";
                    if (isdefined(self.var_6639d45b)) {
                        text = "<unknown string>" + self.var_6639d45b getentitynumber();
                    }
                    break;
                case 3:
                    var_e817484d = isdefined(self.takedown.var_70354814) ? self.takedown.var_70354814 : "<unknown string>";
                    if (var_e817484d != "<unknown string>") {
                        if (isdefined(getscriptbundle(var_e817484d))) {
                            text = "<unknown string>" + var_e817484d;
                        } else {
                            text = "<unknown string>" + var_e817484d + "<unknown string>";
                        }
                    }
                    break;
                }
                self.var_56116d92[i] settext(text);
            }
        }
    }

    // Namespace actions/actions
    // Params 1, eflags: 0x4
    // Checksum 0x7e0c9916, Offset: 0x2f10
    // Size: 0xaa
    function private function_67860a50(*params) {
        if (isdefined(self.var_56116d92)) {
            foreach (elem in self.var_56116d92) {
                elem destroy();
            }
        }
        self.var_56116d92 = undefined;
    }

#/
