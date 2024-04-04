// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace encodedradio_usebar;

// Namespace encodedradio_usebar
// Method(s) 9 Total 16
class class_ba33e0c1 : cluielem {

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 1, eflags: 0x0
    // Checksum 0xbfde55ec, Offset: 0x560
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0xb65be9f1, Offset: 0x680
    // Size: 0x30
    function function_4aa46834(localclientnum, value) {
        set_data(localclientnum, "activatorCount", value);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 0, eflags: 0x0
    // Checksum 0xf04f683e, Offset: 0x4a8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("EncodedRadio_UseBar");
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0x9a86972, Offset: 0x3f8
    // Size: 0xa4
    function setup_clientfields(var_ec85b709, var_193163f7) {
        cluielem::setup_clientfields("EncodedRadio_UseBar");
        cluielem::add_clientfield("_state", 1, 1, "int");
        cluielem::add_clientfield("progressFrac", 1, 10, "float", var_ec85b709);
        cluielem::add_clientfield("activatorCount", 1, 3, "int", var_193163f7);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0xf62e4d2b, Offset: 0x590
    // Size: 0xac
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            set_data(localclientnum, "_state", 0);
            return;
        }
        if (#"hash_5fba3d476e0b33f8" == state_name) {
            set_data(localclientnum, "_state", 1);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0x74921d4f, Offset: 0x648
    // Size: 0x30
    function function_f0df5702(localclientnum, value) {
        set_data(localclientnum, "progressFrac", value);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 1, eflags: 0x0
    // Checksum 0x41a1f363, Offset: 0x4d0
    // Size: 0x84
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_state(localclientnum, #"defaultstate");
        set_data(localclientnum, "progressFrac", 0);
        set_data(localclientnum, "activatorCount", 0);
    }

}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0xb2aae15b, Offset: 0x108
// Size: 0x17e
function register(var_ec85b709, var_193163f7) {
    elem = new class_ba33e0c1();
    [[ elem ]]->setup_clientfields(var_ec85b709, var_193163f7);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"encodedradio_usebar"])) {
        level.var_ae746e8f[#"encodedradio_usebar"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"encodedradio_usebar"])) {
        level.var_ae746e8f[#"encodedradio_usebar"] = [];
    } else if (!isarray(level.var_ae746e8f[#"encodedradio_usebar"])) {
        level.var_ae746e8f[#"encodedradio_usebar"] = array(level.var_ae746e8f[#"encodedradio_usebar"]);
    }
    level.var_ae746e8f[#"encodedradio_usebar"][level.var_ae746e8f[#"encodedradio_usebar"].size] = elem;
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 0, eflags: 0x0
// Checksum 0xf3bd5896, Offset: 0x290
// Size: 0x34
function register_clientside() {
    elem = new class_ba33e0c1();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 1, eflags: 0x0
// Checksum 0x6b8f324b, Offset: 0x2d0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 1, eflags: 0x0
// Checksum 0xb381fe23, Offset: 0x2f8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 1, eflags: 0x0
// Checksum 0xa3ffb018, Offset: 0x320
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0xa1f35be2, Offset: 0x348
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0x49b4a999, Offset: 0x378
// Size: 0x28
function function_f0df5702(localclientnum, value) {
    [[ self ]]->function_f0df5702(localclientnum, value);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0x2c4fbcc9, Offset: 0x3a8
// Size: 0x28
function function_4aa46834(localclientnum, value) {
    [[ self ]]->function_4aa46834(localclientnum, value);
}

