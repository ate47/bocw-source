// Atian COD Tools GSC CW decompiler test
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;

#namespace namespace_ba4f7a20;

// Namespace namespace_ba4f7a20/namespace_ba4f7a20
// Params 0, eflags: 0x1
// Checksum 0xc7f2fd53, Offset: 0x118
// Size: 0x6dc
function autoexec function_8c49355e() {
    if (isdefined(level.var_ebf9c160)) {
        return;
    }
    level.var_ebf9c160 = [];
    level.var_ebf9c160[#"eq_slow_grenade"] = #"concussion_t9_item";
    level.var_ebf9c160[#"hash_5453c9b880261bcb"] = #"hash_676aa70930960427";
    level.var_ebf9c160[#"frag_grenade"] = #"frag_t9_item";
    level.var_ebf9c160[#"hatchet"] = #"hatchet_t9_item";
    level.var_ebf9c160[#"eq_molotov"] = #"molotov_t9_item";
    level.var_ebf9c160[#"satchel_charge"] = #"satchel_charge_t9_item";
    level.var_ebf9c160[#"eq_sticky_grenade"] = #"semtex_t9_item";
    level.var_ebf9c160[#"willy_pete"] = #"smoke_t9_item";
    level.var_ebf9c160[#"gadget_jammer"] = #"hash_3f154f45479130ed";
    level.var_ebf9c160[#"land_mine"] = #"hash_2c9b75b17410f2de";
    level.var_ebf9c160[#"tear_gas"] = #"hash_5f67f7b32b01ae53";
    level.var_ebf9c160[#"hash_455c48edddb3a457"] = #"perk_engineer_t9_item";
    level.var_ebf9c160[#"hash_457e3eedddd079bf"] = #"perk_engineer_t9_item";
    level.var_ebf9c160[#"talent_flakjacket_wz"] = #"perk_flakjacket_t9_item";
    level.var_ebf9c160[#"talent_flakjacket_mp"] = #"perk_flakjacket_t9_item";
    level.var_ebf9c160[#"hash_1b4c269b5a2c7cca"] = #"perk_medic_t9_item";
    level.var_ebf9c160[#"hash_1b02189b59ee2c86"] = #"perk_medic_t9_item";
    level.var_ebf9c160[#"talent_resistance_wz"] = #"perk_tacticalmask_t9_item";
    level.var_ebf9c160[#"talent_resistance_mp"] = #"perk_tacticalmask_t9_item";
    level.var_ebf9c160[#"hash_2189719c57fda8c5"] = #"perk_threatperception_t9_item";
    level.var_ebf9c160[#"hash_219e7b9c581015cd"] = #"perk_threatperception_t9_item";
    level.var_ebf9c160[#"hash_765b9959bc318ff8"] = #"perk_highvaluetarget_t9_item";
    level.var_ebf9c160[#"hash_76a69759bc71780c"] = #"perk_highvaluetarget_t9_item";
    level.var_ebf9c160[#"hash_510b4c02046fffad"] = #"perk_logistics_t9_item";
    level.var_ebf9c160[#"hash_5156460204afe0f5"] = #"perk_logistics_t9_item";
    level.var_ebf9c160[#"hash_746873701fc96f8a"] = #"perk_quartermaster_t9_item";
    level.var_ebf9c160[#"hash_741d65701f896c46"] = #"perk_quartermaster_t9_item";
    level.var_ebf9c160[#"hash_375b41755865b990"] = #"perk_scavenger_t9_item";
    level.var_ebf9c160[#"talent_scavenger_mp"] = #"perk_scavenger_t9_item";
    level.var_ebf9c160[#"hash_174fc52673f20b2c"] = #"perk_tracker_t9_item";
    level.var_ebf9c160[#"talent_tracker_mp"] = #"perk_tracker_t9_item";
    level.var_ebf9c160[#"hash_5e421a41883cbedd"] = #"perk_coldblooded_t9_item";
    level.var_ebf9c160[#"hash_5e201441881fce45"] = #"perk_coldblooded_t9_item";
    level.var_ebf9c160[#"hash_2d0972cc34c8d313"] = #"perk_deadsilence_t9_item";
    level.var_ebf9c160[#"hash_2cbe78cc3488f1cb"] = #"perk_deadsilence_t9_item";
    level.var_ebf9c160[#"hash_6e85dea4185486ab"] = #"perk_endurance_t9_item";
    level.var_ebf9c160[#"hash_6eded4a418a09e83"] = #"perk_endurance_t9_item";
    level.var_ebf9c160[#"hash_7de1f8b27833f161"] = #"perk_ghost_t9_item";
    level.var_ebf9c160[#"talent_ghost_mp"] = #"perk_ghost_t9_item";
    level.var_ebf9c160[#"talent_gungho_wz"] = #"perk_gungho_t9_item";
    level.var_ebf9c160[#"talent_gungho_wz"] = #"perk_gungho_t9_item";
    level.var_ebf9c160[#"hash_571e7ec0302ceb28"] = #"perk_spycraft_t9_item";
    level.var_ebf9c160[#"hash_571e7ec0302ceb28"] = #"perk_spycraft_t9_item";
}

// Namespace namespace_ba4f7a20/namespace_ba4f7a20
// Params 1, eflags: 0x4
// Checksum 0xae07dee9, Offset: 0x800
// Size: 0x54
function private function_9243f770(weapon_name) {
    if (isdefined(level.var_ebf9c160[weapon_name])) {
        item = function_4ba8fde(level.var_ebf9c160[weapon_name]);
        return item;
    }
}

// Namespace namespace_ba4f7a20/namespace_ba4f7a20
// Params 1, eflags: 0x4
// Checksum 0x86d31d73, Offset: 0x860
// Size: 0x74
function private give_item(weapon_name) {
    item = function_9243f770(weapon_name);
    if (isdefined(item)) {
        var_fa3df96 = self item_inventory::function_e66dcff5(item);
        self item_world::function_de2018e3(item, self, var_fa3df96);
    }
}

// Namespace namespace_ba4f7a20/namespace_ba4f7a20
// Params 2, eflags: 0x0
// Checksum 0x49baea26, Offset: 0x8e0
// Size: 0x284
function give_weapon(weaponname, attachmentnames) {
    if (!isplayer(self)) {
        assert(0);
        return;
    }
    if (!isstring(weaponname) && !ishash(weaponname)) {
        assert(0);
        return;
    }
    if (isdefined(attachmentnames) && !isarray(attachmentnames)) {
        assert(0);
        return;
    }
    weapon = item_world_util::function_49ce7663(weaponname);
    if (!isdefined(weapon)) {
        assert(0);
        return;
    }
    var_fa3df96 = self item_inventory::function_e66dcff5(weapon);
    if (isdefined(attachmentnames)) {
        weapon.attachments = [];
        foreach (attachmentname in attachmentnames) {
            if (!isstring(attachmentname) && !ishash(attachmentname)) {
                assert(0);
                return;
            }
            attachment = item_world_util::function_49ce7663(attachmentname + "_t9_item");
            namespace_a0d533d1::function_9e9c82a6(weapon, attachment);
        }
        weapon.amount = self getweaponammoclipsize(namespace_a0d533d1::function_2b83d3ff(weapon));
    }
    self item_world::function_de2018e3(weapon, self, var_fa3df96);
}

// Namespace namespace_ba4f7a20/namespace_ba4f7a20
// Params 3, eflags: 0x0
// Checksum 0xfd34b478, Offset: 0xb70
// Size: 0x44c
function function_e97afe1(player, class_num, var_66b7a94e = undefined) {
    if (!isplayer(player)) {
        assert(0);
        return;
    }
    if (!isint(class_num)) {
        assert(0);
        return;
    }
    function_8c49355e();
    talents = self function_fd62a2aa(class_num);
    foreach (talent in talents) {
        if (!isfunctionptr(var_66b7a94e) || player [[ var_66b7a94e ]](talent.namehash)) {
            give_item(talent.namehash);
        }
    }
    primary = self getloadoutweapon(class_num, "primary");
    if (!isfunctionptr(var_66b7a94e) || player [[ var_66b7a94e ]](primary.rootweapon.name)) {
        give_weapon(primary.rootweapon.name + "_item", primary.attachments);
    }
    secondary = self getloadoutweapon(class_num, "secondary");
    if (!isfunctionptr(var_66b7a94e) || player [[ var_66b7a94e ]](secondary.rootweapon.name)) {
        give_weapon(secondary.rootweapon.name + "_item", secondary.attachments);
    }
    primarygrenade = self function_b958b70d(class_num, "primarygrenade");
    if (!isfunctionptr(var_66b7a94e) || player [[ var_66b7a94e ]](primarygrenade)) {
        give_item(primarygrenade);
    }
    secondarygrenade = self function_b958b70d(class_num, "secondarygrenade");
    if (!isfunctionptr(var_66b7a94e) || player [[ var_66b7a94e ]](secondarygrenade)) {
        give_item(secondarygrenade);
    }
    specialgrenade = self function_b958b70d(class_num, "specialgrenade");
    if (!isfunctionptr(var_66b7a94e) || player [[ var_66b7a94e ]](specialgrenade)) {
        give_item(specialgrenade);
    }
    ultimate = self function_b958b70d(class_num, "ultimate");
    if (!isfunctionptr(var_66b7a94e) || player [[ var_66b7a94e ]](ultimate)) {
        give_item(ultimate);
    }
}

