// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_daf1661f;

// Namespace namespace_daf1661f/namespace_daf1661f
// Params 0, eflags: 0x2 linked
// Checksum 0x44a644fa, Offset: 0x90
// Size: 0x24
function init() {
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_daf1661f/namespace_daf1661f
// Params 1, eflags: 0x2 linked
// Checksum 0x1d35d00c, Offset: 0xc0
// Size: 0x2c
function on_player_spawned(*local_client_num) {
    level callback::function_6231c19(&on_weapon_change);
}

// Namespace namespace_daf1661f/namespace_daf1661f
// Params 1, eflags: 0x2 linked
// Checksum 0x4c4c5574, Offset: 0xf8
// Size: 0xb4
function on_weapon_change(params) {
    if (params.weapon.name == #"none") {
        return;
    }
    if (isstruct(self)) {
        return;
    }
    if (!self function_da43934d() || !isplayer(self) || !isalive(self)) {
        return;
    }
    function_fad60cb1(params.localclientnum, params.weapon);
}

