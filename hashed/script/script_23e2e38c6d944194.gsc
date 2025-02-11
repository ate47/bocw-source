#using script_3dc93ca9902a9cda;
#using scripts\core_common\system_shared;

#namespace namespace_90310f6a;

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 0, eflags: 0x5
// Checksum 0xb05a8a62, Offset: 0x140
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_727cd08e2b1432e6", &init, undefined, undefined, undefined);
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 0, eflags: 0x0
// Checksum 0xd37b325a, Offset: 0x188
// Size: 0x14
function init() {
    thread function_32e330d();
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 0, eflags: 0x0
// Checksum 0xb8f35420, Offset: 0x1a8
// Size: 0x200
function function_32e330d() {
    var_78856083 = getentarray("male_mannequin_trigger", "targetname");
    foreach (trigger in var_78856083) {
        trigger thread function_c46b4b94();
    }
    var_2eec21b8 = getentarray("female_mannequin_trigger", "targetname");
    foreach (trigger in var_2eec21b8) {
        trigger thread function_69e2587b();
    }
    var_83d5c6a0 = getentarray("child_mannequin_trigger", "targetname");
    foreach (trigger in var_83d5c6a0) {
        trigger thread function_42a285bf();
    }
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 0, eflags: 0x0
// Checksum 0xc668e6e5, Offset: 0x3b0
// Size: 0xe4
function function_c46b4b94() {
    self endon(#"entitydeleted", #"hash_27629c40b49f163c");
    self setcandamage(1);
    self disconnectpaths();
    origin = self.origin;
    s_notify = self waittill(#"damage");
    level thread function_93b6095f(s_notify, origin);
    self connectpaths();
    self deletedelay();
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 2, eflags: 0x0
// Checksum 0x86e258b9, Offset: 0x4a0
// Size: 0x334
function function_93b6095f(s_notify, origin) {
    n_outer_radius = 5;
    n_inner_radius = 1;
    var_67b43134 = 1;
    var_b6680570 = 5;
    var_a62ea1f = 10;
    var_947d01ee = s_notify.weapon.weapclass;
    var_18acfe18 = s_notify.amount;
    switch (var_947d01ee) {
    case #"pistol":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"rifle":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"mg":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"spread":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"smg":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"grenade":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"rocketlauncher":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"turret":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    default:
        n_magnitude = 0.01;
        break;
    }
    playfx("maps/cp_rus_amerika/fx9_impact_mannequin_sm", origin);
    snd::play("exp_facade_debris_mannequin", origin);
    radiusdamage(origin + (0, 0, -10), 5, 10, 3);
    radiusdamage(origin + (0, 0, -5), 5, 10, 3);
    radiusdamage(origin + (0, 0, 20), 5, 10, 3);
    radiusdamage(origin + (0, 0, 30), 5, 10, 3);
    physicsexplosionsphere(origin + (0, 0, -10), n_outer_radius, n_inner_radius, n_magnitude);
    physicsexplosionsphere(origin + (0, 0, 20), n_outer_radius, n_inner_radius, n_magnitude);
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 0, eflags: 0x0
// Checksum 0xe2a3023b, Offset: 0x7e0
// Size: 0xe4
function function_69e2587b() {
    self endon(#"entitydeleted", #"hash_27629c40b49f163c");
    self setcandamage(1);
    self disconnectpaths();
    origin = self.origin;
    s_notify = self waittill(#"damage");
    level thread function_83da8e07(s_notify, origin);
    self connectpaths();
    self deletedelay();
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 2, eflags: 0x0
// Checksum 0x375714e5, Offset: 0x8d0
// Size: 0x38c
function function_83da8e07(s_notify, origin) {
    n_outer_radius = 4;
    n_inner_radius = 1;
    var_67b43134 = 1;
    var_b6680570 = 5;
    var_a62ea1f = 10;
    var_947d01ee = s_notify.weapon.weapclass;
    var_18acfe18 = s_notify.amount;
    switch (var_947d01ee) {
    case #"pistol":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"rifle":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"mg":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"spread":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"smg":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"grenade":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"rocketlauncher":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"turret":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    default:
        n_magnitude = 0.01;
        break;
    }
    playfx("maps/cp_rus_amerika/fx9_impact_mannequin_sm", origin);
    snd::play("exp_facade_debris_mannequin", origin);
    radiusdamage(origin + (0, 0, -10), 5, 10, 3);
    radiusdamage(origin + (0, 0, -5), 5, 10, 3);
    radiusdamage(origin + (0, 0, 10), 5, 10, 3);
    radiusdamage(origin + (0, 0, 20), 5, 10, 3);
    radiusdamage(origin + (0, 0, 30), 5, 10, 3);
    physicsexplosionsphere(origin + (0, 0, -10), n_outer_radius, n_inner_radius, n_magnitude);
    physicsexplosionsphere(origin + (0, 0, -5), n_outer_radius, n_inner_radius, n_magnitude);
    physicsexplosionsphere(origin + (0, 0, 20), n_outer_radius, n_inner_radius, n_magnitude);
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 0, eflags: 0x0
// Checksum 0x5ad7d652, Offset: 0xc68
// Size: 0xe4
function function_42a285bf() {
    self endon(#"entitydeleted", #"hash_27629c40b49f163c");
    self setcandamage(1);
    self disconnectpaths();
    origin = self.origin;
    s_notify = self waittill(#"damage");
    level thread function_c59775f7(s_notify, origin);
    self connectpaths();
    self deletedelay();
}

// Namespace namespace_90310f6a/namespace_90310f6a
// Params 2, eflags: 0x0
// Checksum 0x11e46b6e, Offset: 0xd58
// Size: 0x37c
function function_c59775f7(s_notify, origin) {
    n_outer_radius = 5;
    n_inner_radius = 1;
    var_67b43134 = 1;
    var_b6680570 = 5;
    var_a62ea1f = 10;
    var_947d01ee = s_notify.weapon.weapclass;
    var_18acfe18 = s_notify.amount;
    switch (var_947d01ee) {
    case #"pistol":
        n_magnitude = var_18acfe18 * 0.02;
        break;
    case #"rifle":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"mg":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"spread":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"smg":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"grenade":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"rocketlauncher":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    case #"turret":
        n_magnitude = var_18acfe18 * 0.025;
        break;
    default:
        n_magnitude = 0.01;
        break;
    }
    playfx("maps/cp_rus_amerika/fx9_impact_mannequin_sm", origin);
    snd::play("exp_facade_debris_mannequin", origin);
    radiusdamage(origin + (0, 0, -10), 5, 10, 3);
    radiusdamage(origin + (0, 0, -5), 5, 10, 3);
    radiusdamage(origin + (0, 0, 0), 5, 10, 3);
    radiusdamage(origin + (0, 0, 5), 5, 10, 3);
    radiusdamage(origin + (0, 0, 10), 5, 10, 3);
    physicsexplosionsphere(origin + (0, 0, -10), n_outer_radius, n_inner_radius, n_magnitude);
    physicsexplosionsphere(origin + (0, 0, 0), n_outer_radius, n_inner_radius, n_magnitude);
    physicsexplosionsphere(origin + (0, 0, 10), n_outer_radius, n_inner_radius, n_magnitude);
}

