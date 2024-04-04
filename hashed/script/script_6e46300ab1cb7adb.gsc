// Atian COD Tools GSC CW decompiler test
#using script_3dc93ca9902a9cda;
#using script_35ae72be7b4fec10;

#namespace namespace_a43d1663;

// Namespace namespace_a43d1663/namespace_a43d1663
// Params 6, eflags: 0x2 linked
// Checksum 0xd034f1f8, Offset: 0xc0
// Size: 0x15c
function init(var_4bf53b01 = #"", var_76e98c1f = #"", var_2a015e7e = 0, var_f8f020e3 = 0, var_919728b0 = 5, var_c18a5a8b = var_919728b0 + 5) {
    if (var_919728b0 >= float(function_60d95f53()) / 1000) {
        wait(var_919728b0);
    }
    level add(var_4bf53b01, var_76e98c1f, var_2a015e7e, var_f8f020e3);
    if (var_c18a5a8b >= float(function_60d95f53()) / 1000) {
        wait(var_c18a5a8b);
    }
    level remove();
}

// Namespace namespace_a43d1663/namespace_a43d1663
// Params 4, eflags: 0x6 linked
// Checksum 0x1bf2fb75, Offset: 0x228
// Size: 0x1b4
function private add(var_4bf53b01, var_76e98c1f, var_2a015e7e, var_f8f020e3) {
    if (namespace_61e6d095::exists(#"hash_2c29a54813fff877")) {
        namespace_61e6d095::remove(#"hash_2c29a54813fff877");
    }
    namespace_61e6d095::create(#"hash_2c29a54813fff877", #"hash_4782a7f29b84b022");
    namespace_61e6d095::function_d3c3e5c3(#"hash_2c29a54813fff877", [#"dialog_tree"]);
    namespace_61e6d095::function_9ade1d9b(#"hash_2c29a54813fff877", "text", var_4bf53b01);
    namespace_61e6d095::function_9ade1d9b(#"hash_2c29a54813fff877", "image", var_76e98c1f);
    namespace_61e6d095::function_9ade1d9b(#"hash_2c29a54813fff877", "earnedCount", var_2a015e7e);
    namespace_61e6d095::function_9ade1d9b(#"hash_2c29a54813fff877", "maxCount", var_f8f020e3);
    player = getplayers()[0];
    player playsound(#"hash_1d0d39163d572a71");
}

// Namespace namespace_a43d1663/namespace_a43d1663
// Params 0, eflags: 0x2 linked
// Checksum 0x57151094, Offset: 0x3e8
// Size: 0x44
function remove() {
    if (namespace_61e6d095::exists(#"hash_2c29a54813fff877")) {
        namespace_61e6d095::remove(#"hash_2c29a54813fff877");
    }
}

