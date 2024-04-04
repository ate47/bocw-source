// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\zm_score.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_7eea54d0;

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 0, eflags: 0x0
// Checksum 0x89795b35, Offset: 0xb0
// Size: 0x84
function init() {
    callback::on_connect(&on_player_connect);
    callback::on_item_pickup(&on_item_pickup);
    callback::on_ai_damage(&on_ai_damage);
    callback::on_ai_killed(&on_ai_killed);
}

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 0, eflags: 0x2 linked
// Checksum 0x18f26b80, Offset: 0x140
// Size: 0xe
function on_player_connect() {
    self.var_47eb9d8e = 0;
}

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 1, eflags: 0x2 linked
// Checksum 0x8c4c5157, Offset: 0x158
// Size: 0xb4
function on_item_pickup(s_params) {
    itementry = s_params.item.itementry;
    if (itementry.itemtype === #"survival_essence") {
        if (isplayer(self)) {
            e_player = self;
        } else {
            e_player = s_params.player;
        }
        var_b25755cf = 50 * itementry.amount;
        e_player thread function_d9365a20(var_b25755cf, 0);
    }
}

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 1, eflags: 0x2 linked
// Checksum 0xff8ebdd2, Offset: 0x218
// Size: 0xc0
function on_ai_damage(s_params) {
    e_player = s_params.eattacker;
    if (!isplayer(e_player)) {
        return;
    }
    if (!isdefined(self.var_d7d6cced)) {
        self.var_d7d6cced = [];
    } else if (!isarray(self.var_d7d6cced)) {
        self.var_d7d6cced = array(self.var_d7d6cced);
    }
    if (!isinarray(self.var_d7d6cced, e_player)) {
        self.var_d7d6cced[self.var_d7d6cced.size] = e_player;
    }
}

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 1, eflags: 0x2 linked
// Checksum 0x943d111f, Offset: 0x2e0
// Size: 0x21c
function on_ai_killed(s_params) {
    e_player = s_params.eattacker;
    if (!isplayer(e_player)) {
        return;
    }
    if (isdefined(level.var_138fad10)) {
        var_b25755cf = self [[ level.var_138fad10 ]](s_params);
    }
    if (!isdefined(var_b25755cf)) {
        var_b25755cf = 10;
        if (self.var_9fde8624 === #"hash_7a778318514578f7" || self.var_9fde8624 === #"hash_622e7c9cc7c06c7") {
            var_b25755cf = 20;
        } else {
            switch (self.archetype) {
            case #"avogadro":
                var_b25755cf = 50;
                break;
            case #"raz":
            case #"brutus":
                var_b25755cf = 100;
                break;
            case #"mechz":
            case #"blight_father":
                var_b25755cf = 250;
                break;
            }
        }
    }
    if (!isdefined(self.var_d7d6cced)) {
        self.var_d7d6cced = [];
    } else if (!isarray(self.var_d7d6cced)) {
        self.var_d7d6cced = array(self.var_d7d6cced);
    }
    if (!isinarray(self.var_d7d6cced, e_player)) {
        self.var_d7d6cced[self.var_d7d6cced.size] = e_player;
    }
    arrayremovevalue(self.var_d7d6cced, undefined);
    if (var_b25755cf > 0) {
        array::thread_all(self.var_d7d6cced, &function_d9365a20, var_b25755cf, 0);
    }
}

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 0, eflags: 0x0
// Checksum 0x33a3d7ea, Offset: 0x508
// Size: 0xa
function function_b121c9be() {
    return self.var_47eb9d8e;
}

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 2, eflags: 0x2 linked
// Checksum 0xa2d03798, Offset: 0x520
// Size: 0x5c
function function_d9365a20(var_b25755cf, *var_86756f69) {
    if (isdefined(self.var_47eb9d8e)) {
        self.var_47eb9d8e = int(self.var_47eb9d8e + var_86756f69);
    }
    zm_score::add_to_player_score(var_86756f69);
}

// Namespace namespace_7eea54d0/namespace_7eea54d0
// Params 1, eflags: 0x0
// Checksum 0xf187e9e8, Offset: 0x588
// Size: 0x5a
function function_1efdfa9d(var_b25755cf) {
    var_47eb9d8e = self.var_47eb9d8e - var_b25755cf;
    var_47eb9d8e = max(var_47eb9d8e, 0);
    self.var_47eb9d8e = int(var_47eb9d8e);
}

