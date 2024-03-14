// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;

#namespace namespace_ae270045;

// Namespace namespace_ae270045/namespace_d2183c1b
// Params 6, eflags: 0x2 linked
// Checksum 0x4332d3f3, Offset: 0x88
// Size: 0x10c
function function_cfcd9b92(var_5b36f17f, var_efccf092, var_b04adac9, var_8ab7d27b = 1, var_c1c8f1d, var_ef1623ea = 20) {
    if (!namespace_61e6d095::exists(#"hash_57cba60410267bed")) {
        namespace_61e6d095::create(#"hash_57cba60410267bed", #"hash_16d65500e6bdc837");
        namespace_61e6d095::set_text(#"hash_57cba60410267bed", var_efccf092);
        if (isdefined(var_b04adac9)) {
            namespace_61e6d095::function_309bf7c2(#"hash_57cba60410267bed", var_b04adac9);
        }
        function_e782b221(var_5b36f17f, var_8ab7d27b, var_c1c8f1d, var_ef1623ea);
    }
}

// Namespace namespace_ae270045/namespace_d2183c1b
// Params 1, eflags: 0x0
// Checksum 0xc1d7f5bb, Offset: 0x1a0
// Size: 0x54
function function_9c8d2a44(var_1723b73d) {
    if (namespace_61e6d095::exists(#"hash_57cba60410267bed")) {
        namespace_61e6d095::set_text(#"hash_57cba60410267bed", var_1723b73d);
    }
}

// Namespace namespace_ae270045/namespace_d2183c1b
// Params 4, eflags: 0x6 linked
// Checksum 0x109d9401, Offset: 0x200
// Size: 0x292
function private function_e782b221(start_time, var_8ab7d27b, var_c1c8f1d, var_ef1623ea) {
    level endon(#"hash_267bd9980f77d5f4", #"level_restarting", #"death");
    run_time = int(start_time * 1000);
    namespace_61e6d095::set_time(#"hash_57cba60410267bed", run_time);
    start_time = run_time;
    var_da7e097b = -1;
    var_469ff952 = 0;
    while (run_time >= 0) {
        run_time = max(run_time - function_60d95f53(), 0);
        namespace_61e6d095::set_time(#"hash_57cba60410267bed", run_time);
        if (var_8ab7d27b) {
            perc = run_time / start_time * 100;
            var_eb0fc859 = int(min(floor(perc / 25), 3));
            if (!var_469ff952 && perc <= var_ef1623ea && isdefined(var_c1c8f1d)) {
                var_469ff952 = 1;
                namespace_61e6d095::set_text(#"hash_57cba60410267bed", var_c1c8f1d);
            }
            if (var_da7e097b != var_eb0fc859) {
                var_da7e097b = var_eb0fc859;
                if (var_eb0fc859 > 0 || perc <= 10) {
                    namespace_61e6d095::set_state(#"hash_57cba60410267bed", var_eb0fc859);
                } else {
                    namespace_61e6d095::set_state(#"hash_57cba60410267bed", 0);
                }
            }
        }
        if (run_time <= 0) {
            level thread function_94505a0b();
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_ae270045/namespace_d2183c1b
// Params 0, eflags: 0x6 linked
// Checksum 0x18f5515b, Offset: 0x4a0
// Size: 0x2c
function private function_94505a0b() {
    level notify(#"hash_56a61cb4fe8b8e79");
    function_5e3101b2();
}

// Namespace namespace_ae270045/namespace_d2183c1b
// Params 0, eflags: 0x2 linked
// Checksum 0x6253dd58, Offset: 0x4d8
// Size: 0x5c
function function_5e3101b2() {
    level notify(#"hash_267bd9980f77d5f4");
    if (namespace_61e6d095::exists(#"hash_57cba60410267bed")) {
        namespace_61e6d095::remove(#"hash_57cba60410267bed");
    }
}

