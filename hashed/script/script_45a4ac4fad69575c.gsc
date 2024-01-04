// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_1339a57c;

// Namespace namespace_1339a57c
// Method(s) 8 Total 15
class class_fd95a9c : cluielem {

    // Namespace class_fd95a9c/namespace_1339a57c
    // Params 0, eflags: 0x8
    // Checksum 0xca05cb42, Offset: 0x390
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_fd95a9c/namespace_1339a57c
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xfa0d2aeb, Offset: 0x580
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 1, eflags: 0x0
    // Checksum 0x4fc6c2d1, Offset: 0x4e0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 2, eflags: 0x0
    // Checksum 0x46f58ccc, Offset: 0x548
    // Size: 0x30
    function function_3ae8b40f(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "confirmBtn", value);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 0, eflags: 0x0
    // Checksum 0x58ebb4cb, Offset: 0x438
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("DOA_KeyTrade");
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 2, eflags: 0x0
    // Checksum 0xf1937791, Offset: 0x510
    // Size: 0x30
    function function_8a6595db(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "textBoxHint", value);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 2, eflags: 0x0
    // Checksum 0x653ddba3, Offset: 0x3b0
    // Size: 0x7c
    function setup_clientfields(*var_909954a3, *var_66f4eb53) {
        cluielem::setup_clientfields("DOA_KeyTrade");
        cluielem::function_dcb34c80("string", "textBoxHint", 1);
        cluielem::function_dcb34c80("string", "confirmBtn", 1);
    }

    // Namespace namespace_fd95a9c/namespace_1339a57c
    // Params 1, eflags: 0x0
    // Checksum 0x3a0a9605, Offset: 0x460
    // Size: 0x74
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_data(localclientnum, "textBoxHint", #"");
        [[ self ]]->set_data(localclientnum, "confirmBtn", #"");
    }

}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 2, eflags: 0x0
// Checksum 0x24256fe8, Offset: 0xf0
// Size: 0x17e
function register(var_909954a3, var_66f4eb53) {
    elem = new class_fd95a9c();
    [[ elem ]]->setup_clientfields(var_909954a3, var_66f4eb53);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"])) {
        level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"])) {
        level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"])) {
        level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"] = array(level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"]);
    }
    level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"][level.var_ae746e8f[#"hash_1f0ce8e9aa6fe063"].size] = elem;
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 0, eflags: 0x0
// Checksum 0x31910f9c, Offset: 0x278
// Size: 0x34
function register_clientside() {
    elem = new class_fd95a9c();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 1, eflags: 0x0
// Checksum 0x71f6ce6a, Offset: 0x2b8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 1, eflags: 0x0
// Checksum 0xf7d0d2ed, Offset: 0x2e0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 1, eflags: 0x0
// Checksum 0x1d9fe681, Offset: 0x308
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 2, eflags: 0x0
// Checksum 0xbe3c601, Offset: 0x330
// Size: 0x28
function function_8a6595db(localclientnum, value) {
    [[ self ]]->function_8a6595db(localclientnum, value);
}

// Namespace namespace_1339a57c/namespace_1339a57c
// Params 2, eflags: 0x0
// Checksum 0xde0385ce, Offset: 0x360
// Size: 0x28
function function_3ae8b40f(localclientnum, value) {
    [[ self ]]->function_3ae8b40f(localclientnum, value);
}

