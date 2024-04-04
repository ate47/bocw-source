// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using script_35ae72be7b4fec10;

#namespace warning_message;

// Namespace warning_message/warning_message
// Params 4, eflags: 0x2 linked
// Checksum 0x9a957734, Offset: 0x90
// Size: 0x224
function create(message, var_400e244b, pulse, endons) {
    if (namespace_61e6d095::exists(#"hash_71bae6f32cec8a8e")) {
        assertmsg("<unknown string>");
        return;
    }
    if (isdefined(endons)) {
        self endoncallback(&remove, endons);
    }
    namespace_61e6d095::create(#"hash_71bae6f32cec8a8e", #"hash_6e2caf9e3aa6b810");
    namespace_61e6d095::set_text(#"hash_71bae6f32cec8a8e", message);
    namespace_61e6d095::set_state(#"hash_71bae6f32cec8a8e", #"defaultstate");
    if (is_true(pulse)) {
        util::delay(float(function_60d95f53()) / 1000, endons, &function_b4af2e7, 1);
    }
    if (isint(var_400e244b) || isfloat(var_400e244b)) {
        wait(var_400e244b);
    } else if (isstring(var_400e244b) || ishash(var_400e244b) || isarray(var_400e244b)) {
        self waittill(var_400e244b);
    } else {
        return;
    }
    remove();
}

// Namespace warning_message/warning_message
// Params 1, eflags: 0x0
// Checksum 0x91309edf, Offset: 0x2c0
// Size: 0x54
function set_message(message) {
    if (namespace_61e6d095::exists(#"hash_71bae6f32cec8a8e")) {
        namespace_61e6d095::set_text(#"hash_71bae6f32cec8a8e", message);
    }
}

// Namespace warning_message/warning_message
// Params 1, eflags: 0x2 linked
// Checksum 0xc3b075e6, Offset: 0x320
// Size: 0xac
function function_b4af2e7(pulse) {
    if (namespace_61e6d095::exists(#"hash_71bae6f32cec8a8e")) {
        if (is_true(pulse)) {
            namespace_61e6d095::set_state(#"hash_71bae6f32cec8a8e", #"pulse");
            return;
        }
        namespace_61e6d095::set_state(#"hash_71bae6f32cec8a8e", #"defaultstate");
    }
}

// Namespace warning_message/warning_message
// Params 1, eflags: 0x2 linked
// Checksum 0xa89a8ada, Offset: 0x3d8
// Size: 0x4c
function remove(*params) {
    if (namespace_61e6d095::exists(#"hash_71bae6f32cec8a8e")) {
        namespace_61e6d095::remove(#"hash_71bae6f32cec8a8e");
    }
}

