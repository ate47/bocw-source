// Atian COD Tools GSC CW decompiler test
#using script_5f261a5d57de5f7c;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_perk_staminup;

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x5
// Checksum 0x6301cb71, Offset: 0x1d8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"zm_perk_staminup", &preinit, undefined, undefined, #"hash_2d064899850813e2");
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x6 linked
// Checksum 0x7fda37cc, Offset: 0x228
// Size: 0x14
function private preinit() {
    enable_staminup_perk_for_level();
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x2 linked
// Checksum 0x58116169, Offset: 0x248
// Size: 0x15c
function enable_staminup_perk_for_level() {
    zm_perks::register_perk_basic_info(#"hash_602a1b6107105f07", #"perk_staminup", 2000, #"zombie/perk_marathon", getweapon("zombie_perk_bottle_marathon"), undefined, #"zmperksstaminup");
    zm_perks::register_perk_precache_func(#"hash_602a1b6107105f07", &staminup_precache);
    zm_perks::register_perk_clientfields(#"hash_602a1b6107105f07", &staminup_register_clientfield, &staminup_set_clientfield);
    zm_perks::register_perk_machine(#"hash_602a1b6107105f07", &staminup_perk_machine_setup);
    zm_perks::register_perk_host_migration_params(#"hash_602a1b6107105f07", "vending_marathon", "marathon_light");
    zm_perks::register_perk_damage_override_func(&function_dae4e0ad);
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x2 linked
// Checksum 0x9b355245, Offset: 0x3b0
// Size: 0xf6
function staminup_precache() {
    if (isdefined(level.var_cf57ff63)) {
        [[ level.var_cf57ff63 ]]();
        return;
    }
    level._effect[#"marathon_light"] = "zombie/fx_perk_staminup_ndu";
    level.machine_assets[#"hash_602a1b6107105f07"] = spawnstruct();
    level.machine_assets[#"hash_602a1b6107105f07"].weapon = getweapon("zombie_perk_bottle_marathon");
    level.machine_assets[#"hash_602a1b6107105f07"].off_model = "p9_sur_machine_staminup_off";
    level.machine_assets[#"hash_602a1b6107105f07"].on_model = "p9_sur_machine_staminup";
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4b0
// Size: 0x4
function staminup_register_clientfield() {
    
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 1, eflags: 0x2 linked
// Checksum 0xbda216d3, Offset: 0x4c0
// Size: 0xc
function staminup_set_clientfield(*state) {
    
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 4, eflags: 0x2 linked
// Checksum 0x80f254c4, Offset: 0x4d8
// Size: 0x9a
function staminup_perk_machine_setup(use_trigger, perk_machine, bump_trigger, *collision) {
    perk_machine.script_sound = "mus_perks_stamin_jingle";
    perk_machine.script_string = "marathon_perk";
    perk_machine.script_label = "mus_perks_stamin_sting";
    perk_machine.target = "vending_marathon";
    bump_trigger.script_string = "marathon_perk";
    bump_trigger.targetname = "vending_marathon";
    if (isdefined(collision)) {
        collision.script_string = "marathon_perk";
    }
}

// Namespace zm_perk_staminup/zm_perk_staminup
// Params 10, eflags: 0x2 linked
// Checksum 0xaa67c31a, Offset: 0x580
// Size: 0x84
function function_dae4e0ad(*einflictor, *eattacker, *idamage, *idflags, smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (psoffsettime == "MOD_FALLING") {
        if (namespace_e86ffa8::function_3623f9d1(2)) {
            return 0;
        }
    }
    return undefined;
}

