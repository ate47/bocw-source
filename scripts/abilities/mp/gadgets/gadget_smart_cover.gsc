// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\abilities\gadgets\gadget_smart_cover.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace smart_cover;

// Namespace smart_cover/gadget_smart_cover
// Params 0, eflags: 0x5
// Checksum 0xa34d3656, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_smart_cover", &preinit, undefined, undefined, undefined);
}

// Namespace smart_cover/gadget_smart_cover
// Params 0, eflags: 0x6 linked
// Checksum 0x35915a90, Offset: 0x100
// Size: 0x6c
function private preinit() {
    init_shared();
    function_649f8cbe(&onsmartcoverplaced);
    function_a9427b5c(&function_a430cceb);
    level.var_b57c1895 = &function_9a2b3318;
}

// Namespace smart_cover/gadget_smart_cover
// Params 1, eflags: 0x2 linked
// Checksum 0xef6fd263, Offset: 0x178
// Size: 0x84
function onsmartcoverplaced(smartcover) {
    self battlechatter::function_fc82b10(smartcover.weapon, smartcover.origin, smartcover);
    self callback::callback(#"hash_70eeb7d813f149b2", {#owner:self, #cover:smartcover.smartcover});
}

// Namespace smart_cover/gadget_smart_cover
// Params 2, eflags: 0x2 linked
// Checksum 0x7e352def, Offset: 0x208
// Size: 0x114
function function_a430cceb(attacker, weapon) {
    concertinawire = self;
    if (isdefined(level.figure_out_attacker)) {
        attacker = self [[ level.figure_out_attacker ]](attacker);
    }
    if (isdefined(attacker) && isplayer(attacker) && concertinawire.owner !== attacker && isdefined(weapon)) {
        attacker stats::function_e24eec31(weapon, #"hash_1c9da51ed1906285", 1);
        killstreaks::function_e729ccee(attacker, weapon);
    }
    self callback::callback(#"hash_15858698313c5f32", {#owner:self.owner, #cover:self});
}

// Namespace smart_cover/gadget_smart_cover
// Params 3, eflags: 0x2 linked
// Checksum 0xfb25d82a, Offset: 0x328
// Size: 0x14a
function function_9a2b3318(origin, *angles, *player) {
    if (isdefined(level.smartcoversettings.bundle.var_bc78f60e)) {
        length2 = sqr(level.smartcoversettings.bundle.var_bc78f60e + level.smartcoversettings.bundle.maxwidth);
        foreach (protectedzone in level.smartcoversettings.var_d6a27a84) {
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

// Namespace smart_cover/gadget_smart_cover
// Params 1, eflags: 0x0
// Checksum 0x73aa84cf, Offset: 0x480
// Size: 0x34
function function_18f38647(zone) {
    array::add(level.smartcoversettings.var_d6a27a84, zone);
}

// Namespace smart_cover/gadget_smart_cover
// Params 1, eflags: 0x0
// Checksum 0x401001e6, Offset: 0x4c0
// Size: 0x34
function function_60a53911(zone) {
    arrayremovevalue(level.smartcoversettings.var_d6a27a84, zone);
}

