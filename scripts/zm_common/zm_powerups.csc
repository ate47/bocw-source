// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerups;

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x27b1f7e7, Offset: 0x248
// Size: 0x224
function init() {
    if (!isdefined(level.zombie_powerups)) {
        level.zombie_powerups = [];
    }
    add_zombie_powerup("insta_kill_ug", "powerup_instant_kill_ug", 1);
    level._effect[#"powerup_on_caution"] = #"zombie/fx_powerup_on_caution_zmb";
    level._effect[#"hash_216d76ce6f19d51c"] = #"hash_2e09347c65fb17c1";
    level._effect[#"powerup_grabbed_caution"] = #"zombie/fx_powerup_grab_caution_zmb";
    if (is_true(level.using_zombie_powerups)) {
        level._effect[#"powerup_on_red"] = #"zombie/fx_powerup_on_red_zmb";
        level._effect[#"hash_68ab4922f64db792"] = #"hash_62b15f4f400643ab";
        level._effect[#"powerup_grabbed_red"] = #"zombie/fx_powerup_grab_red_zmb";
    }
    clientfield::register("scriptmover", "powerup_fx", 1, 3, "int", &powerup_fx_callback, 0, 0);
    clientfield::register("scriptmover", "powerup_intro_fx", 1, 3, "int", &function_618b5680, 0, 0);
    clientfield::register("scriptmover", "powerup_grabbed_fx", 1, 3, "int", &function_9f7265fd, 0, 0);
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0x4da970a, Offset: 0x478
// Size: 0x3b6
function add_zombie_powerup(powerup_name, client_field_name, clientfield_version = 1) {
    if (isdefined(level.zombie_include_powerups) && !isdefined(level.zombie_include_powerups[powerup_name])) {
        return;
    }
    switch (powerup_name) {
    case #"full_ammo":
        str_rule = "zmPowerupMaxAmmo";
        break;
    case #"fire_sale":
        str_rule = "zmPowerupFireSale";
        break;
    case #"bonus_points_player_shared":
    case #"bonus_points_player":
    case #"bonus_points_team":
        str_rule = "zmPowerupChaosPoints";
        break;
    case #"free_perk":
        str_rule = "zmPowerupFreePerk";
        break;
    case #"nuke":
        str_rule = "zmPowerupNuke";
        break;
    case #"hero_weapon_power":
        str_rule = "zmPowerupSpecialWeapon";
        break;
    case #"insta_kill":
        str_rule = "zmPowerupInstakill";
        break;
    case #"double_points":
        str_rule = "zmPowerupDouble";
        break;
    case #"carpenter":
        str_rule = "zmPowerupCarpenter";
        break;
    case #"cranked_pause":
        str_rule = "zmPowerupCrankedPause";
        break;
    default:
        str_rule = "";
        break;
    }
    if (str_rule != "" && !is_true(getgametypesetting(str_rule))) {
        return;
    }
    struct = spawnstruct();
    struct.powerup_name = powerup_name;
    level.zombie_powerups[powerup_name] = struct;
    if (isdefined(client_field_name)) {
        var_4e6e65fa = "hudItems.zmPowerUps." + client_field_name + ".state";
        var_d75767cb = "hudItems.zmPowerUps." + client_field_name + ".timeRemaining";
        clientfield::register_clientuimodel(var_4e6e65fa, #"hash_6bba1b88c856cfdf", [hash(client_field_name), #"state"], clientfield_version, 2, "int", &powerup_state_callback, 0, 1);
        clientfield::register_clientuimodel(var_d75767cb, #"hash_6bba1b88c856cfdf", [hash(client_field_name), #"timeremaining"], clientfield_version, 8, "int", undefined, 0, 1);
        struct.client_field_name = var_4e6e65fa;
        struct.var_b79536ad = var_d75767cb;
    }
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xb1c864bf, Offset: 0x838
// Size: 0x3c
function include_zombie_powerup(powerup_name) {
    if (!isdefined(level.zombie_include_powerups)) {
        level.zombie_include_powerups = [];
    }
    level.zombie_include_powerups[powerup_name] = 1;
}

// Namespace zm_powerups/zm_powerups
// Params 7, eflags: 0x2 linked
// Checksum 0x92d47d1a, Offset: 0x880
// Size: 0x76
function powerup_state_callback(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    self notify(#"powerup", {#powerup:bwastimejump, #state:fieldname});
}

// Namespace zm_powerups/zm_powerups
// Params 7, eflags: 0x2 linked
// Checksum 0x5609e723, Offset: 0x900
// Size: 0x14c
function powerup_fx_callback(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_d6070ac5(fieldname);
    switch (bwastimejump) {
    case 1:
        str_fx = #"hash_5e119c0907721bc6";
        break;
    case 2:
        str_fx = #"hash_159f72c30fdda87b";
        break;
    case 3:
        str_fx = level._effect[#"powerup_on_red"];
        break;
    case 4:
        str_fx = level._effect[#"powerup_on_caution"];
        break;
    default:
        return;
    }
    self play_powerup_fx(fieldname, str_fx);
}

// Namespace zm_powerups/zm_powerups
// Params 7, eflags: 0x2 linked
// Checksum 0xa0458dd2, Offset: 0xa58
// Size: 0x144
function function_618b5680(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_d6070ac5(fieldname);
    switch (bwastimejump) {
    case 1:
        str_fx = #"hash_511f70cb60957320";
        break;
    case 2:
        str_fx = #"hash_394b4cd00458a48b";
        break;
    case 3:
        str_fx = level._effect[#"hash_68ab4922f64db792"];
        break;
    case 4:
        str_fx = level._effect[#"hash_216d76ce6f19d51c"];
    default:
        return;
    }
    self play_powerup_fx(fieldname, str_fx, 1);
}

// Namespace zm_powerups/zm_powerups
// Params 7, eflags: 0x2 linked
// Checksum 0x56f096ec, Offset: 0xba8
// Size: 0x14c
function function_9f7265fd(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        str_fx = #"hash_77e0a146edca56f1";
        break;
    case 2:
        str_fx = #"hash_51d73f69b757027e";
        break;
    case 3:
        str_fx = level._effect[#"powerup_grabbed_red"];
        break;
    case 4:
        str_fx = level._effect[#"powerup_grabbed_caution"];
        break;
    default:
        return;
    }
    playfx(fieldname, str_fx, self.origin);
    self function_3c61c865();
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x6 linked
// Checksum 0x99bfcfb4, Offset: 0xd00
// Size: 0x8c
function private function_d6070ac5(localclientnum) {
    if (isdefined(self.n_powerup_fx)) {
        stopfx(localclientnum, self.n_powerup_fx);
        self.n_powerup_fx = undefined;
    }
    if (isdefined(self.var_71e06c56)) {
        self stoploopsound(self.var_71e06c56);
        self.var_71e06c56 = undefined;
    }
    self function_3c61c865();
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x8661fd23, Offset: 0xd98
// Size: 0xb4
function function_64c47bbc(localclientnum) {
    var_4972e475 = util::spawn_model(localclientnum, #"p7_zm_power_up", self.origin);
    var_4972e475 function_619a5c20();
    var_4972e475.var_fc558e74 = isdefined(level.var_a0b1f787[self.model]) ? level.var_a0b1f787[self.model] : undefined;
    self.var_4972e475 = var_4972e475;
    callback::on_shutdown(&function_3c61c865);
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x6 linked
// Checksum 0x468254b2, Offset: 0xe58
// Size: 0x34
function private function_3c61c865(*localclientnum) {
    if (isdefined(self.var_4972e475)) {
        self.var_4972e475 delete();
    }
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x6 linked
// Checksum 0x6db2a92f, Offset: 0xe98
// Size: 0x162
function private play_powerup_fx(localclientnum, str_fx, var_6df65756 = 0) {
    if (self.model !== #"tag_origin") {
        forcestreamxmodel(self.model);
        util::delay(1, undefined, &stopforcestreamingxmodel, self.model);
        self function_64c47bbc(localclientnum);
    }
    self util::waittill_dobj(localclientnum);
    if (!isdefined(self)) {
        return;
    }
    if (var_6df65756 && !isdefined(self.var_71e06c56)) {
        self playsound(localclientnum, #"hash_2b64fe9035ff0dda");
        self.var_71e06c56 = self playloopsound(#"hash_53c07a5f8f84189b");
    }
    self.n_powerup_fx = util::playfxontag(localclientnum, str_fx, self, "tag_origin");
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x2a7c681, Offset: 0x1008
// Size: 0x1c
function function_cc33adc8() {
    return util::get_game_type() != "zcleansed";
}

