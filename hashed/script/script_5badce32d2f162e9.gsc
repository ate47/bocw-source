// Atian COD Tools GSC CW decompiler test
#using script_1883fa4e60abbf9f;
#using script_3072532951b5b4ae;
#using script_68d08b784c92da95;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_dba1ec08;

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 0, eflags: 0x5
// Checksum 0x9c153344, Offset: 0x100
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_2dc824b6cfc14a18", &function_70a657d8, undefined, undefined, #"archetype_utility");
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 0, eflags: 0x6 linked
// Checksum 0x516d56e5, Offset: 0x150
// Size: 0x24
function private function_70a657d8() {
    namespace_77fd5d41::main();
    function_7dcf5e();
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 0, eflags: 0x2 linked
// Checksum 0x9e7d341f, Offset: 0x180
// Size: 0x25e6
function function_7dcf5e() {
    level.var_70f1c402 = 1;
    /#
        assert(isscriptfunctionptr(&shouldstealth));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldstealth", &shouldstealth);
    /#
        assert(isscriptfunctionptr(&stealthreactcondition));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthreactcondition", &stealthreactcondition);
    /#
        assert(isscriptfunctionptr(&locomotionshouldstealth));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"locomotionshouldstealth", &locomotionshouldstealth);
    /#
        assert(isscriptfunctionptr(&shouldstealthresume));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldstealthresume", &shouldstealthresume);
    /#
        assert(isscriptfunctionptr(&stealthreactstart));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthreactstart", &stealthreactstart);
    /#
        assert(isscriptfunctionptr(&stealthreactterminate));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthreactterminate", &stealthreactterminate);
    /#
        assert(isscriptfunctionptr(&stealthidleterminate));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"stealthidleterminate", &stealthidleterminate);
    /#
        assert(isscriptfunctionptr(&function_695d612e));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1ddb2a42c13937e2", &function_695d612e);
    /#
        assert(isscriptfunctionptr(&function_36003c04));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_30871f9ff96a64d", &function_36003c04);
    /#
        assert(isscriptfunctionptr(&function_59b7ac43));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6015c026b1fa3b68", &function_59b7ac43);
    /#
        assert(isscriptfunctionptr(&function_50255836));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6903274957b06c58", &function_50255836);
    /#
        assert(isscriptfunctionptr(&function_a74be266));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5f3c00483459c378", &namespace_77fd5d41::function_a74be266);
    /#
        assert(isscriptfunctionptr(&function_3b8bcbc7));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_30483c99fb320ecb", &namespace_77fd5d41::function_3b8bcbc7);
    /#
        assert(isscriptfunctionptr(&function_941fc014));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5d5935e442748f9e", &namespace_77fd5d41::function_941fc014);
    /#
        assert(isscriptfunctionptr(&function_93f9e4d6));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2b4b5597da9bc2f8", &namespace_77fd5d41::function_93f9e4d6);
    /#
        assert(isscriptfunctionptr(&function_acfa1f6e));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_8374ad58022a136", &namespace_77fd5d41::function_acfa1f6e);
    /#
        assert(isscriptfunctionptr(&function_865ea8e6));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_652e009b8323c31b", &aiutility::function_865ea8e6);
    /#
        assert(isscriptfunctionptr(&function_809e1001));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_633fe012fe30aba5", &namespace_77fd5d41::function_809e1001);
    /#
        assert(isscriptfunctionptr(&function_d88c0c86));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_65e89f484bba20bb", &namespace_77fd5d41::function_d88c0c86);
    /#
        assert(isscriptfunctionptr(&function_bf092f1f));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_14f8e3d6eda75d6a", &namespace_77fd5d41::function_bf092f1f);
    /#
        assert(isscriptfunctionptr(&function_b26d5148));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_458e9a34b803db29", &namespace_77fd5d41::function_b26d5148);
    /#
        assert(isscriptfunctionptr(&function_447588f7));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7ed5e6ee9b115c2a", &namespace_77fd5d41::function_447588f7);
    /#
        assert(isscriptfunctionptr(&function_470c948e));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_77e5c00cfcf7002e", &namespace_77fd5d41::function_470c948e);
    /#
        assert(isscriptfunctionptr(&function_ea5fc830));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5d73de1aab3eb35d", &namespace_77fd5d41::function_ea5fc830);
    /#
        assert(isscriptfunctionptr(&function_df9a9513));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_ae56f63cd9fbe86", &namespace_77fd5d41::function_df9a9513);
    /#
        assert(isscriptfunctionptr(&function_8d09672b));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1d3cecb203b9a825", &namespace_77fd5d41::function_8d09672b);
    /#
        assert(isscriptfunctionptr(&function_7bed8eb1));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6431cd50d65a767c", &namespace_77fd5d41::function_7bed8eb1);
    /#
        assert(isscriptfunctionptr(&function_8e428cdb));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_31b933dc0e7c5c84", &namespace_77fd5d41::function_8e428cdb);
    /#
        assert(isscriptfunctionptr(&function_98fb391c));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1e0ad4032a3da41f", &namespace_77fd5d41::function_98fb391c);
    /#
        assert(isscriptfunctionptr(&function_a6497ddc));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1c37119295b3cc48", &namespace_77fd5d41::function_a6497ddc);
    /#
        assert(isscriptfunctionptr(&function_aa3021fa));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6a892d952d9c58b7", &namespace_77fd5d41::function_aa3021fa);
    /#
        assert(isscriptfunctionptr(&function_fe3c7909));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_247b034a88a7e3b", &namespace_77fd5d41::function_fe3c7909);
    /#
        assert(isscriptfunctionptr(&function_26e16543));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_540afeb2906c14c7", &namespace_77fd5d41::function_26e16543);
    /#
        assert(isscriptfunctionptr(&function_efc17e1a));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_44e72b8fcdaf3ff8", &namespace_77fd5d41::function_efc17e1a);
    /#
        assert(isscriptfunctionptr(&function_fed75fc6));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_610c4deee847d19f", &namespace_77fd5d41::function_fed75fc6);
    /#
        assert(isscriptfunctionptr(&function_843b5351));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1432a729e25120ac", &namespace_77fd5d41::function_843b5351);
    /#
        assert(isscriptfunctionptr(&function_c643bbbb));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4691e67cad7d9b37", &namespace_77fd5d41::function_c643bbbb);
    /#
        assert(isscriptfunctionptr(&function_f874d2f1));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6c20630dac281d70", &namespace_77fd5d41::function_f874d2f1);
    /#
        assert(isscriptfunctionptr(&function_27a91ca9));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7c50b51a79eba680", &namespace_77fd5d41::function_27a91ca9);
    /#
        assert(isscriptfunctionptr(&function_ae010fd5));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1a2cb215f0adfdab", &namespace_77fd5d41::function_ae010fd5);
    /#
        assert(isscriptfunctionptr(&function_91aca790));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_a287df3d9435b4c", &namespace_77fd5d41::function_91aca790);
    /#
        assert(isscriptfunctionptr(&function_af1feb45));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4429fadb560937b5", &namespace_77fd5d41::function_af1feb45);
    /#
        assert(isscriptfunctionptr(&function_84d939b2));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4d4262f789528f48", &namespace_77fd5d41::function_84d939b2);
    /#
        assert(isscriptfunctionptr(&function_25281284));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6623ac05b3e89d2", &namespace_77fd5d41::function_25281284);
    /#
        assert(isscriptfunctionptr(&hunt_hunker));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_c3501ebe051547e", &namespace_77fd5d41::hunt_hunker);
    /#
        assert(isscriptfunctionptr(&function_658c9f29));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_633bd00a4c6c070d", &namespace_77fd5d41::function_658c9f29);
    /#
        assert(isscriptfunctionptr(&function_d7e2a7d9));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_38670b1f6bfc60d6", &namespace_77fd5d41::function_d7e2a7d9);
    /#
        assert(isscriptfunctionptr(&function_cf57c8e2));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_219ee8817462ba75", &namespace_77fd5d41::function_cf57c8e2);
    /#
        assert(isscriptfunctionptr(&function_8f12f910));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_56707481883cec89", &aiutility::function_8f12f910);
    /#
        assert(isscriptfunctionptr(&function_e376a4b6));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_72041acc7d1e9e99", &namespace_77fd5d41::function_e376a4b6);
    /#
        assert(isscriptfunctionptr(&function_e6cce524));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_a1c1fb228689f9c", &namespace_77fd5d41::function_e6cce524);
    /#
        assert(isscriptfunctionptr(&function_352c6578));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_fef2a96c4de38c7", &namespace_77fd5d41::function_352c6578);
    /#
        assert(isscriptfunctionptr(&function_fe6a490d));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3cb50e01a7d9b2e0", &namespace_77fd5d41::function_fe6a490d);
    /#
        assert(isscriptfunctionptr(&function_7fa7c168));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7faa7f08cbd182e0", &namespace_77fd5d41::function_7fa7c168);
    /#
        assert(isscriptfunctionptr(&function_82233242));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2792d75a8b597397", &namespace_77fd5d41::function_82233242);
    /#
        assert(isscriptfunctionptr(&function_d768e482));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_64d84841245dba70", &namespace_77fd5d41::function_d768e482);
    /#
        assert(isscriptfunctionptr(&function_ad0a57c8));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_15db81c49c83357e", &namespace_77fd5d41::function_ad0a57c8);
    /#
        assert(isscriptfunctionptr(&function_7f39428a));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_48b4c7a3eb9dd8a6", &namespace_77fd5d41::function_7f39428a);
    /#
        assert(isscriptfunctionptr(&function_78d21c9b));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_40d0812fa810f282", &namespace_77fd5d41::function_78d21c9b);
    /#
        assert(isscriptfunctionptr(&function_9d71c469));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7b0c1b70990ee011", &namespace_77fd5d41::function_9d71c469);
    /#
        assert(isscriptfunctionptr(&function_c543bf14));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_792be4bd91e1c9e2", &namespace_77fd5d41::function_c543bf14);
    /#
        assert(isscriptfunctionptr(&function_8f12f910));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4ab3a0d2b8ce1d48", &aiutility::function_8f12f910);
    /#
        assert(isscriptfunctionptr(&function_8f12f910));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3fb32d4ff7ddb9f7", &aiutility::function_8f12f910);
    /#
        assert(isscriptfunctionptr(&function_e73fe99));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2fa97de855da1e4f", &namespace_77fd5d41::function_e73fe99);
    /#
        assert(isscriptfunctionptr(&function_11d3f42d));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_23286b53d24487b4", &namespace_77fd5d41::function_11d3f42d);
    /#
        assert(isscriptfunctionptr(&function_bd5f9968));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_22ca87c523f21d6d", &namespace_77fd5d41::function_bd5f9968);
    /#
        assert(isscriptfunctionptr(&function_9a6e96bd));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7ccd1fa8f8bd85fc", &namespace_77fd5d41::function_9a6e96bd);
    /#
        assert(isscriptfunctionptr(&function_4fff0007));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7f29302adf2f1e45", &namespace_77fd5d41::function_4fff0007);
    /#
        assert(isscriptfunctionptr(&function_3031f40e));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_52aa02ad4a142cb3", &namespace_77fd5d41::function_3031f40e);
    /#
        assert(isscriptfunctionptr(&function_242c2d67));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_982f6b18e2cdc06", &namespace_77fd5d41::function_242c2d67);
    /#
        assert(isscriptfunctionptr(&function_96903634));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1082b3ce4938748d", &namespace_77fd5d41::function_96903634);
    /#
        assert(isscriptfunctionptr(&function_445c5acf));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1d1883695574917c", &namespace_77fd5d41::function_445c5acf);
    /#
        assert(isscriptfunctionptr(&function_ba0a486b));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1cad32c846c91188", &namespace_77fd5d41::function_ba0a486b);
    /#
        assert(isscriptfunctionptr(&function_36915a04));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_37829e514d614663", &namespace_77fd5d41::function_36915a04);
    /#
        assert(isscriptfunctionptr(&function_7653ca27));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_66bfafd78f8a2da4", &namespace_77fd5d41::function_7653ca27);
    /#
        assert(isscriptfunctionptr(&function_bf263c90));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_28aa53308dae6714", &namespace_77fd5d41::function_bf263c90);
    /#
        assert(isscriptfunctionptr(&function_470c948e));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_77e5c00cfcf7002e", &namespace_77fd5d41::function_470c948e);
    /#
        assert(isscriptfunctionptr(&function_ea5fc830));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5d73de1aab3eb35d", &namespace_77fd5d41::function_ea5fc830);
    /#
        assert(isscriptfunctionptr(&function_df9a9513));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_ae56f63cd9fbe86", &namespace_77fd5d41::function_df9a9513);
    /#
        assert(isscriptfunctionptr(&function_5db27177));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_9906f418003d6d6", &namespace_77fd5d41::function_5db27177);
    /#
        assert(isscriptfunctionptr(&function_dcb14105));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_76d6aa4d32b2559c", &namespace_77fd5d41::function_dcb14105);
    /#
        assert(isscriptfunctionptr(&locomotionshouldstealth));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"locomotionshouldstealth", &locomotionshouldstealth);
    /#
        assert(isscriptfunctionptr(&function_59b7ac43));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6015c026b1fa3b68", &function_59b7ac43);
    /#
        assert(isscriptfunctionptr(&function_50255836));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6903274957b06c58", &function_50255836);
    /#
        assert(isscriptfunctionptr(&stealthreactcondition));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"stealthreactcondition", &stealthreactcondition);
    /#
        assert(isscriptfunctionptr(&function_6c404960));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_34ba896ad71ef639", &namespace_77fd5d41::function_6c404960);
    /#
        assert(isscriptfunctionptr(&function_fe3c7909));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_247b034a88a7e3b", &namespace_77fd5d41::function_fe3c7909);
    /#
        assert(isscriptfunctionptr(&function_26e16543));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_540afeb2906c14c7", &namespace_77fd5d41::function_26e16543);
    /#
        assert(isscriptfunctionptr(&function_efc17e1a));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_44e72b8fcdaf3ff8", &namespace_77fd5d41::function_efc17e1a);
    /#
        assert(isscriptfunctionptr(&function_e73fe99));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2fa97de855da1e4f", &namespace_77fd5d41::function_e73fe99);
    /#
        assert(isscriptfunctionptr(&function_6a7ad1cf));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_7cd1f4f1d328c8c", &namespace_77fd5d41::function_6a7ad1cf);
    /#
        assert(isscriptfunctionptr(&function_ff473d5));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_344cc9226dda1596", &namespace_77fd5d41::function_ff473d5);
    /#
        assert(isscriptfunctionptr(&function_96903634));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_1082b3ce4938748d", &namespace_77fd5d41::function_96903634);
    level.var_70f1c402 = undefined;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x2 linked
