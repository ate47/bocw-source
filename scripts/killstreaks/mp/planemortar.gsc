// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\util.gsc;
#using script_1cc417743d7c262d;
#using script_396f7d71538c9677;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\planemortar_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;

#namespace planemortar;

// Namespace planemortar/planemortar
// Params 0, eflags: 0x5
// Checksum 0xd033656f, Offset: 0x1c0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"planemortar", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0xf7f0db8c, Offset: 0x210
// Size: 0xfc
function private preinit() {
    init_shared();
    bundlename = "killstreak_planemortar";
    if (sessionmodeiswarzonegame()) {
        bundlename += "_wz";
    }
    killstreaks::register_killstreak(bundlename, &usekillstreakplanemortar);
    level.killstreaks["inventory_" + getscriptbundle(bundlename).var_d3413870].var_33807ea0 = 1;
    level.plane_mortar_bda_dialog = &plane_mortar_bda_dialog;
    level.planeawardscoreevent = &planeawardscoreevent;
    level.var_269fec2 = &function_269fec2;
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x2 linked
// Checksum 0xf25b4700, Offset: 0x318
// Size: 0xa6
function function_269fec2() {
    if (isdefined(level.var_30264985)) {
        self notify(#"mortarradarused");
    }
    if ((isdefined(self.var_17b726b7) ? self.var_17b726b7 : 0) < gettime()) {
        globallogic_audio::leader_dialog_for_other_teams("enemyPlaneMortarUsed", self.team);
        self.var_17b726b7 = gettime() + int(battlechatter::mpdialog_value("planeMortarCooldown", 7) * 1000);
    }
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x2 linked
// Checksum 0x1e00a775, Offset: 0x3c8
// Size: 0x1de
function plane_mortar_bda_dialog() {
    if (isdefined(self.planemortarbda)) {
        if (self.planemortarbda === 1) {
            bdadialog = "kill1";
        } else if (self.planemortarbda === 2) {
            bdadialog = "kill2";
        } else if (self.planemortarbda === 3) {
            bdadialog = "kill3";
        } else if (self.planemortarbda > 3) {
            bdadialog = "killMultiple";
        }
        self namespace_f9b02f80::play_pilot_dialog(bdadialog, "planemortar", undefined, self.planemortarpilotindex);
        self namespace_f9b02f80::play_taacom_dialog("confirmHit");
    } else if (is_true(self.("planemortar" + "_hitconfirmed"))) {
        self namespace_f9b02f80::play_pilot_dialog("hitConfirmed_p0", "planemortar", undefined, self.planemortarpilotindex);
        self namespace_f9b02f80::play_taacom_dialog("confirmHit");
    } else {
        self namespace_f9b02f80::play_pilot_dialog("killNone", "planemortar", undefined, self.planemortarpilotindex);
        self namespace_f9b02f80::play_taacom_dialog("confirmMiss");
    }
    self.planemortarbda = undefined;
    self.("planemortar" + "_hitconfirmed") = undefined;
    self.var_6e5974d2 = undefined;
    self.planemortarpilotindex = undefined;
}

// Namespace planemortar/planemortar
// Params 2, eflags: 0x2 linked
// Checksum 0xa87e7be3, Offset: 0x5b0
// Size: 0x14c
function planeawardscoreevent(attacker, plane) {
    attacker endon(#"disconnect");
    attacker notify(#"planeawardscoreevent_singleton");
    attacker endon(#"planeawardscoreevent_singleton");
    waittillframeend();
    if (isdefined(attacker) && (!isdefined(plane.owner) || plane.owner util::isenemyplayer(attacker))) {
        challenges::destroyedaircraft(attacker, getweapon(#"emp"), 0, plane);
        scoreevents::processscoreevent(#"destroyed_plane_mortar", attacker, plane.owner, getweapon(#"emp"));
        attacker challenges::addflyswatterstat(getweapon(#"emp"), plane);
    }
}

