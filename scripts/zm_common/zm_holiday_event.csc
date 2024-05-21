// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\ai\zombie_eye_glow.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace zm_holiday_event;

// Namespace zm_holiday_event/zm_holiday_event
// Params 0, eflags: 0x5
// Checksum 0xc327070c, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_holiday_event", &preinit, undefined, undefined, undefined);
}

// Namespace zm_holiday_event/zm_holiday_event
// Params 0, eflags: 0x6 linked
// Checksum 0xdd4b0446, Offset: 0x140
// Size: 0xe4
function private preinit() {
    if (is_true(getgametypesetting(#"hash_4751990deae37e66"))) {
        callback::on_localclient_connect(&on_localclient_connect);
        callback::function_675f0963(&function_675f0963);
        clientfield::register("actor", "" + #"hash_477ed992854f5645", 28000, 1, "counter", &function_3b11146f, 0, 0);
        level thread function_ff03ce49();
    }
}

// Namespace zm_holiday_event/zm_holiday_event
// Params 1, eflags: 0x2 linked
// Checksum 0x5efe235f, Offset: 0x230
// Size: 0x354
function function_675f0963(*localclientnum) {
    self endon(#"death");
    if (isdefined(self.archetype) && self.team === "axis") {
        switch (self.archetype) {
        case #"tormentor":
        case #"zombie":
        case #"avogadro":
            self.var_6ffc5953 = array::random([#"hash_3b9bc9fd7d3450e8", #"hash_3b9bccfd7d345601", #"hash_3b9bcbfd7d34544e"]);
            self.var_dee85a7a = "j_head";
            break;
        case #"zombie_dog":
            if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
                self.var_6ffc5953 = #"hash_2d158c5af72b951c";
            } else {
                self.var_6ffc5953 = #"hash_2d158c5af72b951c";
            }
            self.var_dee85a7a = "j_head";
            break;
        case #"raz":
            self.var_6ffc5953 = #"hash_279687d633e3788b";
            self.var_dee85a7a = "j_head";
            self.var_fbfc64db = #"hash_567c329bd17fa23e";
            break;
        case #"mimic":
            self.var_6ffc5953 = #"hash_577e281da25751ae";
            self.var_dee85a7a = "j_head";
            self.var_fbfc64db = #"hash_567c329bd17fa23e";
            break;
        case #"mechz":
            self.var_6ffc5953 = #"hash_36be37cb09a62a29";
            self.var_dee85a7a = "j_head";
            self.var_fbfc64db = #"hash_567c329bd17fa23e";
            break;
        case #"hash_7c0d83ac1e845ac2":
            self.var_6ffc5953 = #"hash_208ba71db2a5843e";
            self.var_dee85a7a = "j_head";
            self.var_fbfc64db = #"hash_567c329bd17fa23e";
            break;
        case #"soa":
            self.var_6ffc5953 = #"hash_73aa050fa52a8f98";
            self.var_dee85a7a = "j_head";
            wait(1.416);
            break;
        }
        if (isdefined(self.var_6ffc5953) && isdefined(self.var_dee85a7a) && !self isattached(self.var_6ffc5953, self.var_dee85a7a)) {
            self attach(self.var_6ffc5953, self.var_dee85a7a);
        }
    }
}

// Namespace zm_holiday_event/zm_holiday_event
// Params 7, eflags: 0x2 linked
// Checksum 0x4f34a8ac, Offset: 0x590
// Size: 0x296
function function_3b11146f(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.var_6ffc5953) && isdefined(self.var_dee85a7a) && self isattached(self.var_6ffc5953, self.var_dee85a7a)) {
        self detach(self.var_6ffc5953, self.var_dee85a7a);
        if (math::cointoss(20) || level flag::get(#"hash_63e59d16907d2aab")) {
            v_hit_pos = self gettagorigin(self.var_dee85a7a);
            v_force = (randomfloatrange(-0.5, 0.5), randomfloatrange(-0.5, 0.5), randomfloatrange(0.75, 1.5));
            createdynentandlaunch(bwastimejump, self.var_6ffc5953, self gettagorigin(self.var_dee85a7a), self gettagangles(self.var_dee85a7a), v_hit_pos, v_force);
        }
        var_297c3a3d = isdefined(self.var_fbfc64db) ? self.var_fbfc64db : #"hash_2990c4a0be6af31e";
        var_ea8a7e41 = self gettagorigin(self.var_dee85a7a);
        if (isdefined(var_ea8a7e41)) {
            playfx(bwastimejump, var_297c3a3d, var_ea8a7e41);
        }
        playsound(bwastimejump, #"hash_15d4351d6a8d884e", self gettagorigin(self.var_dee85a7a));
        self.var_6ffc5953 = undefined;
        self.var_dee85a7a = undefined;
        self.var_fbfc64db = undefined;
    }
}

// Namespace zm_holiday_event/zm_holiday_event
// Params 0, eflags: 0x2 linked
// Checksum 0x159fbd1f, Offset: 0x830
// Size: 0x194
function function_ff03ce49() {
    force_stream_model(#"hash_73aa050fa52a8f98", 4, 1);
    force_stream_model(#"hash_2d158c5af72b951c", 4, 1);
    force_stream_model(#"hash_36be37cb09a62a29", 4, 1);
    force_stream_model(#"hash_577e281da25751ae", 4, 1);
    force_stream_model(#"hash_2d158c5af72b951c", 4, 1);
    force_stream_model(#"hash_279687d633e3788b", 4, 1);
    force_stream_model(#"hash_208ba71db2a5843e", 4, 1);
    force_stream_model(#"hash_3b9bc9fd7d3450e8", 4, 1);
    force_stream_model(#"hash_3b9bccfd7d345601", 4, 1);
    force_stream_model(#"hash_3b9bcbfd7d34544e", 4, 1);
}

// Namespace zm_holiday_event/zm_holiday_event
// Params 3, eflags: 0x6 linked
// Checksum 0x9e618c75, Offset: 0x9d0
// Size: 0x5c
function private force_stream_model(var_618821b1, var_9940b166, mip) {
    for (lod = var_9940b166; lod > 1; lod--) {
        forcestreamxmodel(var_618821b1, lod, mip);
    }
}

// Namespace zm_holiday_event/zm_holiday_event
// Params 1, eflags: 0x6 linked
// Checksum 0x18f5b578, Offset: 0xa38
// Size: 0x2c
function private on_localclient_connect(localclientnum) {
    /#
        level thread function_4ebcb98d(localclientnum);
    #/
}

/#

    // Namespace zm_holiday_event/zm_holiday_event
    // Params 1, eflags: 0x0
    // Checksum 0x23194efa, Offset: 0xa70
    // Size: 0x74
    function function_4ebcb98d(localclientnum) {
        util::init_dvar(#"hash_4cf563ada0725f21", "<unknown string>", &function_5f56213c);
        util::add_devgui(localclientnum, "<unknown string>", "<unknown string>");
    }

    // Namespace zm_holiday_event/zm_holiday_event
    // Params 1, eflags: 0x4
    // Checksum 0xa9e7dcaa, Offset: 0xaf0
    // Size: 0xfc
    function private function_5f56213c(params) {
        if (params.value === "<unknown string>") {
            return;
        }
        switch (params.name) {
        case #"hash_4cf563ada0725f21":
            level flag::toggle(#"hash_63e59d16907d2aab");
            if (level flag::get(#"hash_63e59d16907d2aab")) {
                iprintlnbold("<unknown string>");
            } else {
                iprintlnbold("<unknown string>");
            }
            break;
        }
        setdvar(#"hash_4cf563ada0725f21", "<unknown string>");
    }

#/
