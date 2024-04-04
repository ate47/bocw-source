// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace player_insertion_choice;

// Namespace player_insertion_choice
// Method(s) 7 Total 14
class cplayer_insertion_choice : cluielem {

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 1, eflags: 0x0
    // Checksum 0x6b5dc6e2, Offset: 0x430
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 0, eflags: 0x0
    // Checksum 0x7a6bf8ea, Offset: 0x3b8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("player_insertion_choice");
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 0, eflags: 0x0
    // Checksum 0x34a516c3, Offset: 0x368
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("player_insertion_choice");
        cluielem::add_clientfield("_state", 1, 2, "int");
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 2, eflags: 0x0
    // Checksum 0x9a9c8916, Offset: 0x460
    // Size: 0x11c
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            set_data(localclientnum, "_state", 0);
            return;
        }
        if (#"groundvehicle" == state_name) {
            set_data(localclientnum, "_state", 1);
            return;
        }
        if (#"halojump" == state_name) {
            set_data(localclientnum, "_state", 2);
            return;
        }
        if (#"heli" == state_name) {
            set_data(localclientnum, "_state", 3);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 1, eflags: 0x0
    // Checksum 0x42d54529, Offset: 0x3e0
    // Size: 0x44
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_state(localclientnum, #"defaultstate");
    }

}

// Namespace player_insertion_choice/player_insertion_choice
// Params 0, eflags: 0x0
// Checksum 0xb41dd504, Offset: 0xe8
// Size: 0x16e
function register() {
    elem = new cplayer_insertion_choice();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"player_insertion_choice"])) {
        level.var_ae746e8f[#"player_insertion_choice"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"player_insertion_choice"])) {
        level.var_ae746e8f[#"player_insertion_choice"] = [];
    } else if (!isarray(level.var_ae746e8f[#"player_insertion_choice"])) {
        level.var_ae746e8f[#"player_insertion_choice"] = array(level.var_ae746e8f[#"player_insertion_choice"]);
    }
    level.var_ae746e8f[#"player_insertion_choice"][level.var_ae746e8f[#"player_insertion_choice"].size] = elem;
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 0, eflags: 0x0
// Checksum 0xb1e35c96, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new cplayer_insertion_choice();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 1, eflags: 0x0
// Checksum 0x307868d4, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 1, eflags: 0x0
// Checksum 0xc75bc85b, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 1, eflags: 0x0
// Checksum 0x2bcaf13c, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 2, eflags: 0x0
// Checksum 0xc84a2fe4, Offset: 0x318
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

