// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_1267bfe8aee25f0d;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_8a9215cf;

// Namespace namespace_8a9215cf/namespace_8a9215cf
// Params 0, eflags: 0x5
// Checksum 0xb9d3ccae, Offset: 0x1a0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_29e063b051470416", &function_70a657d8, undefined, undefined, #"killstreaks");
}

// Namespace namespace_8a9215cf/namespace_8a9215cf
// Params 0, eflags: 0x6 linked
// Checksum 0xe7bf5175, Offset: 0x1f0
// Size: 0x58
function private function_70a657d8() {
    killstreaks::register_killstreak("killstreak_spy_wanted_order", &function_cd089b2e);
    callback::on_weapon_change(&on_weapon_change);
    level.var_e9e1396f = {};
}

// Namespace namespace_8a9215cf/namespace_8a9215cf
// Params 1, eflags: 0x2 linked
// Checksum 0x79d38aae, Offset: 0x250
// Size: 0x520
function function_cd089b2e(*killstreaktype) {
    result = 0;
    /#
        assert(isplayer(self));
    #/
    /#
        assert(isalive(self));
    #/
    /#
        assert(isdefined(level.var_44018194));
    #/
    player = self;
    if (player function_77d8d4fc() || player isplayerunderwater() || player isplayerswimming() || player isplayerwallrunning()) {
        return 0;
    }
    player callback::add_callback(#"underwater", &function_84845e32);
    player allowmelee(0);
    player disableweaponfire();
    player disableoffhandweapons();
    player function_296136b2(0);
    player function_fe89725a(1);
    player function_205350ab();
    player disableweaponcycling();
    player setclientuivisibilityflag("hud_visible", 0);
    if (isdefined(level.var_44018194)) {
        /#
            assert(isdefined(level.var_8811f9ea));
        #/
        var_1ad7055e = [[ level.var_8811f9ea ]]();
        var_b8155147 = isarray(var_1ad7055e) ? var_1ad7055e.size : 0;
        level clientfield::set_world_uimodel("hudItems.spyMatchData.playerCount", var_b8155147);
        level clientfield::set_world_uimodel("hudItems.spyMatchData.deadPlayerCount", var_b8155147 - function_a1ef346b().size);
        util::wait_network_frame(1);
        if (!isdefined(player)) {
            return;
        }
        level.var_44018194 namespace_bfc09150::set_state(player, "WantedOrderMenu");
        player flag::set("selectingWantedPlayer");
        player thread function_eb585639();
        event = undefined;
        event = player waittill(#"hash_79490f9acf32966c", #"hash_91a93ea58d7ad74", #"death", #"disconnect", #"game_ended");
        if (event._notify === "player_selected") {
            result = 1;
        }
        waitframe(1);
        if (!isdefined(player)) {
            return;
        }
        player flag::clear("selectingWantedPlayer");
        level.var_44018194 namespace_bfc09150::set_state(player, "CombatHud");
    }
    player callback::remove_callback(#"underwater", &function_84845e32);
    player allowmelee(1);
    player enableweaponfire();
    player enableoffhandweapons();
    player function_296136b2(1);
    player function_fe89725a(0);
    player function_6e1804bd();
    player enableweaponcycling();
    player setclientuivisibilityflag("hud_visible", 1);
    return result;
}

// Namespace namespace_8a9215cf/namespace_8a9215cf
// Params 1, eflags: 0x6 linked
// Checksum 0x34e84884, Offset: 0x778
// Size: 0x96
function private on_weapon_change(*params) {
    if (!self flag::get("selectingWantedPlayer")) {
        return;
    }
    curweapon = self getcurrentweapon();
    var_465632db = getweapon(#"hash_29e063b051470416");
    if (curweapon != var_465632db) {
        self notify(#"hash_91a93ea58d7ad74");
    }
}

// Namespace namespace_8a9215cf/namespace_8a9215cf
// Params 1, eflags: 0x6 linked
// Checksum 0x3d1e9ccd, Offset: 0x818
// Size: 0x46
function private function_84845e32(*params) {
    if (!self flag::get("selectingWantedPlayer")) {
        return;
    }
    self notify(#"hash_91a93ea58d7ad74");
}

// Namespace namespace_8a9215cf/namespace_8a9215cf
// Params 0, eflags: 0x6 linked
// Checksum 0xe4e9083b, Offset: 0x868
// Size: 0x162
function private function_eb585639() {
    self endon(#"disconnect", #"death", #"hash_91a93ea58d7ad74", #"hash_79490f9acf32966c");
    level endon(#"game_ended");
    while (1) {
        waitresult = undefined;
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        clientnum = waitresult.intpayload;
        if (menu == "wanted_order_menu") {
            if (response == "cancel") {
                self notify(#"hash_91a93ea58d7ad74");
                return;
            }
            if (response == "player_selected") {
                self notify(#"hash_79490f9acf32966c", {#playerclientnum:clientnum});
                return;
            }
        }
        wait(float(function_60d95f53()) / 1000);
    }
}
