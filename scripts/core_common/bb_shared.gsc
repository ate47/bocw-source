// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;

#namespace bb;

// Namespace bb/bb_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x20d21263, Offset: 0x88
// Size: 0x84
function init_shared() {
    callback::on_start_gametype(&init);
    callback::on_joined_team(&player_joined_team);
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
}

// Namespace bb/bb_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x118
// Size: 0x4
function init() {
    
}

// Namespace bb/bb_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6041c282, Offset: 0x128
// Size: 0x84
function function_ff257265() {
    self._bbdata = [];
    self._bbdata[#"score"] = 0;
    self._bbdata[#"momentum"] = 0;
    self._bbdata[#"spawntime"] = gettime();
    self._bbdata[#"shots"] = 0;
    self._bbdata[#"hits"] = 0;
}

// Namespace bb/bb_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xaf2b94f2, Offset: 0x1b8
// Size: 0x1c
function on_player_connect() {
    self function_ff257265();
}

// Namespace bb/bb_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb5b80c57, Offset: 0x1e0
// Size: 0x1c
function on_player_spawned() {
    self function_ff257265();
}

// Namespace bb/bb_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x33196c00, Offset: 0x208
// Size: 0x234
function commit_weapon_data(spawnid, currentweapon, time0) {
    if (isbot(self)) {
        return;
    }
    assert(isdefined(self._bbdata));
    if (!isdefined(self._bbdata)) {
        return;
    }
    time1 = gettime();
    blackboxeventname = #"mpweapons";
    eventname = #"hash_41cc1afc10e99541";
    if (sessionmodeiscampaigngame()) {
        blackboxeventname = #"cpweapons";
        eventname = #"hash_474292d3118817ab";
    } else if (sessionmodeiszombiesgame()) {
        blackboxeventname = #"zmweapons";
        eventname = #"hash_67140d84a7660909";
    } else if (sessionmodeiswarzonegame()) {
        blackboxeventname = #"wzweapons";
        eventname = #"hash_63ec5305e1ef1335";
    }
    event_data = {#spawnid:spawnid, #name:currentweapon.name, #duration:time1 - time0, #shots:self._bbdata[#"shots"], #hits:self._bbdata[#"hits"]};
    function_92d1707f(eventname, blackboxeventname, event_data);
    self._bbdata[#"shots"] = 0;
    self._bbdata[#"hits"] = 0;
}

// Namespace bb/bb_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7a92d35e, Offset: 0x448
// Size: 0x70
function add_to_stat(statname, delta) {
    if (isbot(self)) {
        return;
    }
    if (isdefined(self._bbdata) && isdefined(self._bbdata[statname])) {
        self._bbdata[statname] = self._bbdata[statname] + delta;
    }
}

// Namespace bb/bb_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x43fd3b6e, Offset: 0x4c0
// Size: 0x44
function function_a7ba460f(reason) {
    function_92d1707f(#"hash_28b295eb3b8e189", {#reason:reason});
}

// Namespace bb/bb_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x9ee7a36c, Offset: 0x510
// Size: 0x94
function function_afcc007d(name, clientnum, xuid) {
    var_bd8c7087 = int(xuid);
    function_92d1707f(#"hash_3e5070f3289e386c", {#name:name, #clientnum:clientnum, #xuid:var_bd8c7087});
}

// Namespace bb/bb_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x6db3c012, Offset: 0x5b0
// Size: 0x94
function function_e0dfa262(name, clientnum, xuid) {
    var_bd8c7087 = int(xuid);
    function_92d1707f(#"hash_557aae9aaddeac22", {#name:name, #clientnum:clientnum, #xuid:var_bd8c7087});
}

// Namespace bb/bb_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf4533f5e, Offset: 0x650
// Size: 0x3a
function player_joined_team(*params) {
    if (!isdefined(self.team) || isdefined(self.startingteam)) {
        return;
    }
    self.startingteam = self.team;
}

