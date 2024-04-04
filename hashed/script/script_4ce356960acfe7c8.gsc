// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_81245006;

// Namespace namespace_81245006/namespace_81245006
// Params 0, eflags: 0x5
// Checksum 0x72a98e7b, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_130a49b747d3bf82", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_81245006/namespace_81245006
// Params 0, eflags: 0x6 linked
// Checksum 0xfc9f7f60, Offset: 0x108
// Size: 0x114
function private preinit() {
    if (!sessionmodeiszombiesgame()) {
        return;
    }
    for (i = 0; i < 6; i++) {
        clientfield::register("actor", "" + #"hash_1474b2823ab7e9f3" + i, 1, 1, "int", &function_9c1a4204, 0, 0);
        clientfield::register("actor", "" + #"hash_855297c2add300" + i, 1, 1, "counter", &function_e5efcc39, 0, 0);
    }
    ai::add_ai_spawn_function(&initweakpoints);
}

// Namespace namespace_81245006/namespace_81245006
// Params 7, eflags: 0x2 linked
// Checksum 0x36cf0c0a, Offset: 0x228
// Size: 0x124
function function_9c1a4204(localclientnum, *oldval, newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    self util::waittill_dobj(binitialsnap);
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.var_5ace757d)) {
        return;
    }
    foreach (var_dd54fdb1 in self.var_5ace757d) {
        if (var_dd54fdb1.var_ee8794bf == bwastimejump) {
            function_6c64ebd3(binitialsnap, var_dd54fdb1, fieldname == 1 ? 1 : 2);
            break;
        }
    }
}

// Namespace namespace_81245006/namespace_81245006
// Params 7, eflags: 0x2 linked
// Checksum 0x5deab91f, Offset: 0x358
// Size: 0x11c
function function_e5efcc39(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.var_5ace757d)) {
        return;
    }
    foreach (var_dd54fdb1 in self.var_5ace757d) {
        if (var_dd54fdb1.var_98634dc5 == bwastimejump) {
            function_239993de(fieldname, var_dd54fdb1.hitfx, self, var_dd54fdb1.var_6fb74226);
            break;
        }
    }
}

// Namespace namespace_81245006/namespace_81245006
// Params 0, eflags: 0x2 linked
// Checksum 0x1b74115c, Offset: 0x480
// Size: 0x23c
function initweakpoints() {
    entity = self;
    if (!isdefined(self.aitype)) {
        return;
    }
    var_97e1b97d = function_768b9c03(self.aitype);
    if (!isdefined(var_97e1b97d)) {
        return;
    }
    var_5ace757d = getscriptbundle(var_97e1b97d);
    if (!isdefined(var_5ace757d) || !isdefined(var_5ace757d.weakpoints) || !isdefined(var_5ace757d.var_8009bee)) {
        return;
    }
    entity.var_5ace757d = [];
    clientfield_index = 0;
    foreach (var_8cc382e6 in var_5ace757d.var_8009bee) {
        if (!isdefined(var_8cc382e6.var_4aa216c9) || !isdefined(var_8cc382e6.weakpoint)) {
            continue;
        }
        entity.var_5ace757d[entity.var_5ace757d.size] = {#var_ee8794bf:"" + #"hash_1474b2823ab7e9f3" + clientfield_index, #var_98634dc5:"" + #"hash_855297c2add300" + clientfield_index, #hitfx:var_8cc382e6.var_4aa216c9, #var_6fb74226:var_8cc382e6.fxtag, #var_47b606f3:function_aed4cd9e(var_8cc382e6), #currstate:2};
        clientfield_index++;
    }
}

// Namespace namespace_81245006/namespace_81245006
// Params 1, eflags: 0x2 linked
// Checksum 0x17b75b5f, Offset: 0x6c8
// Size: 0xa2
function function_aed4cd9e(var_dd54fdb1) {
    var_47b606f3 = [];
    foreach (var_91e65f92 in var_dd54fdb1.var_47b606f3) {
        var_47b606f3[var_47b606f3.size] = var_91e65f92.tag;
    }
    return var_47b606f3;
}

// Namespace namespace_81245006/namespace_81245006
// Params 3, eflags: 0x2 linked
// Checksum 0x128dec9d, Offset: 0x778
// Size: 0x150
function function_6c64ebd3(localclientnum, var_dd54fdb1, state) {
    var_dd54fdb1.currstate = state;
    if (var_dd54fdb1.currstate == 1) {
        foreach (tag in var_dd54fdb1.var_47b606f3) {
            self function_f1f85b1d(localclientnum, tag, 0);
        }
        return;
    }
    foreach (tag in var_dd54fdb1.var_47b606f3) {
        self function_f1f85b1d(localclientnum, tag, 1);
    }
}

