// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace battlechatter;

// Namespace battlechatter/namespace_7819da81
// Params 1, eflags: 0x2 linked
// Checksum 0xa383dbba, Offset: 0x110
// Size: 0x5a
function function_b59a25c5(player) {
    if (!is_true(level.var_e444d44)) {
        return undefined;
    }
    playerbundle = function_58c93260(player);
    if (!isdefined(playerbundle)) {
        return undefined;
    }
    return playerbundle.voiceprefix;
}

// Namespace battlechatter/namespace_7819da81
// Params 1, eflags: 0x2 linked
// Checksum 0x3f41ddb, Offset: 0x178
// Size: 0x72
function function_cdd81094(weapon) {
    if (!is_true(level.var_e444d44)) {
        return undefined;
    }
    assert(isdefined(weapon));
    if (!isdefined(weapon.var_5c238c21)) {
        return undefined;
    }
    return getscriptbundle(weapon.var_5c238c21);
}

// Namespace battlechatter/namespace_7819da81
// Params 1, eflags: 0x2 linked
// Checksum 0xad0a845c, Offset: 0x1f8
// Size: 0x80
function function_b79dc4e7(player) {
    teammask = getteammask(player.team);
    for (teamindex = 0; teammask > 1; teamindex++) {
        teammask >>= 1;
    }
    if (teamindex % 2) {
        return "blops_taacom";
    }
    return "cdp_taacom";
}

// Namespace battlechatter/namespace_7819da81
// Params 2, eflags: 0x2 linked
// Checksum 0x256dd61b, Offset: 0x280
// Size: 0x9e
function mpdialog_value(mpdialogkey, defaultvalue) {
    if (!isdefined(mpdialogkey)) {
        return defaultvalue;
    }
    if (!is_true(level.var_e444d44)) {
        return defaultvalue;
    }
    mpdialog = getscriptbundle("mpdialog_default");
    if (!isdefined(mpdialog)) {
        return defaultvalue;
    }
    structvalue = mpdialog.(mpdialogkey);
    if (!isdefined(structvalue)) {
        return defaultvalue;
    }
    return structvalue;
}

// Namespace battlechatter/namespace_7819da81
// Params 4, eflags: 0x2 linked
// Checksum 0xa0c8e125, Offset: 0x328
// Size: 0x16e
function function_d804d2f0(localclientnum, speakingplayer, player, allyradiussq) {
    if (!is_true(level.var_e444d44)) {
        return false;
    }
    if (!isdefined(player)) {
        return false;
    }
    if (!isdefined(player.origin)) {
        return false;
    }
    if (!isalive(player)) {
        return false;
    }
    if (player underwater()) {
        return false;
    }
    if (player isdriving(localclientnum)) {
        return false;
    }
    if (function_e75c64a4(localclientnum)) {
        return false;
    }
    if (!isdefined(speakingplayer)) {
        return false;
    }
    if (!isdefined(speakingplayer.origin)) {
        return false;
    }
    if (player == speakingplayer || player.team != speakingplayer.team) {
        return false;
    }
    if (player hasperk(localclientnum, "specialty_quieter")) {
        return false;
    }
    distsq = distancesquared(speakingplayer.origin, player.origin);
    if (distsq > allyradiussq) {
        return false;
    }
    return true;
}

// Namespace battlechatter/namespace_7819da81
// Params 3, eflags: 0x2 linked
// Checksum 0x36fb8b14, Offset: 0x4a0
// Size: 0x13a
function function_db89c38f(localclientnum, speakingplayer, allyradiussq) {
    if (!is_true(level.var_e444d44)) {
        return undefined;
    }
    allies = [];
    foreach (player in getplayers(localclientnum)) {
        if (!function_d804d2f0(localclientnum, speakingplayer, player, allyradiussq)) {
            continue;
        }
        allies[allies.size] = player;
    }
    allies = arraysort(allies, speakingplayer.origin);
    if (!isdefined(allies) || allies.size == 0) {
        return undefined;
    }
    return allies[0];
}

// Namespace battlechatter/namespace_7819da81
// Params 2, eflags: 0x2 linked
// Checksum 0xfc94edd1, Offset: 0x5e8
// Size: 0xba
function function_5d7ad9a9(hacker, originalowner) {
    if (!is_true(level.var_e444d44)) {
        return false;
    }
    if (!isdefined(originalowner) || !isplayer(originalowner) || !originalowner function_21c0fa55()) {
        return false;
    }
    if (!isdefined(hacker) || !isplayer(hacker) || !isalive(hacker)) {
        return false;
    }
    return true;
}

// Namespace battlechatter/namespace_7819da81
// Params 1, eflags: 0x2 linked
// Checksum 0xa1f883d, Offset: 0x6b0
// Size: 0x52
function function_84eb6127(player) {
    if (!is_true(level.var_e444d44)) {
        return undefined;
    }
    return getscriptbundle(function_b79dc4e7(player));
}

// Namespace battlechatter/namespace_7819da81
// Params 2, eflags: 0x2 linked
// Checksum 0x8a210dec, Offset: 0x710
// Size: 0x142
function get_player_dialog_alias(dialogkey, meansofdeath = undefined) {
    if (!is_true(level.var_e444d44)) {
        return undefined;
    }
    if (!isdefined(self)) {
        return undefined;
    }
    if (is_true(self.var_f16a71ae)) {
        return undefined;
    }
    bundlename = self getmpdialogname();
    if (isdefined(meansofdeath) && meansofdeath == "MOD_META" && (isdefined(self.pers[#"changed_specialist"]) ? self.pers[#"changed_specialist"] : 0)) {
        bundlename = self.var_89c4a60f;
    }
    if (!isdefined(bundlename)) {
        return undefined;
    }
    playerbundle = getscriptbundle(bundlename);
    if (!isdefined(playerbundle)) {
        return undefined;
    }
    return get_dialog_bundle_alias(playerbundle, dialogkey);
}

// Namespace battlechatter/namespace_7819da81
// Params 2, eflags: 0x2 linked
// Checksum 0x6fc7cabb, Offset: 0x860
// Size: 0xa0
function get_dialog_bundle_alias(dialogbundle, dialogkey) {
    if (!is_true(level.var_e444d44)) {
        return undefined;
    }
    if (!isdefined(dialogbundle) || !isdefined(dialogkey)) {
        return undefined;
    }
    dialogalias = dialogbundle.(dialogkey);
    if (!isdefined(dialogalias)) {
        return;
    }
    voiceprefix = dialogbundle.("voiceprefix");
    if (isdefined(voiceprefix)) {
        dialogalias = voiceprefix + dialogalias;
    }
    return dialogalias;
}

// Namespace battlechatter/namespace_7819da81
// Params 1, eflags: 0x2 linked
// Checksum 0x75d2d743, Offset: 0x908
// Size: 0x24
function delete_after(waittime) {
    wait(waittime);
    self delete();
}

// Namespace battlechatter/namespace_7819da81
// Params 1, eflags: 0x2 linked
// Checksum 0x47d23e91, Offset: 0x938
// Size: 0x7a
function function_58c93260(player) {
    if (!is_true(level.var_e444d44)) {
        return undefined;
    }
    if (!isplayer(player)) {
        return undefined;
    }
    bundlename = player getmpdialogname();
    if (!isdefined(bundlename)) {
        return undefined;
    }
    return getscriptbundle(bundlename);
}

