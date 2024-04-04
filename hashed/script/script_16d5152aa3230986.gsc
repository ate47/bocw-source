// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace cp_killcam;

// Namespace cp_killcam
// Method(s) 6 Total 13
class class_a5d10b03 : cluielem {

    // Namespace namespace_a5d10b03/cp_killcam
    // Params 1, eflags: 0x2 linked
    // Checksum 0x986df31b, Offset: 0x398
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_a5d10b03/cp_killcam
    // Params 0, eflags: 0x2 linked
    // Checksum 0x909e9eb7, Offset: 0x340
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("cp_killcam");
    }

    // Namespace namespace_a5d10b03/cp_killcam
    // Params 0, eflags: 0x2 linked
    // Checksum 0xab8374e, Offset: 0x318
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("cp_killcam");
    }

    // Namespace namespace_a5d10b03/cp_killcam
    // Params 1, eflags: 0x2 linked
    // Checksum 0xe84c49c8, Offset: 0x368
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace cp_killcam/cp_killcam
// Params 0, eflags: 0x0
// Checksum 0xe8c616ce, Offset: 0xc8
// Size: 0x16e
function register() {
    elem = new class_a5d10b03();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"cp_killcam"])) {
        level.var_ae746e8f[#"cp_killcam"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"cp_killcam"])) {
        level.var_ae746e8f[#"cp_killcam"] = [];
    } else if (!isarray(level.var_ae746e8f[#"cp_killcam"])) {
        level.var_ae746e8f[#"cp_killcam"] = array(level.var_ae746e8f[#"cp_killcam"]);
    }
    level.var_ae746e8f[#"cp_killcam"][level.var_ae746e8f[#"cp_killcam"].size] = elem;
}

// Namespace cp_killcam/cp_killcam
// Params 0, eflags: 0x2 linked
// Checksum 0x914b7f0f, Offset: 0x240
// Size: 0x34
function register_clientside() {
    elem = new class_a5d10b03();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace cp_killcam/cp_killcam
// Params 1, eflags: 0x2 linked
// Checksum 0xeb7ba0ec, Offset: 0x280
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace cp_killcam/cp_killcam
// Params 1, eflags: 0x2 linked
// Checksum 0x3c077b77, Offset: 0x2a8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_killcam/cp_killcam
// Params 1, eflags: 0x2 linked
// Checksum 0xb115c4c7, Offset: 0x2d0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

