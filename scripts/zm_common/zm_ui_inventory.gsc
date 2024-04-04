// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_inventory.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zm_ui_inventory;

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 0, eflags: 0x5
// Checksum 0xfa836dbd, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ui_inventory", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x6f736028, Offset: 0x138
// Size: 0x178
function private preinit() {
    callback::on_connecting(&onconnect);
    clientfield::function_91cd7763("string", "hudItems.zmFeatureDescription", 1, 1);
    zm_inventory::function_c7c05a13();
    registeredfields = [];
    foreach (mapping in level.var_a16c38d9) {
        if (!isdefined(registeredfields[mapping.var_cd35dfb2])) {
            registeredfields[mapping.var_cd35dfb2] = 1;
            if (is_true(mapping.ispersonal)) {
                clientfield::register_clientuimodel(mapping.var_cd35dfb2, 1, mapping.numbits, "int");
                continue;
            }
            clientfield::function_5b7d846d(mapping.var_cd35dfb2, 1, mapping.numbits, "int");
        }
    }
}

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x16f15948, Offset: 0x2b8
// Size: 0x1c
function private onconnect() {
    self thread function_13ad9a60();
}

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x5332ff19, Offset: 0x2e0
// Size: 0x82
function private function_13ad9a60() {
    self endon(#"disconnect");
    while (true) {
        waitresult = self waittill(#"menuresponse");
        response = waitresult.response;
        if (response == "zm_inventory_opened") {
            self notify(#"zm_inventory_menu_opened");
        }
    }
}

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0xde76d80c, Offset: 0x370
// Size: 0xdc
function function_7df6bb60(fieldname, value, player) {
    var_d5423fb8 = level.var_a16c38d9[fieldname];
    if (!(isdefined(var_d5423fb8) && is_true(var_d5423fb8.ispersonal))) {
        self clientfield::set_world_uimodel(var_d5423fb8.var_cd35dfb2, value);
        return;
    }
    assert(isplayer(player));
    if (!isdefined(player)) {
        return;
    }
    player clientfield::set_player_uimodel(var_d5423fb8.var_cd35dfb2, value);
}

// Namespace zm_ui_inventory/zm_ui_inventory
// Params 1, eflags: 0x0
// Checksum 0x9f42d993, Offset: 0x458
// Size: 0x2c
function function_d8f1d200(var_ee9637ec) {
    self clientfield::set_player_uimodel("hudItems.zmFeatureDescription", var_ee9637ec);
}

