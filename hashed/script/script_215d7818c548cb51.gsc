// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using script_7963da8c5cf62922;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_77bd50da;

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x5
// Checksum 0xa36d6535, Offset: 0xc8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_7b30b3878fc15536", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x2 linked
// Checksum 0xc1910128, Offset: 0x120
// Size: 0x64
function preinit() {
    level.var_90456892 = sr_message_box::register();
    if (!isdefined(level.var_31028c5d)) {
        level.var_31028c5d = prototype_hud::register();
    }
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x190
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x2 linked
// Checksum 0xca757c82, Offset: 0x1a0
// Size: 0x1c
function on_player_spawned() {
    self function_2778528();
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x6 linked
// Checksum 0x70d1ad7d, Offset: 0x1c8
// Size: 0xf2
function private function_2778528() {
    if (!isplayer(self)) {
        return;
    }
    if (!level.var_31028c5d prototype_hud::is_open(self)) {
        level.var_31028c5d prototype_hud::open(self, 1);
    }
    if (isdefined(level.var_8a13c98f)) {
        i = 1;
        foreach (s_objective in level.var_8a13c98f) {
            i++;
        }
    }
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 2, eflags: 0x2 linked
// Checksum 0xfdd7b359, Offset: 0x2c8
// Size: 0x124
function function_cc8342e0(string = #"hash_6c919cffb550417a", opentime = 10) {
    level endon(#"game_ended");
    self endon(#"death");
    if (!isplayer(self)) {
        return;
    }
    if (!level.var_90456892 sr_message_box::is_open(self)) {
        level.var_90456892 sr_message_box::open(self);
        level.var_90456892 sr_message_box::function_7a690474(self, string);
    } else {
        return;
    }
    wait(opentime);
    if (level.var_90456892 sr_message_box::is_open(self)) {
        level.var_90456892 sr_message_box::close(self);
    }
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 2, eflags: 0x2 linked
// Checksum 0x490e69e2, Offset: 0x3f8
// Size: 0xc4
function function_81cad6d6(vector, angle) {
    var_c575b928 = cos(angle);
    var_26c827e8 = sin(angle);
    x = vector[0] * var_c575b928 - vector[1] * var_26c827e8;
    y = vector[0] * var_26c827e8 + vector[1] * var_c575b928;
    z = vector[2];
    return (x, y, z);
}

