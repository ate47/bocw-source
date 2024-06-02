// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using script_4dc6a9b234b838e1;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\weapons\satchel_charge.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace satchel_charge;

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x5
// Checksum 0x6d960a9d, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"satchel_charge", &preinit, undefined, undefined, undefined);
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x6 linked
// Checksum 0xb78d7a9c, Offset: 0x110
// Size: 0x94
function private preinit() {
    init_shared();
    namespace_cc411409::preinit();
    callback::add_callback(#"on_ai_killed", &function_7c8d1738);
    zm_weapons::function_404c3ad5(getweapon(#"satchel_charge"), &function_558ac85a);
}

// Namespace satchel_charge/satchel_charge
// Params 15, eflags: 0x2 linked
// Checksum 0x7d23899e, Offset: 0x1b0
// Size: 0xda
function function_558ac85a(inflictor, attacker, *damage, *flags, *meansofdeath, *weapon, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *boneindex, *modelindex, *surfacetype, *vsurfacenormal) {
    if (isentity(surfacetype) && isplayer(vsurfacenormal) && self.var_6f84b820 === #"normal") {
        self.var_8efbca7e = surfacetype.origin;
    }
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0x272c6bfd, Offset: 0x298
// Size: 0xc4
function function_7c8d1738(params) {
    if (params.weapon.name === #"satchel_charge" && isplayer(params.eattacker) && self.var_6f84b820 === #"normal" && isvec(self.var_8efbca7e)) {
        self namespace_cc411409::ragdoll_launch(self.var_8efbca7e, 2);
        self thread function_3fb4ce3b();
    }
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0xc4755ead, Offset: 0x368
// Size: 0x34
function function_3fb4ce3b() {
    util::wait_network_frame();
    if (isdefined(self)) {
        self zombie_utility::gib_random_parts();
    }
}

