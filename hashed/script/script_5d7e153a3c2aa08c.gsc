// Atian COD Tools GSC CW decompiler test
#using script_7d0013bbc05623b9;
#using scripts\cp_common\hms_util.gsc;
#using scripts\cp_common\util.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_c53a738b;

// Namespace namespace_c53a738b/namespace_c53a738b
// Params 0, eflags: 0x5
// Checksum 0x8312ce39, Offset: 0x1c8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2d57c6f56fffc76a", undefined, &function_2a159d3e, undefined, undefined);
}

// Namespace namespace_c53a738b/namespace_c53a738b
// Params 0, eflags: 0x6 linked
// Checksum 0x2d4e30ba, Offset: 0x210
// Size: 0x31c
function private function_2a159d3e() {
    level.var_7b32679c = [];
    level.var_7b32679c[getweapon(#"frag_grenade")] = {#str_hint:#"hash_3211ac4e9118211f", #var_9c0ef0ca:"frag_"};
    level.var_7b32679c[getweapon(#"hatchet")] = {#str_hint:#"hash_492213f4afcbea1e", #var_9c0ef0ca:"hatchet_"};
    level.var_7b32679c[getweapon(#"eq_molotov")] = {#str_hint:#"hash_1e02ff8dfeec0303", #var_9c0ef0ca:"molotov_"};
    level.var_7b32679c[getweapon(#"hash_675e85b293a65c14")] = {#str_hint:#"hash_58f8d39b06c60ed0", #var_9c0ef0ca:"mine_"};
    level.var_7b32679c[getweapon(#"hash_5453c9b880261bcb")] = {#str_hint:#"hash_1488b8b01aeb103b", #var_9c0ef0ca:"flash_"};
    level.var_7b32679c[getweapon(#"willy_pete")] = {#str_hint:#"hash_24bc2d8182caba04", #var_9c0ef0ca:"smoke_"};
    level.var_7b32679c[getweapon(#"hash_364914e1708cb629")] = {#str_hint:#"hash_1a78feacd6c51ab6", #var_9c0ef0ca:"stim_"};
    var_2611f92b = getentarray("grenade_ammo_box", "targetname");
    level flag::wait_till("all_players_connected");
    array::thread_all(var_2611f92b, &function_fcd7744f);
}

// Namespace namespace_c53a738b/namespace_c53a738b
// Params 0, eflags: 0x6 linked
// Checksum 0xa96ff18, Offset: 0x538
// Size: 0xb4
function private function_fcd7744f() {
    self hidepart("tag_ammo_all", "", 1);
    w_grenade = function_1ba6c697(self.grenade_type);
    self util::create_cursor_hint(undefined, (0, 0, 3), undefined, undefined, undefined, &function_d5fc8564, undefined, undefined, undefined, undefined, 1, 0);
    self function_417045b(w_grenade, w_grenade.clipsize);
}

// Namespace namespace_c53a738b/namespace_c53a738b
// Params 1, eflags: 0x6 linked
// Checksum 0x6a6e3e70, Offset: 0x5f8
// Size: 0x220
function private function_1ba6c697(var_4847a929) {
    switch (var_4847a929) {
    case #"frag":
        w_grenade = getweapon(#"frag_grenade");
        break;
    case #"hatchet":
        w_grenade = getweapon(#"hatchet");
        break;
    case #"molotov":
        w_grenade = getweapon(#"eq_molotov");
        break;
    case #"mine":
        w_grenade = getweapon(#"hash_675e85b293a65c14");
        break;
    case #"flash":
        w_grenade = getweapon(#"hash_5453c9b880261bcb");
        break;
    case #"smoke":
        w_grenade = getweapon(#"willy_pete");
        break;
    case #"stim":
        w_grenade = getweapon(#"hash_364914e1708cb629");
        break;
    default:
        w_grenade = getweapon(var_4847a929);
        break;
    }
    assert(w_grenade != getweapon("<unknown string>"), "<unknown string>" + var_4847a929 + "<unknown string>");
    return w_grenade;
}

// Namespace namespace_c53a738b/namespace_c53a738b
// Params 2, eflags: 0x6 linked
// Checksum 0xdc74f456, Offset: 0x820
// Size: 0x23c
function private function_417045b(w_grenade, n_count) {
    if (isdefined(self.w_grenade) && self.w_grenade !== w_grenade) {
        var_9c0ef0ca = isdefined(level.var_7b32679c[self.w_grenade].var_9c0ef0ca) ? level.var_7b32679c[self.w_grenade].var_9c0ef0ca : "frag_";
        self hidepart("tag_" + var_9c0ef0ca + "all", "", 1);
    }
    if (isdefined(w_grenade)) {
        self.w_grenade = w_grenade;
        self.n_count = n_count;
        var_9c0ef0ca = isdefined(level.var_7b32679c[self.w_grenade].var_9c0ef0ca) ? level.var_7b32679c[self.w_grenade].var_9c0ef0ca : "frag_";
        for (i = 0; i < 4; i++) {
            if (i < n_count) {
                self showpart("tag_" + var_9c0ef0ca + i + 1);
                continue;
            }
            self hidepart("tag_" + var_9c0ef0ca + i + 1);
        }
    }
    if (n_count < 1) {
        self util::remove_cursor_hint();
        return;
    }
    str_hint = isdefined(level.var_7b32679c[self.w_grenade].str_hint) ? level.var_7b32679c[self.w_grenade].str_hint : self.w_grenade.displayname;
    self prompts::function_263320e2(#"use", str_hint);
}

// Namespace namespace_c53a738b/namespace_c53a738b
// Params 1, eflags: 0x6 linked
// Checksum 0xbe2fc15, Offset: 0xa68
// Size: 0x2bc
function private function_d5fc8564(s_info) {
    player = s_info.player;
    player endon(#"death");
    player val::set(#"hash_2d57c6f56fffc76a", "disable_offhand_weapons", 1);
    waitframe(1);
    if (player hasweapon(self.w_grenade)) {
        n_current = player getweaponammoclip(self.w_grenade);
        var_2a9d371 = int(min(player function_5d951520(self.w_grenade) - n_current, self.n_count));
        if (var_2a9d371 > 0) {
            player function_990bc6e();
            var_415ecc8d = n_current + var_2a9d371;
            player setweaponammoclip(self.w_grenade, var_415ecc8d);
            self function_417045b(self.w_grenade, self.n_count - var_2a9d371);
        } else {
            player util::show_hint_text(#"hash_ac26921ef49b2d7", 1, undefined, 1.5);
        }
    } else {
        var_a865c8a2 = player hms_util::function_ad6fd59c(self.w_grenade.islethalgrenade);
        var_a560ecaa = 0;
        if (isdefined(var_a865c8a2)) {
            var_a560ecaa = player getweaponammoclip(var_a865c8a2);
            player takeweapon(var_a865c8a2);
        }
        player function_990bc6e();
        player giveweapon(self.w_grenade);
        player setweaponammoclip(self.w_grenade, self.n_count);
        self function_417045b(var_a865c8a2, var_a560ecaa);
    }
    player val::reset_all(#"hash_2d57c6f56fffc76a");
}

// Namespace namespace_c53a738b/namespace_c53a738b
// Params 0, eflags: 0x6 linked
// Checksum 0x269ec01e, Offset: 0xd30
// Size: 0x64
function private function_990bc6e() {
    self playgestureviewmodel(#"hash_6dc0055905c5e7af");
    wait(0.3);
    self playrumbleonentity("damage_light");
    snd::play("fly_grenade_ammo_crate_pickup");
}

