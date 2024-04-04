// Atian COD Tools GSC CW decompiler test
#using script_10f7bf5199723c91;
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_6b71c9befed901f2;
#using script_75c3996cce8959f7;
#using script_71603a58e2da0698;
#using script_30c7fb449869910;
#using script_771f5bff431d8d57;
#using script_42cbbdcd1e160063;
#using script_3314b730521b9666;
#using script_77163d5a569e2071;
#using script_38635d174016f682;
#using script_18910f59cc847b42;
#using scripts\core_common\struct.csc;
#using scripts\core_common\spawning_shared.csc;
#using scripts\core_common\spawner_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_e32bb68;

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 0, eflags: 0x2 linked
// Checksum 0x15932554, Offset: 0x190
// Size: 0x264
function init() {
    clientfield::register("scriptmover", "play_sfx", 1, 8, "int", &play_sfx, 0, 0);
    clientfield::register("allplayers", "play_sfx", 1, 8, "int", &play_sfx, 0, 0);
    clientfield::register("actor", "play_sfx", 1, 8, "int", &play_sfx, 0, 0);
    clientfield::register("vehicle", "play_sfx", 1, 8, "int", &play_sfx, 0, 0);
    clientfield::register("scriptmover", "stop_sfx", 1, 8, "int", &stop_sfx, 0, 0);
    clientfield::register("allplayers", "stop_sfx", 1, 8, "int", &stop_sfx, 0, 0);
    clientfield::register("actor", "stop_sfx", 1, 8, "int", &stop_sfx, 0, 0);
    clientfield::register("vehicle", "stop_sfx", 1, 8, "int", &stop_sfx, 0, 0);
    namespace_9bef0a98::function_fd4107e4();
    function_32d5e898();
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 1, eflags: 0x2 linked
// Checksum 0x81b8d46a, Offset: 0x400
// Size: 0xc
function function_32d5e898(*localclientnum) {
    
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 7, eflags: 0x2 linked
// Checksum 0xacc0928d, Offset: 0x418
// Size: 0x74
function play_sfx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname != 0) {
        return;
    }
    if (bwastimejump != 0) {
        self function_fec92021(fieldname, bwastimejump, 0);
    }
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 7, eflags: 0x2 linked
// Checksum 0xd7bf5db6, Offset: 0x498
// Size: 0x74
function stop_sfx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname != 0) {
        return;
    }
    if (bwastimejump != 0) {
        self function_fec92021(fieldname, bwastimejump, 1);
    }
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 4, eflags: 0x2 linked
// Checksum 0xbe7b0f09, Offset: 0x518
// Size: 0xec
function function_c1e0cc87(name, looping, fadeout = 0, *unused = 0.5) {
    if (!isdefined(level.var_9e132ad0)) {
        level.var_9e132ad0 = [];
    }
    var_318e5b78 = level.var_9e132ad0.size + 1;
    assert(var_318e5b78 < 256, "<unknown string>");
    level.var_9e132ad0[var_318e5b78] = {#name:looping, #looping:fadeout, #fadeout:unused};
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 1, eflags: 0x2 linked
// Checksum 0xf7d84e81, Offset: 0x610
// Size: 0x52
function function_9585130f(type) {
    assert(isdefined(level.var_9e132ad0[type]), "<unknown string>");
    return level.var_9e132ad0[type].name;
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 1, eflags: 0x2 linked
// Checksum 0x6bf7ac6e, Offset: 0x670
// Size: 0x52
function function_4744227e(type) {
    assert(isdefined(level.var_9e132ad0[type]), "<unknown string>");
    return level.var_9e132ad0[type].looping;
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 1, eflags: 0x2 linked
// Checksum 0xa368b3f, Offset: 0x6d0
// Size: 0x52
function function_90ddbde4(type) {
    assert(isdefined(level.var_9e132ad0[type]), "<unknown string>");
    return level.var_9e132ad0[type].fadeout;
}

// Namespace namespace_e32bb68/namespace_e32bb68
// Params 3, eflags: 0x2 linked
// Checksum 0x9b8a0e9b, Offset: 0x730
// Size: 0x1ce
function function_fec92021(localclientnum, type, off) {
    if (localclientnum != 0) {
        return;
    }
    self endon(#"entityshutdown", #"death", #"disconnect");
    while (isdefined(self) && !clienthassnapshot(localclientnum)) {
        waitframe(1);
    }
    self util::waittill_dobj(localclientnum);
    looping = function_4744227e(type);
    alias = function_9585130f(type);
    if (!off) {
        if (!looping) {
            self playsound(localclientnum, alias);
        } else {
            if (isdefined(self.var_d1354b88)) {
                self stoploopsound(self.var_d1354b88, function_90ddbde4(type));
                self.var_d1354b88 = undefined;
            }
            self.var_d1354b88 = self playloopsound(alias);
        }
        return;
    }
    if (looping && isdefined(self.var_d1354b88)) {
        self stoploopsound(self.var_d1354b88, function_90ddbde4(type));
        self.var_d1354b88 = undefined;
    }
}

