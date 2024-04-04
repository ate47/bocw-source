// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace death_zone;

// Namespace death_zone
// Method(s) 7 Total 14
class cdeath_zone : cluielem {

    // Namespace cdeath_zone/death_zone
    // Params 1, eflags: 0x0
    // Checksum 0x417f4cce, Offset: 0x430
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cdeath_zone/death_zone
    // Params 2, eflags: 0x0
    // Checksum 0x4bca4dda, Offset: 0x460
    // Size: 0x30
    function set_shutdown_sec(localclientnum, value) {
        set_data(localclientnum, "shutdown_sec", value);
    }

    // Namespace cdeath_zone/death_zone
    // Params 0, eflags: 0x0
    // Checksum 0x148641e6, Offset: 0x3c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("death_zone");
    }

    // Namespace cdeath_zone/death_zone
    // Params 1, eflags: 0x0
    // Checksum 0xeab0be04, Offset: 0x368
    // Size: 0x4c
    function setup_clientfields(var_fd61f748) {
        cluielem::setup_clientfields("death_zone");
        cluielem::add_clientfield("shutdown_sec", 1, 9, "int", var_fd61f748);
    }

    // Namespace cdeath_zone/death_zone
    // Params 1, eflags: 0x0
    // Checksum 0xbb5e9dc8, Offset: 0x3e8
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "shutdown_sec", 0);
    }

}

// Namespace death_zone/death_zone
// Params 1, eflags: 0x0
// Checksum 0x7b146d5e, Offset: 0xe0
// Size: 0x176
function register(var_fd61f748) {
    elem = new cdeath_zone();
    [[ elem ]]->setup_clientfields(var_fd61f748);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"death_zone"])) {
        level.var_ae746e8f[#"death_zone"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"death_zone"])) {
        level.var_ae746e8f[#"death_zone"] = [];
    } else if (!isarray(level.var_ae746e8f[#"death_zone"])) {
        level.var_ae746e8f[#"death_zone"] = array(level.var_ae746e8f[#"death_zone"]);
    }
    level.var_ae746e8f[#"death_zone"][level.var_ae746e8f[#"death_zone"].size] = elem;
}

// Namespace death_zone/death_zone
// Params 0, eflags: 0x0
// Checksum 0xb9d6c895, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new cdeath_zone();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace death_zone/death_zone
// Params 1, eflags: 0x0
// Checksum 0x4da297e1, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace death_zone/death_zone
// Params 1, eflags: 0x0
// Checksum 0xc510c8a8, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace death_zone/death_zone
// Params 1, eflags: 0x0
// Checksum 0xe65cac88, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace death_zone/death_zone
// Params 2, eflags: 0x0
// Checksum 0x9494490a, Offset: 0x318
// Size: 0x28
function set_shutdown_sec(localclientnum, value) {
    [[ self ]]->set_shutdown_sec(localclientnum, value);
}

