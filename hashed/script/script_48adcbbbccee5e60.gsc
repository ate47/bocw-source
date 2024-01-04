// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace interactive_shot;

// Namespace interactive_shot
// Method(s) 7 Total 14
class cinteractive_shot : cluielem {

    // Namespace cinteractive_shot/interactive_shot
    // Params 0, eflags: 0xa linked
    // Checksum 0x44410434, Offset: 0x348
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 0, eflags: 0x92 linked class_linked
    // Checksum 0x1a1dc7f3, Offset: 0x4a8
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6583ba2b, Offset: 0x440
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 0, eflags: 0x2 linked
    // Checksum 0xe378d10e, Offset: 0x3c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("interactive_shot");
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5ac555af, Offset: 0x368
    // Size: 0x4c
    function setup_clientfields(*var_f5852d69) {
        cluielem::setup_clientfields("interactive_shot");
        cluielem::function_dcb34c80("string", "text", 1);
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 2, eflags: 0x2 linked
    // Checksum 0x235e638c, Offset: 0x470
    // Size: 0x30
    function set_text(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "text", value);
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 1, eflags: 0x2 linked
    // Checksum 0xff48fb4a, Offset: 0x3e8
    // Size: 0x4c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_data(localclientnum, "text", #"");
    }

}

// Namespace interactive_shot/interactive_shot
// Params 1, eflags: 0x2 linked
// Checksum 0xe6ea3d70, Offset: 0xe0
// Size: 0x176
function register(var_f5852d69) {
    elem = new cinteractive_shot();
    [[ elem ]]->setup_clientfields(var_f5852d69);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"interactive_shot"])) {
        level.var_ae746e8f[#"interactive_shot"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"interactive_shot"])) {
        level.var_ae746e8f[#"interactive_shot"] = [];
    } else if (!isarray(level.var_ae746e8f[#"interactive_shot"])) {
        level.var_ae746e8f[#"interactive_shot"] = array(level.var_ae746e8f[#"interactive_shot"]);
    }
    level.var_ae746e8f[#"interactive_shot"][level.var_ae746e8f[#"interactive_shot"].size] = elem;
}

// Namespace interactive_shot/interactive_shot
// Params 0, eflags: 0x0
// Checksum 0xed2e3827, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new cinteractive_shot();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace interactive_shot/interactive_shot
// Params 1, eflags: 0x0
// Checksum 0xc950a47, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace interactive_shot/interactive_shot
// Params 1, eflags: 0x0
// Checksum 0x371be82f, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace interactive_shot/interactive_shot
// Params 1, eflags: 0x0
// Checksum 0x38b4598, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace interactive_shot/interactive_shot
// Params 2, eflags: 0x0
// Checksum 0x8f440e09, Offset: 0x318
// Size: 0x28
function set_text(localclientnum, value) {
    [[ self ]]->set_text(localclientnum, value);
}

