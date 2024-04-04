// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace zm_trial_damage_drains_points;

// Namespace zm_trial_damage_drains_points/zm_trial_damage_drains_points
// Params 0, eflags: 0x5
// Checksum 0x5ae93d5c, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_damage_drains_points", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_damage_drains_points/zm_trial_damage_drains_points
// Params 0, eflags: 0x6 linked
// Checksum 0xbcf0cba1, Offset: 0xf8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"damage_drains_points", &on_begin, &on_end);
}

// Namespace zm_trial_damage_drains_points/zm_trial_damage_drains_points
// Params 2, eflags: 0x6 linked
// Checksum 0x70bf768, Offset: 0x160
// Size: 0xb8
function private on_begin(var_66fe7443, var_ec90b685) {
    if (isdefined(var_ec90b685)) {
        self.var_ec90b685 = 1;
        callback::on_ai_killed(&function_8e0401ab);
        level.var_a58dc99e = zm_trial::function_5769f26a(var_66fe7443);
        return;
    }
    var_620e7dea = zm_trial::function_5769f26a(var_66fe7443) / 100;
    level.var_baf7ae7f = level.var_a2d8b7eb;
    level.var_a2d8b7eb = var_620e7dea;
}

// Namespace zm_trial_damage_drains_points/zm_trial_damage_drains_points
// Params 1, eflags: 0x6 linked
// Checksum 0x7dadcb96, Offset: 0x220
// Size: 0x76
function private on_end(*round_reset) {
    if (is_true(self.var_ec90b685)) {
        callback::remove_on_ai_killed(&function_8e0401ab);
        level.var_a58dc99e = undefined;
        self.var_ec90b685 = undefined;
        return;
    }
    level.var_a2d8b7eb = level.var_baf7ae7f;
    level.var_baf7ae7f = undefined;
}

// Namespace zm_trial_damage_drains_points/zm_trial_damage_drains_points
// Params 1, eflags: 0x2 linked
// Checksum 0xcaf5152b, Offset: 0x2a0
// Size: 0x86
function is_active(var_a32bbdd = 0) {
    s_challenge = zm_trial::function_a36e8c38(#"damage_drains_points");
    if (var_a32bbdd) {
        if (isdefined(s_challenge) && is_true(s_challenge.var_ec90b685)) {
            return true;
        }
        return false;
    }
    return isdefined(s_challenge);
}

// Namespace zm_trial_damage_drains_points/zm_trial_damage_drains_points
// Params 1, eflags: 0x6 linked
// Checksum 0xc21b3754, Offset: 0x330
// Size: 0xec
function private function_8e0401ab(params) {
    if (is_true(self.nuked)) {
        a_players = function_a1ef346b();
        var_fc97ca4d = array::random(a_players);
        if (isplayer(var_fc97ca4d)) {
            var_fc97ca4d zm_score::minus_to_player_score(level.var_a58dc99e, 1);
        }
        return;
    }
    if (isplayer(params.eattacker)) {
        params.eattacker zm_score::minus_to_player_score(level.var_a58dc99e, 1);
    }
}

