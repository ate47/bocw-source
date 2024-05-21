// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace item_drop;

// Namespace item_drop/item_drop
// Params 0, eflags: 0x1
// Checksum 0x38b8f181, Offset: 0x118
// Size: 0x5c
function autoexec main() {
    if (!isdefined(level.item_drops)) {
        level.item_drops = [];
    }
    level thread function_1a93b6b0();
    waitframe(1);
    callback::on_actor_killed(&function_4814ed2e);
}

// Namespace item_drop/item_drop
// Params 3, eflags: 0x0
// Checksum 0x7ac7a827, Offset: 0x180
// Size: 0xba
function function_92cf5632(name, model, callback) {
    if (!isdefined(level.item_drops)) {
        level.item_drops = [];
    }
    if (!isdefined(level.item_drops[name])) {
        level.item_drops[name] = spawnstruct();
    }
    level.item_drops[name].name = name;
    level.item_drops[name].model = model;
    level.item_drops[name].callback = callback;
}

// Namespace item_drop/item_drop
// Params 2, eflags: 0x0
// Checksum 0xd2d23ad5, Offset: 0x248
// Size: 0x9a
function function_cd458f49(name, dropchance) {
    if (!isdefined(level.item_drops)) {
        level.item_drops = [];
    }
    if (!isdefined(level.item_drops[name])) {
        level.item_drops[name] = spawnstruct();
    }
    level.item_drops[name].name = name;
    level.item_drops[name].var_d8b51b9f = dropchance;
}

// Namespace item_drop/item_drop
// Params 2, eflags: 0x0
// Checksum 0x4c77ce35, Offset: 0x2f0
// Size: 0x9a
function function_2905ed47(name, spawnpoints) {
    if (!isdefined(level.item_drops)) {
        level.item_drops = [];
    }
    if (!isdefined(level.item_drops[name])) {
        level.item_drops[name] = spawnstruct();
    }
    level.item_drops[name].name = name;
    level.item_drops[name].spawnpoints = spawnpoints;
}

// Namespace item_drop/item_drop
// Params 1, eflags: 0x0
// Checksum 0x32d32891, Offset: 0x398
// Size: 0x24c
function function_4814ed2e(*params) {
    if (level.script != "sp_proto_characters" && level.script != "challenge_bloodbath") {
        return;
    }
    if (is_true(self.var_a269c536)) {
        return;
    }
    self.var_a269c536 = 1;
    drop = array::random(level.item_drops);
    /#
        if (isdefined(drop.var_d8b51b9f)) {
            drop.var_d8b51b9f = getdvarfloat("<unknown string>" + drop.name, 0);
        }
    #/
    if (getdvarint(#"hash_5b7b8e527835e75b", 0)) {
        killer = self.var_493d1f73;
        if (isdefined(killer)) {
            if (isdefined(drop.callback)) {
                multiplier = self function_fbd43d2f();
                if (!killer [[ drop.callback ]](multiplier)) {
                    return;
                }
            }
            playsoundatposition(#"hash_24560114c2498b4d", killer.origin);
        }
        return;
    }
    if (isdefined(drop.var_d8b51b9f) && randomfloat(1) < drop.var_d8b51b9f) {
        origin = self.origin + (0, 0, 30);
        newdrop = function_cdd56b7c(drop, origin);
        newdrop.multiplier = self function_fbd43d2f();
        level.var_96d850f9[level.var_96d850f9.size] = newdrop;
        newdrop thread function_31747e4e();
    }
}

// Namespace item_drop/item_drop
// Params 0, eflags: 0x0
// Checksum 0x1b53f753, Offset: 0x5f0
// Size: 0xb0
function function_fbd43d2f() {
    var_17f6707c = getdvarfloat(#"hash_6e30d1a44f5c3074", 0);
    if (isdefined(self.var_527afdf8)) {
        var_17f6707c = self.var_527afdf8;
    }
    var_5c528a90 = getdvarfloat(#"hash_6e4bbfa44f72d996", 0);
    if (isdefined(self.var_308efffd)) {
        var_5c528a90 = self.var_308efffd;
    }
    if (var_17f6707c < var_5c528a90) {
        return randomfloatrange(var_17f6707c, var_5c528a90);
    }
    return var_17f6707c;
}

// Namespace item_drop/item_drop
// Params 0, eflags: 0x0
// Checksum 0xec0bf457, Offset: 0x6a8
// Size: 0x108
function function_1a93b6b0() {
    level.var_96d850f9 = [];
    level flag::wait_till("all_players_spawned");
    while (true) {
        wait(15);
        if (level.var_96d850f9.size < 1 && level.item_drops.size > 0) {
            drop = array::random(level.item_drops);
            if (isdefined(drop.spawnpoints)) {
                origin = array::random(drop.spawnpoints);
                newdrop = function_cdd56b7c(drop, origin);
                level.var_96d850f9[level.var_96d850f9.size] = newdrop;
                newdrop thread function_31747e4e();
            }
        }
    }
}

// Namespace item_drop/item_drop
// Params 2, eflags: 0x0
// Checksum 0x3b5f7a49, Offset: 0x7b8
// Size: 0xd0
function function_cdd56b7c(drop, origin) {
    nd = spawnstruct();
    nd.drop = drop;
    nd.origin = origin;
    nd.model = spawn("script_model", nd.origin);
    nd.model setmodel(drop.model);
    nd.model thread function_24035033();
    playsoundatposition(#"hash_daa5170584cefa3", origin);
    return nd;
}

// Namespace item_drop/item_drop
// Params 0, eflags: 0x0
// Checksum 0xb9afb065, Offset: 0x890
// Size: 0x9e
function function_24035033() {
    angle = 0;
    time = 0;
    self endon(#"death");
    while (isdefined(self)) {
        angle = time * 90;
        self.angles = (0, angle, 0);
        waitframe(1);
        time += float(function_60d95f53()) / 1000;
    }
}

// Namespace item_drop/item_drop
// Params 0, eflags: 0x0
// Checksum 0x117dba00, Offset: 0x938
// Size: 0xac
function function_31747e4e() {
    trigger = spawn("trigger_radius", self.origin, 0, 60, 60);
    self.pickuptrigger = trigger;
    while (isdefined(self)) {
        waitresult = trigger waittill(#"trigger");
        if (waitresult.activator thread pickup(self)) {
            break;
        }
    }
    trigger delete();
}

// Namespace item_drop/item_drop
// Params 1, eflags: 0x0
// Checksum 0xea96f802, Offset: 0x9f0
// Size: 0xd8
function pickup(drop) {
    if (isdefined(drop.drop.callback)) {
        multiplier = 1;
        if (isdefined(drop.multiplier)) {
            multiplier = drop.multiplier;
        }
        if (!self [[ drop.drop.callback ]](multiplier)) {
            return false;
        }
    }
    playsoundatposition(#"hash_24560114c2498b4d", self.origin);
    drop.model delete();
    arrayremovevalue(level.var_96d850f9, drop);
    return true;
}

