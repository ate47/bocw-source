// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\bb_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace bb;

// Namespace bb/bb
// Params 0, eflags: 0x5
// Checksum 0xa277cf56, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"bb", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace bb/bb
// Params 0, eflags: 0x4
// Checksum 0x4ca42c4d, Offset: 0x120
// Size: 0x14
function private function_70a657d8() {
    init_shared();
}

// Namespace bb/bb
// Params 8, eflags: 0x0
// Checksum 0x25268ac6, Offset: 0x140
// Size: 0x134
function logdamage(attacker, victim, weapon, damage, damagetype, hitlocation, victimkilled, victimdowned) {
    
}

// Namespace bb/bb
// Params 2, eflags: 0x0
// Checksum 0x4eb37789, Offset: 0x850
// Size: 0x14
function logaispawn(*aient, *spawner) {
    
}

// Namespace bb/bb
// Params 2, eflags: 0x0
// Checksum 0x7209e87b, Offset: 0x870
// Size: 0x1d4
function logplayerevent(player, eventname) {
    currentweapon = "";
    beastmodeactive = 0;
    if (isdefined(player.currentweapon)) {
        currentweapon = player.currentweapon.name;
    }
    if (isdefined(player.beastmode)) {
        beastmodeactive = player.beastmode;
    }
    zmplayerevents = {};
    zmplayerevents.gametime.zmplayerevents = function_f8d53445();
    zmplayerevents.roundnumber.zmplayerevents = level.round_number;
    zmplayerevents.eventname = eventname;
    zmplayerevents.spawnid.zmplayerevents = getplayerspawnid(player);
    zmplayerevents.username.zmplayerevents = player.name;
    zmplayerevents.originx.zmplayerevents = player.origin[0];
    zmplayerevents.originy.zmplayerevents = player.origin[1];
    zmplayerevents.originz.zmplayerevents = player.origin[2];
    zmplayerevents.health.zmplayerevents = player.health;
    zmplayerevents.beastlives.zmplayerevents = player.beastlives;
    zmplayerevents.currentweapon = currentweapon;
    zmplayerevents.kills.zmplayerevents = player.kills;
    zmplayerevents.zone_name.zmplayerevents = player.zone_name;
    zmplayerevents.sessionstate.zmplayerevents = player.sessionstate;
    zmplayerevents.currentscore.zmplayerevents = player.score;
    zmplayerevents.totalscore.zmplayerevents = player.score_total;
    zmplayerevents.beastmodeon = beastmodeactive;
    function_92d1707f(#"hash_5bd2a2e3f75111c8", zmplayerevents);
}

// Namespace bb/bb
// Params 7, eflags: 0x0
// Checksum 0x51e5b9e5, Offset: 0xa50
// Size: 0x1cc
function logpurchaseevent(player, sellerent, cost, itemname, itemupgraded, itemtype, *eventname) {
    zmpurchases = {};
    zmpurchases.gametime.zmpurchases = function_f8d53445();
    zmpurchases.roundnumber.zmpurchases = level.round_number;
    zmpurchases.playerspawnid.zmpurchases = getplayerspawnid(sellerent);
    zmpurchases.username.zmpurchases = sellerent.name;
    zmpurchases.itemname = itemupgraded;
    zmpurchases.isupgraded = itemtype;
    zmpurchases.itemtype = eventname;
    zmpurchases.purchasecost = itemname;
    zmpurchases.playeroriginx.zmpurchases = sellerent.origin[0];
    zmpurchases.playeroriginy.zmpurchases = sellerent.origin[1];
    zmpurchases.playeroriginz.zmpurchases = sellerent.origin[2];
    zmpurchases.selleroriginx.zmpurchases = cost.origin[0];
    zmpurchases.selleroriginy.zmpurchases = cost.origin[1];
    zmpurchases.selleroriginz.zmpurchases = cost.origin[2];
    zmpurchases.playerkills.zmpurchases = sellerent.kills;
    zmpurchases.playerhealth.zmpurchases = sellerent.health;
    zmpurchases.playercurrentscore.zmpurchases = sellerent.score;
    zmpurchases.playertotalscore.zmpurchases = sellerent.score_total;
    zmpurchases.zone_name.zmpurchases = sellerent.zone_name;
    function_92d1707f(#"hash_22cb254982ca97dc", zmpurchases);
}

// Namespace bb/bb
// Params 3, eflags: 0x0
// Checksum 0xcc74f75, Offset: 0xc28
// Size: 0x208
function logpowerupevent(powerup, optplayer, eventname) {
    playerspawnid = -1;
    playername = "";
    if (isdefined(optplayer) && isplayer(optplayer)) {
        playerspawnid = getplayerspawnid(optplayer);
        playername = optplayer.name;
    }
    zmpowerups = {};
    zmpowerups.gametime.zmpowerups = function_f8d53445();
    zmpowerups.roundnumber.zmpowerups = level.round_number;
    zmpowerups.powerupname.zmpowerups = powerup.powerup_name;
    zmpowerups.powerupx.zmpowerups = powerup.origin[0];
    zmpowerups.powerupy.zmpowerups = powerup.origin[1];
    zmpowerups.powerupz.zmpowerups = powerup.origin[2];
    zmpowerups.eventname = eventname;
    zmpowerups.playerspawnid = playerspawnid;
    zmpowerups.playername = playername;
    function_92d1707f(#"hash_7edbd2a2dee992e9", zmpowerups);
    foreach (player in getplayers()) {
        logplayerevent(player, "powerup_" + powerup.powerup_name + "_" + eventname);
    }
}

