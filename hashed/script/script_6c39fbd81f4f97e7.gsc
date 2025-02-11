#using script_3dc93ca9902a9cda;
#using script_7f6cd71c43c45c57;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\cp_common\snd;

#namespace namespace_9205a0df;

// Namespace namespace_9205a0df/namespace_9205a0df
// Params 0, eflags: 0x5
// Checksum 0x21849147, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_6460ff5d340f6751", undefined, &postload, undefined, undefined);
}

// Namespace namespace_9205a0df/namespace_9205a0df
// Params 0, eflags: 0x0
// Checksum 0xe4ae2e3, Offset: 0x148
// Size: 0x3c
function postload() {
    level.overrideactordamage = &actor_damage_override;
    callback::on_actor_killed(&on_actor_killed);
}

// Namespace namespace_9205a0df/namespace_9205a0df
// Params 13, eflags: 0x0
// Checksum 0x77d6c2da, Offset: 0x190
// Size: 0xd4
function actor_damage_override(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, *var_fd90b0bb, vpoint, *vdir, shitloc, *timeoffset, *boneindex, *modelindex) {
    if (timeoffset === getweapon(#"hash_6460ff5d340f6751") && shitloc == "MOD_PISTOL_BULLET") {
        self thread function_df0660b4(vpoint, boneindex, var_fd90b0bb, weapon, modelindex, vdir, timeoffset);
        return 0;
    }
    return vpoint;
}

// Namespace namespace_9205a0df/namespace_9205a0df
// Params 7, eflags: 0x0
// Checksum 0xe4d0ec97, Offset: 0x270
// Size: 0x84
function function_df0660b4(idamage, vpoint, eattacker, einflictor, shitloc, idflags, weapon) {
    self endon(#"death");
    wait 0.2;
    self dodamage(idamage, vpoint, eattacker, einflictor, shitloc, "MOD_BURNED", idflags, weapon);
}

// Namespace namespace_9205a0df/namespace_9205a0df
// Params 1, eflags: 0x0
// Checksum 0x715f5038, Offset: 0x300
// Size: 0xa4
function on_actor_killed(params) {
    if (params.weapon === getweapon(#"hash_6460ff5d340f6751")) {
        var_e05a6ec8 = snd::play("evt_firestarter_ai_fire_lp", self gettagorigin("j_spine4"));
        wait 3;
        wait 2;
        snd::stop(var_e05a6ec8, 0.75);
    }
}