// Checksum 0x8a6ad27c, Offset: 0x2770
// Size: 0x58
function shouldstealth(behaviortreeentity) {
    if (behaviortreeentity ai::has_behavior_attribute("stealth") && behaviortreeentity ai::get_behavior_attribute("stealth")) {
        return 1;
    }
    return 0;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x2 linked
// Checksum 0x5edad7ec, Offset: 0x27d0
// Size: 0x3e
function locomotionshouldstealth(behaviortreeentity) {
    if (namespace_77fd5d41::function_5bfdfc9d()) {
        return 0;
    }
    if (behaviortreeentity haspath()) {
        return 1;
    }
    return 0;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0x42400725, Offset: 0x2818
// Size: 0x40
function private function_59b7ac43(behaviortreeentity) {
    if (behaviortreeentity getblackboardattribute("_human_demeanor") === "CQB") {
        return 1;
    }
    return 0;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0x699021ef, Offset: 0x2860
// Size: 0x40
function private function_50255836(behaviortreeentity) {
    if (behaviortreeentity getblackboardattribute("_human_demeanor") === "COMBAT") {
        return 1;
    }
    return 0;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x2 linked
// Checksum 0x369c9c09, Offset: 0x28a8
// Size: 0x5a
function shouldstealthresume(behaviortreeentity) {
    if (!shouldstealth(behaviortreeentity)) {
        return 0;
    }
    if (is_true(behaviortreeentity.stealth_resume)) {
        behaviortreeentity.stealth_resume = undefined;
        return 1;
    }
    return 0;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0x2d683ab0, Offset: 0x2910
// Size: 0xa0
function private stealthreactcondition(entity) {
    inscene = isdefined(self._o_scene) && isdefined(self._o_scene._str_state) && self._o_scene._str_state == "play";
    return !is_true(entity.stealth_reacting) && entity hasvalidinterrupt("react") && !inscene;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0x3bbaa02a, Offset: 0x29b8
// Size: 0x1a
function private stealthreactstart(behaviortreeentity) {
    behaviortreeentity.stealth_reacting = 1;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0x93cb76df, Offset: 0x29e0
// Size: 0x16
function private stealthreactterminate(behaviortreeentity) {
    behaviortreeentity.stealth_reacting = undefined;
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0xf53c4dd3, Offset: 0x2a00
// Size: 0x24
function private function_695d612e(behaviortreeentity) {
    behaviortreeentity ai::function_fc7bd6c7(1);
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0xe9e237df, Offset: 0x2a30
// Size: 0x24
function private function_36003c04(behaviortreeentity) {
    behaviortreeentity ai::function_f6060793();
}

// Namespace namespace_dba1ec08/namespace_186a1392
// Params 1, eflags: 0x6 linked
// Checksum 0xca04fbc4, Offset: 0x2a60
// Size: 0x56
function private stealthidleterminate(behaviortreeentity) {
    behaviortreeentity notify(#"stealthidleterminate");
    if (is_true(behaviortreeentity.stealth_resume_after_idle)) {
        behaviortreeentity.stealth_resume_after_idle = undefined;
        behaviortreeentity.stealth_resume = 1;
    }
}

