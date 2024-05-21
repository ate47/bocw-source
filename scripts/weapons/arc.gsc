// Atian COD Tools GSC CW decompiler test
#using script_3819e7a1427df6d2;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\damage.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace arc;

// Namespace arc/arc
// Params 2, eflags: 0x0
// Checksum 0xc71460d, Offset: 0xb0
// Size: 0x94
function init_arc(weapon, var_26b2b1bb) {
    /#
        level thread update_dvars();
    #/
    if (!setup_arc(weapon, var_26b2b1bb)) {
        return;
    }
    var_26b2b1bb = level.var_8a74f7fc[weapon];
    if (!isdefined(var_26b2b1bb.var_874bd25a)) {
        var_26b2b1bb.var_874bd25a = &function_874bd25a;
    }
    function_8d134256(var_26b2b1bb);
}

/#

    // Namespace arc/arc
    // Params 0, eflags: 0x0
    // Checksum 0x46d756c2, Offset: 0x150
    // Size: 0x48
    function update_dvars() {
        while (true) {
            wait(1);
            level.var_6d3af47 = getdvarint(#"hash_6e465f7410cc100f", 0);
        }
    }

#/

// Namespace arc/arc
// Params 2, eflags: 0x0
// Checksum 0x88853ded, Offset: 0x1a0
// Size: 0x9e
function setup_arc(weapon, var_26b2b1bb) {
    assert(isdefined(weapon));
    if (!isdefined(level.var_8a74f7fc)) {
        level.var_8a74f7fc = [];
    }
    if (!isdefined(var_26b2b1bb)) {
        var_26b2b1bb = spawnstruct();
    }
    if (isdefined(level.var_8a74f7fc[weapon])) {
        return false;
    }
    level.var_8a74f7fc[weapon] = var_26b2b1bb;
    var_26b2b1bb.weapon = weapon;
    return true;
}

// Namespace arc/arc
// Params 1, eflags: 0x0
// Checksum 0x65f9bf46, Offset: 0x248
// Size: 0x6c
function function_8d134256(var_26b2b1bb) {
    var_26b2b1bb.range_sqr = var_26b2b1bb.range * var_26b2b1bb.range;
    var_26b2b1bb.var_1c1be14 = var_26b2b1bb.max_range * var_26b2b1bb.max_range;
    callback::add_weapon_damage(var_26b2b1bb.weapon, var_26b2b1bb.var_874bd25a);
}

// Namespace arc/arc
// Params 5, eflags: 0x0
// Checksum 0x9d3441, Offset: 0x2c0
// Size: 0x84
function function_874bd25a(eattacker, einflictor, weapon, meansofdeath, damage) {
    var_26b2b1bb = level.var_8a74f7fc[weapon];
    assert(isdefined(var_26b2b1bb));
    self thread function_9b14bec4(eattacker, einflictor, weapon, meansofdeath, damage, var_26b2b1bb);
}

// Namespace arc/arc
// Params 6, eflags: 0x0
// Checksum 0x666a7c9, Offset: 0x350
// Size: 0x104
function function_9b14bec4(eattacker, *einflictor, *weapon, *meansofdeath, *damage, var_26b2b1bb) {
    arc_source = self;
    arc_source_origin = self.origin;
    arc_source_pos = self gettagorigin(var_26b2b1bb.fx_tag);
    if (isdefined(self.var_f5037060)) {
        self [[ self.var_f5037060 ]](var_26b2b1bb, arc_source, 0);
    }
    if (isdefined(self.body)) {
        arc_source_origin = self.body.origin;
        arc_source_pos = self.body gettagorigin(var_26b2b1bb.fx_tag);
    }
    self find_arc_targets(var_26b2b1bb, damage, arc_source, arc_source_origin, 0);
}

/#

    // Namespace arc/arc
    // Params 2, eflags: 0x0
    // Checksum 0xad511b7e, Offset: 0x460
    // Size: 0x4c
    function function_bf7d5b02(arc_source_origin, max_range) {
        circle(arc_source_origin, max_range, (1, 0.5, 0), 0, 1, 2);
    }

    // Namespace arc/arc
    // Params 4, eflags: 0x0
    // Checksum 0x2580ee1e, Offset: 0x4b8
    // Size: 0x74
    function function_7a0599d(var_955a2e18, range, depth, var_94a1d56d) {
        var_227ac3be = depth / (var_94a1d56d - 1);
        circle(var_955a2e18, range, (0, 1 - var_227ac3be, var_227ac3be), 0, 1, 500);
    }

#/

// Namespace arc/arc
// Params 4, eflags: 0x0
// Checksum 0x79fc9e79, Offset: 0x538
// Size: 0x96
function distancecheck(var_26b2b1bb, target, arc_source_pos, arc_source_origin) {
    distancesq = distancesquared(target.origin, arc_source_pos);
    if (distancesq > var_26b2b1bb.range_sqr) {
        return false;
    }
    distancesq = distancesquared(target.origin, arc_source_origin);
    if (distancesq > var_26b2b1bb.var_1c1be14) {
        return false;
    }
    return true;
}

// Namespace arc/arc
// Params 7, eflags: 0x0
// Checksum 0x191ae0a, Offset: 0x5d8
// Size: 0x2a0
function function_33d5b9a6(var_26b2b1bb, eattacker, arc_source, arc_source_origin, *depth, target, var_4d3cc1a7 = 1) {
    if (target player::is_spawn_protected()) {
        return false;
    }
    if (!isalive(target)) {
        return false;
    }
    if (isdefined(arc_source_origin) && isdefined(arc_source_origin.var_69ea963)) {
        if (![[ arc_source_origin.var_69ea963 ]](target)) {
            return false;
        }
    }
    if (isdefined(arc_source_origin) && target == arc_source_origin) {
        return false;
    }
    if (arc_source == target) {
        return false;
    }
    if (isdefined(target.arc_source) && target.arc_source == arc_source_origin) {
        return false;
    }
    if (isdefined(arc_source_origin.var_d8d780c1) && arc_source_origin.var_d8d780c1.size >= level.var_8a74f7fc[arc_source_origin.arcweapon].var_755593b1) {
        return false;
    }
    if (target function_db12bbd1(arc_source_origin)) {
        return false;
    }
    if (var_4d3cc1a7 && !distancecheck(eattacker, target, self.origin, depth)) {
        /#
            record3dtext("<unknown string>", self.origin - (0, 0, 20), (1, 0, 0), "<unknown string>", undefined, 0.4);
        #/
        return false;
    }
    if (!damage::friendlyfirecheck(arc_source, target)) {
        return false;
    }
    if (!target damageconetrace(self.origin + (0, 0, 10), self) && is_true(eattacker.var_8ce60046)) {
        return false;
    }
    if (is_true(self.var_101a013c) && is_true(target.var_4233f7e5)) {
        return false;
    }
    return true;
}

// Namespace arc/arc
// Params 6, eflags: 0x0
// Checksum 0x81dd304c, Offset: 0x880
// Size: 0x1e4
function find_arc_targets(var_26b2b1bb, eattacker, arc_source, arc_source_origin, depth, var_4d3cc1a7 = 1) {
    /#
        if (level.var_6d3af47) {
            function_bf7d5b02(arc_source_origin, var_26b2b1bb.max_range);
            function_7a0599d(self.origin, var_26b2b1bb.range, depth, var_26b2b1bb.depth);
        }
    #/
    delay = var_26b2b1bb.delay;
    if (!isdefined(delay)) {
        delay = 0;
    }
    allplayers = function_a1ef346b();
    var_67dd5161 = arraysort(allplayers, arc_source_origin, 1);
    validtargets = 0;
    for (i = 0; validtargets < var_26b2b1bb.var_755593b1 && i < var_67dd5161.size; i++) {
        target = var_67dd5161[i];
        if (!function_33d5b9a6(var_26b2b1bb, eattacker, arc_source, arc_source_origin, depth, target, var_4d3cc1a7)) {
            continue;
        }
        validtargets++;
        level thread function_30a9a6c1(var_26b2b1bb, delay, eattacker, arc_source, self, arc_source_origin, self.origin, target, target gettagorigin(var_26b2b1bb.fx_tag), depth);
    }
}

// Namespace arc/arc
// Params 11, eflags: 0x0
// Checksum 0x50539aad, Offset: 0xa70
// Size: 0x1c2
function function_30a9a6c1(var_26b2b1bb, delay, eattacker, arc_source, *var_9a099e60, arc_source_origin, *arc_source_pos, arc_target, *arc_target_pos, depth, var_4d3cc1a7 = 1) {
    if (var_9a099e60) {
        wait(float(var_9a099e60) / 1000);
        if (!function_33d5b9a6(arc_source, arc_source_origin, arc_source_pos, arc_target, depth, arc_target_pos, var_4d3cc1a7)) {
            return;
        }
    }
    function_41827934(arc_source_pos, arc_target_pos);
    if (depth < (isdefined(arc_source.depth) ? arc_source.depth : 0) && isdefined(arc_source_pos)) {
        arc_target_pos find_arc_targets(level.var_8a74f7fc[arc_source_pos.arcweapon], arc_source_pos.owner, arc_source_pos, arc_target, depth + 1, var_4d3cc1a7);
    }
    if (isdefined(arc_source_pos) && isdefined(arc_source_pos.var_16d479de)) {
        arc_source_pos [[ arc_source_pos.var_16d479de ]](arc_target_pos);
    }
    if (isdefined(arc_source_pos)) {
        var_ac6e1436 = 0;
        if (isdefined(arc_source_pos.var_f5037060)) {
            var_ac6e1436 = arc_target_pos [[ arc_source_pos.var_f5037060 ]](arc_source, arc_source_pos, depth);
        }
        arc_source_pos.var_290ed3ab = gettime() + var_ac6e1436;
    }
}

// Namespace arc/arc
// Params 1, eflags: 0x0
// Checksum 0x2d4702b2, Offset: 0xc40
// Size: 0xae
function function_db12bbd1(arc_source) {
    if (isdefined(self.var_671951da) && isdefined(arc_source)) {
        foreach (source in self.var_671951da) {
            if (isdefined(source) && source == arc_source) {
                return true;
            }
        }
    }
    return false;
}

// Namespace arc/arc
// Params 2, eflags: 0x0
// Checksum 0xac88c3af, Offset: 0xcf8
// Size: 0x90
function function_41827934(arc_source, arc_target) {
    arc_target.arc_source = arc_source;
    if (!isdefined(arc_target.var_671951da)) {
        arc_target.var_671951da = [];
    }
    arc_target.var_671951da[arc_target.var_671951da.size] = arc_source;
    if (isdefined(arc_source)) {
        if (!isdefined(arc_source.var_d8d780c1)) {
            arc_source.var_d8d780c1 = [];
        }
        arc_source.var_d8d780c1[arc_source.var_d8d780c1.size] = arc_target;
    }
}

// Namespace arc/arc
// Params 1, eflags: 0x0
// Checksum 0x2839666b, Offset: 0xd90
// Size: 0xec
function function_936e96aa(var_26b2b1bb) {
    if (isdefined(self.var_d8d780c1)) {
        foreach (target in self.var_d8d780c1) {
            if (isdefined(target) && isalive(target) && isdefined(target.arc_source) && target.arc_source == self) {
                if (isdefined(self.var_8a41c722)) {
                    self [[ self.var_8a41c722 ]](target, var_26b2b1bb);
                }
            }
        }
    }
}

