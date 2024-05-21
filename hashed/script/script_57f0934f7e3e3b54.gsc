// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreak_detect.csc;
#using scripts\killstreaks\killstreaks_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace killstreaks;

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x5
// Checksum 0x14185f67, Offset: 0x2d0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"killstreaks", &preinit, undefined, undefined, #"renderoverridebundle");
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0xb2e0c8c, Offset: 0x320
// Size: 0x44
function private preinit() {
    init_shared();
    killstreak_detect::init_shared();
    function_f1707039();
    function_6c73be30();
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0x93727bc2, Offset: 0x370
// Size: 0x604
function private function_6c73be30() {
    level.killstreakweapons[getweapon(#"gun_ultimate_turret")] = "ultimate_turret";
    level.killstreakweapons[getweapon(#"ultimate_turret")] = "ultimate_turret";
    level.killstreakweapons[getweapon(#"hash_38ffd09564931482")] = "recon_car";
    level.killstreakweapons[getweapon(#"hash_1734871fef9c0549")] = "chopper_gunner";
    level.killstreakweapons[getweapon(#"chopper_gunner")] = "ultimate_turret";
    level.killstreakweapons[getweapon(#"killstreak_remote")] = "chopper_gunner";
    level.killstreakweapons[getweapon(#"hero_pineapplegun")] = "hero_pineapplegun";
    level.killstreakweapons[getweapon(#"inventory_ultimate_turret")] = "inventory_ultimate_turret";
    level.killstreakweapons[getweapon(#"inventory_sig_lmg")] = "inventory_sig_lmg";
    level.killstreakweapons[getweapon(#"sig_lmg")] = "sig_lmg";
    level.killstreakweapons[getweapon(#"inventory_chopper_gunner")] = "inventory_chopper_gunner";
    level.killstreakweapons[getweapon(#"inventory_hero_annihilator")] = "inventory_hero_annihilator";
    level.killstreakweapons[getweapon(#"hero_annihilator")] = "hero_annihilator";
    level.killstreakweapons[getweapon(#"ultimate_turret_deploy")] = "ultimate_turret";
    level.killstreakweapons[getweapon(#"hash_33be4792feeabece")] = "remote_missile";
    level.killstreakweapons[getweapon(#"remote_missile_bomblet")] = "remote_missile";
    level.killstreakweapons[getweapon(#"hash_3f33adcbed7f6c86")] = "planemortar";
    level.killstreakweapons[getweapon(#"inventory_hero_flamethrower")] = "inventory_hero_flamethrower";
    level.killstreakweapons[getweapon(#"hero_flamethrower")] = "hero_flamethrower";
    level.killstreakweapons[getweapon(#"remote_missile_missile")] = "remote_missile";
    level.killstreakweapons[getweapon(#"inventory_recon_car")] = "inventory_recon_car";
    level.killstreakweapons[getweapon(#"inventory_hero_pineapplegun")] = "inventory_hero_pineapplegun";
    level.killstreakweapons[getweapon(#"hash_561b772c6e726ebd")] = "inventory_planemortar";
    level.killstreakweapons[getweapon(#"hash_72c14c150086340c")] = "napalm_strike_zm";
    level.killstreakweapons[getweapon(#"hash_78a35da92bd92644")] = "napalm_strike_zm";
    level.killstreakweapons[getweapon(#"sig_bow_flame")] = "sig_bow_flame";
    level.killstreakweapons[getweapon(#"hash_183ddeea72e71f27")] = "napalm_strike_zm";
    level.killstreakweapons[getweapon(#"inventory_sig_bow_flame")] = "inventory_sig_bow_flame";
    level.killstreakweapons[getweapon(#"hash_3243350071038ce0")] = "inventory_napalm_strike_zm";
    level.killstreakweapons[getweapon(#"recon_car_zm")] = "recon_car";
    level.killstreakweapons[getweapon(#"remote_missile_zm")] = "remote_missile";
    level.killstreakweapons[getweapon(#"inventory_remote_missile_zm")] = "inventory_remote_missile";
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0xc73682c4, Offset: 0x980
// Size: 0x1f4
function private function_f1707039() {
    level.var_4b42d599 = [];
    for (i = 0; i < 4; i++) {
        level.var_4b42d599[i] = "killstreaks.killstreak" + i + ".inUse";
        clientfield::register_clientuimodel(level.var_4b42d599[i], #"hash_38b7a28901866ae4", [#"killstreak" + (isdefined(i) ? "" + i : ""), #"inuse"], 1, 1, "int", undefined, 0, 0);
    }
    level.var_46b33f90[i] = [];
    level.var_173b8ed7 = max(8, 4);
    for (i = 0; i < level.var_173b8ed7; i++) {
        level.var_46b33f90[i] = "killstreaks.killstreak" + i + ".spaceFull";
        clientfield::register_clientuimodel(level.var_46b33f90[i], #"hash_38b7a28901866ae4", [#"killstreak" + (isdefined(i) ? "" + i : ""), #"hash_3bbe3fe57a438e3c"], 1, 1, "int", undefined, 0, 0);
    }
}

// Namespace killstreaks/killstreaks
// Params 1, eflags: 0x2 linked
// Checksum 0x8ebe68d2, Offset: 0xb80
// Size: 0x5c
function function_d79281c4(off) {
    if (off) {
        setdvar(#"hash_c4d58c161f407a2", 0);
        return;
    }
    setdvar(#"hash_c4d58c161f407a2", 1);
}

