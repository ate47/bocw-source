// Atian COD Tools GSC CW decompiler test
#using script_6155d71e1c9a57eb;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using script_19367cd29a4485db;
#using script_3411bb48d41bd3b;
#using script_5b95daf45672308f;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_a2a34bbc;

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x5
// Checksum 0x674781e3, Offset: 0x1c8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_1613437b4759eb4a", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0x6b7a92b1, Offset: 0x218
// Size: 0xfc
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_759fe9a9853a9b36")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    level.var_3c3b40c7 = sr_orda_health_bar::register();
    spawner::add_archetype_spawn_function(#"hulk", &function_43cf284);
    content_manager::register_script(#"hash_525786f66bf65b72", &function_6ef31de9, 1);
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 1, eflags: 0x6 linked
// Checksum 0xced03c17, Offset: 0x320
// Size: 0x1d4
function private function_6ef31de9(s_instance) {
    s_instance endon(#"cleanup");
    s_instance flag::clear("cleanup");
    level flag::wait_till(#"hash_34f9aa6f075e21c0");
    var_c088f113 = s_instance.contentgroups[#"trigger_spawn"][0];
    var_7af625c6 = s_instance.contentgroups[#"hash_11421144b772dcdf"][0];
    s_instance.n_obj_id = zm_utility::function_f5a222a8(#"hash_71d4dbe7c877d7ae", var_7af625c6.origin);
    level callback::add_callback(#"hash_594217387367ebb4", &function_b3a6e0bc, s_instance);
    while (!isdefined(s_instance.ai_hulk)) {
        s_instance.ai_hulk = namespace_85745671::function_9d3ad056(#"hash_21f3d5d40d72e08d", var_7af625c6.origin, var_7af625c6.angles, "world_event_orda");
        wait(0.1);
    }
    if (isdefined(s_instance.ai_hulk)) {
        s_instance.ai_hulk.var_a950813d = 1;
        s_instance.ai_hulk.instance = s_instance;
        if (isdefined(s_instance.n_obj_id)) {
            objective_onentity(s_instance.n_obj_id, s_instance.ai_hulk);
        }
    }
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 1, eflags: 0x2 linked
// Checksum 0x712d4178, Offset: 0x500
// Size: 0x19e
function function_b3a6e0bc(*eventstruct) {
    if (isdefined(self.ai_hulk) && self.ai_hulk.current_state.name !== #"chase" && isdefined(level.var_fdcaf3a6) && distance2dsquared(self.ai_hulk.origin, level.var_fdcaf3a6.origin) < sqr(6000)) {
        self.ai_hulk.var_98f1f37c = 1;
        self.ai_hulk.allowdeath = 1;
        self.ai_hulk callback::callback(#"hash_10ab46b52df7967a");
        var_c39323b5 = 1;
    }
    if (is_true(var_c39323b5) || !isdefined(self.ai_hulk) || !isalive(self.ai_hulk)) {
        if (isdefined(self.n_obj_id)) {
            objective_clearentity(self.n_obj_id);
            zm_utility::function_bc5a54a8(self.n_obj_id);
            self.n_obj_id = undefined;
        }
    }
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0x2e27b792, Offset: 0x6a8
// Size: 0x23c
function function_43cf284() {
    self endon(#"death");
    self callback::function_d8abfc3d(#"death", &function_4d7e58e3);
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_a1b85021);
    self callback::function_d8abfc3d(#"on_ai_damage", &function_558990e3);
    level flag::wait_till("objective_locked");
    if (level.contentmanager.activeobjective.content_script_name === #"holdout") {
        level waittill(#"survival_holdout_dest");
        self function_8bed563f();
        self val::set(#"hash_6b8a1b0c7fbf3df1", "ignoreall", 1);
        self val::set(#"hash_6b8a1b0c7fbf3df1", "ignoreme", 1);
        self val::set(#"hash_6b8a1b0c7fbf3df1", "takedamage", 0);
        self hide();
        if (isdefined(level.contentmanager.activeobjective)) {
            level.contentmanager.activeobjective waittill(#"return");
        }
        self val::reset_all(#"hash_6b8a1b0c7fbf3df1");
        self show();
    }
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0x737b36a7, Offset: 0x8f0
// Size: 0x3c
function function_a1b85021() {
    if (self.current_state.name === #"chase") {
        self thread function_cfa54bac();
    }
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 1, eflags: 0x2 linked
// Checksum 0xefcc0428, Offset: 0x938
// Size: 0x24
function function_558990e3(*s_params) {
    self thread function_cfa54bac();
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0xc26a3f48, Offset: 0x968
// Size: 0x18a
function function_6dcb2e93() {
    self endon(#"disconnect");
    self waittill(#"spawned_player");
    if (!isdefined(level.var_3c3b40c7)) {
        return;
    }
    foreach (other in getplayers()) {
        if (level.var_3c3b40c7 sr_orda_health_bar::is_open(other)) {
            var_3acd97a5 = arraygetclosest(other.origin, getaiarchetypearray(#"hulk"));
            if (!isdefined(var_3acd97a5)) {
                return;
            }
            n_health_percent = var_3acd97a5.health / var_3acd97a5.maxhealth;
            level.var_3c3b40c7 sr_orda_health_bar::open(self, 1);
            level.var_3c3b40c7 sr_orda_health_bar::set_health(self, n_health_percent);
            return;
        }
    }
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0xb08bc7e, Offset: 0xb00
// Size: 0x318
function function_cfa54bac() {
    self notify("bd3edc313281b8e");
    self endon("bd3edc313281b8e");
    self endoncallback(&function_8bed563f, #"death");
    self endoncallback(&function_8bed563f, #"hash_3f015eab8b2c125a");
    self callback::function_52ac9652(#"hash_4afe635f36531659", &function_a1b85021);
    self callback::function_52ac9652(#"on_ai_damage", &function_558990e3);
    callback::on_connect(&function_6dcb2e93);
    n_health_percent = self.health / self.maxhealth;
    foreach (e_player in getplayers()) {
        if (!level.var_3c3b40c7 sr_orda_health_bar::is_open(e_player)) {
            level.var_3c3b40c7 sr_orda_health_bar::open(e_player, 1);
        }
        level.var_3c3b40c7 sr_orda_health_bar::set_health(e_player, n_health_percent);
    }
    level thread function_66917018();
    self thread function_4990efc9();
    while (true) {
        self waittill(#"damage", #"healing");
        n_health_percent = self.health / self.maxhealth;
        foreach (e_player in getplayers()) {
            if (level.var_3c3b40c7 sr_orda_health_bar::is_open(e_player)) {
                level.var_3c3b40c7 sr_orda_health_bar::set_health(e_player, n_health_percent);
            }
        }
        self thread function_4990efc9();
    }
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 1, eflags: 0x2 linked
// Checksum 0x416cf3de, Offset: 0xe20
// Size: 0x184
function function_8bed563f(*str_notify) {
    self notify(#"hash_5dbe35d2a8f175a5");
    foreach (e_player in getplayers()) {
        if (level.var_3c3b40c7 sr_orda_health_bar::is_open(e_player)) {
            level.var_3c3b40c7 sr_orda_health_bar::close(e_player);
        }
    }
    level thread function_b79f95b6();
    if (isalive(self)) {
        self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_a1b85021);
        self callback::function_d8abfc3d(#"on_ai_damage", &function_558990e3);
    }
    callback::remove_on_connect(&function_6dcb2e93);
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0xfd4e075, Offset: 0xfb0
// Size: 0x94
function function_4990efc9() {
    self notify("6dc90215a5b232a4");
    self endon("6dc90215a5b232a4");
    self endon(#"damage", #"death", #"hash_5dbe35d2a8f175a5");
    wait(10);
    while (self.current_state.name === #"chase") {
        wait(1);
    }
    self function_8bed563f();
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 1, eflags: 0x6 linked
// Checksum 0xff0301cc, Offset: 0x1050
// Size: 0x166
function private function_4d7e58e3(*eventstruct) {
    self callback::function_52ac9652(#"death", &function_4d7e58e3);
    instance = self.instance;
    if (!is_true(self.var_98f1f37c)) {
        if (isdefined(self.origin)) {
            v_drop = self.origin;
        } else {
            v_drop = instance.origin;
        }
        level thread zm_powerups::specific_powerup_drop("full_ammo", v_drop);
        level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"event_complete", #nearbyplayers:1, #var_b0a57f8c:6000, #location:self.origin});
    }
    if (isdefined(instance.n_obj_id)) {
        objective_clearentity(instance.n_obj_id);
        zm_utility::function_bc5a54a8(instance.n_obj_id);
        instance.n_obj_id = undefined;
    }
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0xf40adceb, Offset: 0x11c0
// Size: 0x4c
function function_66917018() {
    level endon(#"hash_3c5a5e6a1814686a");
    level notify(#"hash_58fe6212779ab6f7");
    wait(1);
    namespace_9b972177::function_9a65b730("summoner");
}

// Namespace namespace_a2a34bbc/namespace_a2a34bbc
// Params 0, eflags: 0x2 linked
// Checksum 0x646e6db2, Offset: 0x1218
// Size: 0x4c
function function_b79f95b6() {
    level endon(#"hash_58fe6212779ab6f7");
    level notify(#"hash_3c5a5e6a1814686a");
    wait(4);
    namespace_9b972177::function_16bede30();
}

