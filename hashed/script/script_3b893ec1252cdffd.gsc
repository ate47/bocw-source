// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace doa_overworld;

// Namespace doa_overworld
// Method(s) 6 Total 13
class cdoa_overworld : cluielem {

    // Namespace cdoa_overworld/doa_overworld
    // Params 1, eflags: 0x0
    // Checksum 0xe9672f07, Offset: 0x398
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cdoa_overworld/doa_overworld
    // Params 0, eflags: 0x0
    // Checksum 0x343720c7, Offset: 0x340
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("DOA_Overworld");
    }

    // Namespace cdoa_overworld/doa_overworld
    // Params 0, eflags: 0x0
    // Checksum 0xa460a7ea, Offset: 0x318
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("DOA_Overworld");
    }

    // Namespace cdoa_overworld/doa_overworld
    // Params 1, eflags: 0x0
    // Checksum 0xbb37dd6e, Offset: 0x368
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace doa_overworld/doa_overworld
// Params 0, eflags: 0x0
// Checksum 0x43ff8d20, Offset: 0xc8
// Size: 0x16e
function register() {
    elem = new cdoa_overworld();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"doa_overworld"])) {
        level.var_ae746e8f[#"doa_overworld"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"doa_overworld"])) {
        level.var_ae746e8f[#"doa_overworld"] = [];
    } else if (!isarray(level.var_ae746e8f[#"doa_overworld"])) {
        level.var_ae746e8f[#"doa_overworld"] = array(level.var_ae746e8f[#"doa_overworld"]);
    }
    level.var_ae746e8f[#"doa_overworld"][level.var_ae746e8f[#"doa_overworld"].size] = elem;
}

// Namespace doa_overworld/doa_overworld
// Params 0, eflags: 0x0
// Checksum 0xbb3da43e, Offset: 0x240
// Size: 0x34
function register_clientside() {
    elem = new cdoa_overworld();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace doa_overworld/doa_overworld
// Params 1, eflags: 0x0
// Checksum 0xb035c16b, Offset: 0x280
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace doa_overworld/doa_overworld
// Params 1, eflags: 0x0
// Checksum 0x8a5d773e, Offset: 0x2a8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_overworld/doa_overworld
// Params 1, eflags: 0x0
// Checksum 0xeaa27b4e, Offset: 0x2d0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

