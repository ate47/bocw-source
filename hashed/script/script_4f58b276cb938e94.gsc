// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\stealth\debug.gsc;
#using script_139ae0bb0a87141c;
#using scripts\core_common\stealth\event.gsc;
#using script_5450c003e8a913b7;
#using script_3072532951b5b4ae;

#namespace namespace_578db516;

// Namespace namespace_578db516/neutral
// Params 0, eflags: 0x2 linked
// Checksum 0x5cc893ad, Offset: 0xe8
// Size: 0x14c
function main() {
    if (isdefined(self.stealth)) {
        return;
    }
    self namespace_f1f700ac::init_settings();
    self.neutralsenses = 1;
    self namespace_f1f700ac::init_flags();
    stealth_group::addtogroup(self.script_stealthgroup, self);
    self namespace_f1f700ac::setpatrolstyle_base();
    self stealth_event::event_init_entity();
    self thread namespace_f1f700ac::monitor_damage_thread(level.stealth.damage_auto_range, level.stealth.damage_sight_range);
    /#
        self thread stealth_debug::debug_enemy();
    #/
    self namespace_f1f700ac::set_alert_level("reset");
    self namespace_f1f700ac::bt_set_stealth_state("idle");
    self namespace_f1f700ac::stealth_init_goal_radius();
    self thread function_130f4a75();
}

// Namespace namespace_578db516/neutral
// Params 0, eflags: 0x2 linked
// Checksum 0x50472990, Offset: 0x240
// Size: 0x96
function function_130f4a75() {
    self endon(#"death");
    while (true) {
        self flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        if (is_true(self.var_22f5613a)) {
            self namespace_77fd5d41::stealth_neutral_updateeveryframe(self);
        }
        waitframe(1);
    }
}

