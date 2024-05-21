// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\persistence_shared.gsc;
#using scripts\core_common\medals_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace popups;

// Namespace popups/popups_shared
// Params 0, eflags: 0x5
// Checksum 0x229ec362, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"popups", &preinit, undefined, undefined, undefined);
}

// Namespace popups/popups_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x11c7c33d, Offset: 0x108
// Size: 0x24
function private preinit() {
    callback::on_start_gametype(&init);
}

// Namespace popups/popups_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x47b6f412, Offset: 0x138
// Size: 0x1d4
function init() {
    level.contractsettings = spawnstruct();
    level.contractsettings.waittime = 4.2;
    level.killstreaksettings = spawnstruct();
    level.killstreaksettings.waittime = 3;
    level.ranksettings = spawnstruct();
    level.ranksettings.waittime = 3;
    level.startmessage = spawnstruct();
    level.startmessagedefaultduration = 2;
    level.endmessagedefaultduration = 2;
    level.challengesettings = spawnstruct();
    level.challengesettings.waittime = 3;
    level.teammessage = spawnstruct();
    level.teammessage.waittime = 3;
    level.momentumnotifywaittime = 0;
    level.momentumnotifywaitlasttime = 0;
    level.teammessagequeuemax = 8;
    /#
        level thread popupsfromconsole();
        level thread devgui_notif_init();
    #/
    callback::on_connecting(&on_player_connect);
    callback::add_callback(#"team_message", &on_team_message);
}

// Namespace popups/popups_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7e9b8894, Offset: 0x318
// Size: 0x62
function on_player_connect() {
    if (isdefined(self) && !function_3132f113(self)) {
        self.resetgameoverhudrequired = 0;
        if (!level.hardcoremode) {
            if (shoulddisplayteammessages()) {
                self.teammessagequeue = [];
            }
        }
    }
}

/#

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0x92be76e6, Offset: 0x388
    // Size: 0x64
    function devgui_notif_getgunleveltablename() {
        if (sessionmodeiscampaigngame()) {
            return #"gamedata/weapons/cp/cp_gunlevels.csv";
        }
        if (sessionmodeiszombiesgame()) {
            return #"gamedata/weapons/zm/zm_gunlevels.csv";
        }
        return #"gamedata/weapons/mp/mp_gunlevels.csv";
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0x7117cc1f, Offset: 0x3f8
    // Size: 0x4e
    function devgui_notif_getchallengestablecount() {
        if (sessionmodeiscampaigngame()) {
            return 1;
        }
        if (sessionmodeiszombiesgame()) {
            return 6;
        }
        return 6;
    }

    // Namespace popups/popups_shared
    // Params 1, eflags: 0x0
    // Checksum 0xdc593a15, Offset: 0x450
    // Size: 0x9a
    function devgui_notif_getchallengestablename(tableid) {
        if (sessionmodeiscampaigngame()) {
            return (#"gamedata/stats/cp/statsmilestones" + tableid + "<unknown string>");
        }
        if (sessionmodeiszombiesgame()) {
            return (#"gamedata/stats/zm/statsmilestones" + tableid + "<unknown string>");
        }
        return #"gamedata/stats/mp/statsmilestones" + tableid + "<unknown string>";
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0x7630a42, Offset: 0x4f8
    // Size: 0x15a
    function devgui_create_weapon_levels_table() {
        level.tbl_weaponids = [];
        for (i = 0; i < 1024; i++) {
            iteminfo = getunlockableiteminfofromindex(i, 0);
            if (isdefined(iteminfo)) {
                group_s = iteminfo.itemgroupname;
                if (issubstr(group_s, "<unknown string>") || group_s == "<unknown string>") {
                    reference_s = iteminfo.namehash;
                    if (reference_s != "<unknown string>") {
                        level.tbl_weaponids[i][#"reference"] = reference_s;
                        level.tbl_weaponids[i][#"group"] = group_s;
                        level.tbl_weaponids[i][#"count"] = iteminfo.count;
                        level.tbl_weaponids[i][#"attachment"] = iteminfo.attachments;
                    }
                }
            }
        }
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0x92d5d168, Offset: 0x660
    // Size: 0x1dc
    function devgui_notif_init() {
        setdvar(#"scr_notif_devgui_rank", 0);
        setdvar(#"scr_notif_devgui_gun_lvl_xp", 0);
        setdvar(#"scr_notif_devgui_gun_lvl_attachment_index", 0);
        setdvar(#"scr_notif_devgui_gun_lvl_item_index", 0);
        setdvar(#"scr_notif_devgui_gun_lvl_rank_id", 0);
        if (isdedicated()) {
            return;
        }
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        level thread function_a65863ce();
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0x32ed30b1, Offset: 0x848
    // Size: 0x2a6
    function function_a65863ce() {
        level endon(#"game_ended");
        while (true) {
            if (getdvarint(#"hash_5b32141cac382fa3", 0) > 0) {
                util::remove_devgui("<unknown string>");
                level thread notif_devgui_gun_rank();
                setdvar(#"hash_5b32141cac382fa3", 0);
            } else if (getdvarint(#"hash_4ccabf785218a1e0", 0) > 0) {
                util::remove_devgui("<unknown string>");
                level thread notif_devgui_rank();
                setdvar(#"hash_4ccabf785218a1e0", 0);
            } else {
                dvarval = getdvarint(#"hash_3873da9b7bf24d7c", 0);
                if (dvarval) {
                    switch (dvarval) {
                    case 1:
                        menu = "<unknown string>";
                        break;
                    case 2:
                        menu = "<unknown string>";
                        break;
                    case 3:
                        menu = "<unknown string>";
                        break;
                    case 4:
                        menu = "<unknown string>";
                        break;
                    case 5:
                        menu = "<unknown string>";
                        break;
                    case 6:
                        menu = "<unknown string>";
                        break;
                    default:
                        menu = undefined;
                        break;
                    }
                    if (isdefined(menu)) {
                        util::remove_devgui(menu);
                        level thread function_43b5625e(dvarval);
                        setdvar(#"hash_3873da9b7bf24d7c", 0);
                    }
                }
            }
            wait(2);
        }
    }

    // Namespace popups/popups_shared
    // Params 1, eflags: 0x0
    // Checksum 0x656dd4fa, Offset: 0xaf8
    // Size: 0x2e4
    function function_43b5625e(tablenum) {
        notif_challenges_devgui_base = "<unknown string>";
        tablename = devgui_notif_getchallengestablename(tablenum);
        rows = tablelookuprowcount(tablename);
        for (j = 1; j < rows; j++) {
            challengeid = tablelookupcolumnforrow(tablename, j, 0);
            if (challengeid != "<unknown string>" && strisint(tablelookupcolumnforrow(tablename, j, 0))) {
                challengestring = tablelookupcolumnforrow(tablename, j, 5);
                type = tablelookupcolumnforrow(tablename, j, 3);
                challengetier = int(tablelookupcolumnforrow(tablename, j, 1));
                challengetierstring = "<unknown string>" + challengetier;
                if (challengetier < 10) {
                    challengetierstring = "<unknown string>" + challengetier;
                }
                name = tablelookupcolumnforrow(tablename, j, 5);
                devgui_cmd_challenge_path = notif_challenges_devgui_base + function_9e72a96(type) + "<unknown string>" + function_9e72a96(name) + "<unknown string>" + challengetierstring + "<unknown string>" + challengeid;
                util::waittill_can_add_debug_command();
                adddebugcommand(devgui_cmd_challenge_path + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + j + "<unknown string>" + "<unknown string>" + "<unknown string>" + tablenum + "<unknown string>");
                if (int(challengeid) % 10) {
                    waitframe(1);
                }
            }
        }
        level thread notif_devgui_challenges_think();
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0x3e7efbe2, Offset: 0xde8
    // Size: 0x10c
    function notif_devgui_rank() {
        if (!isdefined(level.ranktable)) {
            return;
        }
        notif_rank_devgui_base = "<unknown string>";
        for (i = 1; i < level.ranktable.size; i++) {
            display_level = i + 1;
            if (display_level < 10) {
                display_level = "<unknown string>" + display_level;
            }
            util::waittill_can_add_debug_command();
            adddebugcommand(notif_rank_devgui_base + display_level + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + i + "<unknown string>");
        }
        waitframe(1);
        level thread notif_devgui_rank_up_think();
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0xb238fd2c, Offset: 0xf00
    // Size: 0xce
    function notif_devgui_rank_up_think() {
        for (;;) {
            rank_number = getdvarint(#"scr_notif_devgui_rank", 0);
            if (rank_number == 0) {
                waitframe(1);
                continue;
            }
            level.players[0] rank::codecallback_rankup({#rank:rank_number, #prestige:0, #unlock_tokens_added:1});
            setdvar(#"scr_notif_devgui_rank", 0);
            wait(1);
        }
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0xfeedade7, Offset: 0xfd8
    // Size: 0x944
    function notif_devgui_gun_rank() {
        notif_gun_rank_devgui_base = "<unknown string>";
        gunlevel_rankid_col = 0;
        gunlevel_gunref_col = 2;
        gunlevel_attachment_unlock_col = 3;
        gunlevel_xpgained_col = 4;
        level flag::wait_till("<unknown string>");
        if (!isdefined(level.tbl_weaponids)) {
            devgui_create_weapon_levels_table();
        }
        if (!isdefined(level.tbl_weaponids)) {
            return;
        }
        a_weapons = [];
        a_weapons[#"assault"] = [];
        a_weapons[#"tactical"] = [];
        a_weapons[#"smg"] = [];
        a_weapons[#"lmg"] = [];
        a_weapons[#"shotgun"] = [];
        a_weapons[#"sniper"] = [];
        a_weapons[#"pistol"] = [];
        a_weapons[#"launcher"] = [];
        a_weapons[#"knife"] = [];
        gun_levels_table = devgui_notif_getgunleveltablename();
        foreach (weapon in level.tbl_weaponids) {
            gun = [];
            gun[#"ref"] = weapon[#"reference"];
            gun[#"itemindex"] = getitemindexfromref(weapon[#"reference"]);
            gun[#"attachments"] = [];
            gun_weapon_attachments = weapon[#"attachment"];
            if (isdefined(gun_weapon_attachments) && isarray(gun_weapon_attachments)) {
                foreach (attachment in gun_weapon_attachments) {
                    gun[#"attachments"][attachment] = [];
                    gun[#"attachments"][attachment][#"itemindex"] = getattachmenttableindex(attachment);
                    gun[#"attachments"][attachment][#"rankid"] = tablelookup(gun_levels_table, gunlevel_gunref_col, gun[#"ref"], gunlevel_attachment_unlock_col, attachment, gunlevel_rankid_col);
                    gun[#"attachments"][attachment][#"xp"] = tablelookup(gun_levels_table, gunlevel_gunref_col, gun[#"ref"], gunlevel_attachment_unlock_col, attachment, gunlevel_xpgained_col);
                }
            }
            switch (weapon[#"group"]) {
            case #"weapon_pistol":
                if (weapon[#"reference"] != "<unknown string>") {
                    arrayinsert(a_weapons[#"pistol"], gun, 0);
                }
                break;
            case #"weapon_launcher":
                arrayinsert(a_weapons[#"launcher"], gun, 0);
                break;
            case #"weapon_assault":
                arrayinsert(a_weapons[#"assault"], gun, 0);
                break;
            case #"weapon_tactical":
                arrayinsert(a_weapons[#"tactical"], gun, 0);
                break;
            case #"weapon_smg":
                arrayinsert(a_weapons[#"smg"], gun, 0);
                break;
            case #"weapon_lmg":
                arrayinsert(a_weapons[#"lmg"], gun, 0);
                break;
            case #"weapon_cqb":
                arrayinsert(a_weapons[#"shotgun"], gun, 0);
                break;
            case #"weapon_sniper":
                arrayinsert(a_weapons[#"sniper"], gun, 0);
                break;
            case #"weapon_knife":
                arrayinsert(a_weapons[#"knife"], gun, 0);
                break;
            default:
                break;
            }
        }
        foreach (group_name, gun_group in a_weapons) {
            foreach (gun, attachment_group in gun_group) {
                foreach (attachment, attachment_data in attachment_group[#"attachments"]) {
                    devgui_cmd_gun_path = notif_gun_rank_devgui_base + function_9e72a96(group_name) + "<unknown string>" + function_9e72a96(gun_group[gun][#"ref"]) + "<unknown string>" + function_9e72a96(attachment);
                    util::waittill_can_add_debug_command();
                    adddebugcommand(devgui_cmd_gun_path + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + attachment_data[#"xp"] + "<unknown string>" + "<unknown string>" + "<unknown string>" + attachment_data[#"itemindex"] + "<unknown string>" + "<unknown string>" + "<unknown string>" + gun_group[gun][#"itemindex"] + "<unknown string>" + "<unknown string>" + "<unknown string>" + attachment_data[#"rankid"] + "<unknown string>");
                }
            }
            waitframe(1);
        }
        level thread notif_devgui_gun_level_think();
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0xfdbe887d, Offset: 0x1928
    // Size: 0x1c6
    function notif_devgui_gun_level_think() {
        for (;;) {
            weapon_item_index = getdvarint(#"scr_notif_devgui_gun_lvl_item_index", 0);
            if (weapon_item_index == 0) {
                waitframe(1);
                continue;
            }
            xp_reward = getdvarint(#"scr_notif_devgui_gun_lvl_xp", 0);
            attachment_index = getdvarint(#"scr_notif_devgui_gun_lvl_attachment_index", 0);
            rank_id = getdvarint(#"scr_notif_devgui_gun_lvl_rank_id", 0);
            level.players[0] persistence::codecallback_gunchallengecomplete({#reward:xp_reward, #attachment_index:attachment_index, #item_index:weapon_item_index, #rank_id:rank_id});
            setdvar(#"scr_notif_devgui_gun_lvl_xp", 0);
            setdvar(#"scr_notif_devgui_gun_lvl_attachment_index", 0);
            setdvar(#"scr_notif_devgui_gun_lvl_item_index", 0);
            setdvar(#"scr_notif_devgui_gun_lvl_rank_id", 0);
            wait(1);
        }
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0xb08a4667, Offset: 0x1af8
    // Size: 0x436
    function notif_devgui_challenges_think() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        setdvar(#"scr_notif_devgui_challenge_row", 0);
        setdvar(#"scr_notif_devgui_challenge_table", 0);
        for (;;) {
            row = getdvarint(#"scr_notif_devgui_challenge_row", 0);
            table = getdvarint(#"scr_notif_devgui_challenge_table", 0);
            if (table < 1 || table > devgui_notif_getchallengestablecount()) {
                waitframe(1);
                continue;
            }
            player = level.players[0];
            tablename = devgui_notif_getchallengestablename(table);
            if (row < 1 || row > tablelookuprowcount(tablename)) {
                waitframe(1);
                continue;
            }
            type = tablelookupcolumnforrow(tablename, row, 3);
            itemindex = 0;
            if (type == "<unknown string>") {
                type = 0;
            } else if (type == "<unknown string>") {
                itemindex = 4;
                type = 3;
            } else if (type == "<unknown string>") {
                itemindex = 1;
                type = 4;
            } else if (type == "<unknown string>") {
                type = 2;
            } else if (type == "<unknown string>") {
                type = 5;
            } else {
                itemindex = getdvarint(#"scr_challenge_itemindex", 0);
                if (itemindex == 0) {
                    currentweaponname = player.currentweapon.name;
                    itemindex = getitemindexfromref(currentweaponname);
                    if (itemindex == 0) {
                        itemindex = 225;
                    }
                }
                type = 1;
            }
            xpreward = int(tablelookupcolumnforrow(tablename, row, 6));
            challengeid = int(tablelookupcolumnforrow(tablename, row, 0));
            maxvalue = int(tablelookupcolumnforrow(tablename, row, 2));
            player persistence::codecallback_challengecomplete({#reward:xpreward, #max:maxvalue, #row:row, #table_number:table - 1, #challenge_type:type, #item_index:itemindex, #challenge_index:challengeid});
            setdvar(#"scr_notif_devgui_challenge_row", 0);
            setdvar(#"scr_notif_devgui_challenge_table", 0);
            wait(1);
        }
    }

    // Namespace popups/popups_shared
    // Params 0, eflags: 0x0
    // Checksum 0xbfa0685d, Offset: 0x1f38
    // Size: 0x7f8
    function popupsfromconsole() {
        while (true) {
            timeout = getdvarfloat(#"scr_popuptime", 1);
            if (timeout == 0) {
                timeout = 1;
            }
            wait(timeout);
            medal = getdvarint(#"scr_popupmedal", 0);
            challenge = getdvarint(#"scr_popupchallenge", 0);
            rank = getdvarint(#"scr_popuprank", 0);
            gun = getdvarint(#"scr_popupgun", 0);
            contractpass = getdvarint(#"scr_popupcontractpass", 0);
            contractfail = getdvarint(#"scr_popupcontractfail", 0);
            gamemodemsg = getdvarint(#"scr_gamemodeslideout", 0);
            teammsg = getdvarint(#"scr_teamslideout", 0);
            challengeindex = getdvarint(#"scr_challengeindex", 1);
            for (i = 0; i < medal; i++) {
                level.players[0] medals::codecallback_medal({#medal_index:2});
            }
            for (i = 0; i < challenge; i++) {
                level.players[0] persistence::codecallback_challengecomplete({#reward:1000, #max:10, #row:19, #table_numuber:0, #challenge_type:0, #item_index:0, #challenge_index:18});
                level.players[0] persistence::codecallback_challengecomplete({#reward:1000, #max:1, #row:21, #table_number:0, #challenge_type:0, #item_index:0, #challenge_index:20});
                rewardxp = 500;
                maxval = 1;
                row = 1;
                tablenumber = 0;
                challengetype = 1;
                itemindex = 111;
                challengeindex = 0;
                maxval = 50;
                row = 1;
                tablenumber = 2;
                challengetype = 1;
                itemindex = 20;
                challengeindex = 512;
                maxval = 150;
                row = 100;
                tablenumber = 2;
                challengetype = 4;
                itemindex = 1;
                challengeindex = 611;
                level.players[0] persistence::codecallback_challengecomplete({#reward:rewardxp, #max:maxval, #row:row, #table_number:tablenumber, #challenge_type:challengetype, #item_index:itemindex, #challenge_index:challengeindex});
            }
            for (i = 0; i < rank; i++) {
                level.players[0] rank::codecallback_rankup({#rank:4, #prestige:0, #unlock_tokens_added:1});
            }
            for (i = 0; i < gun; i++) {
                level.players[0] persistence::codecallback_gunchallengecomplete({#reward:0, #attachment_index:20, #item_index:25, #rank_id:0});
            }
            for (i = 0; i < teammsg; i++) {
                player = level.players[0];
                if (isdefined(level.players[1])) {
                    player = level.players[1];
                }
                level.players[0] displayteammessagetoall(#"hash_286f843fea185e5", player);
            }
            reset = getdvarint(#"scr_popupreset", 1);
            if (reset) {
                if (medal) {
                    setdvar(#"scr_popupmedal", 0);
                }
                if (challenge) {
                    setdvar(#"scr_popupchallenge", 0);
                }
                if (gun) {
                    setdvar(#"scr_popupgun", 0);
                }
                if (rank) {
                    setdvar(#"scr_popuprank", 0);
                }
                if (contractpass) {
                    setdvar(#"scr_popupcontractpass", 0);
                }
                if (contractfail) {
                    setdvar(#"scr_popupcontractfail", 0);
                }
                if (gamemodemsg) {
                    setdvar(#"scr_gamemodeslideout", 0);
                }
                if (teammsg) {
                    setdvar(#"scr_teamslideout", 0);
                }
            }
        }
    }

#/

// Namespace popups/popups_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x8f9f45a7, Offset: 0x2738
// Size: 0xa4
function displaykillstreakteammessagetoall(killstreak, player) {
    if (!isdefined(level.killstreaks[killstreak])) {
        return;
    }
    if (!isdefined(level.killstreaks[killstreak].script_bundle)) {
        return;
    }
    if (!isdefined(level.killstreaks[killstreak].script_bundle.var_bc2f6af9)) {
        return;
    }
    self displayteammessagetoall(level.killstreaks[killstreak].script_bundle.var_bc2f6af9, player);
}

// Namespace popups/popups_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa4f19a38, Offset: 0x27e8
// Size: 0xa4
function displaykillstreakhackedteammessagetoall(killstreak, player) {
    if (!isdefined(level.killstreaks[killstreak])) {
        return;
    }
    if (!isdefined(level.killstreaks[killstreak].script_bundle)) {
        return;
    }
    if (!isdefined(level.killstreaks[killstreak].script_bundle.var_6417048f)) {
        return;
    }
    self displayteammessagetoall(level.killstreaks[killstreak].script_bundle.var_6417048f, player);
}

// Namespace popups/popups_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa43528c7, Offset: 0x2898
// Size: 0x66
function shoulddisplayteammessages() {
    if (level.hardcoremode == 1 || level.splitscreen == 1 || sessionmodeiscampaigngame() || level.var_c6dc0337 === 1) {
        return false;
    }
    return true;
}

// Namespace popups/popups_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xdeb6819, Offset: 0x2908
// Size: 0x34
function function_eb9328f3() {
    self notify(#"received teammessage");
    self callback::callback(#"team_message");
}

// Namespace popups/popups_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xaf206774, Offset: 0x2948
// Size: 0x13c
function displayteammessagetoall(message, player) {
    if (!shoulddisplayteammessages()) {
        return;
    }
    for (i = 0; i < level.players.size; i++) {
        cur_player = level.players[i];
        if (cur_player isempjammed()) {
            continue;
        }
        size = cur_player.teammessagequeue.size;
        if (size >= level.teammessagequeuemax) {
            continue;
        }
        cur_player.teammessagequeue[size] = spawnstruct();
        cur_player.teammessagequeue[size].notifyhash = #"player_callout";
        cur_player.teammessagequeue[size].message = message;
        cur_player.teammessagequeue[size].player = player;
        cur_player function_eb9328f3();
    }
}

// Namespace popups/popups_shared
// Params 8, eflags: 0x0
// Checksum 0x273685c6, Offset: 0x2a90
// Size: 0x74
function displayteammessagetoteam(message, player, team, var_fd214505, var_aba8941, var_1dd0326a, var_265441a6, var_8fa431fa) {
    function_bed391aa(#"player_callout", message, player, team, var_fd214505, var_aba8941, var_1dd0326a, var_265441a6, var_8fa431fa);
}

// Namespace popups/popups_shared
// Params 5, eflags: 0x0
// Checksum 0x3b38497c, Offset: 0x2b10
// Size: 0x54
function function_87604884(message, player, team, var_fd214505, var_aba8941) {
    function_bed391aa(#"hash_3a268553010df6a4", message, player, team, var_fd214505, var_aba8941);
}

// Namespace popups/popups_shared
// Params 9, eflags: 0x6 linked
// Checksum 0xbbd0be9c, Offset: 0x2b70
// Size: 0x22c
function private function_bed391aa(notifyhash, message, player, team, var_fd214505, var_aba8941, var_1dd0326a, var_265441a6, var_8fa431fa) {
    if (!shoulddisplayteammessages()) {
        return;
    }
    for (i = 0; i < level.players.size; i++) {
        cur_player = level.players[i];
        if (cur_player.team != team) {
            continue;
        }
        if (cur_player isempjammed()) {
            continue;
        }
        size = cur_player.teammessagequeue.size;
        if (size >= level.teammessagequeuemax) {
            continue;
        }
        cur_player.teammessagequeue[size] = spawnstruct();
        cur_player.teammessagequeue[size].notifyhash = notifyhash;
        cur_player.teammessagequeue[size].message = message;
        cur_player.teammessagequeue[size].player = player;
        cur_player.teammessagequeue[size].var_fd214505 = var_fd214505;
        cur_player.teammessagequeue[size].var_aba8941 = var_aba8941;
        cur_player.teammessagequeue[size].var_1dd0326a = var_1dd0326a;
        cur_player.teammessagequeue[size].var_265441a6 = var_265441a6;
        cur_player.teammessagequeue[size].var_8fa431fa = var_8fa431fa;
        callback::callback(#"hash_41781454d98b676a", cur_player.teammessagequeue[size]);
        cur_player function_eb9328f3();
    }
}

// Namespace popups/popups_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x558aa222, Offset: 0x2da8
// Size: 0x2c
function on_team_message() {
    if (!shoulddisplayteammessages()) {
        return;
    }
    function_921657e4();
}

// Namespace popups/popups_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8267fad2, Offset: 0x2de0
// Size: 0x1d8
function function_921657e4() {
    while (self.teammessagequeue.size > 0) {
        nextnotifydata = self.teammessagequeue[0];
        arrayremoveindex(self.teammessagequeue, 0, 0);
        if (!isdefined(nextnotifydata.player) || !isplayer(nextnotifydata.player)) {
            continue;
        }
        if (self isempjammed()) {
            continue;
        }
        notifyhash = nextnotifydata.notifyhash;
        var_1dd0326a = -1;
        var_fd214505 = -1;
        var_aba8941 = -1;
        var_265441a6 = -1;
        var_8fa431fa = -1;
        if (isdefined(nextnotifydata.var_1dd0326a)) {
            var_1dd0326a = nextnotifydata.var_1dd0326a;
        }
        if (isdefined(nextnotifydata.var_fd214505)) {
            var_fd214505 = nextnotifydata.var_fd214505;
        }
        if (isdefined(nextnotifydata.var_aba8941)) {
            var_aba8941 = nextnotifydata.var_aba8941;
        }
        if (isdefined(nextnotifydata.var_265441a6)) {
            var_265441a6 = nextnotifydata.var_265441a6;
        }
        if (isdefined(nextnotifydata.var_8fa431fa)) {
            var_8fa431fa = nextnotifydata.var_8fa431fa;
        }
        self luinotifyevent(notifyhash, 7, nextnotifydata.message, nextnotifydata.player getentitynumber(), var_fd214505, var_aba8941, var_1dd0326a, var_265441a6, var_8fa431fa);
    }
}

