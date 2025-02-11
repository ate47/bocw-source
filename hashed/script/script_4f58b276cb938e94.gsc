#using script_139ae0bb0a87141c;
#using script_3072532951b5b4ae;
#using script_5450c003e8a913b7;
#using scripts\core_common\flag_shared;
#using scripts\core_common\stealth\debug;
#using scripts\core_common\stealth\event;

#namespace namespace_578db516;

// Namespace namespace_578db516/neutral
// Params 0, eflags: 0x0
// Checksum 0x5cc893ad, Offset: 0xe8
// Size: 0x14c
function main() {
    if (isdefined(self.stealth)) {
        return;
    }
    self stealth_enemy::init_settings();
    self.neutralsenses = 1;
    self stealth_enemy::init_flags();
    stealth_group::addtogroup(self.script_stealthgroup, self);
    self stealth_enemy::setpatrolstyle_base();
    self stealth_event::event_init_entity();
    self thread stealth_enemy::monitor_damage_thread(level.stealth.damage_auto_range, level.stealth.damage_sight_range);
    /#
        self thread stealth_debug::debug_enemy();
    #/
    self stealth_enemy::set_alert_level("reset");
    self stealth_enemy::bt_set_stealth_state("idle");
    self stealth_enemy::stealth_init_goal_radius();
    self thread function_130f4a75();
}

// Namespace namespace_578db516/neutral
// Params 0, eflags: 0x0
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

