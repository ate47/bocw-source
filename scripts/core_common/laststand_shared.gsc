// Atian COD Tools GSC CW decompiler test
#using script_243ea03c7a285692;
#using scripts\core_common\util_shared.gsc;

#namespace laststand;

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7bf49165, Offset: 0x90
// Size: 0x1a
function player_is_in_laststand() {
    return is_true(self.laststand);
}

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf77627e3, Offset: 0xb8
// Size: 0x6e
function player_num_in_laststand() {
    num = 0;
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        if (players[i] player_is_in_laststand()) {
            num++;
        }
    }
    return num;
}

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x0
// Checksum 0x8d308391, Offset: 0x130
// Size: 0x26
function player_all_players_in_laststand() {
    return player_num_in_laststand() == getplayers().size;
}

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x24072d4f, Offset: 0x160
// Size: 0x16
function player_any_player_in_laststand() {
    return player_num_in_laststand() > 0;
}

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x0
// Checksum 0xa1c63b0a, Offset: 0x180
// Size: 0xf2
function function_7fb2bbfc() {
    var_5eb47b1d = [];
    foreach (player in function_a1ef346b()) {
        if (!player inlaststand()) {
            if (!isdefined(var_5eb47b1d)) {
                var_5eb47b1d = [];
            } else if (!isarray(var_5eb47b1d)) {
                var_5eb47b1d = array(var_5eb47b1d);
            }
            var_5eb47b1d[var_5eb47b1d.size] = player;
        }
    }
    return var_5eb47b1d;
}

// Namespace laststand/laststand_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb3a843d1, Offset: 0x280
// Size: 0x124
function is_facing(facee, requireddot = 0.9) {
    orientation = self getplayerangles();
    forwardvec = anglestoforward(orientation);
    forwardvec2d = (forwardvec[0], forwardvec[1], 0);
    unitforwardvec2d = vectornormalize(forwardvec2d);
    tofaceevec = facee.origin - self.origin;
    tofaceevec2d = (tofaceevec[0], tofaceevec[1], 0);
    unittofaceevec2d = vectornormalize(tofaceevec2d);
    dotproduct = vectordot(unitforwardvec2d, unittofaceevec2d);
    return dotproduct > requireddot;
}

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1f185bbb, Offset: 0x3b0
// Size: 0x8c
function revive_hud_create() {
    assert(isdefined(level.revive_hud));
    if (!level.revive_hud revive_hud::is_open(self)) {
        level.revive_hud revive_hud::open(self, 1 | 2 | 4);
    }
    self thread function_7c7d873();
}

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa8e55a57, Offset: 0x448
// Size: 0x1c
function function_7c7d873() {
    waitframe(1);
    self function_f5714974();
}

// Namespace laststand/laststand_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x40554f75, Offset: 0x470
// Size: 0x13c
function revive_hud_show_n_fade(text, time, player = undefined) {
    if (!is_true(level.var_dc60105c) && isdefined(level.revive_hud) && level.revive_hud revive_hud::is_open(self)) {
        level.revive_hud revive_hud::set_fadetime(self, 0);
        util::wait_network_frame();
        if (!isdefined(self)) {
            return;
        }
        level.revive_hud revive_hud::set_text(self, text);
        if (isdefined(player)) {
            level.revive_hud revive_hud::set_clientnum(self, player getentitynumber());
        }
        level.revive_hud revive_hud::set_fadetime(self, int(time * 10));
    }
}

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3798a377, Offset: 0x5b8
// Size: 0x5c
function function_f5714974() {
    if (isdefined(self) && isdefined(level.revive_hud) && level.revive_hud revive_hud::is_open(self)) {
        level.revive_hud revive_hud::set_fadetime(self, 0);
    }
}

/#

    // Namespace laststand/laststand_shared
    // Params 3, eflags: 0x0
    // Checksum 0x4f49ccd3, Offset: 0x620
    // Size: 0x234
    function drawcylinder(pos, rad, height) {
        currad = rad;
        curheight = height;
        for (r = 0; r < 20; r++) {
            theta = r / 20 * 360;
            theta2 = (r + 1) / 20 * 360;
            line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta2) * currad, sin(theta2) * currad, 0));
            line(pos + (cos(theta) * currad, sin(theta) * currad, curheight), pos + (cos(theta2) * currad, sin(theta2) * currad, curheight));
            line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta) * currad, sin(theta) * currad, curheight));
        }
    }

#/

// Namespace laststand/laststand_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x981735f8, Offset: 0x860
// Size: 0x74
function function_d4c9e1b5() {
    self endon(#"player_revived", #"player_suicide", #"bled_out");
    self waittill(#"disconnect");
    if (isdefined(self.revivetrigger)) {
        self.revivetrigger delete();
    }
}

