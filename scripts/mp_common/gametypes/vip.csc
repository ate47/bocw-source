// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\mp_common\laststand.csc;

#namespace vip;

// Namespace vip/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x720240e6, Offset: 0x120
// Size: 0x10c
function event_handler[gametype_init] main(*eventstruct) {
    clientfield::function_5b7d846d("hudItems.war.attackingTeam", #"hash_11ea1e04b846f98e", #"attackingteam", 1, 2, "int", undefined, 0, 1);
    clientfield::register("allplayers", "vip_keyline", 1, 1, "int", &function_c527b4a1, 0, 1);
    clientfield::register("toplayer", "vip_ascend_postfx", 1, 1, "int", &function_4cbca584, 0, 0);
    callback::on_localclient_connect(&on_localclient_connect);
}

// Namespace vip/vip
// Params 1, eflags: 0x0
// Checksum 0x286a22b2, Offset: 0x238
// Size: 0x5c
function on_localclient_connect(*localclientnum) {
    setuimodelvalue(createuimodel(function_5f72e972(#"hash_410fe12a68d6e801"), "vipClientNum"), -1);
}

// Namespace vip/vip
// Params 7, eflags: 0x0
// Checksum 0x7a5b0009, Offset: 0x2a0
// Size: 0x1d4
function function_c527b4a1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death", #"disconnect");
    self util::waittill_dobj(fieldname);
    var_5f682f83 = function_9b3f0ed1(fieldname);
    localplayer = function_5c10bd79(fieldname);
    if (bwastimejump) {
        var_c4c5aa27 = getuimodel(function_5f72e972(#"hash_410fe12a68d6e801"), "vipClientNum");
        setuimodelvalue(var_c4c5aa27, self getentitynumber());
        if (self.team == var_5f682f83 && self != localplayer && !self function_d2503806(#"hash_aa2ba3bf66e25d2")) {
            self playrenderoverridebundle(#"hash_aa2ba3bf66e25d2");
        }
        return;
    }
    if (self function_d2503806(#"hash_aa2ba3bf66e25d2")) {
        self stoprenderoverridebundle(#"hash_aa2ba3bf66e25d2");
    }
}

// Namespace vip/vip
// Params 7, eflags: 0x0
// Checksum 0xd1da8bd0, Offset: 0x480
// Size: 0xb4
function function_4cbca584(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death", #"disconnect");
    if (bwastimejump) {
        self postfx::playpostfxbundle(#"hash_19450de64ead5f8e");
        return;
    }
    self postfx::stoppostfxbundle(#"hash_19450de64ead5f8e");
}

