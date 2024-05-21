// Atian COD Tools GSC CW decompiler test
#using script_5f261a5d57de5f7c;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_7461932d;

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x5
// Checksum 0x99c0604d, Offset: 0x1e0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_6f1ab109254f7a8e", &preinit, undefined, undefined, #"hash_2d064899850813e2");
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x6 linked
// Checksum 0x640127e9, Offset: 0x230
// Size: 0x44
function private preinit() {
    function_485b89e9();
    level.var_8cc294a7 = &function_7486dbf4;
    level.var_bb0b2298 = &function_297a5142;
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x523b33be, Offset: 0x280
// Size: 0x4c
function function_297a5142() {
    if (!isplayer(self)) {
        return 1;
    }
    if (self namespace_e86ffa8::function_71680faf(4)) {
        return 0.75;
    }
    return 1;
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 1, eflags: 0x2 linked
// Checksum 0xceb79601, Offset: 0x2d8
// Size: 0x22
function function_7486dbf4(var_2cacdde7) {
    var_2cacdde7 += var_2cacdde7 * 0.25;
    return var_2cacdde7;
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 10, eflags: 0x2 linked
// Checksum 0x32e04bbe, Offset: 0x308
// Size: 0x11e
function function_366a682a(*einflictor, *eattacker, idamage, *idflags, smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (self namespace_e86ffa8::function_71680faf(5)) {
        var_b66f2623 = self.health - shitloc;
        if (psoffsettime === "MOD_FALLING" && self namespace_e86ffa8::function_3623f9d1(2)) {
            return shitloc;
        }
        if (var_b66f2623 <= 0 && self.armor > 0) {
            self playsoundtoplayer(#"hash_7bc0e76bd7c09fd0", self);
            self.armor = 0;
            shitloc -= 1 - var_b66f2623;
        }
    }
    return shitloc;
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0xf4989ecb, Offset: 0x430
// Size: 0x1ac
function function_485b89e9() {
    zm_perks::register_perk_basic_info(#"hash_47d7a8105237c88", #"perk_juggernog", 2500, #"hash_27b60f868a13cc91", getweapon("zombie_perk_bottle_jugg"), undefined, #"zmperksjuggernaut");
    zm_perks::register_perk_precache_func(#"hash_47d7a8105237c88", &function_166eeafc);
    zm_perks::register_perk_clientfields(#"hash_47d7a8105237c88", &function_370cba1f, &function_a710e34a);
    zm_perks::register_perk_machine(#"hash_47d7a8105237c88", &function_1ff28887, &init_juggernaut);
    zm_perks::register_perk_threads(#"hash_47d7a8105237c88", &function_535de102, &function_8a2f8354);
    zm_perks::register_perk_host_migration_params(#"hash_47d7a8105237c88", "vending_jugg", "jugger_light");
    zm_perks::register_perk_damage_override_func(&function_366a682a);
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x5e8
// Size: 0x4
function init_juggernaut() {
    
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x81d5cf6c, Offset: 0x5f8
// Size: 0xf6
function function_166eeafc() {
    if (isdefined(level.var_7aa19444)) {
        [[ level.var_7aa19444 ]]();
        return;
    }
    level._effect[#"jugger_light"] = "zombie/fx_perk_juggernaut_ndu";
    level.machine_assets[#"hash_47d7a8105237c88"] = spawnstruct();
    level.machine_assets[#"hash_47d7a8105237c88"].weapon = getweapon("zombie_perk_bottle_jugg");
    level.machine_assets[#"hash_47d7a8105237c88"].off_model = "p9_sur_machine_juggernog_off";
    level.machine_assets[#"hash_47d7a8105237c88"].on_model = "p9_sur_machine_juggernog";
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x6f8
// Size: 0x4
function function_370cba1f() {
    
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 1, eflags: 0x2 linked
// Checksum 0x934b7a19, Offset: 0x708
// Size: 0xc
function function_a710e34a(*state) {
    
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 4, eflags: 0x2 linked
// Checksum 0x61d638d1, Offset: 0x720
// Size: 0xa6
function function_1ff28887(use_trigger, perk_machine, bump_trigger, *collision) {
    perk_machine.script_sound = "mus_perks_jugganog_jingle";
    perk_machine.script_string = "jugg_perk";
    perk_machine.script_label = "mus_perks_jugganog_sting";
    perk_machine.var_7619f1b6 = 1;
    perk_machine.target = "vending_jugg";
    bump_trigger.script_string = "jugg_perk";
    bump_trigger.targetname = "vending_jugg";
    if (isdefined(collision)) {
        collision.script_string = "jugg_perk";
    }
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 0, eflags: 0x2 linked
// Checksum 0x432c489, Offset: 0x7d0
// Size: 0x7a
function function_535de102() {
    if (isplayer(self) && is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        if (self.health < self.var_66cb03ad) {
            self.health = self.var_66cb03ad;
        }
    }
}

// Namespace namespace_7461932d/namespace_7461932d
// Params 4, eflags: 0x2 linked
// Checksum 0xbd0412f9, Offset: 0x858
// Size: 0x24
function function_8a2f8354(*b_pause, *str_perk, *str_result, *n_slot) {
    
}

