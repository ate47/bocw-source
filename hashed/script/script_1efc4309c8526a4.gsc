// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace cp_chyron;

// Namespace cp_chyron
// Method(s) 12 Total 19
class ccp_chyron : cluielem {

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x12778941, Offset: 0x7d8
    // Size: 0x30
    function function_6b7b6e4(localclientnum, value) {
        set_data(localclientnum, "line3", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6fdafd2d, Offset: 0x738
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0xe92d5541, Offset: 0x7a0
    // Size: 0x30
    function function_147e5271(localclientnum, value) {
        set_data(localclientnum, "line2", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x122c199d, Offset: 0x848
    // Size: 0x30
    function function_2a377de3(localclientnum, value) {
        set_data(localclientnum, "line5", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7e5e4660, Offset: 0x768
    // Size: 0x30
    function function_4b584028(localclientnum, value) {
        set_data(localclientnum, "line1", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc51f50b9, Offset: 0x600
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("cp_chyron");
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa3082a41, Offset: 0x880
    // Size: 0x30
    function function_90bde5d3(localclientnum, value) {
        set_data(localclientnum, "index", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 6, eflags: 0x2 linked
    // Checksum 0x8f4bc3b1, Offset: 0x4b8
    // Size: 0x13c
    function setup_clientfields(*var_27185c26, *var_9da4cb62, *var_865fc474, *var_1909e1e7, *var_2ff7635c, var_eaf012fc) {
        cluielem::setup_clientfields("cp_chyron");
        cluielem::function_dcb34c80("string", "line1", 1);
        cluielem::function_dcb34c80("string", "line2", 1);
        cluielem::function_dcb34c80("string", "line3", 1);
        cluielem::function_dcb34c80("string", "line4", 1);
        cluielem::function_dcb34c80("string", "line5", 1);
        cluielem::add_clientfield("index", 1, 4, "int", var_eaf012fc);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7cde0dc1, Offset: 0x810
    // Size: 0x30
    function function_b7f01956(localclientnum, value) {
        set_data(localclientnum, "line4", value);
    }

    // Namespace ccp_chyron/cp_chyron
    // Params 1, eflags: 0x2 linked
    // Checksum 0x65bb909a, Offset: 0x628
    // Size: 0x108
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "line1", #"");
        set_data(localclientnum, "line2", #"");
        set_data(localclientnum, "line3", #"");
        set_data(localclientnum, "line4", #"");
        set_data(localclientnum, "line5", #"");
        set_data(localclientnum, "index", 0);
    }

}

// Namespace cp_chyron/cp_chyron
// Params 6, eflags: 0x2 linked
// Checksum 0xccbb2989, Offset: 0x110
// Size: 0x1a6
function register(var_27185c26, var_9da4cb62, var_865fc474, var_1909e1e7, var_2ff7635c, var_eaf012fc) {
    elem = new ccp_chyron();
    [[ elem ]]->setup_clientfields(var_27185c26, var_9da4cb62, var_865fc474, var_1909e1e7, var_2ff7635c, var_eaf012fc);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"cp_chyron"])) {
        level.var_ae746e8f[#"cp_chyron"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"cp_chyron"])) {
        level.var_ae746e8f[#"cp_chyron"] = [];
    } else if (!isarray(level.var_ae746e8f[#"cp_chyron"])) {
        level.var_ae746e8f[#"cp_chyron"] = array(level.var_ae746e8f[#"cp_chyron"]);
    }
    level.var_ae746e8f[#"cp_chyron"][level.var_ae746e8f[#"cp_chyron"].size] = elem;
}

// Namespace cp_chyron/cp_chyron
// Params 0, eflags: 0x0
// Checksum 0x500a6a77, Offset: 0x2c0
// Size: 0x34
function register_clientside() {
    elem = new ccp_chyron();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace cp_chyron/cp_chyron
// Params 1, eflags: 0x0
// Checksum 0xad54baf4, Offset: 0x300
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace cp_chyron/cp_chyron
// Params 1, eflags: 0x0
// Checksum 0x45c73413, Offset: 0x328
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_chyron/cp_chyron
// Params 1, eflags: 0x0
// Checksum 0xb22877fb, Offset: 0x350
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0xfa13aa05, Offset: 0x378
// Size: 0x28
function function_4b584028(localclientnum, value) {
    [[ self ]]->function_4b584028(localclientnum, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x53b65e82, Offset: 0x3a8
// Size: 0x28
function function_147e5271(localclientnum, value) {
    [[ self ]]->function_147e5271(localclientnum, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0xa1a30684, Offset: 0x3d8
// Size: 0x28
function function_6b7b6e4(localclientnum, value) {
    [[ self ]]->function_6b7b6e4(localclientnum, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x63dddc88, Offset: 0x408
// Size: 0x28
function function_b7f01956(localclientnum, value) {
    [[ self ]]->function_b7f01956(localclientnum, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x9e35efed, Offset: 0x438
// Size: 0x28
function function_2a377de3(localclientnum, value) {
    [[ self ]]->function_2a377de3(localclientnum, value);
}

// Namespace cp_chyron/cp_chyron
// Params 2, eflags: 0x0
// Checksum 0x14f109ef, Offset: 0x468
// Size: 0x28
function function_90bde5d3(localclientnum, value) {
    [[ self ]]->function_90bde5d3(localclientnum, value);
}

