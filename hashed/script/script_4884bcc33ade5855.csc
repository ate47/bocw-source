#using script_79917113c7593edd;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\renderoverridebundle;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace ac130;

// Namespace ac130/ac130
// Params 0, eflags: 0x5
// Checksum 0x2036efc4, Offset: 0x120
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"ac130", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace ac130/ac130
// Params 0, eflags: 0x4
// Checksum 0xe0d75a33, Offset: 0x170
// Size: 0x5c
function private preinit() {
    init_shared();
    clientfield::register("toplayer", "inAC130", 1, 1, "int", &function_555656fe, 0, 1);
}

// Namespace ac130/ac130
// Params 2, eflags: 0x4
// Checksum 0xb694ccd0, Offset: 0x1d8
// Size: 0x52
function private function_35aed314(localplayerteam, otherteam) {
    if (!isdefined(localplayerteam) || !isdefined(otherteam)) {
        return false;
    }
    if (otherteam == #"neutral") {
        return false;
    }
    return localplayerteam != otherteam;
}

// Namespace ac130/ac130
// Params 1, eflags: 0x4
// Checksum 0x8617da45, Offset: 0x238
// Size: 0x84
function private function_7b91bbdd(localclientnum) {
    vehicle = self;
    vehicle endon(#"death", #"hash_67080015640c605d");
    vehicle waittill(#"vehicle_death_fx");
    vehicle renderoverridebundle::function_f4eab437(localclientnum, 0, #"hash_2c6fce4151016478");
}

// Namespace ac130/ac130
// Params 4, eflags: 0x4
// Checksum 0x8f021626, Offset: 0x2c8
// Size: 0x140
function private function_7415e9d3(localclientnum, var_634b8583, entitytype, var_e186bbd8) {
    entarray = getentarraybytype(localclientnum, entitytype);
    foreach (ent in entarray) {
        if (function_35aed314(var_634b8583, ent.team)) {
            ent renderoverridebundle::function_f4eab437(localclientnum, var_e186bbd8, #"hash_2c6fce4151016478");
            if (entitytype == 12) {
                ent notify(#"hash_67080015640c605d");
                if (var_e186bbd8) {
                    ent thread function_7b91bbdd(localclientnum);
                }
            }
        }
    }
}

// Namespace ac130/ac130
// Params 1, eflags: 0x4
// Checksum 0x63dbc68c, Offset: 0x410
// Size: 0xb4
function private function_e6d3dbbc(localclientnum) {
    entity = self;
    localplayer = function_5c10bd79(localclientnum);
    if (function_35aed314(localplayer.team, entity.team)) {
        entity renderoverridebundle::function_f4eab437(localclientnum, 1, #"hash_2c6fce4151016478");
        if (entity.type == "vehicle") {
            entity thread function_7b91bbdd(localclientnum);
        }
    }
}

// Namespace ac130/ac130
// Params 7, eflags: 0x4
// Checksum 0x71c9f7c6, Offset: 0x4d0
// Size: 0x26c
function private function_555656fe(localclientnum, *oldval, newval, *bnewent, binitialsnap, *fieldname, *bwastimejump) {
    bundle = getscriptbundle("killstreak_ac130" + "_cp");
    postfxbundle = bundle.("ksVehiclePostEffectBun");
    if (!isdefined(postfxbundle)) {
        return;
    }
    self util::waittill_dobj(binitialsnap);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump && self postfx::function_556665f2(postfxbundle)) {
        self codestoppostfxbundle(postfxbundle);
    }
    if (fieldname) {
        if (self postfx::function_556665f2(postfxbundle) == 0) {
            self codeplaypostfxbundle(postfxbundle);
            function_7415e9d3(binitialsnap, self.team, 15, 1);
            callback::function_675f0963(&function_e6d3dbbc);
            function_7415e9d3(binitialsnap, self.team, 12, 1);
            callback::on_vehicle_spawned(&function_e6d3dbbc);
        }
        return;
    }
    if (self postfx::function_556665f2(postfxbundle)) {
        self codestoppostfxbundle(postfxbundle);
        function_7415e9d3(binitialsnap, self.team, 15, 0);
        callback::function_ce9bb4ec(&function_e6d3dbbc);
        function_7415e9d3(binitialsnap, self.team, 12, 0);
        callback::remove_on_vehicle_spawned(&function_e6d3dbbc);
    }
}

