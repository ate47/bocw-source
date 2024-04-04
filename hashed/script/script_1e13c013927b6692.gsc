// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\callbacks.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_fa39a5c3;

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 0, eflags: 0x5
// Checksum 0xcc3a549e, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5a3be2f74ac4fe03", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 0, eflags: 0x2 linked
// Checksum 0x380dd6af, Offset: 0x1b0
// Size: 0xfc
function preinit() {
    clientfield::register("toplayer", "" + #"hash_69dc133e22a2769f", 16000, 1, "int");
    level.var_5bfd847e = #"hash_3b7ec2c707912dd9";
    level.var_e9737821 = &function_c52e8ba;
    level.var_352c9e03 = &function_af65fe93;
    level.var_91171ae5 = &function_54a36ee5;
    level flag::set(#"hash_7735f4e5fdb1382b");
    callback::on_spawned(&on_player_spawned);
    level thread function_d467cf16();
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 0, eflags: 0x2 linked
// Checksum 0xe87dbfe8, Offset: 0x2b8
// Size: 0x4c
function on_player_spawned() {
    if (is_true(self.is_hotjoining) || self util::is_spectating()) {
        return;
    }
    self thread function_bce9fcbe();
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 0, eflags: 0x2 linked
// Checksum 0x6bd7d320, Offset: 0x310
// Size: 0x3c
function function_d467cf16() {
    level waittill(#"all_players_spawned");
    level flag::set(#"hash_3b7ec2c707912dd9");
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 2, eflags: 0x2 linked
// Checksum 0x598556c8, Offset: 0x358
// Size: 0x4e6
function function_c52e8ba(player, var_8d5d092c) {
    b_result = 0;
    if (!isdefined(self.hint_string)) {
        self.hint_string = [];
    }
    n_player_index = player getentitynumber();
    if (!self zm_fasttravel::function_d06e636b(player) || player isswitchingweapons() || level flag::get(#"hash_49e515cdcf4bb8db")) {
        self.hint_string[n_player_index] = #"";
    } else if (isdefined(self.stub.var_a92d1b24) && !level flag::get_all(self.stub.var_a92d1b24)) {
        switch (self.stub.script_string) {
        case #"village":
        case #"firebase":
            self.hint_string[n_player_index] = #"zombie/fasttravel_locked";
            break;
        default:
            break;
        }
        b_result = 1;
    } else if (is_true(player.var_9c7b96ed[var_8d5d092c])) {
        switch (self.stub.script_string) {
        case #"village":
            self.hint_string[n_player_index] = #"hash_1b9857d1769d3430";
            b_result = 1;
            break;
        case #"firebase":
            self.hint_string[n_player_index] = #"hash_6357eb67494da1b";
            b_result = 1;
            break;
        }
    } else if (isdefined(self.stub.delay) && !self.stub flag::get("delayed")) {
        switch (self.stub.script_string) {
        case #"village":
            self.hint_string[n_player_index] = #"hash_1b9857d1769d3430";
            b_result = 1;
            break;
        case #"firebase":
            self.hint_string[n_player_index] = #"hash_6357eb67494da1b";
            b_result = 1;
            break;
        }
    } else {
        switch (self.stub.script_string) {
        case #"village":
            if (level flag::get(#"hash_7752d012501cd222") || level flag::get(#"hash_7735f4e5fdb1382b")) {
                self.hint_string[n_player_index] = #"hash_1155071b36db5cc4";
            } else {
                self.hint_string[n_player_index] = #"hash_661484e87df6401d";
                if (!player zm_score::can_player_purchase(self.stub.zombie_cost)) {
                    player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                }
            }
            break;
        case #"firebase":
            if (level flag::get(#"hash_7752d012501cd222") || level flag::get(#"hash_7735f4e5fdb1382b")) {
                self.hint_string[n_player_index] = #"hash_6da21d98bf10aee5";
            } else {
                self.hint_string[n_player_index] = #"hash_3bd7d7def4239ab6";
                if (!player zm_score::can_player_purchase(self.stub.zombie_cost)) {
                    player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                }
            }
            break;
        }
        b_result = 1;
    }
    return b_result;
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 1, eflags: 0x2 linked
// Checksum 0x90499ba, Offset: 0x848
// Size: 0xec
function function_af65fe93(var_79bf62e6) {
    if (!isplayer(self) || !isdefined(var_79bf62e6)) {
        return;
    }
    str_loc = var_79bf62e6.stub.script_string;
    s_loc = struct::get(str_loc + "_end_" + zm_fasttravel::get_player_index(self));
    self util::create_streamer_hint(s_loc.origin, s_loc.angles, 1);
    self util::delay("fasttravel_over", "disconnect", &util::clear_streamer_hint);
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 1, eflags: 0x2 linked
// Checksum 0x151255c7, Offset: 0x940
// Size: 0x9a
function function_54a36ee5(e_unitrigger) {
    if (level flag::get(#"hash_7752d012501cd222") || level flag::get(#"hash_7735f4e5fdb1382b")) {
        n_cost = 0;
    } else if (isdefined(e_unitrigger.stub)) {
        n_cost = e_unitrigger.stub.zombie_cost;
    } else {
        n_cost = e_unitrigger.zombie_cost;
    }
    return n_cost;
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 0, eflags: 0x2 linked
// Checksum 0x73f2ae5d, Offset: 0x9e8
// Size: 0xde
function function_bce9fcbe() {
    level endon(#"end_game");
    self endon(#"disconnect", #"death");
    while (true) {
        var_e8178f0 = self zm_zonemgr::is_player_in_zone(["zone_portal_transfer", "zone_firebase2", "zone_firebase3"]);
        self clientfield::set_to_player("" + #"hash_69dc133e22a2769f", var_e8178f0);
        self waittill(#"zone_change");
    }
}

