#using script_1cd690a97dfca36e;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\fx_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_utility;

#namespace namespace_9bf84a22;

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 0, eflags: 0x5
// Checksum 0x3f60dedf, Offset: 0x1a0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_6d911609eb131d76", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 0, eflags: 0x4
// Checksum 0x2a9c8bd, Offset: 0x1f8
// Size: 0x34
function private _preload() {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    function_bc948200();
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 0, eflags: 0x4
// Checksum 0x7e07965d, Offset: 0x238
// Size: 0x34
function private function_fa076c68() {
    vehicle::add_vehicletype_callback(#"hash_1d28a638b43b4117", &function_d7fc17ab);
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 0, eflags: 0x4
// Checksum 0x5056bfde, Offset: 0x278
// Size: 0xdc
function private function_bc948200() {
    clientfield::register("scriptmover", "clf_cargoplane_client_register", 1, 1, "int", &function_a9581e24, 0, 0);
    clientfield::register("scriptmover", "clf_cargoplane_landing_lights", 1, 1, "int", &function_5caef633, 0, 0);
    clientfield::register("scriptmover", "clf_cargoplane_nav_lights", 1, 1, "int", &function_c4178945, 0, 0);
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 7, eflags: 0x4
// Checksum 0x44631f65, Offset: 0x360
// Size: 0x6a
function private function_a9581e24(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    level._fx.cargo_plane = self;
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 7, eflags: 0x4
// Checksum 0xc9f2aae3, Offset: 0x3d8
// Size: 0xc6
function private function_5caef633(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("<dev string:x38>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_9a0e9c31(localclientnum);
        return;
    }
    self notify(#"hash_10d9c330299e2a6d");
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 1, eflags: 0x4
// Checksum 0x1e13fdf7, Offset: 0x4a8
// Size: 0x64
function private function_9a0e9c31(localclientnum) {
    self notify(#"hash_16331609e21e3a86");
    var_3f79908d = playtagfxset(localclientnum, "fx9_cargo_plane_landing_lights", self);
    self thread function_b053bd08(localclientnum, var_3f79908d);
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 2, eflags: 0x4
// Checksum 0x241940a2, Offset: 0x518
// Size: 0xd0
function private function_b053bd08(localclientnum, var_3f79908d) {
    self waittill(#"death", #"hash_16331609e21e3a86", #"hash_10d9c330299e2a6d");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 7, eflags: 0x4
// Checksum 0x21cfce64, Offset: 0x5f0
// Size: 0xc6
function private function_c4178945(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    /#
        function_907070de("<dev string:x59>", localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    #/
    if (newval) {
        self function_54105299(localclientnum);
        return;
    }
    self notify(#"hash_5bd6457a6c206a17");
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 1, eflags: 0x4
// Checksum 0x74d3a877, Offset: 0x6c0
// Size: 0x64
function private function_54105299(localclientnum) {
    self notify(#"hash_8d07a9f3af1838");
    var_3f79908d = playtagfxset(localclientnum, "fx9_cargo_plane_nav_lights", self);
    self thread function_fa38e4db(localclientnum, var_3f79908d);
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 2, eflags: 0x4
// Checksum 0x712ba016, Offset: 0x730
// Size: 0xd0
function private function_fa38e4db(localclientnum, var_3f79908d) {
    self waittill(#"death", #"hash_8d07a9f3af1838", #"hash_5bd6457a6c206a17");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 1, eflags: 0x4
// Checksum 0x73eb092, Offset: 0x808
// Size: 0x94
function private function_d7fc17ab(localclientnum) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    self util::waittill_dobj(localclientnum);
    level._fx.var_a736d041 = self;
    var_3f79908d = playtagfxset(localclientnum, "fx9_cargo_plane_nav_lights", self);
    self thread function_5445f621(localclientnum, var_3f79908d);
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 2, eflags: 0x4
// Checksum 0x687f63ec, Offset: 0x8a8
// Size: 0xb0
function private function_5445f621(localclientnum, var_3f79908d) {
    self waittill(#"death");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 7, eflags: 0x4
// Checksum 0x1f978f73, Offset: 0x960
// Size: 0xc4
function private function_bb753058(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!function_65b9eb0f(fieldname)) {
        timer_model = function_c8b7588d(fieldname);
        duration_msec = bwastimejump * 1000;
        setuimodelvalue(timer_model, getservertime(fieldname, 1) + duration_msec);
    }
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 1, eflags: 0x4
// Checksum 0xe8aaa314, Offset: 0xa30
// Size: 0x44
function private on_localplayer_connect(localclientnum) {
    timer_model = function_c8b7588d(localclientnum);
    setuimodelvalue(timer_model, 0);
}

// Namespace namespace_9bf84a22/namespace_9bf84a22
// Params 1, eflags: 0x4
// Checksum 0x4ba56354, Offset: 0xa80
// Size: 0x42
function private function_c8b7588d(localclientnum) {
    return getuimodel(function_1df4c3b0(localclientnum, #"warzone_global"), "srProtoTimer");
}

/#

    // Namespace namespace_9bf84a22/namespace_9bf84a22
    // Params 8, eflags: 0x4
    // Checksum 0x141463f8, Offset: 0xad0
    // Size: 0xd4
    function private function_907070de(var_55ee7def, localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
        println("<dev string:x76>" + var_55ee7def + "<dev string:x86>" + localclientnum + "<dev string:x9d>" + oldval + "<dev string:xab>" + newval + "<dev string:xb9>" + bnewent + "<dev string:xc8>" + binitialsnap + "<dev string:xdc>" + fieldname + "<dev string:xed>" + bwastimejump);
    }

#/
