// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_items;

// Namespace zm_items/zm_items
// Params 0, eflags: 0x5
// Checksum 0x6ccc7e79, Offset: 0x118
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_items", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_items/zm_items
// Params 0, eflags: 0x6 linked
// Checksum 0x2c4d6c0b, Offset: 0x170
// Size: 0xe4
function private preinit() {
    if (!isdefined(level.var_ddfee332)) {
        level.var_ddfee332 = 0;
    }
    if (!isdefined(level.item_list)) {
        level.item_list = [];
    }
    if (!isdefined(level.item_spawns)) {
        level.item_spawns = [];
    }
    if (!isdefined(level.item_inventory)) {
        level.item_inventory = [];
    }
    if (!isdefined(level.item_callbacks)) {
        level.item_callbacks = [];
    }
    clientfield::register("item", "highlight_item", 1, 2, "int");
    callback::on_spawned(&player_on_spawned);
}

// Namespace zm_items/zm_items
// Params 0, eflags: 0x6 linked
// Checksum 0xa279e73b, Offset: 0x260
// Size: 0x3a0
function private postinit() {
    a_items = getitemarray();
    foreach (item in a_items) {
        w_item = item.item;
        if (isdefined(w_item) && is_true(w_item.craftitem)) {
            tname = w_item;
            if (!isdefined(level.item_spawns[tname])) {
                level.item_spawns[tname] = [];
            }
            if (!isdefined(level.item_spawns[tname])) {
                level.item_spawns[tname] = [];
            } else if (!isarray(level.item_spawns[tname])) {
                level.item_spawns[tname] = array(level.item_spawns[tname]);
            }
            level.item_spawns[tname][level.item_spawns[tname].size] = item;
            if (!isdefined(level.item_list)) {
                level.item_list = [];
            } else if (!isarray(level.item_list)) {
                level.item_list = array(level.item_list);
            }
            if (!isinarray(level.item_list, w_item)) {
                level.item_list[level.item_list.size] = w_item;
            }
        }
    }
    foreach (a_items in level.item_spawns) {
        var_b38ebe37 = a_items[0].item.var_ec2cbce2;
        if (isdefined(level.var_fd2e6f70)) {
            a_items = [[ level.var_fd2e6f70 ]](a_items);
        } else {
            a_items = array::randomize(a_items);
        }
        var_7a1b3d24 = 0;
        /#
            var_7a1b3d24 = getdvarint(#"hash_7f8707c59bcda3cb", 0);
        #/
        if (var_7a1b3d24 === 0) {
            if (a_items.size > var_b38ebe37) {
                for (i = var_b38ebe37; i < a_items.size; i++) {
                    a_items[i] delete();
                }
            }
        }
    }
    level thread function_307756a0();
    /#
    #/
}

// Namespace zm_items/zm_items
// Params 0, eflags: 0x2 linked
// Checksum 0x3b4eda0c, Offset: 0x608
// Size: 0x32
function player_on_spawned() {
    if (!isdefined(self.item_inventory)) {
        self.item_inventory = [];
    }
    if (!isdefined(self.item_slot_inventory)) {
        self.item_slot_inventory = [];
    }
}

// Namespace zm_items/zm_items
// Params 2, eflags: 0x2 linked
// Checksum 0xe98aab1, Offset: 0x648
// Size: 0xf2
function function_4d230236(w_item, fn_callback) {
    if (!isdefined(level.item_callbacks)) {
        level.item_callbacks = [];
    }
    if (!isdefined(level.item_callbacks[w_item])) {
        level.item_callbacks[w_item] = [];
    }
    if (!isdefined(level.item_callbacks[w_item])) {
        level.item_callbacks[w_item] = [];
    } else if (!isarray(level.item_callbacks[w_item])) {
        level.item_callbacks[w_item] = array(level.item_callbacks[w_item]);
    }
    level.item_callbacks[w_item][level.item_callbacks[w_item].size] = fn_callback;
}

// Namespace zm_items/zm_items
// Params 0, eflags: 0x6 linked
// Checksum 0x39a0643d, Offset: 0x748
// Size: 0x68
function private function_307756a0() {
    while (true) {
        waitresult = level waittill(#"player_bled_out");
        player = waitresult.player;
        player thread function_b64c32cf(player);
    }
}

// Namespace zm_items/zm_items
// Params 1, eflags: 0x6 linked
// Checksum 0x32c61b32, Offset: 0x7b8
// Size: 0x108
function private function_b64c32cf(player) {
    foreach (item in level.item_list) {
        if (item.var_337fc1cf && is_true(player.item_inventory[item])) {
            if (item.var_9fffdcee) {
                assertmsg("<unknown string>" + item.name + "<unknown string>");
                continue;
            }
            function_ab3bb6bf(player, item);
        }
    }
}

// Namespace zm_items/zm_items
// Params 2, eflags: 0x2 linked
// Checksum 0xcdda96ed, Offset: 0x8c8
// Size: 0xf2
function player_has(player, w_item) {
    if (!is_true(w_item.craftitem) && isdefined(player)) {
        if (w_item.var_9fffdcee) {
            assertmsg("<unknown string>" + w_item.name + "<unknown string>");
        } else {
            return player hasweapon(w_item);
        }
    }
    if (w_item.var_9fffdcee) {
        holder = level;
    } else {
        holder = player;
    }
    if (!isdefined(holder.item_inventory)) {
        holder.item_inventory = [];
    }
    return is_true(holder.item_inventory[w_item]);
}

// Namespace zm_items/zm_items
// Params 2, eflags: 0x2 linked
// Checksum 0xb08618c9, Offset: 0x9c8
// Size: 0x23c
function player_pick_up(player, w_item) {
    if (w_item.var_9fffdcee) {
        holder = level;
    } else {
        holder = player;
    }
    if (!isdefined(holder.item_inventory)) {
        holder.item_inventory = [];
    }
    holder.item_inventory[w_item] = 1;
    if (w_item.var_df0f9ce9) {
        if (isdefined(holder.item_slot_inventory[w_item.var_df0f9ce9])) {
            player function_ab3bb6bf(holder, holder.item_slot_inventory[w_item.var_df0f9ce9]);
        }
        holder.item_slot_inventory[w_item.var_df0f9ce9] = w_item;
    }
    level notify(#"component_collected", {#component:w_item, #holder:holder});
    player notify(#"component_collected", {#component:w_item, #holder:holder});
    if (isdefined(level.item_callbacks[w_item])) {
        foreach (callback in level.item_callbacks[w_item]) {
            player [[ callback ]](holder, w_item);
        }
    }
    if (!is_true(level.var_ddfee332) && player hasweapon(w_item)) {
        player takeweapon(w_item);
    }
}

// Namespace zm_items/zm_items
// Params 2, eflags: 0x2 linked
// Checksum 0xbf8e82b6, Offset: 0xc10
// Size: 0x100
function player_take(player, w_item) {
    if (!is_true(w_item.craftitem) && isdefined(player)) {
        if (w_item.var_9fffdcee) {
            assertmsg("<unknown string>" + w_item.name + "<unknown string>");
        } else {
            player zm_weapons::weapon_take(w_item);
        }
    }
    if (w_item.var_9fffdcee) {
        holder = level;
    } else {
        holder = player;
        player zm_weapons::weapon_take(w_item);
    }
    if (!isdefined(holder.item_inventory)) {
        holder.item_inventory = [];
    }
    holder.item_inventory[w_item] = 0;
}

// Namespace zm_items/zm_items
// Params 2, eflags: 0x2 linked
// Checksum 0x1e29a655, Offset: 0xd18
// Size: 0x12a
function function_ab3bb6bf(holder, w_item) {
    holder.item_inventory[w_item] = 0;
    if (w_item.var_df0f9ce9) {
        holder.item_slot_inventory[w_item.var_df0f9ce9] = undefined;
    }
    level notify(#"component_lost", {#component:w_item, #holder:holder});
    self notify(#"component_lost", {#component:w_item, #holder:holder});
    if (self hasweapon(w_item)) {
        self takeweapon(w_item);
    }
    new_item = spawn_item(w_item, self.origin + (0, 0, 8), self.angles);
    return new_item;
}

// Namespace zm_items/zm_items
// Params 4, eflags: 0x2 linked
// Checksum 0x69a94a76, Offset: 0xe50
// Size: 0x62
function spawn_item(w_item, v_origin, v_angles, var_f93e465d = 1) {
    new_item = spawnweapon(w_item, v_origin, v_angles, var_f93e465d);
    return new_item;
}

/#

    // Namespace zm_items/zm_items
    // Params 0, eflags: 0x0
    // Checksum 0xeda51fdb, Offset: 0xec0
    // Size: 0x10a
    function debug_items() {
        for (;;) {
            a_items = getitemarray();
            foreach (item in a_items) {
                w_item = item.item;
                if (isdefined(w_item) && is_true(w_item.craftitem)) {
                    sphere(item.origin, 6, (0, 0, 1), 1, 0, 12, 20);
                }
            }
            wait(1);
        }
    }

#/
