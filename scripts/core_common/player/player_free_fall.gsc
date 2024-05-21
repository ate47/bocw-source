// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\player\player_insertion.gsc;
#using script_1d29de500c266470;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_free_fall;

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x5
// Checksum 0x483ca67, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_free_fall", &preinit, undefined, undefined, undefined);
}

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x6 linked
// Checksum 0xb1a7dd1d, Offset: 0x158
// Size: 0x134
function private preinit() {
    level.var_7abaaef1 = getdvarint(#"player_freefall", 0);
    if (is_true(level.var_7abaaef1)) {
        function_7c19fac2();
        return;
    }
    callback::add_callback(#"debug_movement", &function_a7e644f6);
    callback::add_callback(#"freefall", &function_a0950b54);
    callback::add_callback(#"parachute", &function_c75bd5cb);
    callback::add_callback(#"hash_171443902e2a22ee", &function_f99c2453);
    /#
        level thread function_1fc427dc();
    #/
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x2 linked
// Checksum 0xf0b2454c, Offset: 0x298
// Size: 0x94
function function_a0950b54(*var_23c2e47f) {
    self val::set(#"player_free_fall", "show_weapon_hud", 0);
    self callback::function_d8abfc3d(#"death", &function_c76a70ab);
    self callback::function_d8abfc3d(#"on_player_laststand", &function_18e58cf4);
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x2 linked
// Checksum 0x7e25d15e, Offset: 0x338
// Size: 0x34
function function_c75bd5cb(*var_23c2e47f) {
    self val::set(#"player_free_fall", "show_weapon_hud", 0);
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x2 linked
// Checksum 0x363cc5ab, Offset: 0x378
// Size: 0x94
function function_f99c2453(*var_23c2e47f) {
    self val::reset(#"player_free_fall", "show_weapon_hud");
    self callback::function_52ac9652(#"death", &function_c76a70ab);
    self callback::function_52ac9652(#"on_player_laststand", &function_18e58cf4);
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x2 linked
// Checksum 0x7ff3573c, Offset: 0x418
// Size: 0x94
function function_c76a70ab(*var_23c2e47f) {
    self val::reset(#"player_free_fall", "show_weapon_hud");
    self callback::function_52ac9652(#"death", &function_c76a70ab);
    self callback::function_52ac9652(#"on_player_laststand", &function_18e58cf4);
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x2 linked
// Checksum 0x63360356, Offset: 0x4b8
// Size: 0x94
function function_18e58cf4(*var_23c2e47f) {
    self val::reset(#"player_free_fall", "show_weapon_hud");
    self callback::function_52ac9652(#"death", &function_c76a70ab);
    self callback::function_52ac9652(#"on_player_laststand", &function_18e58cf4);
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x0
// Checksum 0xf7cf23e0, Offset: 0x558
// Size: 0xc4
function allow_player_basejumping(bool) {
    if (!isdefined(self.enabledbasejumping)) {
        self.enabledbasejumping = 0;
    }
    if (bool) {
        self.enabledbasejumping++;
        self function_8b8a321a(1);
        self function_8a945c0e(1);
        return;
    }
    self.enabledbasejumping--;
    if (self.enabledbasejumping < 0) {
        self.enabledbasejumping = 0;
    }
    if (!self.enabledbasejumping) {
        self function_8b8a321a(0);
        self function_8a945c0e(0);
    }
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x2 linked
// Checksum 0x92beb3d2, Offset: 0x628
// Size: 0xcc
function function_2979b1be(waitsec) {
    self endon(#"death", #"disconnect");
    if (isdefined(waitsec) && waitsec > 0) {
        self function_8a945c0e(0);
        self function_8b8a321a(0);
        wait(waitsec);
    }
    if (isdefined(self)) {
        if (self player_insertion::function_b9370594()) {
            return;
        }
        self function_8a945c0e(1);
        self function_8b8a321a(1);
    }
}

// Namespace player_free_fall/player_free_fall
// Params 2, eflags: 0x2 linked
// Checksum 0x6feb77b0, Offset: 0x700
// Size: 0xb4
function function_7705a7fc(fall_time, velocity) {
    if (is_true(level.var_7abaaef1)) {
        self function_2ffa8aaf(1, velocity, 1);
        return;
    }
    self function_8cf53a19();
    if (isdefined(velocity)) {
        self setvelocity(velocity);
    }
    self function_b02c52b();
    wait(fall_time);
    self thread function_a1fa2219();
}

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x7c0
// Size: 0x4
function parachutemidairdeathwatcher() {
    
}

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x2 linked
// Checksum 0x273fb4d7, Offset: 0x7d0
// Size: 0xe4
function function_a1fa2219() {
    self endon(#"death", #"disconnect");
    self thread function_2979b1be(3);
    self waittill(#"skydive_deployparachute");
    self function_8a945c0e(0);
    self notify(#"hash_6296a62cf6a8a8c4");
    if (!is_true(level.dontshootwhileparachuting) && isdefined(level.parachuteopencb)) {
        self [[ level.parachuteopencb ]]();
    }
    self thread function_156d91ef();
}

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x2 linked
// Checksum 0x9e557408, Offset: 0x8c0
// Size: 0x148
function function_156d91ef() {
    self endon(#"death", #"disconnect");
    if (getdvarint(#"scr_parachute_camera_transition_mode", 1) == 1) {
        self function_41170420(0);
    }
    self waittill(#"hash_171443902e2a22ee");
    waitframe(1);
    if (isdefined(level.parachuterestoreweaponscb)) {
        self [[ level.parachuterestoreweaponscb ]]();
    }
    if (is_true(level.dontshootwhileparachuting) && isdefined(level.parachutecompletecb)) {
        self [[ level.parachutecompletecb ]]();
    }
    self notify(#"hash_56c07a749ce0f359");
    self function_41170420(0);
    self notify(#"hash_4dbf3de1e862e186");
    if (isdefined(level.onfirstlandcallback)) {
        self [[ level.onfirstlandcallback ]](self);
    }
}

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x0
// Checksum 0x2706c613, Offset: 0xa10
// Size: 0x4c
function function_5352af94() {
    player = self;
    player function_8cf53a19();
    if (isdefined(player.parachute)) {
        player.parachute delete();
    }
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x6 linked
// Checksum 0x2b85cad9, Offset: 0xa68
// Size: 0xec
function private function_a7e644f6(eventstruct) {
    if (!eventstruct.debug_movement) {
        if (getdvarint(#"hash_bfa71d08f383550", 0)) {
            speed = 17.6 * getdvarint(#"hash_3d4ce3a554eac78", 100);
            velocity = anglestoforward(self getplayerangles()) * speed;
            self function_7705a7fc(getdvarint(#"hash_bfa71d08f383550", 0) == 1, velocity);
        }
    }
}

/#

    // Namespace player_free_fall/player_free_fall
    // Params 0, eflags: 0x4
    // Checksum 0x2ee37cd7, Offset: 0xb60
    // Size: 0x44
    function private function_1fc427dc() {
        waitframe(1);
        waitframe(1);
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    }

#/

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x6 linked
// Checksum 0x57e593eb, Offset: 0xbb0
// Size: 0xac
function private function_7c19fac2() {
    callback::add_callback(#"freefall", &function_6a663396);
    callback::add_callback(#"parachute", &function_bd421742);
    callback::add_callback(#"debug_movement", &function_a7e644f6);
    /#
        level thread function_1fc427dc();
    #/
}

// Namespace player_free_fall/player_free_fall
// Params 0, eflags: 0x2 linked
// Checksum 0x4350f7ce, Offset: 0xc68
// Size: 0x52
function function_d2a1520c() {
    wingsuit = self namespace_eb06e24d::get_wingsuit();
    if (self util::is_female()) {
        return wingsuit.var_5677bd3d;
    }
    return wingsuit.var_94166112;
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x0
// Checksum 0x102c9cff, Offset: 0xcc8
// Size: 0x8c
function function_27f21242(freefall) {
    model = function_d2a1520c();
    if (freefall) {
        if (!self isattached(model)) {
            self attach(model);
        }
        return;
    }
    if (self isattached(model)) {
        self detach(model);
    }
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x6 linked
// Checksum 0xff24061c, Offset: 0xd60
// Size: 0x184
function private function_6a663396(eventstruct) {
    if (eventstruct.freefall) {
        if (!isdefined(eventstruct.var_695a7111) || eventstruct.var_695a7111) {
            parachute = self namespace_eb06e24d::get_parachute();
            parachute_weapon = parachute.("parachute");
            if (isdefined(parachute_weapon)) {
                if (!self hasweapon(parachute_weapon)) {
                    self giveweapon(parachute_weapon);
                }
                self switchtoweaponimmediate(parachute_weapon);
                self thread function_b6e83203(0.5);
            }
        }
        return;
    }
    if (!self function_9a0edd92()) {
        parachute = self namespace_eb06e24d::get_parachute();
        parachute_weapon = parachute.("parachute");
        if (isdefined(parachute_weapon)) {
            if (self hasweapon(parachute_weapon)) {
                self takeweapon(parachute_weapon);
            }
        }
    }
    self setclientuivisibilityflag("weapon_hud_visible", 1);
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x6 linked
// Checksum 0xa77cf5b2, Offset: 0xef0
// Size: 0x3a
function private function_6aac1790(var_dbb94a) {
    if (isdefined(var_dbb94a) && !self isattached(var_dbb94a, "tag_weapon_right")) {
    }
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x6 linked
// Checksum 0xa7d4d7ed, Offset: 0xf38
// Size: 0x8c
function private function_b6e83203(delay) {
    if (isdefined(delay)) {
        self endon(#"death", #"disconnect");
        wait(delay);
    }
    parachute = self namespace_eb06e24d::get_parachute();
    var_dbb94a = parachute.("parachuteLit");
    function_6aac1790(var_dbb94a);
}

// Namespace player_free_fall/player_free_fall
// Params 1, eflags: 0x6 linked
// Checksum 0xb2a921fe, Offset: 0xfd0
// Size: 0xcc
function private function_bd421742(eventstruct) {
    if (eventstruct.parachute) {
        self function_b6e83203();
        return;
    }
    parachute = self namespace_eb06e24d::get_parachute();
    parachute_weapon = parachute.("parachute");
    var_dbb94a = parachute.("parachuteLit");
    if (isdefined(parachute_weapon)) {
        self takeweapon(parachute_weapon);
    }
    if (isdefined(var_dbb94a)) {
    }
    self setclientuivisibilityflag("weapon_hud_visible", 1);
}

/#

    // Namespace player_free_fall/player_free_fall
    // Params 0, eflags: 0x4
    // Checksum 0x77a4ec58, Offset: 0x10a8
    // Size: 0x164
    function private function_a2b7e8a1() {
        mapname = util::get_map_name();
        waitframe(1);
        waitframe(1);
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        waitframe(1);
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
    }

#/
