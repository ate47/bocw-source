// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using script_35ae72be7b4fec10;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;

#namespace namespace_29a279dd;

// Namespace namespace_29a279dd/namespace_29a279dd
// Params 3, eflags: 0x2 linked
// Checksum 0x129a1d57, Offset: 0xb0
// Size: 0x11c
function set_display(state, text, desc) {
    getplayers()[0] val::set(#"hash_6420a4a05af52d6e", "show_crosshair", 0);
    if (!namespace_61e6d095::exists(#"hash_767355dc5e1cddfb")) {
        namespace_61e6d095::create(#"hash_767355dc5e1cddfb", #"hash_6420a4a05af52d6e");
    }
    if (isdefined(text)) {
        namespace_61e6d095::set_text(#"hash_767355dc5e1cddfb", text);
    }
    if (isdefined(desc)) {
        namespace_61e6d095::function_bfdab223(#"hash_767355dc5e1cddfb", desc);
    }
    waitframe(1);
    namespace_61e6d095::set_state(#"hash_767355dc5e1cddfb", state);
}

// Namespace namespace_29a279dd/namespace_29a279dd
// Params 0, eflags: 0x2 linked
// Checksum 0xb5973629, Offset: 0x1d8
// Size: 0x6c
function remove() {
    if (namespace_61e6d095::exists(#"hash_767355dc5e1cddfb")) {
        namespace_61e6d095::remove(#"hash_767355dc5e1cddfb");
    }
    getplayers()[0] val::reset_all();
}

