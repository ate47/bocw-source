// Atian COD Tools GSC CW decompiler test
#using script_50a49d535160be60;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_equipment;

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x5
// Checksum 0xb86e27ed, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_equipment", &preinit, undefined, undefined, undefined);
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x6 linked
// Checksum 0xb1591d2f, Offset: 0xf0
// Size: 0x34
function private preinit() {
    level._equip_activated_callbacks = [];
    level.buildable_piece_count = 24;
    zm_hint_text::register();
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x0
// Checksum 0xf0757d04, Offset: 0x130
// Size: 0x24
function add_equip_activated_callback_override(model, func) {
    level._equip_activated_callbacks[model] = func;
}

// Namespace zm_equipment/zm_equipment
// Params 7, eflags: 0x0
// Checksum 0xb038d13, Offset: 0x160
// Size: 0x11e
function equipment_activated_clientfield_cb(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    if (isdefined(self.model) && isdefined(level._equip_activated_callbacks[self.model])) {
        [[ level._equip_activated_callbacks[self.model] ]](localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    }
    if (!newval) {
        if (isdefined(self._equipment_activated_fx)) {
            for (i = 0; i < self._equipment_activated_fx.size; i++) {
                for (j = 0; j < self._equipment_activated_fx[i].size; j++) {
                    deletefx(i, self._equipment_activated_fx[i][j]);
                }
            }
            self._equipment_activated_fx = undefined;
        }
    }
}

// Namespace zm_equipment/zm_equipment
// Params 4, eflags: 0x0
// Checksum 0xa8fdefef, Offset: 0x288
// Size: 0x24c
function play_fx_for_all_clients(fx, tag, storehandles = 0, forward = undefined) {
    numlocalplayers = getlocalplayers().size;
    if (!isdefined(self._equipment_activated_fx)) {
        self._equipment_activated_fx = [];
        for (i = 0; i < numlocalplayers; i++) {
            self._equipment_activated_fx[i] = [];
        }
    }
    if (isdefined(tag)) {
        for (i = 0; i < numlocalplayers; i++) {
            if (storehandles) {
                self._equipment_activated_fx[i][self._equipment_activated_fx[i].size] = util::playfxontag(i, fx, self, tag);
                continue;
            }
            self_for_client = getentbynum(i, self getentitynumber());
            if (isdefined(self_for_client)) {
                util::playfxontag(i, fx, self_for_client, tag);
            }
        }
        return;
    }
    for (i = 0; i < numlocalplayers; i++) {
        if (storehandles) {
            if (isdefined(forward)) {
                self._equipment_activated_fx[i][self._equipment_activated_fx[i].size] = playfx(i, fx, self.origin, forward);
            } else {
                self._equipment_activated_fx[i][self._equipment_activated_fx[i].size] = playfx(i, fx, self.origin);
            }
            continue;
        }
        if (isdefined(forward)) {
            playfx(i, fx, self.origin, forward);
            continue;
        }
        playfx(i, fx, self.origin);
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0x3baefeee, Offset: 0x4e0
// Size: 0x36
function is_included(equipment) {
    if (!isdefined(level._included_equipment)) {
        return false;
    }
    return isdefined(level._included_equipment[equipment.rootweapon]);
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0xdd7a7903, Offset: 0x520
// Size: 0x54
function include(equipment_name) {
    if (!isdefined(level._included_equipment)) {
        level._included_equipment = [];
    }
    equipment = getweapon(equipment_name);
    level._included_equipment[equipment] = equipment;
}

