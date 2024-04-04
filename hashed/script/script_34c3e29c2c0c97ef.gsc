// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_perk_machine_choice;

// Namespace sr_perk_machine_choice
// Method(s) 6 Total 13
class class_a19c3039 : cluielem {

    // Namespace namespace_a19c3039/sr_perk_machine_choice
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6f7d0d69, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_a19c3039/sr_perk_machine_choice
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf9c8f613, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_perk_machine_choice");
    }

    // Namespace namespace_a19c3039/sr_perk_machine_choice
    // Params 0, eflags: 0x2 linked
    // Checksum 0x23de0498, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_perk_machine_choice");
    }

    // Namespace namespace_a19c3039/sr_perk_machine_choice
    // Params 1, eflags: 0x2 linked
    // Checksum 0xbf81c59, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 0, eflags: 0x2 linked
// Checksum 0x770955a1, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new class_a19c3039();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_perk_machine_choice"])) {
        level.var_ae746e8f[#"sr_perk_machine_choice"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_perk_machine_choice"])) {
        level.var_ae746e8f[#"sr_perk_machine_choice"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_perk_machine_choice"])) {
        level.var_ae746e8f[#"sr_perk_machine_choice"] = array(level.var_ae746e8f[#"sr_perk_machine_choice"]);
    }
    level.var_ae746e8f[#"sr_perk_machine_choice"][level.var_ae746e8f[#"sr_perk_machine_choice"].size] = elem;
}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 0, eflags: 0x0
// Checksum 0x5257ba30, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new class_a19c3039();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 1, eflags: 0x0
// Checksum 0x4c92b014, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 1, eflags: 0x0
// Checksum 0x9de286f, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_perk_machine_choice/sr_perk_machine_choice
// Params 1, eflags: 0x0
// Checksum 0xc32f1927, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

