// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_14a33186;

// Namespace namespace_14a33186/namespace_14a33186
// Params 0, eflags: 0x5
// Checksum 0xb1da1496, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_e3a43562c7b50de", undefined, &function_2a159d3e, undefined, undefined);
}

// Namespace namespace_14a33186/namespace_14a33186
// Params 0, eflags: 0x6 linked
// Checksum 0x2a512231, Offset: 0x158
// Size: 0x64
function private function_2a159d3e() {
    var_59dc62dc = struct::get_array("ammo_resupply_crate");
    level flag::wait_till("all_players_connected");
    array::thread_all(var_59dc62dc, &ammo_crate_init);
}

// Namespace namespace_14a33186/namespace_14a33186
// Params 0, eflags: 0x2 linked
// Checksum 0x78cfb2f2, Offset: 0x1c8
// Size: 0x54
function ammo_crate_init() {
    self util::create_cursor_hint(undefined, undefined, #"hash_59581ed64841a461", undefined, undefined, &function_3e0940bd, undefined, undefined, undefined, undefined, 1, 0, &function_6014ca4c);
}

// Namespace namespace_14a33186/namespace_14a33186
// Params 1, eflags: 0x6 linked
// Checksum 0xd7537b1f, Offset: 0x228
// Size: 0x184
function private function_3e0940bd(s_info) {
    player = s_info.player;
    player endon(#"death");
    player playgestureviewmodel(#"hash_6dc0055905c5e7af");
    wait(0.3);
    player playrumbleonentity("damage_light");
    a_w_weapons = player getweaponslist(0);
    foreach (w_weapon in a_w_weapons) {
        if (isdefined(w_weapon.var_4d97c40b) && w_weapon.var_4d97c40b) {
            continue;
        }
        player givemaxammo(w_weapon);
    }
    snd::play("fly_ammo_crate_pickup", self);
    player thread function_cc6f66e5();
}

// Namespace namespace_14a33186/namespace_14a33186
// Params 0, eflags: 0x6 linked
// Checksum 0x541b339f, Offset: 0x3b8
// Size: 0x36
function private function_cc6f66e5() {
    self endon(#"death");
    self.var_626ab4f2 = 1;
    wait(5);
    self.var_626ab4f2 = undefined;
}

// Namespace namespace_14a33186/namespace_14a33186
// Params 1, eflags: 0x2 linked
// Checksum 0x704a7be3, Offset: 0x3f8
// Size: 0x22
function function_6014ca4c(s_info) {
    return !isdefined(s_info.player.var_626ab4f2);
}

