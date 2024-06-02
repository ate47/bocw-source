// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\telemetry.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\activecamo_shared.gsc;
#using script_25c09ccacf057919;
#using scripts\core_common\delete.gsc;

#namespace load;

// Namespace load/load_shared
// Params 0, eflags: 0x5
// Checksum 0xc93e092c, Offset: 0x280
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"load", &preinit, undefined, undefined, undefined);
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x690d799b, Offset: 0x2c8
// Size: 0x34
function main() {
    assert(isdefined(level.var_f18a6bd6));
    [[ level.var_f18a6bd6 ]]();
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf3765ad3, Offset: 0x308
// Size: 0x64
function init_flags() {
    level flag::init("all_players_connected");
    level flag::init("all_players_spawned");
    level flag::init("first_player_spawned");
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf81e1164, Offset: 0x378
// Size: 0x34
function first_frame() {
    level.first_frame = 1;
    waitframe(1);
    level.first_frame = undefined;
    level.var_22944a63 = 1;
}

// Namespace load/load_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xe694fd04, Offset: 0x3b8
// Size: 0x3a4
function private preinit() {
    if (!isdefined(level.animation)) {
        level.animation = spawnstruct();
    }
    init_flags();
    thread first_frame();
    /#
        level thread level_notify_listener();
        level thread client_notify_listener();
        level thread load_checkpoint_on_notify();
        level thread save_checkpoint_on_notify();
    #/
    level.var_8a3a9ca4 = spawnstruct();
    defaultaspectratio = 1;
    if (sessionmodeiscampaigngame()) {
        level.game_mode_suffix = "_cp";
        defaultaspectratio = 1.77778;
    } else if (sessionmodeiszombiesgame()) {
        level.game_mode_suffix = "_zm";
    } else {
        level.game_mode_suffix = "_mp";
        defaultaspectratio = 1.77778;
    }
    level.script = util::get_map_name();
    level.clientscripts = getdvarstring(#"cg_usingclientscripts") != "";
    level.clientscripts = getdvarstring(#"cg_usingclientscripts") != "";
    if (!isdefined(level.timeofday)) {
        level.timeofday = "day";
    }
    if (getdvarstring(#"scr_requiredmapaspectratio") == "") {
        setdvar(#"scr_requiredmapaspectratio", defaultaspectratio);
    }
    util::registerclientsys("levelNotify");
    level thread all_players_spawned();
    level thread keep_time();
    level thread count_network_frames();
    callback::on_spawned(&on_spawned);
    self thread playerdamagerumble();
    array::thread_all(getentarray("water", "targetname"), &water_think);
    array::thread_all_ents(getentarray("badplace", "targetname"), &badplace_think);
    weapon_ammo();
    set_objective_text_colors();
    link_ents();
    hide_ents();
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xca5648bf, Offset: 0x768
// Size: 0x48
function count_network_frames() {
    level.network_frame = 0;
    while (true) {
        util::wait_network_frame();
        level.network_frame++;
        level.var_58bc5d04 = gettime();
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x85167153, Offset: 0x7b8
// Size: 0x22
function keep_time() {
    while (true) {
        level.time = gettime();
        waitframe(1);
    }
}

/#

    // Namespace load/load_shared
    // Params 0, eflags: 0x0
    // Checksum 0x3b73a9be, Offset: 0x7e8
    // Size: 0x148
    function level_notify_listener() {
        while (true) {
            val = getdvarstring(#"level_notify");
            if (val != "<unknown string>") {
                toks = strtok(val, "<unknown string>");
                if (toks.size == 3) {
                    level notify(toks[0], {#param1:toks[1], #param2:toks[2]});
                } else if (toks.size == 2) {
                    level notify(toks[0], {#param1:toks[1]});
                } else {
                    level notify(toks[0]);
                }
                setdvar(#"level_notify", "<unknown string>");
            }
            wait(0.2);
        }
    }

    // Namespace load/load_shared
    // Params 0, eflags: 0x0
    // Checksum 0x68c96b8c, Offset: 0x938
    // Size: 0x98
    function client_notify_listener() {
        while (true) {
            val = getdvarstring(#"client_notify");
            if (val != "<unknown string>") {
                util::clientnotify(val);
                setdvar(#"client_notify", "<unknown string>");
            }
            wait(0.2);
        }
    }

    // Namespace load/load_shared
    // Params 0, eflags: 0x0
    // Checksum 0x712d2f21, Offset: 0x9d8
    // Size: 0x48
    function save_checkpoint_on_notify() {
        while (true) {
            level waittill(#"save");
            checkpointcreate();
            checkpointcommit();
        }
    }

    // Namespace load/load_shared
    // Params 0, eflags: 0x0
    // Checksum 0x5602bf4b, Offset: 0xa28
    // Size: 0x68
    function load_checkpoint_on_notify() {
        while (true) {
            level waittill(#"load");
            if (isdefined(level.var_36a4cf75)) {
                [[ level.var_36a4cf75 ]]();
            }
            level.var_5be43b2d = 1;
            function_f31af5ab();
        }
    }

#/

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4f52ecfd, Offset: 0xa98
// Size: 0x254
function weapon_ammo() {
    ents = getentarray();
    for (i = 0; i < ents.size; i++) {
        if (isdefined(ents[i].classname) && getsubstr(ents[i].classname, 0, 7) == "weapon_") {
            weap = ents[i];
            change_ammo = 0;
            clip = undefined;
            extra = undefined;
            if (isdefined(weap.script_ammo_clip)) {
                clip = weap.script_ammo_clip;
                change_ammo = 1;
            }
            if (isdefined(weap.script_ammo_extra)) {
                extra = weap.script_ammo_extra;
                change_ammo = 1;
            }
            if (is_true(weap.var_d99dd379)) {
                clip = weap.item.clipsize;
                change_ammo = 1;
            }
            if (is_true(weap.var_38a11c38)) {
                extra = weap.item.maxammo;
                change_ammo = 1;
            }
            if (change_ammo) {
                if (!isdefined(clip)) {
                    assertmsg("<unknown string>" + weap.classname + "<unknown string>" + weap.origin + "<unknown string>");
                }
                if (!isdefined(extra)) {
                    assertmsg("<unknown string>" + weap.classname + "<unknown string>" + weap.origin + "<unknown string>");
                }
                weap itemweaponsetammo(clip, extra);
                weap itemweaponsetammo(clip, extra, 1);
            }
        }
    }
}

// Namespace load/load_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x87c71f63, Offset: 0xcf8
// Size: 0x15c
function badplace_think(badplace) {
    if (!isdefined(level.badplaces)) {
        level.badplaces = 0;
    }
    level.badplaces++;
    if (isdefined(badplace.radius)) {
        badplace_box("badplace" + level.badplaces, -1, badplace.origin, badplace.radius, "all");
        return;
    }
    aabb_max = badplace getpointinbounds(1, 1, 1);
    aabb_min = badplace getpointinbounds(-1, -1, -1);
    var_9a490e0c = badplace getpointinbounds(0, 0, 0);
    var_856c0347 = (aabb_max - aabb_min) * 0.5;
    badplace_box("badplace" + level.badplaces, -1, var_9a490e0c, var_856c0347, "all");
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6b8fba31, Offset: 0xe60
// Size: 0x58
function playerdamagerumble() {
    while (true) {
        self waittill(#"damage");
        if (isdefined(self.specialdamage)) {
            continue;
        }
        self playrumbleonentity("damage_heavy");
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x0
// Checksum 0xecfea61a, Offset: 0xec0
// Size: 0x72
function map_is_early_in_the_game() {
    /#
        if (isdefined(level.testmap)) {
            return 1;
        }
    #/
    /#
        if (!isdefined(level.early_level[level.script])) {
            level.early_level[level.script] = 0;
        }
    #/
    return is_true(level.early_level[level.script]);
}

// Namespace load/load_shared
// Params 0, eflags: 0x0
// Checksum 0xd5ad3519, Offset: 0xf40
// Size: 0x90
function player_throwgrenade_timer() {
    self endon(#"death", #"disconnect");
    self.lastgrenadetime = 0;
    while (true) {
        while (!self isthrowinggrenade()) {
            wait(0.05);
        }
        self.lastgrenadetime = gettime();
        while (self isthrowinggrenade()) {
            wait(0.05);
        }
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xd2acab9c, Offset: 0xfd8
// Size: 0x40a
function water_think() {
    assert(isdefined(self.target));
    targeted = getent(self.target, "targetname");
    assert(isdefined(targeted));
    waterheight = targeted.origin[2];
    targeted = undefined;
    level.depth_allow_prone = 8;
    level.depth_allow_crouch = 33;
    level.depth_allow_stand = 50;
    while (true) {
        waitframe(1);
        players = getplayers();
        for (i = 0; i < players.size; i++) {
            if (players[i].inwater) {
                players[i] allowprone(1);
                players[i] allowcrouch(1);
                players[i] allowstand(1);
            }
        }
        waitresult = self waittill(#"trigger");
        other = waitresult.activator;
        if (!isplayer(other)) {
            continue;
        }
        while (true) {
            players = getplayers();
            players_in_water_count = 0;
            for (i = 0; i < players.size; i++) {
                if (players[i] istouching(self)) {
                    players_in_water_count++;
                    players[i].inwater = 1;
                    playerorg = players[i] getorigin();
                    d = playerorg[2] - waterheight;
                    if (d > 0) {
                        continue;
                    }
                    newspeed = int(level.default_run_speed - abs(d * 5));
                    if (newspeed < 50) {
                        newspeed = 50;
                    }
                    assert(newspeed <= 190);
                    if (abs(d) > level.depth_allow_crouch) {
                        players[i] allowcrouch(0);
                    } else {
                        players[i] allowcrouch(1);
                    }
                    if (abs(d) > level.depth_allow_prone) {
                        players[i] allowprone(0);
                    } else {
                        players[i] allowprone(1);
                    }
                    continue;
                }
                if (players[i].inwater) {
                    players[i].inwater = 0;
                }
            }
            if (players_in_water_count == 0) {
                break;
            }
            wait(0.5);
        }
        waitframe(1);
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x72a78344, Offset: 0x13f0
// Size: 0x9c
function set_objective_text_colors() {
    if (isdedicated()) {
        return;
    }
    my_textbrightness_default = "1.0 1.0 1.0";
    my_textbrightness_90 = "0.9 0.9 0.9";
    if (level.script == "armada") {
        setsaveddvar(#"con_typewritercolorbase", my_textbrightness_90);
        return;
    }
    setsaveddvar(#"con_typewritercolorbase", my_textbrightness_default);
}

// Namespace load/load_shared
// Params 4, eflags: 0x0
// Checksum 0xe60a05d5, Offset: 0x1498
// Size: 0xf4
function lerp_trigger_dvar_value(trigger, dvar, value, time) {
    trigger.lerping_dvar[dvar] = 1;
    steps = time * 20;
    curr_value = getdvarfloat(dvar, 0);
    diff = (curr_value - value) / steps;
    for (i = 0; i < steps; i++) {
        curr_value -= diff;
        setsaveddvar(dvar, curr_value);
        waitframe(1);
    }
    setsaveddvar(dvar, value);
    trigger.lerping_dvar[dvar] = 0;
}

// Namespace load/load_shared
// Params 1, eflags: 0x0
// Checksum 0x9ff9669b, Offset: 0x1598
// Size: 0xdc
function set_fog_progress(progress) {
    anti_progress = 1 - progress;
    startdist = self.script_start_dist * anti_progress + self.script_start_dist * progress;
    halfwaydist = self.script_halfway_dist * anti_progress + self.script_halfway_dist * progress;
    color = self.script_color * anti_progress + self.script_color * progress;
    setvolfog(startdist, halfwaydist, self.script_halfway_height, self.script_base_height, color[0], color[1], color[2], 0.4);
}

/#

    // Namespace load/load_shared
    // Params 0, eflags: 0x0
    // Checksum 0x18a642e1, Offset: 0x1680
    // Size: 0x24
    function ascii_logo() {
        println("<unknown string>");
    }

#/

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x65b45114, Offset: 0x16b0
// Size: 0x174
function all_players_spawned() {
    level flag::wait_till("all_players_connected");
    waittillframeend();
    level.host = util::gethostplayer();
    while (true) {
        if (getnumconnectedplayers() == 0) {
            waitframe(1);
            continue;
        }
        players = getplayers();
        count = 0;
        for (i = 0; i < players.size; i++) {
            if (players[i].sessionstate == "playing" || players[i].team == #"spectator" && players[i].sessionstate == "spectator") {
                count++;
            }
        }
        waitframe(1);
        if (count > 0) {
            level flag::set("first_player_spawned");
        }
        if (count == players.size) {
            break;
        }
    }
    level flag::set("all_players_spawned");
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb0384f0c, Offset: 0x1830
// Size: 0x238
function shock_onpain() {
    self endon(#"death", #"disconnect", #"killonpainmonitor");
    if (getdvarstring(#"blurpain") == "") {
        setdvar(#"blurpain", "on");
    }
    while (true) {
        oldhealth = self.health;
        waitresult = self waittill(#"damage");
        mod = waitresult.mod;
        damage = waitresult.amount;
        if (isdefined(level.shock_onpain) && !level.shock_onpain) {
            continue;
        }
        if (isdefined(self.shock_onpain) && !self.shock_onpain) {
            continue;
        }
        if (self.health < 1) {
            continue;
        }
        if (mod === "MOD_PROJECTILE") {
            continue;
        }
        if (mod === "MOD_GRENADE_SPLASH" || mod === "MOD_GRENADE" || mod === "MOD_EXPLOSIVE" || mod === "MOD_PROJECTILE_SPLASH") {
            self shock_onexplosion(damage);
            continue;
        }
        if (getdvarstring(#"blurpain") == "on") {
            self shellshock(#"pain", 0.5);
        }
    }
}

// Namespace load/load_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1a6e8b22, Offset: 0x1a70
// Size: 0xb0
function shock_onexplosion(damage) {
    time = 0;
    multiplier = self.maxhealth / 100;
    scaled_damage = damage * multiplier;
    if (scaled_damage >= 90) {
        time = 4;
    } else if (scaled_damage >= 50) {
        time = 3;
    } else if (scaled_damage >= 25) {
        time = 2;
    } else if (scaled_damage > 10) {
        time = 1;
    }
    if (time) {
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xcafd8b62, Offset: 0x1b28
// Size: 0x96
function shock_ondeath() {
    self waittill(#"death");
    if (isdefined(level.shock_ondeath) && !level.shock_ondeath) {
        return;
    }
    if (isdefined(self.shock_ondeath) && !self.shock_ondeath) {
        return;
    }
    if (isdefined(self.specialdeath)) {
        return;
    }
    if (getdvarint(#"r_texturebits", 0) == 16) {
        return;
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa026a69, Offset: 0x1bc8
// Size: 0x9e
function on_spawned() {
    if (!isdefined(self.player_inited) || !self.player_inited) {
        if (sessionmodeiscampaigngame()) {
            self thread shock_ondeath();
            self thread shock_onpain();
            self flag::init("player_is_invulnerable");
        }
        waitframe(1);
        if (isdefined(self)) {
            self.player_inited = 1;
        }
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xd6c991fc, Offset: 0x1c70
// Size: 0xe8
function link_ents() {
    foreach (ent in getentarray()) {
        if (isdefined(ent.linkto)) {
            e_link = getent(ent.linkto, "linkname");
            if (isdefined(e_link)) {
                ent enablelinkto();
                ent linkto(e_link);
            }
        }
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb8356a1c, Offset: 0x1d60
// Size: 0xc8
function hide_ents() {
    foreach (ent in getentarray()) {
        if (is_true(ent.script_hide)) {
            ent val::set(#"script_hide", "hide", 1);
        }
    }
}

// Namespace load/load_shared
// Params 0, eflags: 0x0
// Checksum 0xd0bd4569, Offset: 0x1e30
// Size: 0x23a
function art_review() {
    dvarvalue = getdvarint(#"art_review", 0);
    switch (dvarvalue) {
    case 1:
    case 2:
        /#
            hud = hud::function_f5a689d("<unknown string>", 1.2);
            hud hud::setpoint("<unknown string>", "<unknown string>", 0, -200);
            hud.sort = 1001;
            hud.color = (1, 0, 0);
            hud settext("<unknown string>");
            hud.foreground = 0;
            hud.hidewheninmenu = 0;
        #/
        if (sessionmodeiszombiesgame()) {
            /#
                setdvar(#"zombie_cheat", 2);
                if (dvarvalue == 1) {
                    setdvar(#"zombie_devgui", "<unknown string>");
                }
            #/
        } else {
            foreach (trig in trigger::get_all()) {
                trig triggerenable(0);
            }
        }
        level.prematchperiod = 0;
        level waittill(#"forever");
        break;
    }
}

