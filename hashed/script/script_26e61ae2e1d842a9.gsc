// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\map.csc;

#namespace namespace_1a4edaec;

// Namespace namespace_1a4edaec/level_init
// Params 1, eflags: 0x20
// Checksum 0x1264190a, Offset: 0x98
// Size: 0x4c
function event_handler[level_init] main(*eventstruct) {
    bundle = function_9ea44286();
    if (isdefined(bundle)) {
        callback::on_localplayer_spawned(&on_localplayer_spawned);
    }
}

// Namespace namespace_1a4edaec/namespace_1a4edaec
// Params 1, eflags: 0x2 linked
// Checksum 0x8aecbdee, Offset: 0xf0
// Size: 0x24
function on_localplayer_spawned(localclientnum) {
    self thread function_fe8cf253(localclientnum);
}

// Namespace namespace_1a4edaec/namespace_1a4edaec
// Params 0, eflags: 0x2 linked
// Checksum 0x44ba0747, Offset: 0x120
// Size: 0xba
function function_9ea44286() {
    mapbundle = map::get_script_bundle();
    if (!isdefined(mapbundle)) {
        return undefined;
    }
    str_gametype = util::get_game_type();
    if (str_gametype === #"zsurvival") {
        if (isdefined(mapbundle.var_b74bbf7)) {
            return getscriptbundle(mapbundle.var_b74bbf7);
        }
    }
    if (!isdefined(mapbundle.var_e13ec3f3)) {
        return undefined;
    }
    return getscriptbundle(mapbundle.var_e13ec3f3);
}

// Namespace namespace_1a4edaec/namespace_1a4edaec
// Params 1, eflags: 0x6 linked
// Checksum 0x14ffac54, Offset: 0x1e8
// Size: 0x1e8
function private function_fe8cf253(localclientnum) {
    self endon(#"death");
    util::waittill_dobj(localclientnum);
    bundle = function_9ea44286();
    if (isdefined(self.var_87259100)) {
        stopfx(localclientnum, self.var_87259100);
    }
    if (isdefined(bundle.var_492662d7)) {
        self.var_87259100 = playfxoncamera(localclientnum, bundle.var_492662d7);
    }
    if (isdefined(bundle.var_39b6fcfb)) {
        minwait = isdefined(bundle.var_472be987) ? bundle.var_472be987 : 0.25;
        maxwait = isdefined(bundle.var_bce2eec7) ? bundle.var_bce2eec7 : 0.25;
        while (true) {
            playfxoncamera(localclientnum, bundle.var_39b6fcfb);
            /#
                minwait = isdefined(bundle.var_472be987) ? bundle.var_472be987 : 0.25;
                maxwait = isdefined(bundle.var_bce2eec7) ? bundle.var_bce2eec7 : 0.25;
            #/
            if (minwait <= maxwait) {
                wait(randomfloatrange(minwait, maxwait));
                continue;
            }
            wait(min(minwait, maxwait));
        }
    }
}

