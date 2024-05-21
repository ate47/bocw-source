// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using script_64111d5c475f54c2;

#namespace zm_silver_util;

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0xee435a53, Offset: 0x100
// Size: 0x34
function init() {
    level.zm_silver_hud = zm_silver_hud::register();
    /#
        level thread function_37597f29();
    #/
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x0
// Checksum 0x92cedfe3, Offset: 0x140
// Size: 0x90
function function_30fe7a2() {
    foreach (player in getplayers()) {
        player thread function_2c918ed();
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0xcf20f3a, Offset: 0x1d8
// Size: 0xa0
function function_8fbe908e() {
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        player thread function_b9adea4e();
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0xd5fa2e13, Offset: 0x280
// Size: 0x44
function function_1aeb4889() {
    if (!level.zm_silver_hud zm_silver_hud::is_open(self)) {
        level.zm_silver_hud zm_silver_hud::open(self);
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0xcf3a14dd, Offset: 0x2d0
// Size: 0x44
function close_hud() {
    if (level.zm_silver_hud zm_silver_hud::is_open(self)) {
        level.zm_silver_hud zm_silver_hud::close(self);
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 1, eflags: 0x2 linked
// Checksum 0x8da33ea5, Offset: 0x320
// Size: 0x44
function function_12995a01(status) {
    self function_1aeb4889();
    level.zm_silver_hud zm_silver_hud::function_9efecfd1(self, status);
}

// Namespace zm_silver_util/zm_silver_util
// Params 2, eflags: 0x2 linked
// Checksum 0x70dcc64f, Offset: 0x370
// Size: 0x5c
function function_2c918ed(*n_display_time, *str_waittill) {
    self endon(#"death");
    self function_1aeb4889();
    level.zm_silver_hud zm_silver_hud::function_39ee9107(self, 1);
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0x19058563, Offset: 0x3d8
// Size: 0x206
function function_b9adea4e() {
    self notify("58e14372dca4219");
    self endon("58e14372dca4219");
    self endon(#"death");
    self function_1aeb4889();
    var_fc700937 = 0;
    var_573efcf5 = 0;
    while (true) {
        if (self flag::get(#"hash_7ef7aab6a305d0b0")) {
            self function_12995a01(3);
            if (!var_573efcf5) {
                self playsoundtoplayer(#"hash_361ed2e67423ebbb", self);
                self thread zm_vo::function_d6f8bbd9(#"hash_5fe32f7cc1d6606e", undefined, self);
                var_573efcf5 = 1;
            }
        } else if (self flag::get(#"hash_1154242c9b1e4518")) {
            self function_12995a01(2);
            if (!var_fc700937) {
                self playsoundtoplayer(#"hash_361ed1e67423ea08", self);
                self thread zm_vo::function_d6f8bbd9(#"hash_2356723908acaf7b", undefined, self);
                var_fc700937 = 1;
            }
        } else {
            self playsoundtoplayer(#"hash_361ed4e67423ef21", self);
            self function_12995a01(1);
            var_fc700937 = 0;
            var_573efcf5 = 0;
        }
        self waittill(#"hash_1154242c9b1e4518", #"hash_7ef7aab6a305d0b0");
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0x5f4dbdcd, Offset: 0x5e8
// Size: 0x78
function function_3be9e71a() {
    var_9463599a = spawncollision(#"hash_1d1c56a494aa468e", "collider", self.origin + (0, 0, 50), self.angles);
    var_9463599a setscale(2);
    return var_9463599a;
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x6 linked
// Checksum 0x253a7162, Offset: 0x668
// Size: 0x30
function private function_cd16733() {
    if (isdefined(self.mdl_gameobject)) {
        mdl_gameobject = self.mdl_gameobject;
    } else {
        mdl_gameobject = self;
    }
    return mdl_gameobject;
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0x44eae5a1, Offset: 0x6a0
// Size: 0x4c
function function_ac49076a() {
    mdl_gameobject = self function_cd16733();
    if (isdefined(mdl_gameobject)) {
        mdl_gameobject gameobjects::enable_object(1, 1);
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0x207e99da, Offset: 0x6f8
// Size: 0x4c
function function_cc15b58a() {
    mdl_gameobject = self function_cd16733();
    if (isdefined(mdl_gameobject)) {
        mdl_gameobject gameobjects::disable_object(1, 1);
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0x86badeac, Offset: 0x750
// Size: 0x4c
function function_1194b9bc() {
    mdl_gameobject = self function_cd16733();
    if (isdefined(mdl_gameobject)) {
        mdl_gameobject thread gameobjects::destroy_object(1, 1);
    }
}

// Namespace zm_silver_util/zm_silver_util
// Params 1, eflags: 0x2 linked
// Checksum 0x48ce2f1a, Offset: 0x7a8
// Size: 0x7c
function function_e6830825(player) {
    if (isplayer(player)) {
        player function_66337ef1(#"hash_a8e842ba4e72dc5");
        self.trigger setinvisibletoplayer(player);
    }
    self playsound(#"hash_8b8a9471179166a");
}

// Namespace zm_silver_util/zm_silver_util
// Params 3, eflags: 0x2 linked
// Checksum 0x15f4c8ab, Offset: 0x830
// Size: 0x104
function function_834fd6bc(*team, player, success) {
    if (isplayer(player)) {
        player stoprumble(#"hash_a8e842ba4e72dc5");
        self.trigger setvisibletoplayer(player);
        if (is_true(success)) {
            player function_bc82f900(#"hash_44eeee909d5a03fd");
        }
    }
    if (is_true(success)) {
        self playsound(#"hash_6fefa7ed76b6836f");
        return;
    }
    self playsound(#"hash_454f385830b89f");
}

// Namespace zm_silver_util/zm_silver_util
// Params 0, eflags: 0x2 linked
// Checksum 0xce02dfcf, Offset: 0x940
// Size: 0xac
function function_4cc5fca6() {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_7b3ada6e5b1cf81e", 1);
    array::wait_till(function_a1ef346b(), "fasttravel_over", 15);
    level clientfield::set("" + #"hash_7b3ada6e5b1cf81e", 0);
}

// Namespace zm_silver_util/zm_silver_util
// Params 1, eflags: 0x2 linked
// Checksum 0xc2e4c59e, Offset: 0x9f8
// Size: 0x58
function function_dd9482b7(*e_player) {
    if (level flag::get(#"hash_3e765c26047c9f54") || level flag::get("in_exfil_event")) {
        return false;
    }
    return true;
}

/#

    // Namespace zm_silver_util/zm_silver_util
    // Params 0, eflags: 0x0
    // Checksum 0x6b9bc8be, Offset: 0xa58
    // Size: 0xac
    function function_37597f29() {
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        level flag::wait_till("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&function_72c803d3);
    }

    // Namespace zm_silver_util/zm_silver_util
    // Params 0, eflags: 0x0
    // Checksum 0xc7d5a04f, Offset: 0xb10
    // Size: 0xbc
    function function_14a89247() {
        foreach (player in function_a1ef346b()) {
            level.zm_silver_hud zm_silver_hud::function_39ee9107(player, 0);
        }
        waitframe(1);
        function_30fe7a2();
    }

    // Namespace zm_silver_util/zm_silver_util
    // Params 0, eflags: 0x0
    // Checksum 0x9816ca7c, Offset: 0xbd8
    // Size: 0x1c
    function function_701cd5cf() {
        function_8fbe908e();
    }

    // Namespace zm_silver_util/zm_silver_util
    // Params 2, eflags: 0x0
    // Checksum 0x84753213, Offset: 0xc00
    // Size: 0x150
    function function_df4b3116(status, n_time) {
        if (!isdefined(n_time)) {
            n_time = 0;
        }
        a_players = function_a1ef346b();
        if (n_time) {
            foreach (player in a_players) {
                player thread flag::set_for_time(n_time, status);
            }
            return;
        }
        foreach (player in a_players) {
            player thread flag::toggle(status);
        }
    }

    // Namespace zm_silver_util/zm_silver_util
    // Params 1, eflags: 0x0
    // Checksum 0x8a05f697, Offset: 0xd58
    // Size: 0xf2
    function function_72c803d3(cmd) {
        switch (cmd) {
        case #"hash_bfe1136366775c6":
            function_14a89247();
            break;
        case #"hash_385b6dd43dd64f63":
            function_701cd5cf();
            break;
        case #"hash_61aa29debb64fda1":
            function_df4b3116(#"hash_1154242c9b1e4518");
            break;
        case #"hash_61aa28debb64fbee":
            function_df4b3116(#"hash_7ef7aab6a305d0b0", 2);
            break;
        default:
            break;
        }
    }

#/
