// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;

#namespace loadout;

// Namespace loadout/player_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xbe289078, Offset: 0xf8
// Size: 0x14
function function_87bcb1b() {
    return level.var_d0e6b79d === 1;
}

// Namespace loadout/player_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xb5fd512b, Offset: 0x118
// Size: 0x12c
function function_c67222df() {
    if (!isdefined(self.pers[#"loadout"])) {
        self.pers[#"loadout"] = spawnstruct();
    }
    self init_loadout_slot("primary");
    self init_loadout_slot("secondary");
    self init_loadout_slot("herogadget");
    self init_loadout_slot("ultimate");
    self init_loadout_slot("primarygrenade");
    self init_loadout_slot("secondarygrenade");
    self init_loadout_slot("specialgrenade");
}

// Namespace loadout/player_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xb9627cea, Offset: 0x250
// Size: 0x90
function init_loadout_slot(slot_index) {
    self.pers[#"loadout"].slots[slot_index] = {#slot:slot_index, #weapon:level.weaponnone, #var_4cfdfa9b:level.weaponnone, #count:0, #killed:0};
}

// Namespace loadout/player_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x7c8095f2, Offset: 0x2e8
// Size: 0x50
function get_loadout_slot(slot_index) {
    if (isdefined(self.pers[#"loadout"])) {
        return self.pers[#"loadout"].slots[slot_index];
    }
    return undefined;
}

// Namespace loadout/player_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xcb2249fd, Offset: 0x340
// Size: 0xcc
function function_8435f729(weapon) {
    if (isdefined(self.pers[#"loadout"])) {
        foreach (slot_index, slot in self.pers[#"loadout"].slots) {
            if (slot.weapon == weapon) {
                return slot_index;
            }
        }
    }
    return undefined;
}

// Namespace loadout/player_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x35f0ec75, Offset: 0x418
// Size: 0xcc
function find_loadout_slot(weapon) {
    if (isdefined(self.pers[#"loadout"])) {
        foreach (slot in self.pers[#"loadout"].slots) {
            if (slot.weapon == weapon) {
                return slot;
            }
        }
    }
    return undefined;
}

// Namespace loadout/player_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x323ba584, Offset: 0x4f0
// Size: 0xb6
function function_18a77b37(slot_index) {
    if (function_87bcb1b() && isdefined(self) && isdefined(self.pers) && isdefined(self.pers[#"loadout"])) {
        assert(isdefined(self.pers[#"loadout"].slots[slot_index]));
        return self.pers[#"loadout"].slots[slot_index].weapon;
    }
    return undefined;
}

// Namespace loadout/player_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0x90fe3732, Offset: 0x5b0
// Size: 0xb6
function function_442539(slot_index, weapon) {
    assert(isdefined(self.pers[#"loadout"].slots[slot_index]));
    assert(isplayer(self));
    assert(isdefined(weapon));
    self.pers[#"loadout"].slots[slot_index].weapon = weapon;
}

// Namespace loadout/player_loadout
// Params 1, eflags: 0x0
// Checksum 0x405a765b, Offset: 0x670
// Size: 0x8a
function gadget_is_in_use(slot_index) {
    player = self;
    weapon = function_18a77b37(slot_index);
    if (!isdefined(weapon)) {
        return 0;
    }
    slot = player gadgetgetslot(weapon);
    active = player util::gadget_is_in_use(slot);
    return active;
}

