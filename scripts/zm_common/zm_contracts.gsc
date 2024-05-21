// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using script_437ce686d29bb81b;
#using scripts\zm_common\callbacks.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace contracts;

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x5
// Checksum 0xeeb85fa8, Offset: 0x100
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"contracts", &preinit, undefined, &finalize_init, undefined);
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x6 linked
// Checksum 0xc8f50ba3, Offset: 0x150
// Size: 0x64
function private preinit() {
    if (!isdefined(level.challengescallbacks)) {
        level.challengescallbacks = [];
    }
    init_player_contract_events();
    level callback::add_callback(#"hash_540f54ade63017ea", &function_feafa020);
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x6 linked
// Checksum 0xbc5d041e, Offset: 0x1c0
// Size: 0xe4
function private finalize_init() {
    if (can_process_contracts()) {
        callback::on_connect(&on_player_connect);
        callback::function_74872db6(&function_74872db6);
        callback::on_round_end(&on_round_end);
        zm_player::function_a827358a(&function_8968a076);
        level.var_79a93566 = &function_902ef0de;
        level.var_c3e2bb05 = 3;
        /#
            level thread devgui_setup();
            level.var_b4ef4d73 = 1;
        #/
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x97ab886d, Offset: 0x2b0
// Size: 0x164
function on_player_connect() {
    self setup_player_contracts(3, &registerpower_grid_displaycontrolrobotmelee);
    self function_df42ef94();
    self.shlocalh = 0;
    self.var_45ce0c21 = 0;
    if (self is_contract_active(#"contract_zm_no_pap") || is_true(level.var_b4ef4d73)) {
        self thread function_677a89c8();
    }
    if (self is_contract_active(#"contract_zm_same_shield") || is_true(level.var_b4ef4d73)) {
        self thread function_9d5cd9ee();
    }
    if (self is_contract_active(#"contract_zm_same_location") || is_true(level.var_b4ef4d73)) {
        self thread function_51db541e();
    }
}

// Namespace contracts/zm_contracts
// Params 10, eflags: 0x2 linked
// Checksum 0x91e1163, Offset: 0x420
// Size: 0x6a
function function_8968a076(*einflictor, *eattacker, idamage, *idflags, *smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (psoffsettime > 0) {
        self.shlocalh = 0;
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0xd8aaa336, Offset: 0x498
// Size: 0x1cc
function function_74872db6() {
    if (level.round_number == 20) {
        foreach (e_player in getplayers()) {
            if (!is_true(e_player.var_bd1368a8)) {
                e_player increment_zm_contract(#"contract_zm_no_pap", 1, #"zstandard");
            }
        }
        level notify(#"hash_786860db94bcc0f3");
    }
    if (level.round_number == 30) {
        foreach (e_player in getplayers()) {
            e_player increment_zm_contract(#"contract_zm_rounds", 1, #"zstandard");
        }
        callback::function_50fdac80(&function_74872db6);
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x1cc8de5b, Offset: 0x670
// Size: 0x248
function on_round_end() {
    switch (level.script) {
    case #"zm_zodt8":
        var_c5440c34 = #"contract_zm_zodt8_rounds";
        break;
    case #"zm_towers":
        var_c5440c34 = #"contract_zm_towers_rounds";
        break;
    case #"zm_escape":
        var_c5440c34 = #"contract_zm_escape_rounds";
        break;
    case #"zm_office":
        var_c5440c34 = #"contract_zm_office_rounds";
        break;
    case #"zm_mansion":
        var_c5440c34 = #"contract_zm_mansion_rounds";
        break;
    case #"zm_red":
        var_c5440c34 = #"contract_zm_red_rounds";
        break;
    }
    switch (level.var_837aa533) {
    case #"zclassic":
        var_fc80b645 = #"contract_zm_classic_rounds";
        break;
    case #"ztrials":
        var_fc80b645 = #"contract_zm_gauntlet_rounds";
        break;
    }
    foreach (e_player in getplayers()) {
        if (isdefined(var_c5440c34)) {
            e_player increment_zm_contract(var_c5440c34, 1, #"zstandard");
        }
        if (isdefined(var_fc80b645)) {
            e_player increment_zm_contract(var_fc80b645, 1);
        }
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x8bc498ad, Offset: 0x8c0
// Size: 0xc0
function can_process_contracts() {
    if (getdvarint(#"contracts_enabled", 0) == 0) {
        return false;
    }
    if (getdvarint(#"contracts_enabled_zm", 1) == 0) {
        return false;
    }
    /#
        if (getdvarint(#"debugchallenges", 0) > 0) {
            return true;
        }
    #/
    if (!level.onlinegame || is_true(level.var_aa2d5655)) {
        return false;
    }
    return true;
}

// Namespace contracts/zm_contracts
// Params 3, eflags: 0x2 linked
// Checksum 0xc223d1d9, Offset: 0x988
// Size: 0x14c
function increment_zm_contract(var_38280f2f, delta = 1, var_86024473) {
    if (!can_process_contracts() || !self is_contract_active(var_38280f2f)) {
        return;
    }
    if (isdefined(var_86024473)) {
        if (!isdefined(var_86024473)) {
            var_86024473 = [];
        } else if (!isarray(var_86024473)) {
            var_86024473 = array(var_86024473);
        }
        foreach (var_86603201 in var_86024473) {
            if (var_86603201 == util::get_game_type()) {
                return;
            }
        }
    }
    self function_902ef0de(var_38280f2f, delta);
}

// Namespace contracts/zm_contracts
// Params 2, eflags: 0x6 linked
// Checksum 0xa89c53d3, Offset: 0xae0
// Size: 0x374
function private function_902ef0de(var_38280f2f, delta) {
    /#
        if (getdvarint(#"scr_contract_debug_multiplier", 0) > 0) {
            delta *= getdvarint(#"scr_contract_debug_multiplier", 1);
        }
    #/
    if (delta <= 0) {
        return;
    }
    target_value = self.pers[#"contracts"][var_38280f2f].target_value;
    old_progress = isdefined(self.pers[#"contracts"][var_38280f2f].current_value) ? self.pers[#"contracts"][var_38280f2f].current_value : self.pers[#"contracts"][var_38280f2f].var_59cb904f;
    if (old_progress == target_value) {
        return;
    }
    new_progress = int(old_progress + delta);
    if (new_progress > target_value) {
        new_progress = target_value;
    }
    if (new_progress != old_progress) {
        self.pers[#"contracts"][var_38280f2f].current_value = new_progress;
        if (isdefined(level.contract_ids[var_38280f2f])) {
            self luinotifyevent(#"hash_4b04b1cb4b3498d0", 2, level.contract_ids[var_38280f2f], new_progress);
        }
    }
    if (old_progress < target_value && target_value <= new_progress) {
        self.pers[#"contracts"][var_38280f2f].var_be5bf249 = self.pers[#"time_played_total"];
        if (isdefined(level.contract_ids[var_38280f2f])) {
            self zm_stats::function_fbce465a(#"hash_777766b99c35007f");
            zm_stats::function_ea5b4947(0);
            self luinotifyevent(#"hash_1739c4bd5baf83bc", 1, level.contract_ids[var_38280f2f]);
        }
    }
    /#
        if (getdvarint(#"scr_contract_debug", 0) > 0) {
            iprintln(function_9e72a96(var_38280f2f) + "<unknown string>" + new_progress + "<unknown string>" + target_value);
            if (old_progress < target_value && target_value <= new_progress) {
                iprintln(function_9e72a96(var_38280f2f) + "<unknown string>");
            }
        }
    #/
}

// Namespace contracts/zm_contracts
// Params 1, eflags: 0x2 linked
// Checksum 0x4317b62c, Offset: 0xe60
// Size: 0x22
function registerpower_grid_displaycontrolrobotmelee(slot) {
    return function_d17bcd3c(slot);
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x6 linked
// Checksum 0xb738f7d0, Offset: 0xe90
// Size: 0xf6
function private function_df42ef94() {
    if (namespace_cf6efd05::function_85b812c9()) {
        for (slot = 0; slot < 3; slot++) {
            var_b973083d = self registerpower_grid_displaycontrolrobotmelee(slot);
            n_progress = namespace_cf6efd05::function_48b5c403(self, #"hash_47c5fe6b4bbd9f0f", slot);
            if (isdefined(n_progress) && n_progress > 0) {
                self.pers[#"contracts"][var_b973083d.var_38280f2f].var_59cb904f = n_progress;
                self.pers[#"contracts"][var_b973083d.var_38280f2f].current_value = n_progress;
            }
        }
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x6 linked
// Checksum 0xe7c4ccd4, Offset: 0xf90
// Size: 0x180
function private function_feafa020() {
    foreach (player in getplayers()) {
        for (slot = 0; slot < 3; slot++) {
            var_b973083d = player registerpower_grid_displaycontrolrobotmelee(slot);
            n_progress = isdefined(player.pers[#"contracts"][var_b973083d.var_38280f2f].current_value) ? player.pers[#"contracts"][var_b973083d.var_38280f2f].current_value : player.pers[#"contracts"][var_b973083d.var_38280f2f].var_59cb904f;
            namespace_cf6efd05::function_53721fc4(player, #"hash_47c5fe6b4bbd9f0f", slot, n_progress);
        }
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x1da8e7d4, Offset: 0x1118
// Size: 0x2c
function function_4a56b14d() {
    if (!can_process_contracts()) {
        return;
    }
    function_d3fba20e();
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x9773b30d, Offset: 0x1150
// Size: 0x84
function function_dff4c02f() {
    if (!can_process_contracts() || !self is_contract_active(#"hash_38b41a1f3105c462")) {
        return;
    }
    self.shlocalh++;
    if (self.shlocalh == 100) {
        self increment_zm_contract(#"hash_38b41a1f3105c462");
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x0
// Checksum 0x2edc6e0a, Offset: 0x11e0
// Size: 0x94
function function_ac03f21e() {
    if (!can_process_contracts() || !self is_contract_active(#"contract_zm_single_special")) {
        return;
    }
    if (self.var_72d6f15d !== 2) {
        return;
    }
    self.var_45ce0c21++;
    if (self.var_45ce0c21 == 25) {
        self increment_zm_contract(#"contract_zm_single_special");
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x4ed8a440, Offset: 0x1280
// Size: 0x98
function function_677a89c8() {
    level endon(#"hash_786860db94bcc0f3");
    self endon(#"disconnect");
    while (true) {
        s_notify = self waittill(#"weapon_change");
        w_current = s_notify.weapon;
        if (zm_weapons::is_weapon_upgraded(w_current)) {
            self.var_bd1368a8 = 1;
            return;
        }
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x19220b27, Offset: 0x1320
// Size: 0xfa
function function_9d5cd9ee() {
    self endoncallback(&function_1395d508, #"disconnect", #"destroy_riotshield");
    var_c16ab86f = 0;
    while (true) {
        level waittill(#"start_of_round");
        if (!is_true(self.hasriotshield)) {
            var_c16ab86f = 0;
            continue;
        }
        level waittill(#"end_of_round");
        if (is_true(self.hasriotshield)) {
            var_c16ab86f++;
        } else {
            var_c16ab86f = 0;
        }
        if (var_c16ab86f >= 10) {
            self increment_zm_contract(#"contract_zm_same_shield");
            return;
        }
    }
}

// Namespace contracts/zm_contracts
// Params 1, eflags: 0x2 linked
// Checksum 0xe832723c, Offset: 0x1428
// Size: 0x44
function function_1395d508(var_c34665fc) {
    self endon(#"disconnect");
    if (var_c34665fc == "destroy_riotshield") {
        waittillframeend();
        self thread function_9d5cd9ee();
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0x40903c1c, Offset: 0x1478
// Size: 0x164
function function_51db541e() {
    self endon(#"disconnect");
    var_c16ab86f = 0;
    var_b90fea5 = 1;
    while (true) {
        level waittill(#"start_of_round");
        if (is_true(var_b90fea5)) {
            var_b90fea5 = 0;
            wait(5);
        }
        if (isdefined(level.var_27028b8e)) {
            var_a26574af = [[ level.var_27028b8e ]](self zm_zonemgr::get_player_zone());
        } else {
            var_a26574af = self zm_zonemgr::get_player_zone();
        }
        if (!isdefined(var_a26574af)) {
            continue;
        }
        if (!isdefined(self.var_42a6fc40)) {
            self.var_42a6fc40 = var_a26574af;
            var_c16ab86f = 0;
            self thread function_1d4fae71();
        } else {
            var_c16ab86f++;
        }
        if (var_c16ab86f >= 10) {
            self increment_zm_contract(#"contract_zm_same_location");
            self notify(#"hash_4bf9f2755fe74a0d");
            return;
        }
    }
}

// Namespace contracts/zm_contracts
// Params 0, eflags: 0x2 linked
// Checksum 0xf4604fd7, Offset: 0x15e8
// Size: 0xb6
function function_1d4fae71() {
    self endon(#"disconnect", #"hash_4bf9f2755fe74a0d");
    while (true) {
        zone_name = #"";
        if (isdefined(level.var_27028b8e)) {
            zone_name = [[ level.var_27028b8e ]](self zm_zonemgr::get_player_zone());
        }
        if (!isalive(self) || self.var_42a6fc40 !== zone_name) {
            self.var_42a6fc40 = undefined;
            return;
        }
        waitframe(1);
    }
}

/#

    // Namespace contracts/zm_contracts
    // Params 0, eflags: 0x0
    // Checksum 0x224d366d, Offset: 0x16a8
    // Size: 0x54
    function devgui_setup() {
        devgui_base = "<unknown string>";
        wait(3);
        function_e07e542b(devgui_base, undefined);
        function_295a8005(devgui_base);
    }

    // Namespace contracts/zm_contracts
    // Params 1, eflags: 0x0
    // Checksum 0x37cde5ba, Offset: 0x1708
    // Size: 0x91c
    function function_295a8005(var_1d89ece6) {
        var_bbd68476 = var_1d89ece6 + "<unknown string>";
        var_c8d599b5 = "<unknown string>";
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        var_86418430 = var_bbd68476 + "<unknown string>";
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
        util::function_3f749abc(var_86418430 + "<unknown string>", var_c8d599b5 + "<unknown string>");
    }

#/
