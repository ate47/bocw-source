// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace prototype_self_revive;

// Namespace prototype_self_revive
// Method(s) 6 Total 13
class cprototype_self_revive : cluielem {

    // Namespace cprototype_self_revive/prototype_self_revive
    // Params 1, eflags: 0x0
    // Checksum 0xe9672f07, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cprototype_self_revive/prototype_self_revive
    // Params 0, eflags: 0x0
    // Checksum 0x343720c7, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("prototype_self_revive");
    }

    // Namespace cprototype_self_revive/prototype_self_revive
    // Params 0, eflags: 0x0
    // Checksum 0xa460a7ea, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("prototype_self_revive");
    }

    // Namespace cprototype_self_revive/prototype_self_revive
    // Params 1, eflags: 0x0
    // Checksum 0xbb37dd6e, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace prototype_self_revive/prototype_self_revive
// Params 0, eflags: 0x0
// Checksum 0xab61b76b, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new cprototype_self_revive();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"prototype_self_revive"])) {
        level.var_ae746e8f[#"prototype_self_revive"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"prototype_self_revive"])) {
        level.var_ae746e8f[#"prototype_self_revive"] = [];
    } else if (!isarray(level.var_ae746e8f[#"prototype_self_revive"])) {
        level.var_ae746e8f[#"prototype_self_revive"] = array(level.var_ae746e8f[#"prototype_self_revive"]);
    }
    level.var_ae746e8f[#"prototype_self_revive"][level.var_ae746e8f[#"prototype_self_revive"].size] = elem;
}

// Namespace prototype_self_revive/prototype_self_revive
// Params 0, eflags: 0x0
// Checksum 0xf32a2e57, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new cprototype_self_revive();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace prototype_self_revive/prototype_self_revive
// Params 1, eflags: 0x0
// Checksum 0xb035c16b, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace prototype_self_revive/prototype_self_revive
// Params 1, eflags: 0x0
// Checksum 0x8a5d773e, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace prototype_self_revive/prototype_self_revive
// Params 1, eflags: 0x0
// Checksum 0xeaa27b4e, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

