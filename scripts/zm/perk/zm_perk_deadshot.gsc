// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\scoreevents.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\util.gsc;
#using script_5f261a5d57de5f7c;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_2c5daa95f8fec03c;
#using script_3751b21462a54a7d;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_perk_deadshot;

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x5
// Checksum 0x3a3146f, Offset: 0x210
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"zm_perk_deadshot", &preinit, undefined, undefined, #"hash_2d064899850813e2");
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x6 linked
// Checksum 0x5601e3c1, Offset: 0x260
// Size: 0x44
function private preinit() {
    enable_deadshot_perk_for_level();
    zm_perks::register_actor_damage_override(#"hash_210097a75bb6c49a", &function_4d088c19);
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0x371030f9, Offset: 0x2b0
// Size: 0x17c
function enable_deadshot_perk_for_level() {
    zm_perks::register_perk_basic_info(#"hash_210097a75bb6c49a", #"perk_dead_shot", 2000, #"zombie/perk_deadshot", getweapon("zombie_perk_bottle_deadshot"), undefined, #"zmperksdeadshot");
    zm_perks::register_perk_precache_func(#"hash_210097a75bb6c49a", &deadshot_precache);
    zm_perks::register_perk_clientfields(#"hash_210097a75bb6c49a", &deadshot_register_clientfield, &deadshot_set_clientfield);
    zm_perks::register_perk_machine(#"hash_210097a75bb6c49a", &deadshot_perk_machine_setup);
    zm_perks::register_perk_threads(#"hash_210097a75bb6c49a", &give_deadshot_perk, &take_deadshot_perk);
    zm_perks::register_perk_host_migration_params(#"hash_210097a75bb6c49a", "vending_deadshot", "deadshot_light");
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0x6cea674e, Offset: 0x438
// Size: 0xf6
function deadshot_precache() {
    if (isdefined(level.var_bc5f9f6a)) {
        [[ level.var_bc5f9f6a ]]();
        return;
    }
    level._effect[#"deadshot_light"] = "zombie/fx_perk_deadshot_ndu";
    level.machine_assets[#"hash_210097a75bb6c49a"] = spawnstruct();
    level.machine_assets[#"hash_210097a75bb6c49a"].weapon = getweapon("zombie_perk_bottle_deadshot");
    level.machine_assets[#"hash_210097a75bb6c49a"].off_model = "p9_sur_vending_ads_off";
    level.machine_assets[#"hash_210097a75bb6c49a"].on_model = "p9_sur_vending_ads";
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0x23a3bcf8, Offset: 0x538
// Size: 0x34
function deadshot_register_clientfield() {
    clientfield::register("toplayer", "deadshot_perk", 1, 1, "int");
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 1, eflags: 0x2 linked
// Checksum 0x3e07d264, Offset: 0x578
// Size: 0xc
function deadshot_set_clientfield(*state) {
    
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 4, eflags: 0x2 linked
// Checksum 0xf8fbf0b, Offset: 0x590
// Size: 0x9a
function deadshot_perk_machine_setup(use_trigger, perk_machine, bump_trigger, *collision) {
    perk_machine.script_sound = "mus_perks_deadshot_jingle";
    perk_machine.script_string = "deadshot_perk";
    perk_machine.script_label = "mus_perks_deadshot_sting";
    perk_machine.target = "vending_deadshot";
    bump_trigger.script_string = "deadshot_vending";
    bump_trigger.targetname = "vending_deadshot";
    if (isdefined(collision)) {
        collision.script_string = "deadshot_vending";
    }
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 0, eflags: 0x2 linked
// Checksum 0xf5e41239, Offset: 0x638
// Size: 0x24
function give_deadshot_perk() {
    self clientfield::set_to_player("deadshot_perk", 1);
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 4, eflags: 0x2 linked
// Checksum 0x792422c1, Offset: 0x668
// Size: 0x44
function take_deadshot_perk(*b_pause, *str_perk, *str_result, *n_slot) {
    self clientfield::set_to_player("deadshot_perk", 0);
}

// Namespace zm_perk_deadshot/zm_perk_deadshot
// Params 13, eflags: 0x2 linked
// Checksum 0xc744e96d, Offset: 0x6b8
// Size: 0x2a6
function function_4d088c19(*inflictor, attacker, damage, *flags, meansofdeath, *weapon, *var_fd90b0bb, vpoint, *vdir, shitloc, *psoffsettime, boneindex, *surfacetype) {
    if (isplayer(vpoint)) {
        if (shitloc === "MOD_MELEE") {
            return vdir;
        }
        var_84ed9a13 = self zm_ai_utility::function_de3dda83(surfacetype, boneindex, psoffsettime);
        if (vpoint namespace_e86ffa8::function_7bf30775(1)) {
            if (self.health >= self.maxhealth) {
                if (isdefined(var_84ed9a13) && namespace_81245006::function_f29756fe(var_84ed9a13) == 1 && var_84ed9a13.type !== #"armor") {
                    vdir += vdir * 1;
                }
            }
        }
        if (vpoint namespace_e86ffa8::function_7bf30775(4)) {
            if (isdefined(var_84ed9a13) && namespace_81245006::function_f29756fe(var_84ed9a13) == 1 && var_84ed9a13.type !== #"armor") {
                vdir += vdir * 0.1;
            }
        }
        if (vpoint namespace_791d0451::function_56cedda7(#"hash_1f95b08e4a49d87e")) {
            if (!isdefined(vpoint.var_39f18bc3)) {
                vpoint.var_39f18bc3 = 0;
            }
            if (self === vpoint.var_9c098a96) {
                vpoint.var_39f18bc3++;
                if (vpoint.var_39f18bc3 < vpoint.var_39f18bc3) {
                    vpoint.var_39f18bc3 = vpoint.var_39f18bc3;
                } else if (vpoint.var_39f18bc3 > 10) {
                    vpoint.var_39f18bc3 = 10;
                }
                vdir += vdir * 0.02 * vpoint.var_39f18bc3;
            } else {
                vpoint.var_39f18bc3 = 0;
            }
            vpoint.var_9c098a96 = self;
        }
    }
    return vdir;
}

