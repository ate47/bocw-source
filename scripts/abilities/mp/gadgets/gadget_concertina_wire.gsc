// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\battlechatter.gsc;
#using scripts\abilities\gadgets\gadget_concertina_wire.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace concertina_wire;

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x5
// Checksum 0x69eb9160, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_concertina_wire", &preinit, undefined, undefined, undefined);
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x4
// Checksum 0x73705bca, Offset: 0x138
// Size: 0xc4
function private preinit() {
    if (getgametypesetting(#"competitivesettings") === 1) {
        init_shared("concertina_wire_custom_settings_comp");
    } else {
        init_shared("concertina_wire_settings");
    }
    function_c5f0b9e7(&onconcertinawireplaced);
    function_d700c081(&function_806b0f85);
    level.var_cbec7a45 = 0;
    level.var_d1ae43e3 = &function_6190ae9e;
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 1, eflags: 0x0
// Checksum 0x25e6274e, Offset: 0x208
// Size: 0x3c
function onconcertinawireplaced(concertinawire) {
    self battlechatter::function_bd715920(concertinawire.weapon, undefined, concertinawire.origin, concertinawire);
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 2, eflags: 0x0
// Checksum 0xe73788c0, Offset: 0x250
// Size: 0xac
function function_806b0f85(attacker, weapon) {
    concertinawire = self;
    if (isdefined(level.figure_out_attacker)) {
        attacker = self [[ level.figure_out_attacker ]](attacker);
    }
    if (isdefined(attacker) && isplayer(attacker) && concertinawire.owner !== attacker && isdefined(weapon)) {
        attacker stats::function_e24eec31(weapon, #"hash_1c9da51ed1906285", 1);
    }
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 3, eflags: 0x0
// Checksum 0x7a48fd70, Offset: 0x308
// Size: 0x14a
function function_6190ae9e(origin, *angles, *player) {
    if (isdefined(level.var_87226c31.bundle.var_bc78f60e)) {
        length2 = sqr(level.var_87226c31.bundle.var_bc78f60e + level.var_87226c31.bundle.maxwidth);
        foreach (protectedzone in level.var_87226c31.var_d6a27a84) {
            if (isdefined(protectedzone)) {
                dist2 = distance2dsquared(player, protectedzone.origin);
                if (dist2 < length2) {
                    return false;
                }
            }
        }
    }
    return true;
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 1, eflags: 0x0
// Checksum 0x4e806423, Offset: 0x460
// Size: 0x34
function function_18f38647(zone) {
    array::add(level.var_87226c31.var_d6a27a84, zone);
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 1, eflags: 0x0
// Checksum 0x845dc832, Offset: 0x4a0
// Size: 0x34
function function_60a53911(zone) {
    arrayremovevalue(level.var_87226c31.var_d6a27a84, zone);
}

