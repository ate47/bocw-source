// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\aats\ammomods\ammomod_napalmburst.gsc;
#using script_24c32478acf44108;
#using scripts\weapons\weapons.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zm_sparrow;

// Namespace zm_sparrow/sparrow
// Params 0, eflags: 0x5
// Checksum 0xb87c291f, Offset: 0x100
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"zm_sparrow", &__init__, undefined, undefined, #"killstreaks");
}

// Namespace zm_sparrow/sparrow
// Params 0, eflags: 0x2 linked
// Checksum 0xe15611c2, Offset: 0x150
// Size: 0x44
function __init__() {
    callback::on_actor_damage(&onactordamage);
    zm_player::register_player_friendly_fire_callback(&function_61f584a7);
}

// Namespace zm_sparrow/sparrow
// Params 1, eflags: 0x6 linked
// Checksum 0xaf69294a, Offset: 0x1a0
// Size: 0x114
function private onactordamage(params) {
    weapon = params.weapon;
    if (!isdefined(weapon)) {
        return;
    }
    if (!function_119a2a90(weapon)) {
        return;
    }
    if (params.smeansofdeath == "MOD_DOT") {
        return;
    }
    statuseffect = getstatuseffect("dot_sig_bow_flame");
    self status_effect::status_effect_apply(statuseffect, weapon, params.eattacker, 0, undefined, undefined, params.vpoint);
    self ammomod_napalmburst::function_74816787();
    duration = float(statuseffect.var_77449e9) / 1000;
    self thread function_77b06e9c(duration);
}

// Namespace zm_sparrow/sparrow
// Params 1, eflags: 0x2 linked
// Checksum 0xa0986491, Offset: 0x2c0
// Size: 0x3c
function function_77b06e9c(duration) {
    self endon(#"death");
    wait(duration);
    self ammomod_napalmburst::function_68364c40();
}

// Namespace zm_sparrow/sparrow
// Params 1, eflags: 0x6 linked
// Checksum 0x2d3588ff, Offset: 0x308
// Size: 0x20
function private function_119a2a90(weapon) {
    return weapon.statname === "sig_bow_flame";
}

// Namespace zm_sparrow/sparrow
// Params 11, eflags: 0x6 linked
// Checksum 0xde17e836, Offset: 0x330
// Size: 0xb2
function private function_61f584a7(*einflictor, eattacker, idamage, *idflags, *smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex) {
    if (shitloc !== self) {
        return psoffsettime;
    }
    if (!isdefined(boneindex) || !function_119a2a90(boneindex)) {
        return psoffsettime;
    }
    return int(psoffsettime / 3);
}

