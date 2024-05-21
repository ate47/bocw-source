// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_wallbuy.csc;
#using scripts\zm_common\zm_customgame.csc;
#using scripts\zm_common\zm_maptable.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\activecamo_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_utility;

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x5
// Checksum 0x64f2a5a9, Offset: 0x298
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_utility", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x76c15218, Offset: 0x2f0
// Size: 0x4a4
function private preinit() {
    level._effect[#"zm_zone_edge_marker"] = #"hash_3002526b7ff53cbf";
    clientfield::register_clientuimodel("hudItems.armorType", #"hash_6f4b11a0bee9b73d", #"armortype", 1, 2, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.armorPercent", #"hash_6f4b11a0bee9b73d", #"armorpercent", 1, 7, "float", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.scrap", #"hash_6f4b11a0bee9b73d", #"scrap", 1, 16, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.rareScrap", #"hash_6f4b11a0bee9b73d", #"hash_d6fdfc12ead24ba", 1, 16, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("pap_current", #"zm_hud", #"hash_64f2ff2ddddbe9c7", 1, 2, "int", undefined, 0, 0);
    clientfield::register("toplayer", "zm_zone_out_of_bounds", 1, 1, "int", &zm_zone_out_of_bounds, 0, 0);
    clientfield::register("actor", "flame_corpse_fx", 1, 1, "int", &flame_corpse_fx, 0, 0);
    clientfield::register("scriptmover", "model_rarity_rob", 1, 3, "int", &model_rarity_rob, 0, 0);
    clientfield::register("scriptmover", "set_compass_icon", 1, 1, "int", &set_compass_icon, 0, 0);
    clientfield::register("scriptmover", "force_stream", 1, 1, "int", &force_stream_changed, 0, 0);
    callback::on_localclient_connect(&on_localclient_connect);
    for (i = 0; i < 5; i++) {
        clientfield::function_5b7d846d("PlayerList.client" + i + ".playerIsDowned", #"hash_97df1852304b867", [hash(isdefined(i) ? "" + i : ""), #"playerisdowned"], 1, 1, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("PlayerList.client" + i + ".self_revives", #"hash_97df1852304b867", [hash(isdefined(i) ? "" + i : ""), #"self_revives"], 1, 8, "int", undefined, 0, 0);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x734e882d, Offset: 0x7a0
// Size: 0x24
function on_localclient_connect(localclientnum) {
    level thread function_725e99fb(localclientnum);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x7d0
// Size: 0x4
function private postinit() {
    
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x5ba34810, Offset: 0x7e0
// Size: 0x5a
function ignore_triggers(timer) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    self.ignoretriggers = 1;
    if (isdefined(timer)) {
        wait(timer);
    } else {
        wait(0.5);
    }
    self.ignoretriggers = 0;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x38402a50, Offset: 0x848
// Size: 0x6
function is_encounter() {
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x447cdead, Offset: 0x858
// Size: 0x3e
function round_up_to_ten(score) {
    new_score = score - score % 10;
    if (new_score < score) {
        new_score += 10;
    }
    return new_score;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xe76d368b, Offset: 0x8a0
// Size: 0x5c
function round_up_score(score, value) {
    score = int(score);
    new_score = score - score % value;
    if (new_score < score) {
        new_score += value;
    }
    return new_score;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x76d8dfe0, Offset: 0x908
// Size: 0x3a
function halve_score(n_score) {
    n_score /= 2;
    n_score = round_up_score(n_score, 10);
    return n_score;
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x0
// Checksum 0x9dc63562, Offset: 0x950
// Size: 0xe0
function spawn_weapon_model(localclientnum, weapon, model = weapon.worldmodel, origin, angles, renderoptionsweapon, var_fd90b0bb) {
    weapon_model = spawn(localclientnum, origin, "script_model");
    if (isdefined(angles)) {
        weapon_model.angles = angles;
    }
    if (isdefined(renderoptionsweapon) || isdefined(var_fd90b0bb)) {
        weapon_model useweaponmodel(weapon, model, renderoptionsweapon, var_fd90b0bb);
    } else {
        weapon_model useweaponmodel(weapon, model);
    }
    return weapon_model;
}

// Namespace zm_utility/zm_utility
// Params 5, eflags: 0x2 linked
// Checksum 0x92ea5363, Offset: 0xa38
// Size: 0xa0
function spawn_buildkit_weapon_model(localclientnum, weapon, camo, origin, angles) {
    weapon_model = spawn(localclientnum, origin, "script_model");
    if (isdefined(angles)) {
        weapon_model.angles = angles;
    }
    weapon_model usebuildkitweaponmodel(localclientnum, weapon, camo);
    weapon_model activecamo::function_e40c785a(localclientnum);
    return weapon_model;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x17d65f86, Offset: 0xae0
// Size: 0x40
function is_classic() {
    str_gametype = util::get_game_type();
    if (str_gametype == #"zclassic") {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xacb8c1e1, Offset: 0xb28
// Size: 0x40
function is_survival() {
    str_gametype = util::get_game_type();
    if (str_gametype == #"zsurvival") {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xfa4167a6, Offset: 0xb70
// Size: 0x40
function is_standard() {
    str_gametype = util::get_game_type();
    if (str_gametype == #"zstandard") {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xc09fd250, Offset: 0xbb8
// Size: 0x68
function is_trials() {
    str_gametype = util::get_game_type();
    if (str_gametype == #"ztrials" || level flag::exists(#"ztrial")) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xf78ac7f5, Offset: 0xc28
// Size: 0x40
function is_tutorial() {
    str_gametype = util::get_game_type();
    if (str_gametype == #"ztutorial") {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x9bf463a6, Offset: 0xc70
// Size: 0x40
function is_grief() {
    str_gametype = util::get_game_type();
    if (str_gametype == #"zgrief") {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0xc3afff16, Offset: 0xcb8
// Size: 0x92
function is_gametype_active(a_gametypes) {
    b_is_gametype_active = 0;
    if (!isarray(a_gametypes)) {
        a_gametypes = array(a_gametypes);
    }
    for (i = 0; i < a_gametypes.size; i++) {
        if (util::get_game_type() == a_gametypes[i]) {
            b_is_gametype_active = 1;
        }
    }
    return b_is_gametype_active;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf4c6b8f0, Offset: 0xd58
// Size: 0x6a
function is_ee_enabled() {
    if (!getdvarint(#"zm_ee_enabled", 0)) {
        return false;
    }
    if (!zm_custom::function_901b751c(#"hash_3c5363541b97ca3e")) {
        return false;
    }
    if (level.gamedifficulty == 0) {
        return false;
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x7a269486, Offset: 0xdd0
// Size: 0x7a
function function_36e7b4a2() {
    if (is_true(getgametypesetting(#"hash_5d6471cd7038852e")) && !is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x0
// Checksum 0xad61a2d5, Offset: 0xe58
// Size: 0xa4
function setinventoryuimodels(localclientnum, *oldval, newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    if (function_65b9eb0f(binitialsnap)) {
        return;
    }
    setuimodelvalue(createuimodel(function_1df4c3b0(binitialsnap, #"zm_inventory"), bwastimejump), fieldname);
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x0
// Checksum 0x57ab7568, Offset: 0xf08
// Size: 0x84
function setsharedinventoryuimodels(localclientnum, *oldval, newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    setuimodelvalue(createuimodel(function_1df4c3b0(binitialsnap, #"zm_inventory"), bwastimejump), fieldname);
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x0
// Checksum 0x2071395f, Offset: 0xf98
// Size: 0xec
function zm_ui_infotext(localclientnum, *oldval, newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    if (fieldname) {
        setuimodelvalue(createuimodel(function_1df4c3b0(binitialsnap, #"zm_inventory"), "infoText"), bwastimejump);
        return;
    }
    setuimodelvalue(createuimodel(function_1df4c3b0(binitialsnap, #"zm_inventory"), "infoText"), "");
}

/#

    // Namespace zm_utility/zm_utility
    // Params 4, eflags: 0x0
    // Checksum 0xa3f25bcb, Offset: 0x1090
    // Size: 0x274
    function drawcylinder(pos, rad, height, color) {
        currad = rad;
        curheight = height;
        debugstar(pos, 1, color);
        for (r = 0; r < 20; r++) {
            theta = r / 20 * 360;
            theta2 = (r + 1) / 20 * 360;
            line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta2) * currad, sin(theta2) * currad, 0), color, 1, 1, 100);
            line(pos + (cos(theta) * currad, sin(theta) * currad, curheight), pos + (cos(theta2) * currad, sin(theta2) * currad, curheight), color, 1, 1, 100);
            line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta) * currad, sin(theta) * currad, curheight), color, 1, 1, 100);
        }
    }

#/

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb5e993de, Offset: 0x1310
// Size: 0xbe
function function_f8796df3(localclientnum) {
    b_first = 0;
    if (isplayer(self) && self function_21c0fa55() && !isdemoplaying()) {
        var_27cd9fcb = self getlocalclientnumber();
        if ((!isdefined(var_27cd9fcb) || localclientnum == var_27cd9fcb) && !isthirdperson(localclientnum)) {
            b_first = 1;
        }
    }
    return b_first;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x3615f925, Offset: 0x13d8
// Size: 0x14e
function function_467efa7b(var_9f3fb329 = 0) {
    if (!isdefined(self.archetype)) {
        return "tag_origin";
    }
    switch (self.archetype) {
    case #"stoker":
    case #"catalyst":
    case #"gladiator":
    case #"nova_crawler":
    case #"zombie":
    case #"ghost":
    case #"brutus":
        if (var_9f3fb329) {
            str_tag = "j_spine4";
        } else {
            str_tag = "j_spineupper";
        }
        break;
    case #"blight_father":
    case #"tiger":
    case #"elephant":
        str_tag = "j_head";
        break;
    default:
        str_tag = "tag_origin";
        break;
    }
    return str_tag;
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0x10776521, Offset: 0x1530
// Size: 0x108
function function_bb54a31f(*localclientnum, var_20804e3b, var_3ab46b9) {
    self endon(var_3ab46b9);
    s_result = level waittill(#"respawn");
    a_e_players = getlocalplayers();
    foreach (e_player in a_e_players) {
        if (e_player postfx::function_556665f2(var_20804e3b)) {
            e_player postfx::exitpostfxbundle(var_20804e3b);
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xbad400c, Offset: 0x1640
// Size: 0xfe
function function_ae3780f1(localclientnum, n_fx_id, var_3ab46b9) {
    self endon(var_3ab46b9);
    s_result = level waittill(#"respawn");
    a_e_players = getlocalplayers();
    foreach (e_player in a_e_players) {
        if (isdefined(n_fx_id)) {
            deletefx(localclientnum, n_fx_id);
            n_fx_id = undefined;
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x518fc8c5, Offset: 0x1748
// Size: 0x12
function get_cast() {
    return zm_maptable::get_cast();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x30413c64, Offset: 0x1768
// Size: 0x12
function get_story() {
    return zm_maptable::get_story();
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x2 linked
// Checksum 0x1d756dd7, Offset: 0x1788
// Size: 0x14c
function zm_zone_out_of_bounds(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_20861007)) {
        level.var_20861007 = [];
    }
    if (!isdefined(level.var_20861007[fieldname])) {
        level.var_20861007[fieldname] = util::spawn_model(fieldname, "tag_origin");
    }
    if (bwastimejump) {
        level.var_20861007[fieldname] playloopsound(#"hash_6da7ae12f538ef5e", 0.5);
        self postfx::playpostfxbundle(#"hash_798237aa1bad3d7d");
        return;
    }
    level.var_20861007[fieldname] stopallloopsounds(0.5);
    self postfx::exitpostfxbundle(#"hash_798237aa1bad3d7d");
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x2 linked
// Checksum 0xea8b02d1, Offset: 0x18e0
// Size: 0x14e
function flame_corpse_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        if (isdefined(self.var_71a7fc1c)) {
            stopfx(fieldname, self.var_71a7fc1c);
        }
        str_tag = "j_spineupper";
        if (!isdefined(self gettagorigin(str_tag))) {
            str_tag = "tag_origin";
        }
        if (isdefined(level._effect) && isdefined(level._effect[#"character_fire_death_torso"])) {
            self.var_71a7fc1c = util::playfxontag(fieldname, level._effect[#"character_fire_death_torso"], self, str_tag);
        }
        return;
    }
    if (isdefined(self.var_71a7fc1c)) {
        stopfx(fieldname, self.var_71a7fc1c);
        self.var_71a7fc1c = undefined;
    }
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x2 linked
// Checksum 0xfaefa576, Offset: 0x1a38
// Size: 0x1ec
function model_rarity_rob(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    switch (bwasdemojump) {
    case 1:
        self.var_d9e5ccb2 = #"hash_6f1ab68ac78ac2ea";
        break;
    case 2:
        self.var_d9e5ccb2 = #"hash_312ceb838675b80";
        break;
    case 3:
        self.var_d9e5ccb2 = #"hash_70c807782a37573e";
        break;
    case 4:
        self.var_d9e5ccb2 = #"hash_5b08235c0b55a003";
        break;
    case 5:
        self.var_d9e5ccb2 = #"rob_sr_item_purple";
        break;
    case 6:
        self.var_d9e5ccb2 = #"hash_64261dabb4df88cd";
        break;
    case 7:
        self.var_d9e5ccb2 = #"rob_sr_item_gold";
        break;
    case 0:
    default:
        if (isdefined(self.var_d9e5ccb2)) {
            self stoprenderoverridebundle(self.var_d9e5ccb2);
            self.var_d9e5ccb2 = undefined;
        }
        break;
    }
    if (isdefined(self.var_d9e5ccb2)) {
        self playrenderoverridebundle(self.var_d9e5ccb2);
    }
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x2 linked
// Checksum 0xd75614b1, Offset: 0x1c30
// Size: 0x266
function set_compass_icon(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        switch (self.model) {
        case #"p9_zm_platinum_radio_call_boxes_on":
            str_objective = #"hash_4542aa212012068";
            break;
        case #"p8_wz_ep_fishing_pole":
            str_objective = #"hash_249d888e2d3c6aed";
            break;
        case #"hash_94b3a8b935248d0":
            str_objective = #"hash_669c000075d7222";
            break;
        case #"hash_49efe3c0dddfa33":
            str_objective = #"hash_1da886c89c2e4073";
            break;
        case #"hash_1fc19d4cd59c0246":
            str_objective = #"hash_73705646f7ccc79c";
            break;
        case #"hash_3d3aeedc296addd":
            str_objective = #"hash_5ae3492cc261d9c9";
            break;
        case #"p9_zm_gold_teleporter_b":
            str_objective = #"hash_48c296f58e75bbc7";
            break;
        case #"p9_zm_gold_jumppads_machine_mod":
            str_objective = #"hash_7ccf11b4a680682a";
            break;
        case #"p9_zm_gold_jumppads_machine_sub":
            str_objective = #"hash_7f5d2d61a6f36e5d";
            break;
        case #"p8_zm_off_trap_switch_box":
            str_objective = #"hash_6906420c98a0ea37";
            break;
        default:
            str_objective = #"hash_7ec87a35af8f03b0";
            self zm_wallbuy::function_8f12abec(fieldname);
            break;
        }
        self thread function_a1290dca(fieldname, str_objective);
        return;
    }
    self notify(#"hash_1c25e0d8228a5516");
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x77387c48, Offset: 0x1ea0
// Size: 0x284
function function_a1290dca(localclientnum, str_objective, n_range = 1500) {
    self notify("7a62b33c6cdca143");
    self endon("7a62b33c6cdca143");
    self endoncallback(&function_2b04855, #"death", #"hash_1c25e0d8228a5516");
    if (!isdefined(level.var_cef2e607[#"hash_2aeea3ff25adc082"])) {
        level.var_cef2e607[#"hash_2aeea3ff25adc082"] = -1;
    }
    level.var_cef2e607[#"hash_2aeea3ff25adc082"]++;
    wait(0.016 * (level.var_cef2e607[#"hash_2aeea3ff25adc082"] % int(0.5 / 0.016) + 1));
    while (true) {
        var_30300360 = 0;
        player = function_5c10bd79(localclientnum);
        if (isdefined(player) && function_9023da2d(player, self, n_range)) {
            var_30300360 = 1;
        }
        if (var_30300360 && !isdefined(self.n_obj_id)) {
            self.n_obj_id = util::getnextobjid(localclientnum);
            objective_add(localclientnum, self.n_obj_id, "active", str_objective, self.origin);
            objective_onentity(localclientnum, self.n_obj_id, self, 0, 1, 0);
        } else if (!var_30300360 && isdefined(self.n_obj_id)) {
            util::releaseobjid(localclientnum, self.n_obj_id);
            objective_delete(localclientnum, self.n_obj_id);
            self.n_obj_id = undefined;
        }
        wait(0.5);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc9e663be, Offset: 0x2130
// Size: 0xda
function function_2b04855(*str_notify) {
    if (isdefined(self.n_obj_id)) {
        foreach (localclientnum in function_41bfa501()) {
            util::releaseobjid(localclientnum, self.n_obj_id);
            objective_delete(localclientnum, self.n_obj_id);
        }
        self.n_obj_id = undefined;
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x32f12e8b, Offset: 0x2218
// Size: 0x13a
function function_9023da2d(player, entity, n_range) {
    if (is_survival()) {
        n_range = 3000;
    }
    n_range = isdefined(entity.var_c1ec47be) ? entity.var_c1ec47be : n_range;
    if (distance(player.origin, entity.origin) > n_range) {
        return false;
    }
    if (is_survival()) {
        return true;
    }
    var_27e54ab2 = isdefined(level.var_c2964bec) ? level.var_c2964bec : 160;
    var_27e54ab2 = isdefined(entity.var_c2964bec) ? entity.var_c2964bec : var_27e54ab2;
    if (abs(player.origin[2] - entity.origin[2]) > var_27e54ab2) {
        return false;
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x2 linked
// Checksum 0xeac4ea43, Offset: 0x2360
// Size: 0x394
function force_stream_changed(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!isdefined(level.var_c427e93b)) {
            level.var_c427e93b = [];
        } else if (!isarray(level.var_c427e93b)) {
            level.var_c427e93b = array(level.var_c427e93b);
        }
        if (!isinarray(level.var_c427e93b, self)) {
            level.var_c427e93b[level.var_c427e93b.size] = self;
        }
        if (self.model == #"p9_fxanim_zm_gp_dac_xmodel") {
            self.var_35f71e38 = array(#"hash_1a9f65484a9fb8de", #"hash_1a9f64484a9fb72b");
        } else if (self.model == #"hash_6668752a365bf732") {
            player = function_5c10bd79(fieldname);
            n_ent_num = player getentitynumber();
            switch (n_ent_num) {
            case 0:
            default:
                self.var_35f71e38 = array(#"hash_2650753cfce243b4", #"hash_43292371d31fedb3");
                break;
            case 1:
                self.var_35f71e38 = array(#"hash_365ca0e0327ab1e0", #"hash_50312a908be08ab7");
                break;
            case 2:
                self.var_35f71e38 = array(#"hash_1759c27356868ed1", #"hash_2a42c45bfee6fa40");
                break;
            case 3:
                self.var_35f71e38 = array(#"hash_63e150d3e5e0d45e", #"hash_7200223e9e420ef1");
                break;
            }
        }
        self callback::add_entity_callback(#"on_entity_shutdown", &function_1b43e8f6);
        return;
    }
    arrayremovevalue(level.var_c427e93b, self);
    if (isdefined(self.model) && self.model != "") {
        util::unlock_model(self.model);
        self callback::function_52ac9652(#"on_entity_shutdown", &function_1b43e8f6);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe9d90649, Offset: 0x2700
// Size: 0x6c
function function_1b43e8f6(*params) {
    if (self.model != "") {
        util::unlock_model(self.model);
        self callback::function_52ac9652(#"on_entity_shutdown", &function_1b43e8f6);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x25676461, Offset: 0x2778
// Size: 0xa8
function function_ca960904(machine) {
    if (!isdefined(level.var_c427e93b)) {
        level.var_c427e93b = [];
    } else if (!isarray(level.var_c427e93b)) {
        level.var_c427e93b = array(level.var_c427e93b);
    }
    if (!isinarray(level.var_c427e93b, machine)) {
        level.var_c427e93b[level.var_c427e93b.size] = machine;
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x1618fc10, Offset: 0x2828
// Size: 0x4fc
function function_725e99fb(localclientnum) {
    self notify("1d5a2d5d1c016b65");
    self endon("1d5a2d5d1c016b65");
    level endon(#"end_game");
    if (!isdefined(level.var_c427e93b)) {
        level.var_c427e93b = [];
    }
    /#
        util::init_dvar(#"hash_416069220b5b56e3", 0, &function_3a919d3f);
    #/
    while (true) {
        arrayremovevalue(level.var_c427e93b, undefined);
        /#
            if (!getdvarint(#"hash_2769a6109d9d7b4d", 1)) {
                foreach (machine in level.var_c427e93b) {
                    if (is_true(machine.var_c02c4d66)) {
                        util::unlock_model(machine.model);
                        machine.var_c02c4d66 = undefined;
                        if (isarray(machine.var_35f71e38)) {
                            foreach (var_61794186 in machine.var_35f71e38) {
                                util::unlock_model(var_61794186);
                            }
                        }
                    }
                }
                wait(1);
                continue;
            }
        #/
        foreach (machine in level.var_c427e93b) {
            if (!isdefined(machine)) {
                continue;
            }
            var_30300360 = 0;
            player = function_5c10bd79(localclientnum);
            if (isdefined(player) && function_7757350c(player, machine)) {
                var_30300360 = 1;
            }
            if (isdefined(machine)) {
                if (var_30300360 && !is_true(machine.var_c02c4d66)) {
                    util::lock_model(machine.model);
                    machine.var_c02c4d66 = 1;
                    if (isarray(machine.var_35f71e38)) {
                        foreach (var_61794186 in machine.var_35f71e38) {
                            util::lock_model(var_61794186);
                        }
                    }
                } else if (!var_30300360 && is_true(machine.var_c02c4d66)) {
                    util::unlock_model(machine.model);
                    machine.var_c02c4d66 = undefined;
                    if (isarray(machine.var_35f71e38)) {
                        foreach (var_61794186 in machine.var_35f71e38) {
                            util::unlock_model(var_61794186);
                        }
                    }
                }
            }
            waitframe(1);
        }
        waitframe(10);
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x3ba378a0, Offset: 0x2d30
// Size: 0x118
function function_7757350c(player, machine) {
    var_2cdb84bb = machine function_2cfe56d8();
    v_eye = player geteye();
    n_height_diff = abs(v_eye[2] - var_2cdb84bb[2]);
    if (n_height_diff < 140 && distance2dsquared(v_eye, var_2cdb84bb) < 360000) {
        return true;
    }
    if (util::within_fov(v_eye, player.angles, var_2cdb84bb, 0.75) && bullettracepassed(v_eye, var_2cdb84bb, 0, machine, player)) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x8e490312, Offset: 0x2e50
// Size: 0x4a
function private function_2cfe56d8() {
    var_2cdb84bb = self.origin + (0, 0, 24) + anglestoforward(self.angles) * 24;
    return var_2cdb84bb;
}

/#

    // Namespace zm_utility/zm_utility
    // Params 1, eflags: 0x0
    // Checksum 0xa7a5a8db, Offset: 0x2ea8
    // Size: 0x60
    function function_3a919d3f(params) {
        if (int(params.value)) {
            level thread function_538799c4();
            return;
        }
        level notify(#"hash_a8ed1dd0750e229");
    }

    // Namespace zm_utility/zm_utility
    // Params 0, eflags: 0x4
    // Checksum 0xc85805b5, Offset: 0x2f10
    // Size: 0x26a
    function private function_538799c4() {
        level notify(#"hash_a8ed1dd0750e229");
        level endon(#"hash_a8ed1dd0750e229");
        while (true) {
            if (getdvarint(#"hash_416069220b5b56e3", 0)) {
                i = 0;
                debug2dtext((325, 200, 0) + (0, 20, 0) * (i + 1), "<unknown string>", (0, 1, 0));
                foreach (e_machine in level.var_c427e93b) {
                    if (isdefined(e_machine)) {
                        var_2cdb84bb = e_machine function_2cfe56d8();
                        i++;
                        if (is_true(e_machine.var_c02c4d66)) {
                            debug2dtext((325, 200, 0) + (0, 20, 0) * (i + 1), function_9e72a96(e_machine.model), (0, 1, 0));
                            circle(var_2cdb84bb, 64, (0, 1, 0));
                            continue;
                        }
                        debug2dtext((325, 200, 0) + (0, 20, 0) * (i + 1), function_9e72a96(e_machine.model), (1, 0, 0));
                        circle(var_2cdb84bb, 64, (1, 0, 0));
                    }
                }
            }
            waitframe(1);
        }
    }

#/

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xb0c979e4, Offset: 0x3188
// Size: 0xfa
function function_88c3a609() {
    if (isarray(self.var_8dbbd2d8)) {
        arrayremovevalue(self.var_8dbbd2d8, undefined);
        foreach (var_ee6bcd51 in self.var_8dbbd2d8) {
            if (self function_d2503806(var_ee6bcd51)) {
                self function_f6e99a8d(var_ee6bcd51);
            }
        }
    }
    if (isplayer(self)) {
        self.var_699347d1 = 1;
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xd2da0b54, Offset: 0x3290
// Size: 0xf6
function function_6c91d22b() {
    if (isarray(self.var_8dbbd2d8)) {
        arrayremovevalue(self.var_8dbbd2d8, undefined);
        foreach (var_ee6bcd51 in self.var_8dbbd2d8) {
            if (!self function_d2503806(var_ee6bcd51)) {
                self playrenderoverridebundle(var_ee6bcd51);
            }
        }
    }
    if (isplayer(self)) {
        self.var_699347d1 = undefined;
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x444e0f0c, Offset: 0x3390
// Size: 0xb0
function function_8065ace2(var_ee6bcd51) {
    if (isplayer(self)) {
        if (!isdefined(self.var_8dbbd2d8)) {
            self.var_8dbbd2d8 = [];
        } else if (!isarray(self.var_8dbbd2d8)) {
            self.var_8dbbd2d8 = array(self.var_8dbbd2d8);
        }
        if (!isinarray(self.var_8dbbd2d8, var_ee6bcd51)) {
            self.var_8dbbd2d8[self.var_8dbbd2d8.size] = var_ee6bcd51;
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x7c489618, Offset: 0x3448
// Size: 0x5c
function function_f933b697(var_ee6bcd51) {
    if (isplayer(self) && isarray(self.var_8dbbd2d8)) {
        arrayremovevalue(self.var_8dbbd2d8, var_ee6bcd51);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x25684e65, Offset: 0x34b0
// Size: 0x2e
function function_10df0b9c(*var_ee6bcd51) {
    if (is_true(self.var_699347d1)) {
        return false;
    }
    return true;
}

