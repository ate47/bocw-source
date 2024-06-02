// Atian COD Tools GSC CW decompiler test
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\item_world.gsc;
#using script_471b31bd963b388e;
#using script_340a2e805e35f7a2;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_7da6f8ca;

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 0, eflags: 0x5
// Checksum 0x3e49e344, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_40a4f03bb2983ee3", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 0, eflags: 0x6 linked
// Checksum 0x44fb4c88, Offset: 0x108
// Size: 0x10
function private preinit() {
    level.var_288e4854 = [];
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 2, eflags: 0x2 linked
// Checksum 0xd3129fa7, Offset: 0x120
// Size: 0x120
function fake_physicslaunch(target_pos, power) {
    start_pos = self.origin;
    gravity = getdvarint(#"bg_gravity", 0) * -1;
    dist = distance(start_pos, target_pos);
    time = dist / power;
    delta = target_pos - start_pos;
    drop = 0.5 * gravity * time * time;
    velocity = (delta[0] / time, delta[1] / time, (delta[2] - drop) / time);
    self movegravity(velocity, time);
    return time;
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 14, eflags: 0x2 linked
// Checksum 0xf340f238, Offset: 0x248
// Size: 0x32c
function function_7a1e21a9(attacker, v_origin, min_radius, max_radius = 50, var_4dd1cd8b = 70, var_8c20ac00 = 100, n_height = 101, *var_e927082a = 64, n_power = 100, var_4c1ec23b, min_angle = 0, max_angle = 360, var_383ab56c = 0, var_92844ba1 = 0) {
    self endon(#"death");
    self.origin = min_radius + (0, 0, 4);
    if (isdefined(v_origin) && is_true(v_origin.usingvehicle)) {
        max_radius = var_8c20ac00;
        var_4dd1cd8b = n_height;
    }
    if (isdefined(var_4c1ec23b)) {
        dest_origin = function_e1cd5954(var_4c1ec23b, max_radius, var_4dd1cd8b, var_e927082a, min_angle, max_angle, var_383ab56c);
    } else {
        dest_origin = function_e1cd5954(min_radius, max_radius, var_4dd1cd8b, var_e927082a, min_angle, max_angle, var_383ab56c);
    }
    if (!var_92844ba1) {
        if (distancesquared(self.origin, dest_origin) > var_4dd1cd8b * var_4dd1cd8b) {
            n_power *= var_e927082a / n_power;
        }
    }
    time = self fake_physicslaunch(dest_origin, n_power);
    if (self.item.name == #"ray_gun") {
        self playsound(#"hash_79ad1219ecf63fc8");
    } else {
        self playsound(#"hash_79ad1219ecf63fc8");
    }
    wait(time);
    if (isdefined(self)) {
        self.origin = dest_origin;
        if (getdvarvector(#"phys_gravity_dir") != (0, 0, -1)) {
            level thread item_drop::function_4da960f6(self.origin, 2, 1);
        }
        wait(1);
        self.falling = 0;
        self util::deleteaftertime(180);
    }
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 5, eflags: 0x0
// Checksum 0x2f160dda, Offset: 0x580
// Size: 0x452
function function_d92e3c5a(attacker, ai_zone, itemlist, var_e927082a = 0, n_power) {
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.var_6a7537d8)) {
        self.var_6a7537d8 = 1;
    }
    v_origin = self.origin;
    items = self namespace_65181344::function_fd87c780(itemlist, self.var_6a7537d8, 1);
    if (!isdefined(self)) {
        return;
    }
    if (isdefined(self.var_e575a1bb)) {
        min_radius = self.var_e575a1bb;
    } else {
        min_radius = undefined;
    }
    if (isdefined(self.var_40c895b9)) {
        max_radius = self.var_40c895b9;
    } else {
        max_radius = undefined;
    }
    if (isdefined(self.var_92666d22)) {
        n_height = self.var_92666d22;
    } else {
        n_height = undefined;
    }
    if (isdefined(self.var_e154425f)) {
        var_ad797f55 = self.var_e154425f;
    } else {
        var_4dd1cd8b = undefined;
    }
    if (isdefined(self.var_4f53e075)) {
        var_8c20ac00 = self.var_4f53e075;
    } else {
        var_8c20ac00 = undefined;
    }
    for (i = 0; i < items.size; i++) {
        item = items[i];
        if (isdefined(item)) {
            if (is_true(level.var_c64b3b46)) {
                if (isdefined(item.itementry) && isdefined(ai_zone) && isdefined(ai_zone.item_drops)) {
                    if (!isdefined(ai_zone.item_drops[self.archetype])) {
                        ai_zone.item_drops[self.archetype] = [];
                    }
                    if (!isdefined(ai_zone.item_drops[self.archetype][item.itementry.name])) {
                        ai_zone.item_drops[self.archetype][item.itementry.name] = {};
                    }
                    if (!isdefined(ai_zone.item_drops[self.archetype][item.itementry.name].count)) {
                        ai_zone.item_drops[self.archetype][item.itementry.name].count = 0;
                    }
                    ai_zone.item_drops[self.archetype][item.itementry.name].count++;
                }
            }
            if (isentity(item) && isdefined(item.var_627c698b.attachments) && !isdefined(item.attachments)) {
                attachments = item.var_627c698b.attachments;
                foreach (attachment in attachments) {
                    var_41ade915 = item_world_util::function_6a0ee21a(attachment);
                    attachmentitem = function_4ba8fde(var_41ade915);
                    namespace_a0d533d1::function_8b7b98f(item, attachmentitem);
                }
            }
            item thread function_7a1e21a9(attacker, v_origin, min_radius, max_radius, var_4dd1cd8b, var_8c20ac00, n_height, var_e927082a, n_power);
        }
        waitframe(1);
    }
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 1, eflags: 0x6 linked
// Checksum 0xebc6b007, Offset: 0x9e0
// Size: 0x38
function private function_1979a72e(pos) {
    if (isdefined(arraygetclosest(pos, level.var_288e4854, 4))) {
        return true;
    }
    return false;
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 0, eflags: 0x0
// Checksum 0xf03d060e, Offset: 0xa20
// Size: 0x10
function function_fe9c13ca() {
    level.var_288e4854 = [];
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 7, eflags: 0x2 linked
// Checksum 0xd49686ea, Offset: 0xa38
// Size: 0x37a
function function_e1cd5954(v_origin, min_radius = 0, max_radius = 32, n_height = 64, min_angle = 0, max_angle = 360, var_39262f2b = 0) {
    if (!isdefined(v_origin)) {
        return;
    }
    var_9bd6c1ae = v_origin;
    if (min_angle == max_angle) {
        max_angle++;
    }
    if (min_radius == max_radius) {
        max_radius++;
    }
    angle = randomintrange(min_angle, max_angle);
    radius = randomintrange(min_radius, max_radius);
    x_pos = var_9bd6c1ae[0] + radius * cos(angle);
    y_pos = var_9bd6c1ae[1] + radius * sin(angle);
    randompoint = (x_pos, y_pos, v_origin[2] + n_height);
    if (var_39262f2b) {
        flip = 1;
        checks = 0;
        if (level.var_288e4854.size <= 0) {
            if (!isdefined(level.var_288e4854)) {
                level.var_288e4854 = [];
            } else if (!isarray(level.var_288e4854)) {
                level.var_288e4854 = array(level.var_288e4854);
            }
            level.var_288e4854[level.var_288e4854.size] = randompoint;
        } else {
            while (function_1979a72e(randompoint)) {
                randompoint = (x_pos, y_pos + flip * 16, v_origin[2] + n_height);
                if (checks < 2) {
                    flip *= -1;
                } else {
                    flip++;
                    checks = 0;
                }
                checks++;
            }
            if (!isdefined(level.var_288e4854)) {
                level.var_288e4854 = [];
            } else if (!isarray(level.var_288e4854)) {
                level.var_288e4854 = array(level.var_288e4854);
            }
            level.var_288e4854[level.var_288e4854.size] = randompoint;
        }
    }
    var_c67a78a0 = getclosestpointonnavmesh(randompoint, 64, 16);
    if (isdefined(var_c67a78a0)) {
        var_9bd6c1ae = var_c67a78a0;
    }
    return var_9bd6c1ae + (0, 0, 10);
}

