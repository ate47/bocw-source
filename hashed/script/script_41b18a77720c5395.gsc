// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace display_transition;

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0xacef38f, Offset: 0x1a0
// Size: 0x24
function init_shared() {
    registerclientfields();
    function_7e74281();
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x6 linked
// Checksum 0x7c45eedb, Offset: 0x1d0
// Size: 0x84
function private registerclientfields() {
    if (sessionmodeiswarzonegame()) {
        clientfield::register("toplayer", "eliminated_postfx", 12000, 1, "int");
    }
    if (sessionmodeismultiplayergame()) {
        clientfield::register("world", "top_squad_begin", 1, 1, "int");
    }
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x6 linked
// Checksum 0x96c85c00, Offset: 0x260
// Size: 0x3c
function private function_a5ce91f1(val) {
    if (sessionmodeiswarzonegame()) {
        self clientfield::set_to_player("eliminated_postfx", val);
    }
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x0
// Checksum 0xfae04550, Offset: 0x2a8
// Size: 0x52
function function_81d670f5() {
    if (isdefined(level.var_d1455682)) {
        if (!isdefined(level.var_d1455682.finaldisplaytransition) || level.var_d1455682.finaldisplaytransition.size == 0) {
            return false;
        }
    }
    return true;
}

// Namespace display_transition/display_transition
// Params 5, eflags: 0x6 linked
// Checksum 0x7dd77567, Offset: 0x308
// Size: 0x8c
function private function_b8e20f5f(transition, outcome, var_f6e1baec, var_b6818fc8, func) {
    if (is_true(var_f6e1baec)) {
        if ((isdefined(var_b6818fc8) ? var_b6818fc8 : 0) != 0) {
            wait(float(var_b6818fc8) / 1000);
        }
        [[ func ]](transition, outcome);
    }
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x2 linked
// Checksum 0xe9988ac4, Offset: 0x3a0
// Size: 0x44
function function_e6b4f2f7(outcome) {
    function_76f27db3(outcome.var_c1e98979, 1, #"none", outcome.team, outcome.players);
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x2 linked
// Checksum 0x278cf883, Offset: 0x3f0
// Size: 0x5c
function function_12d1f62a(outcome) {
    function_2fa975e0(util::getroundsplayed(), outcome.var_c1e98979, 1, #"none", outcome.team, outcome.players);
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x0
// Checksum 0x7b25bc74, Offset: 0x458
// Size: 0x5c
function function_19adc0b7(outcome) {
    player::function_2f80d95b(&function_3f65d5d3);
    function_e6b4f2f7(outcome);
    function_15e28b1a(outcome);
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x0
// Checksum 0xe7903515, Offset: 0x4c0
// Size: 0x7c
function display_round_end(outcome) {
    player::function_2f80d95b(&function_3f65d5d3);
    player::function_2f80d95b(&function_3cfb29e1);
    function_12d1f62a(outcome);
    function_cf3d556b(outcome);
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x6 linked
// Checksum 0xa5d81fdd, Offset: 0x548
// Size: 0xb6
function private function_91b514e8(menuname) {
    player = self;
    player endon(#"disconnect");
    while (true) {
        waitresult = player waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        if (isdefined(menuname)) {
            if (menu == menuname) {
                return;
            }
            continue;
        }
        if (menu == "GameEndScore") {
            return;
        }
    }
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x2 linked
// Checksum 0x3ed50025, Offset: 0x608
// Size: 0x208
function function_61d01718(transitions, lui_event) {
    if (!isdefined(transitions)) {
        return;
    }
    player = self;
    player endon(#"disconnect");
    foreach (index, transition in transitions) {
        player function_b797319e(lui_event, index + 1);
        if ((isdefined(transition.time) ? transition.time : 0) != 0) {
            round_end_wait(float(transition.time) / 1000);
            continue;
        }
        if ((isdefined(transition.var_bda115b5) ? transition.var_bda115b5 : 0) != 0) {
            self function_a5ce91f1(1);
            self thread function_c6f81aa1(float(transition.var_f4df0630) / 1000);
            player function_91b514e8(transition.menuresponse);
            self function_a5ce91f1(0);
            continue;
        }
        player function_91b514e8(transition.menuresponse);
    }
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x2 linked
// Checksum 0xe390e0b1, Offset: 0x818
// Size: 0xd6
function function_c6f81aa1(time) {
    if (!isdefined(time)) {
        return;
    }
    player = self;
    player endon(#"disconnect", #"spawned");
    player.var_686890d5 = 1;
    if (time <= 0) {
        time = 0.1;
    }
    wait(time);
    if (!isdefined(player)) {
        return;
    }
    player.var_686890d5 = undefined;
    player.sessionstate = "spectator";
    player.spectatorclient = -1;
    player.killcamentity = -1;
    player.archivetime = 0;
    player.psoffsettime = 0;
    player.spectatekillcam = 0;
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x0
// Checksum 0x69eafd75, Offset: 0x8f8
// Size: 0x54
function function_9b2bd02c() {
    player = self;
    player function_3f65d5d3();
    player function_61d01718(level.var_d1455682.eliminateddisplaytransition, #"elimination_transition");
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x0
// Checksum 0xd8328442, Offset: 0x958
// Size: 0xa4
function function_b3964dc9() {
    /#
        if (getdvarint(#"scr_disable_infiltration", 0)) {
            return;
        }
    #/
    if (is_true(level.var_a4c48e88)) {
        return;
    }
    player = self;
    player function_3f65d5d3();
    player function_61d01718(level.var_d1455682.eliminateddisplaytransition, #"hash_ee32e40c182320b");
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x0
// Checksum 0x34b1354f, Offset: 0xa08
// Size: 0x5c
function function_f4c03c3b() {
    if (is_true(self.var_58f00ca2)) {
        return;
    }
    self.var_58f00ca2 = 1;
    self thread function_61d01718(level.var_d1455682.eliminateddisplaytransition, #"hash_4a3306cfce6719bc");
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x0
// Checksum 0x1f7a4a5e, Offset: 0xa70
// Size: 0x14c
function function_1caf5c87(team) {
    players = getplayers(team);
    player::function_4dcd9a89(players, &function_3f65d5d3);
    foreach (player in players) {
        if (player != self) {
            player.var_58f00ca2 = 1;
            player thread function_61d01718(level.var_d1455682.eliminateddisplaytransition, #"hash_4a3306cfce6719bc");
        }
    }
    if (self.team == team) {
        self.var_58f00ca2 = 1;
        self function_61d01718(level.var_d1455682.eliminateddisplaytransition, #"hash_4a3306cfce6719bc");
    }
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0x7c440322, Offset: 0xbc8
// Size: 0x40
function function_3f65d5d3() {
    if (!isdefined(self.pers[#"team"])) {
        self [[ level.spawnintermission ]](1);
        return true;
    }
    return false;
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0x17bfa8b8, Offset: 0xc10
// Size: 0x76
function function_3cfb29e1() {
    if (!util::waslastround()) {
        music::setmusicstate("roundend");
        if (isdefined(self.pers[#"music"].spawn)) {
            self.pers[#"music"].spawn = 0;
        }
    }
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0xc90
// Size: 0x4
function private freeze_player_for_round_end() {
    
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x6 linked
// Checksum 0x6fdcce2d, Offset: 0xca0
// Size: 0x38
function private function_ba94df6c() {
    self setclientuivisibilityflag("hud_visible", 0);
    self thread [[ level.spawnintermission ]](0);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x2 linked
// Checksum 0x6873ba53, Offset: 0xce0
// Size: 0x14
function function_9185f489(*transition, *outcome) {
    
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0x8ec4cdd9, Offset: 0xd00
// Size: 0xf4
function private function_e22f5208(*transition, *outcome) {
    var_9914886a = 0;
    foreach (player in level.players) {
        if (isdefined(player getlinkedent())) {
            player unlink();
            var_9914886a = 1;
        }
    }
    if (var_9914886a) {
        waitframe(1);
    }
    player::function_2f80d95b(&function_ba94df6c);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0xc38cdbd3, Offset: 0xe00
// Size: 0x34
function private function_a3b4d41d(*transition, *outcome) {
    player::function_2f80d95b(&freeze_player_for_round_end);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0xe4e72bb9, Offset: 0xe40
// Size: 0x34
function private function_654c0030(*transition, *outcome) {
    player::function_2f80d95b(&function_d7b5082e);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0x8b2129ba, Offset: 0xe80
// Size: 0x14
function private function_d9d842b2(*transition, *outcome) {
    
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0xac7e5b7, Offset: 0xea0
// Size: 0x14
function private function_b7fec738(*transition, *outcome) {
    
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0x65465d17, Offset: 0xec0
// Size: 0x14
function private function_66713ac(*transition, *outcome) {
    
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0x8e5a6343, Offset: 0xee0
// Size: 0x14
function private function_8feabee3(*transition, *outcome) {
    
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0xd2dc2add, Offset: 0xf00
// Size: 0x14
function private function_a3c90acf(*transition, *outcome) {
    
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0x1818cb54, Offset: 0xf20
// Size: 0x1c4
function private function_26bbb839(transition, outcome) {
    thread function_b8e20f5f(transition, outcome, transition.slowdown, transition.var_d7f20c92, &function_9185f489);
    thread function_b8e20f5f(transition, outcome, transition.freezeplayers, transition.freezetime, &function_a3b4d41d);
    thread function_b8e20f5f(transition, outcome, transition.var_b0bc6ae0, transition.var_8d7c57a2, &function_8feabee3);
    thread function_b8e20f5f(transition, outcome, transition.var_738bf790, transition.var_8dc11094, &function_a3c90acf);
    thread function_b8e20f5f(transition, outcome, transition.var_619875ca, transition.var_73f860db, &function_b7fec738);
    thread function_b8e20f5f(transition, outcome, transition.var_7a712c7, transition.var_a803fe51, &function_66713ac);
    thread function_b8e20f5f(transition, outcome, transition.var_93a95648, transition.var_de820e2d, &function_654c0030);
    thread function_b8e20f5f(transition, outcome, transition.var_f9995c63, transition.var_41fc87a8, &function_d9d842b2);
    thread function_b8e20f5f(transition, outcome, transition.pickup_message, transition.var_5026a297, &function_e22f5208);
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0xc22fc7e6, Offset: 0x10f0
// Size: 0x90
function checkroundswitch() {
    if (!isdefined(level.roundswitch) || !level.roundswitch) {
        return false;
    }
    if (!isdefined(level.onroundswitch)) {
        return false;
    }
    assert(game.roundsplayed > 0);
    if (game.roundsplayed % level.roundswitch == 0) {
        [[ level.onroundswitch ]]();
        return true;
    }
    return false;
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0x44098e86, Offset: 0x1188
// Size: 0x8c
function private function_e3855f6d(transition, outcome) {
    if (util::waslastround()) {
        return;
    }
    if (!is_true(level.var_3e7c197f) && !checkroundswitch()) {
        return;
    }
    level.var_3e7c197f = 1;
    function_26bbb839(transition, outcome);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0xbd0387d9, Offset: 0x1220
// Size: 0x24
function private function_a2d39e40(*transition, *outcome) {
    killcam::post_round_final_killcam();
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0xea8bc6a5, Offset: 0x1250
// Size: 0x24
function private function_e3442abc(*transition, *outcome) {
    potm::post_round_potm();
}

// Namespace display_transition/display_transition
// Params 3, eflags: 0x6 linked
// Checksum 0x33f72745, Offset: 0x1280
// Size: 0x5e
function private function_7285f7e1(e1, e2, b_lowest_first = 0) {
    if (b_lowest_first) {
        return (e1.score <= e2.score);
    }
    return e1.score > e2.score;
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x4
// Checksum 0x5d06b49c, Offset: 0x12e8
// Size: 0x174
function private function_6b33e951() {
    var_9a829482 = 6;
    winning_team = #"allies";
    if (winning_team == #"none") {
        winning_team = #"allies";
    }
    winners = getplayers(winning_team);
    winners = array::merge_sort(winners, &function_7285f7e1, 0);
    var_860af94a = array();
    for (i = 0; i < var_9a829482; i++) {
        client_num = isdefined(winners[i]) ? winners[i].entnum : -1;
        array::add(var_860af94a, client_num);
    }
    luinotifyevent(#"top_squad", var_9a829482, var_860af94a[0], var_860af94a[1], var_860af94a[2], var_860af94a[3], var_860af94a[4], var_860af94a[5]);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0x18149a15, Offset: 0x1468
// Size: 0x3c
function private function_87a832a5(transition, outcome) {
    if (sessionmodeismultiplayergame()) {
    }
    function_26bbb839(transition, outcome);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x6 linked
// Checksum 0xd7f9f57c, Offset: 0x14b0
// Size: 0x34
function private function_721d8d6e(*transition, *outcome) {
    level clientfield::set("top_squad_begin", 1);
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0x70465bd1, Offset: 0x14f0
// Size: 0x16c
function function_7e74281() {
    level.var_3a309902[#"blank"] = &function_26bbb839;
    level.var_3a309902[#"outcome"] = &function_87a832a5;
    level.var_3a309902[#"outcome_with_score"] = &function_26bbb839;
    level.var_3a309902[#"outcome_with_time"] = &function_26bbb839;
    level.var_3a309902[#"switch_sides"] = &function_e3855f6d;
    level.var_3a309902[#"final_killcam"] = &function_a2d39e40;
    level.var_3a309902[#"play_of_the_match"] = &function_e3442abc;
    level.var_3a309902[#"high_value_operatives"] = &function_26bbb839;
    level.var_3a309902[#"top_squad"] = &function_721d8d6e;
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x2 linked
// Checksum 0x54d89b6a, Offset: 0x1668
// Size: 0x34
function function_b797319e(transition_type, var_e6825eda) {
    self luinotifyevent(transition_type, 1, var_e6825eda);
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0xc39d8d39, Offset: 0x16a8
// Size: 0x24
function function_752a920f() {
    self luinotifyevent(#"clear_transition");
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0xf1363bd4, Offset: 0x16d8
// Size: 0x5c
function function_d7b5082e() {
    if (isdefined(self.pers[#"totalmatchbonus"])) {
        self luinotifyevent(#"hash_9dfc8d44ea4547e", 1, self.pers[#"totalmatchbonus"]);
    }
}

// Namespace display_transition/display_transition
// Params 4, eflags: 0x2 linked
// Checksum 0xe884e232, Offset: 0x1740
// Size: 0x72
function display_transition(transition, var_e6825eda, outcome, lui_event) {
    player::function_e7f18b20(&function_b797319e, lui_event, var_e6825eda + 1);
    [[ level.var_3a309902[transition.type] ]](transition, outcome);
}

// Namespace display_transition/display_transition
// Params 3, eflags: 0x2 linked
// Checksum 0x27d52400, Offset: 0x17c0
// Size: 0x5a
function function_f2ffece2(transition, outcome, var_61f85cf) {
    if (isdefined(level.var_5d720398[transition.type])) {
        level thread [[ level.var_5d720398[transition.type] ]](transition, outcome, var_61f85cf);
    }
}

// Namespace display_transition/display_transition
// Params 0, eflags: 0x2 linked
// Checksum 0x677d7b7, Offset: 0x1828
// Size: 0x24
function clear_transition() {
    player::function_2f80d95b(&function_752a920f);
}

// Namespace display_transition/display_transition
// Params 2, eflags: 0x2 linked
// Checksum 0x61d1d08f, Offset: 0x1858
// Size: 0x1ee
function function_40a46b5b(transition, outcome) {
    if (is_true(transition.disable)) {
        return true;
    }
    if (is_true(transition.var_b5dabc6b)) {
        if (util::waslastround() || util::isoneround()) {
            return true;
        }
    }
    var_860cd9fa = isdefined(level.shouldplayovertimeround) && [[ level.shouldplayovertimeround ]]();
    if (isdefined(level.shouldplayovertimeround) && [[ level.shouldplayovertimeround ]]()) {
        if (is_true(transition.var_d0f2da62)) {
            return true;
        }
    } else if (is_true(transition.var_fb87c2b4)) {
        return true;
    }
    if (transition.type == "team_pose") {
        if (outcome.team == #"none") {
            return true;
        }
        if (!isdefined(struct::get("team_pose_cam", "targetname"))) {
            return true;
        }
    }
    if (transition.type == "switch_sides") {
        if (!is_true(level.roundswitch)) {
            return true;
        }
    }
    if (transition.type == "outcome") {
        if (is_true(level.var_67a68459)) {
            return true;
        }
    }
    return false;
}

// Namespace display_transition/display_transition
// Params 3, eflags: 0x2 linked
// Checksum 0x87e72696, Offset: 0x1a50
// Size: 0x174
function function_7e8f8c47(transitions, outcome, lui_event) {
    foreach (index, transition in transitions) {
        if (function_40a46b5b(transition, outcome)) {
            continue;
        }
        level notify(#"display_transition", index);
        display_transition(transition, index, outcome, lui_event);
        if ((isdefined(transition.time) ? transition.time : 0) != 0) {
            round_end_wait(float(transition.time) / 1000);
        }
        function_f2ffece2(transition, outcome, transitions[index + 1]);
    }
    clear_transition();
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x2 linked
// Checksum 0xb332c669, Offset: 0x1bd0
// Size: 0x3c
function function_15e28b1a(outcome) {
    function_7e8f8c47(level.var_d1455682.finaldisplaytransition, outcome, #"match_transition");
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x2 linked
// Checksum 0x5986a04b, Offset: 0x1c18
// Size: 0xac
function function_cf3d556b(outcome) {
    if (is_true(level.var_d1455682.var_e779605d)) {
        if (util::waslastround() || util::isoneround()) {
            return;
        }
    }
    transitions = level.var_d1455682.rounddisplaytransition;
    if (!isdefined(transitions)) {
        return;
    }
    function_7e8f8c47(transitions, outcome, #"round_transition");
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x2 linked
// Checksum 0x65ee8fa9, Offset: 0x1cd0
// Size: 0x42
function round_end_wait(time) {
    if (time <= 0) {
        return;
    }
    level waittilltimeout(time * level.var_49d9aa70, #"hash_197c640e2f684a74");
}

// Namespace display_transition/display_transition
// Params 1, eflags: 0x0
// Checksum 0x33b72cc3, Offset: 0x1d20
// Size: 0xd8
function function_ad717b18(var_c139bfe2) {
    assert(isdefined(level.roundenddelay[var_c139bfe2]));
    delay = level.roundenddelay[var_c139bfe2] * level.var_49d9aa70;
    if (delay) {
        return;
    }
    var_f05b8779 = delay / 2;
    if (var_f05b8779 > 0) {
        wait(var_f05b8779);
        var_f05b8779 = delay / 2;
    } else {
        var_f05b8779 = delay / 2 + var_f05b8779;
    }
    level notify(#"give_match_bonus");
    if (var_f05b8779 > 0) {
        wait(var_f05b8779);
    }
}

