// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace deathicons;

// Namespace deathicons/deathicons
// Params 0, eflags: 0x5
// Checksum 0x40894ff3, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"deathicons", &preinit, undefined, undefined, undefined);
}

// Namespace deathicons/deathicons
// Params 0, eflags: 0x6 linked
// Checksum 0xc4f7baa8, Offset: 0x110
// Size: 0x44
function private preinit() {
    callback::on_start_gametype(&init);
    callback::on_connect(&on_player_connect);
}

// Namespace deathicons/deathicons
// Params 0, eflags: 0x2 linked
// Checksum 0x4eadeaa3, Offset: 0x160
// Size: 0x3c
function init() {
    if (!isdefined(level.ragdoll_override)) {
        level.ragdoll_override = &ragdoll_override;
    }
    if (!level.teambased) {
        return;
    }
}

// Namespace deathicons/deathicons
// Params 0, eflags: 0x2 linked
// Checksum 0x85391fbf, Offset: 0x1a8
// Size: 0xe
function on_player_connect() {
    self.selfdeathicons = [];
}

// Namespace deathicons/deathicons
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1c0
// Size: 0x4
function update_enabled() {
    
}

// Namespace deathicons/deathicons
// Params 3, eflags: 0x2 linked
// Checksum 0xb5510193, Offset: 0x1d0
// Size: 0x24c
function add(entity, dyingplayer, team) {
    if (!level.teambased) {
        return;
    }
    if (is_true(dyingplayer.isjammed)) {
        return;
    }
    timeout = getdvarfloat(#"scr_deathicon_time", 5);
    iconorg = entity.origin;
    dyingplayer endon(#"spawned_player", #"disconnect");
    waitframe(1);
    util::waittillslowprocessallowed();
    assert(isdefined(level.teams[team]));
    assert(isdefined(level.teamindex[team]));
    if (getdvarint(#"ui_hud_showdeathicons", 1) == 0) {
        return;
    }
    if (level.hardcoremode) {
        return;
    }
    objectivename = sessionmodeiswarzonegame() ? #"headicon_dead_wz" : #"headicon_dead";
    deathiconobjid = gameobjects::get_next_obj_id();
    objective_add(deathiconobjid, "active", iconorg, objectivename, dyingplayer);
    objective_setteam(deathiconobjid, team);
    function_4339912c(deathiconobjid);
    function_29ef32ee(deathiconobjid, team);
    level thread destroy_slowly(timeout, deathiconobjid);
}

// Namespace deathicons/deathicons
// Params 2, eflags: 0x2 linked
// Checksum 0x67dd799e, Offset: 0x428
// Size: 0x6c
function destroy_slowly(timeout, deathiconobjid) {
    wait(timeout);
    objective_setstate(deathiconobjid, "done");
    wait(1);
    objective_delete(deathiconobjid);
    gameobjects::release_obj_id(deathiconobjid);
}

// Namespace deathicons/deathicons
// Params 10, eflags: 0x2 linked
// Checksum 0x66727b84, Offset: 0x4a0
// Size: 0xd4
function ragdoll_override(*idamage, smeansofdeath, *weapon, *shitloc, *vdir, *vattackerorigin, *deathanimduration, *einflictor, *ragdoll_jib, body) {
    if (ragdoll_jib == "MOD_FALLING" && self isonground() == 1) {
        body startragdoll();
        if (!isdefined(self.switching_teams)) {
            thread add(body, self, self.team);
        }
        return true;
    }
    return false;
}

