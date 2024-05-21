// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\demo_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_power;

// Namespace zm_power/zm_power
// Params 0, eflags: 0x5
// Checksum 0xb2c1a37d, Offset: 0x250
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_power", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x6 linked
// Checksum 0x903e964f, Offset: 0x2a8
// Size: 0x1c
function private preinit() {
    level.powered_items = [];
    level.local_power = [];
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x6 linked
// Checksum 0xf855d476, Offset: 0x2d0
// Size: 0x44
function private postinit() {
    thread standard_powered_items();
    level thread electric_switch_init();
    /#
        thread debug_powered_items();
    #/
}

/#

    // Namespace zm_power/zm_power
    // Params 0, eflags: 0x0
    // Checksum 0x3a0dcdf5, Offset: 0x320
    // Size: 0xf2
    function debug_powered_items() {
        while (true) {
            if (getdvarint(#"zombie_equipment_health", 0)) {
                if (isdefined(level.local_power)) {
                    foreach (localpower in level.local_power) {
                        circle(localpower.origin, localpower.radius, (1, 0, 0), 0, 1, 1);
                    }
                }
            }
            waitframe(1);
        }
    }

#/

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0x5acf0231, Offset: 0x420
// Size: 0x84
function electric_switch_init() {
    trigs = getentarray("use_elec_switch", "targetname");
    if (isdefined(level.temporary_power_switch_logic)) {
        array::thread_all(trigs, level.temporary_power_switch_logic, trigs);
        return;
    }
    array::thread_all(trigs, &electric_switch);
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0x90e20191, Offset: 0x4b0
// Size: 0x830
function electric_switch() {
    self endon(#"hash_21e36726a7f30458");
    if (!isdefined(self)) {
        return;
    }
    if (isdefined(self.target)) {
        ent_parts = getentarray(self.target, "targetname");
        struct_parts = struct::get_array(self.target, "targetname");
        foreach (ent in ent_parts) {
            if (isdefined(ent.script_noteworthy)) {
                master_switch = ent;
                switch (ent.script_noteworthy) {
                case #"elec_switch":
                    break;
                case #"hash_47bde376753a03c9":
                    break;
                case #"artifact_mind":
                    break;
                }
            }
        }
        foreach (struct in struct_parts) {
            if (isdefined(struct.script_noteworthy) && struct.script_noteworthy == "elec_switch_fx") {
                fx_pos = struct;
            }
        }
    }
    while (isdefined(self)) {
        if (isdefined(master_switch) && isdefined(master_switch.script_noteworthy) && !is_true(self.var_1d2fecd6)) {
            switch (master_switch.script_noteworthy) {
            case #"elec_switch":
                self sethintstring(#"zombie/electric_switch");
                break;
            case #"hash_47bde376753a03c9":
                self sethintstring(#"zombie/electric_switch");
                break;
            case #"artifact_mind":
                level waittill(#"player_spawned");
                self sethintstring(#"hash_60e4802baafefe56");
                break;
            }
        } else if (!is_true(self.var_1d2fecd6)) {
            self sethintstring(#"zombie/electric_switch");
        }
        self setvisibletoall();
        waitresult = self waittill(#"trigger");
        user = waitresult.activator;
        if (is_true(self.var_b9eb2dbb)) {
            self.var_1d2fecd6 = 1;
            waitframe(1);
            continue;
        }
        self setinvisibletoall();
        power_zone = undefined;
        if (isdefined(self.script_int)) {
            power_zone = self.script_int;
        }
        level thread zm_perks::perk_unpause_all_perks(power_zone);
        if (isdefined(master_switch) && isdefined(master_switch.script_noteworthy)) {
            switch (master_switch.script_noteworthy) {
            case #"elec_switch":
                elec_switch_on(master_switch, fx_pos);
                break;
            case #"hash_47bde376753a03c9":
                function_9d9892d2(master_switch);
                break;
            case #"artifact_mind":
                artifact_mind_on(master_switch, fx_pos, user);
                break;
            }
        }
        user zm_stats::increment_challenge_stat(#"power_activated");
        user contracts::increment_zm_contract(#"hash_464acc5cd524989");
        level turn_power_on_and_open_doors(power_zone);
        user playrumbleonentity("damage_light");
        switchentnum = self getentitynumber();
        if (isdefined(switchentnum) && isdefined(user)) {
            user recordmapevent(17, gettime(), user.origin, level.round_number, switchentnum);
        }
        if (isplayer(user)) {
            user util::delay(1, "death", &zm_audio::create_and_play_dialog, #"power_switch", #"activate", undefined, 2);
            level thread popups::displayteammessagetoteam(#"hash_160c9d3a45e6c88c", user, user.team);
        }
        if (!isdefined(self.script_noteworthy) || self.script_noteworthy != "allow_power_off") {
            self triggerenable(0);
            self deletedelay();
            return;
        }
        if (isdefined(master_switch) && isdefined(master_switch.script_noteworthy)) {
            switch (master_switch.script_noteworthy) {
            case #"elec_switch":
                break;
            }
        }
        self setvisibletoall();
        waitresult = self waittill(#"trigger");
        user = waitresult.activator;
        self setinvisibletoall();
        level thread zm_perks::perk_pause_all_perks(power_zone);
        if (isdefined(master_switch) && isdefined(master_switch.script_noteworthy)) {
            switch (master_switch.script_noteworthy) {
            case #"elec_switch":
                elec_switch_off(master_switch);
                break;
            }
        }
        if (isdefined(switchentnum) && isdefined(user)) {
            user recordmapevent(18, gettime(), user.origin, level.round_number, switchentnum);
        }
        level turn_power_off_and_close_doors(power_zone);
    }
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0x2e1e24c7, Offset: 0xce8
// Size: 0xc4
function elec_switch_on(master_switch, fx_pos) {
    master_switch rotateroll(-90, 0.3);
    master_switch playsound(#"zmb_switch_flip");
    master_switch waittill(#"rotatedone");
    master_switch playsound(#"zmb_turn_on");
    if (isdefined(fx_pos)) {
        playfx(level._effect[#"switch_sparks"], fx_pos.origin);
    }
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0xe2e6654f, Offset: 0xdb8
// Size: 0x44
function elec_switch_off(master_switch) {
    master_switch rotateroll(90, 0.3);
    master_switch waittill(#"rotatedone");
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0x6838c688, Offset: 0xe08
// Size: 0x74
function function_9d9892d2(master_switch) {
    if (isdefined(master_switch.model_on)) {
        master_switch setmodel(master_switch.model_on);
    }
    if (isdefined(master_switch.bundle)) {
        master_switch thread scene::play(master_switch.bundle, "ON", master_switch);
    }
}

// Namespace zm_power/zm_power
// Params 3, eflags: 0x2 linked
// Checksum 0x678b1e35, Offset: 0xe88
// Size: 0x48
function artifact_mind_on(*master_switch, *fx_pos, user) {
    level notify(#"hash_3e80d503318a5674", {#player:user});
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0xe4496f80, Offset: 0xed8
// Size: 0x80
function watch_global_power() {
    while (true) {
        level flag::wait_till("power_on");
        level thread set_global_power(1);
        level flag::wait_till_clear("power_on");
        level thread set_global_power(0);
    }
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0xce7fe636, Offset: 0xf60
// Size: 0x384
function standard_powered_items() {
    level flag::wait_till("start_zombie_round_logic");
    vending_machines = zm_perks::get_perk_machines();
    foreach (trigger in vending_machines) {
        powered_on = zm_perks::get_perk_machine_start_state(trigger.script_notify);
        powered_perk = add_powered_item(&perk_power_on, &perk_power_off, &perk_range, &cost_low_if_local, 0, powered_on, trigger);
        if (isdefined(trigger.script_int)) {
            powered_perk thread zone_controlled_perk(trigger.script_int);
        }
    }
    if (zm_custom::function_901b751c(#"zmpowerdoorstate") != 0) {
        zombie_doors = getentarray("zombie_door", "targetname");
        foreach (door in zombie_doors) {
            if (isdefined(door.script_noteworthy) && (door.script_noteworthy == "electric_door" || door.script_noteworthy == "electric_buyable_door")) {
                add_powered_item(&door_power_on, &door_power_off, &door_range, &cost_door, 0, 0, door);
                continue;
            }
            if (isdefined(door.script_noteworthy) && door.script_noteworthy == "local_electric_door") {
                power_sources = 0;
                if (!is_true(level.power_local_doors_globally)) {
                    power_sources = 1;
                }
                add_powered_item(&door_local_power_on, &door_local_power_off, &door_range, &cost_door, power_sources, 0, door);
            }
        }
    }
    thread watch_global_power();
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0x83abb33c, Offset: 0x12f0
// Size: 0x90
function zone_controlled_perk(zone) {
    while (true) {
        power_flag = "power_on" + zone;
        level flag::wait_till(power_flag);
        self thread perk_power_on();
        level flag::wait_till_clear(power_flag);
        self thread perk_power_off();
    }
}

// Namespace zm_power/zm_power
// Params 7, eflags: 0x2 linked
// Checksum 0xb709a8f6, Offset: 0x1388
// Size: 0xec
function add_powered_item(power_on_func, power_off_func, range_func, cost_func, power_sources, self_powered, target) {
    powered = spawnstruct();
    powered.power_on_func = power_on_func;
    powered.power_off_func = power_off_func;
    powered.range_func = range_func;
    powered.power_sources = power_sources;
    powered.self_powered = self_powered;
    powered.target = target;
    powered.cost_func = cost_func;
    powered.power = self_powered;
    powered.powered_count = self_powered;
    powered.depowered_count = 0;
    level.powered_items[level.powered_items.size] = powered;
    return powered;
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0x2454fc0a, Offset: 0x1480
// Size: 0x2c
function remove_powered_item(powered) {
    arrayremovevalue(level.powered_items, powered, 0);
}

// Namespace zm_power/zm_power
// Params 7, eflags: 0x0
// Checksum 0xc646d415, Offset: 0x14b8
// Size: 0x190
function add_temp_powered_item(power_on_func, power_off_func, range_func, cost_func, power_sources, self_powered, target) {
    powered = add_powered_item(power_on_func, power_off_func, range_func, cost_func, power_sources, self_powered, target);
    if (isdefined(level.local_power)) {
        foreach (localpower in level.local_power) {
            if (powered [[ powered.range_func ]](1, localpower.origin, localpower.radius)) {
                powered change_power(1, localpower.origin, localpower.radius);
                if (!isdefined(localpower.added_list)) {
                    localpower.added_list = [];
                }
                localpower.added_list[localpower.added_list.size] = powered;
            }
        }
    }
    thread watch_temp_powered_item(powered);
    return powered;
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0x6020297a, Offset: 0x1650
// Size: 0x118
function watch_temp_powered_item(powered) {
    powered.target waittill(#"death");
    remove_powered_item(powered);
    if (isdefined(level.local_power)) {
        foreach (localpower in level.local_power) {
            if (isdefined(localpower.added_list)) {
                arrayremovevalue(localpower.added_list, powered, 0);
            }
            if (isdefined(localpower.enabled_list)) {
                arrayremovevalue(localpower.enabled_list, powered, 0);
            }
        }
    }
}

// Namespace zm_power/zm_power
// Params 3, eflags: 0x2 linked
// Checksum 0x632f410, Offset: 0x1770
// Size: 0xcc
function change_power_in_radius(delta, origin, radius) {
    changed_list = [];
    for (i = 0; i < level.powered_items.size; i++) {
        powered = level.powered_items[i];
        if (powered.power_sources != 2 && powered [[ powered.range_func ]](delta, origin, radius)) {
            powered change_power(delta, origin, radius);
            changed_list[changed_list.size] = powered;
        }
    }
    return changed_list;
}

// Namespace zm_power/zm_power
// Params 3, eflags: 0x2 linked
// Checksum 0x6206cb79, Offset: 0x1848
// Size: 0xa8
function change_power(delta, origin, radius) {
    if (delta > 0) {
        if (!self.power) {
            self.power = 1;
            self [[ self.power_on_func ]](origin, radius);
        }
        self.powered_count++;
        return;
    }
    if (delta < 0) {
        if (self.power) {
            self.power = 0;
            self [[ self.power_off_func ]](origin, radius);
        }
        self.depowered_count++;
    }
}

// Namespace zm_power/zm_power
// Params 4, eflags: 0x2 linked
// Checksum 0xc9cdbc9d, Offset: 0x18f8
// Size: 0x74
function revert_power_to_list(delta, origin, radius, powered_list) {
    for (i = 0; i < powered_list.size; i++) {
        powered = powered_list[i];
        powered revert_power(delta, origin, radius);
    }
}

// Namespace zm_power/zm_power
// Params 4, eflags: 0x2 linked
// Checksum 0x815e7b7a, Offset: 0x1978
// Size: 0x130
function revert_power(delta, origin, radius, *powered_list) {
    if (origin > 0) {
        self.depowered_count--;
        assert(self.depowered_count >= 0, "<unknown string>");
        if (self.depowered_count == 0 && self.powered_count > 0 && !self.power) {
            self.power = 1;
            self [[ self.power_on_func ]](radius, powered_list);
        }
        return;
    }
    if (origin < 0) {
        self.powered_count--;
        assert(self.powered_count >= 0, "<unknown string>");
        if (self.powered_count == 0 && self.power) {
            self.power = 0;
            self [[ self.power_off_func ]](radius, powered_list);
        }
    }
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x0
// Checksum 0xcac8743f, Offset: 0x1ab0
// Size: 0xc8
function add_local_power(origin, radius) {
    localpower = spawnstruct();
    println("<unknown string>" + origin + "<unknown string>" + radius + "<unknown string>");
    localpower.origin = origin;
    localpower.radius = radius;
    localpower.enabled_list = change_power_in_radius(1, origin, radius);
    level.local_power[level.local_power.size] = localpower;
    return localpower;
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x0
// Checksum 0x334673a4, Offset: 0x1b80
// Size: 0x1a6
function move_local_power(localpower, origin) {
    changed_list = [];
    for (i = 0; i < level.powered_items.size; i++) {
        powered = level.powered_items[i];
        if (powered.power_sources == 2) {
            continue;
        }
        waspowered = isinarray(localpower.enabled_list, powered);
        ispowered = powered [[ powered.range_func ]](1, origin, localpower.radius);
        if (ispowered && !waspowered) {
            powered change_power(1, origin, localpower.radius);
            localpower.enabled_list[localpower.enabled_list.size] = powered;
            continue;
        }
        if (!ispowered && waspowered) {
            powered revert_power(-1, localpower.origin, localpower.radius, localpower.enabled_list);
            arrayremovevalue(localpower.enabled_list, powered, 0);
        }
    }
    localpower.origin = origin;
    return localpower;
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x0
// Checksum 0x3c74a4b2, Offset: 0x1d30
// Size: 0x104
function end_local_power(localpower) {
    println("<unknown string>" + localpower.origin + "<unknown string>" + localpower.radius + "<unknown string>");
    if (isdefined(localpower.enabled_list)) {
        revert_power_to_list(-1, localpower.origin, localpower.radius, localpower.enabled_list);
    }
    localpower.enabled_list = undefined;
    if (isdefined(localpower.added_list)) {
        revert_power_to_list(-1, localpower.origin, localpower.radius, localpower.added_list);
    }
    localpower.added_list = undefined;
    arrayremovevalue(level.local_power, localpower, 0);
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x0
// Checksum 0x90746b71, Offset: 0x1e40
// Size: 0xc4
function has_local_power(origin) {
    if (isdefined(level.local_power)) {
        foreach (localpower in level.local_power) {
            if (distancesquared(localpower.origin, origin) < localpower.radius * localpower.radius) {
                return true;
            }
        }
    }
    return false;
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0x848864ec, Offset: 0x1f10
// Size: 0xa0
function get_powered_item_cost() {
    if (!is_true(self.power)) {
        return 0;
    }
    if (is_true(level._power_global) && !(self.power_sources == 1)) {
        return 0;
    }
    cost = [[ self.cost_func ]]();
    power_sources = self.powered_count;
    if (power_sources < 1) {
        power_sources = 1;
    }
    return cost / power_sources;
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x0
// Checksum 0x469e3d56, Offset: 0x1fb8
// Size: 0x160
function get_local_power_cost(localpower) {
    cost = 0;
    if (isdefined(localpower) && isdefined(localpower.enabled_list)) {
        foreach (powered in localpower.enabled_list) {
            cost += powered get_powered_item_cost();
        }
    }
    if (isdefined(localpower) && isdefined(localpower.added_list)) {
        foreach (powered in localpower.added_list) {
            cost += powered get_powered_item_cost();
        }
    }
    return cost;
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0x216027e0, Offset: 0x2120
// Size: 0xfc
function set_global_power(on_off) {
    demo::bookmark(#"zm_power", gettime(), undefined, undefined, 1);
    potm::bookmark(#"zm_power", gettime(), undefined, undefined, 1);
    level._power_global = on_off;
    for (i = 0; i < level.powered_items.size; i++) {
        powered = level.powered_items[i];
        if (isdefined(powered.target) && powered.power_sources != 1) {
            powered global_power(on_off);
            util::wait_network_frame();
        }
    }
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0xe3b54c2b, Offset: 0x2228
// Size: 0xfc
function global_power(on_off) {
    if (on_off) {
        println("<unknown string>");
        if (!self.power) {
            self.power = 1;
            self [[ self.power_on_func ]]();
        }
        self.powered_count++;
        return;
    }
    println("<unknown string>");
    self.powered_count--;
    assert(self.powered_count >= 0, "<unknown string>");
    if (self.powered_count == 0 && self.power) {
        self.power = 0;
        self [[ self.power_off_func ]]();
    }
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x0
// Checksum 0xea69a270, Offset: 0x2330
// Size: 0x14
function never_power_on(*origin, *radius) {
    
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x0
// Checksum 0x268026bf, Offset: 0x2350
// Size: 0x14
function never_power_off(*origin, *radius) {
    
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x0
// Checksum 0x62b4d9a0, Offset: 0x2370
// Size: 0x32
function cost_negligible() {
    if (isdefined(self.one_time_cost)) {
        cost = self.one_time_cost;
        self.one_time_cost = undefined;
        return cost;
    }
    return 0;
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0x26add0ac, Offset: 0x23b0
// Size: 0x70
function cost_low_if_local() {
    if (isdefined(self.one_time_cost)) {
        cost = self.one_time_cost;
        self.one_time_cost = undefined;
        return cost;
    }
    if (is_true(level._power_global) || is_true(self.self_powered)) {
        return 0;
    }
    return 1;
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x0
// Checksum 0x6bc230d, Offset: 0x2428
// Size: 0x34
function cost_high() {
    if (isdefined(self.one_time_cost)) {
        cost = self.one_time_cost;
        self.one_time_cost = undefined;
        return cost;
    }
    return 10;
}

// Namespace zm_power/zm_power
// Params 3, eflags: 0x2 linked
// Checksum 0xbb7b928, Offset: 0x2468
// Size: 0x5c
function door_range(delta, origin, radius) {
    if (delta < 0) {
        return false;
    }
    if (distancesquared(self.target.origin, origin) < radius * radius) {
        return true;
    }
    return false;
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0x6392595e, Offset: 0x24d0
// Size: 0x5c
function door_power_on(*origin, *radius) {
    println("<unknown string>");
    self.target.power_on = 1;
    self.target notify(#"power_on");
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0x252934ba, Offset: 0x2538
// Size: 0x5e
function door_power_off(*origin, *radius) {
    println("<unknown string>");
    self.target notify(#"power_off");
    self.target.power_on = 0;
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0xcf3e7741, Offset: 0x25a0
// Size: 0x5c
function door_local_power_on(*origin, *radius) {
    println("<unknown string>");
    self.target.local_power_on = 1;
    self.target notify(#"local_power_on");
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0x6280d5af, Offset: 0x2608
// Size: 0x5e
function door_local_power_off(*origin, *radius) {
    println("<unknown string>");
    self.target notify(#"local_power_off");
    self.target.local_power_on = 0;
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0x169374d7, Offset: 0x2670
// Size: 0x92
function cost_door() {
    if (isdefined(self.target.power_cost)) {
        if (!isdefined(self.one_time_cost)) {
            self.one_time_cost = 0;
        }
        self.one_time_cost += self.target.power_cost;
        self.target.power_cost = 0;
    }
    if (isdefined(self.one_time_cost)) {
        cost = self.one_time_cost;
        self.one_time_cost = undefined;
        return cost;
    }
    return 0;
}

// Namespace zm_power/zm_power
// Params 3, eflags: 0x0
// Checksum 0xf5e6dfb1, Offset: 0x2710
// Size: 0x7e
function zombie_range(delta, origin, radius) {
    if (delta > 0) {
        return false;
    }
    self.zombies = array::get_all_closest(origin, zombie_utility::get_round_enemy_array(), undefined, undefined, radius);
    if (!isdefined(self.zombies)) {
        return false;
    }
    self.power = 1;
    return true;
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x0
// Checksum 0xc48392d5, Offset: 0x2798
// Size: 0x82
function zombie_power_off(*origin, *radius) {
    println("<unknown string>");
    for (i = 0; i < self.zombies.size; i++) {
        self.zombies[i] thread stun_zombie();
        waitframe(1);
    }
}

// Namespace zm_power/zm_power
// Params 0, eflags: 0x2 linked
// Checksum 0x20875f0b, Offset: 0x2828
// Size: 0x9e
function stun_zombie() {
    self notify(#"stun_zombie");
    self endon(#"death", #"stun_zombie");
    if (self.health <= 0) {
        /#
            iprintln("<unknown string>");
        #/
        return;
    }
    if (is_true(self.ignore_inert)) {
        return;
    }
    if (isdefined(self.stun_zombie)) {
        self thread [[ self.stun_zombie ]]();
        return;
    }
}

// Namespace zm_power/zm_power
// Params 3, eflags: 0x2 linked
// Checksum 0x94957c08, Offset: 0x28d0
// Size: 0xdc
function perk_range(*delta, origin, radius) {
    if (isdefined(self.target)) {
        perkorigin = self.target.origin;
        if (is_true(self.target.trigger_off)) {
            perkorigin = self.target.realorigin;
        } else if (is_true(self.target.disabled)) {
            perkorigin += (0, 0, 10000);
        }
        if (distancesquared(perkorigin, origin) < radius * radius) {
            return true;
        }
    }
    return false;
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0xeac6e09e, Offset: 0x29b8
// Size: 0x9c
function perk_power_on(*origin, *radius) {
    println("<unknown string>" + self.target zm_perks::getvendingmachinenotify() + "<unknown string>");
    level notify(self.target zm_perks::getvendingmachinenotify() + "_on");
    zm_perks::perk_unpause(self.target.script_notify);
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0xc76a4434, Offset: 0x2a60
// Size: 0x192
function perk_power_off(*origin, *radius) {
    notify_name = self.target zm_perks::getvendingmachinenotify();
    println("<unknown string>" + self.target zm_perks::getvendingmachinenotify() + "<unknown string>");
    self.target.unitrigger_stub notify(#"death");
    self.target.unitrigger_stub thread zm_perks::vending_trigger_think();
    if (isdefined(level._custom_perks[self.target.script_notify].var_4a48be24)) {
        self.target scene::stop(level._custom_perks[self.target.script_notify].var_4a48be24);
    }
    if (isdefined(self.target.perk_hum)) {
        self.target.perk_hum delete();
    }
    zm_perks::perk_pause(self.target.script_notify);
    level notify(self.target zm_perks::getvendingmachinenotify() + "_off");
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0x657bfb2a, Offset: 0x2c00
// Size: 0x37c
function turn_power_on_and_open_doors(power_zone, var_9d1c1c4a = 1) {
    level.local_doors_stay_open = 1;
    level.power_local_doors_globally = 1;
    if (!isdefined(power_zone)) {
        level flag::set("power_on");
        level clientfield::set("zombie_power_on", 1);
    } else {
        level flag::set("power_on" + power_zone);
        level clientfield::set("zombie_power_on", power_zone + 1);
    }
    if (var_9d1c1c4a) {
        foreach (player in getplayers()) {
            player zm_stats::function_8f10788e("boas_power_turnedon");
        }
    }
    if (zm_custom::function_901b751c(#"zmpowerdoorstate") != 0) {
        zombie_doors = getentarray("zombie_door", "targetname");
        foreach (door in zombie_doors) {
            if (!isdefined(door.script_noteworthy)) {
                continue;
            }
            if (!isdefined(power_zone) && (door.script_noteworthy == "electric_door" || door.script_noteworthy == "electric_buyable_door")) {
                door notify(#"power_on");
                continue;
            }
            if (isdefined(door.script_int) && door.script_int == power_zone && (door.script_noteworthy == "electric_door" || door.script_noteworthy == "electric_buyable_door")) {
                door notify(#"power_on");
                if (isdefined(level.temporary_power_switch_logic)) {
                    door.power_on = 1;
                }
                continue;
            }
            if (isdefined(door.script_int) && door.script_int == power_zone && door.script_noteworthy === "local_electric_door") {
                door notify(#"local_power_on");
            }
        }
    }
}

// Namespace zm_power/zm_power
// Params 1, eflags: 0x2 linked
// Checksum 0x5c040fc4, Offset: 0x2f88
// Size: 0x2ec
function turn_power_off_and_close_doors(power_zone) {
    level.local_doors_stay_open = 0;
    level.power_local_doors_globally = 0;
    if (!isdefined(power_zone)) {
        level flag::clear("power_on");
        level clientfield::set("zombie_power_off", 0);
    } else {
        level flag::clear("power_on" + power_zone);
        level clientfield::set("zombie_power_off", power_zone);
    }
    if (zm_custom::function_901b751c(#"zmpowerdoorstate") != 0) {
        zombie_doors = getentarray("zombie_door", "targetname");
        foreach (door in zombie_doors) {
            if (!isdefined(door.script_noteworthy)) {
                continue;
            }
            if (!isdefined(power_zone) && (door.script_noteworthy == "electric_door" || door.script_noteworthy == "electric_buyable_door")) {
                door notify(#"power_on");
                continue;
            }
            if (isdefined(door.script_int) && door.script_int == power_zone && (door.script_noteworthy == "electric_door" || door.script_noteworthy == "electric_buyable_door")) {
                door notify(#"power_on");
                if (isdefined(level.temporary_power_switch_logic)) {
                    door.power_on = 0;
                    door sethintstring(#"zombie/need_power");
                    door notify(#"kill_door_think");
                    door thread zm_blockers::door_think();
                }
                continue;
            }
            if (isdefined(door.script_noteworthy) && door.script_noteworthy == "local_electric_door") {
                door notify(#"local_power_on");
            }
        }
    }
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0x8d55ee51, Offset: 0x3280
// Size: 0x1bc
function function_da4a8c05(hintstring, n_zone = 0) {
    self endon(#"death");
    str_flag = "power_on";
    if (n_zone > 0) {
        str_flag += n_zone;
    }
    level flag::wait_till(str_flag);
    if (!isdefined(level.var_cef2e607[#"hash_1d6a2292435f5d0a"])) {
        level.var_cef2e607[#"hash_1d6a2292435f5d0a"] = -1;
    }
    level.var_cef2e607[#"hash_1d6a2292435f5d0a"]++;
    wait(float(function_60d95f53()) / 1000 * (level.var_cef2e607[#"hash_1d6a2292435f5d0a"] % int(0.5 / float(function_60d95f53()) / 1000) + 1));
    self.script_noteworthy = undefined;
    self.trigger sethintstring(hintstring);
    if (isdefined(self.var_49d94d8a)) {
        self [[ self.var_49d94d8a ]]();
    }
    self thread function_1ae64b8c(hintstring, n_zone);
}

// Namespace zm_power/zm_power
// Params 2, eflags: 0x2 linked
// Checksum 0xc46d957e, Offset: 0x3448
// Size: 0xe4
function function_1ae64b8c(hintstring, n_zone = 0) {
    self endon(#"death");
    str_flag = "power_on";
    if (n_zone > 0) {
        str_flag += n_zone;
    }
    level flag::wait_till_clear(str_flag);
    self.script_noteworthy = "power";
    self.trigger sethintstring(#"zombie/need_power");
    if (isdefined(self.var_7cf0a191)) {
        self [[ self.var_7cf0a191 ]]();
    }
    self thread function_da4a8c05(hintstring, n_zone);
}

