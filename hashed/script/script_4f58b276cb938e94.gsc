// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using script_7e3221b6c80d8cc4;
#using script_139ae0bb0a87141c;
#using script_42310dfa1362069f;
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
    self namespace_f1f700ac::function_43959107();
    self.var_7c1df16b = 1;
    self namespace_f1f700ac::init_flags();
    namespace_3fc78cb6::function_573416a4(self.var_d6319e36, self);
    self namespace_f1f700ac::function_2ce66982();
    self namespace_cf88f507::function_b1459a4();
    self thread namespace_f1f700ac::function_cf839c4b(level.stealth.var_7e461f07, level.stealth.var_1e02c672);
    /#
        self thread function_8c76fdc5();
    #/
    self namespace_f1f700ac::function_b82b38b("reset");
    self namespace_f1f700ac::function_52839330("idle");
    self namespace_f1f700ac::function_c934ed8c();
    self thread function_130f4a75();
}

// Namespace namespace_578db516/neutral
// Params 0, eflags: 0x2 linked
// Checksum 0x50472990, Offset: 0x240
// Size: 0x96
function function_130f4a75() {
    self endon(#"death");
    while (1) {
        self flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        if (is_true(self.var_22f5613a)) {
            self namespace_77fd5d41::function_d768e482(self);
        }
        waitframe(1);
    }
}

