// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace player_insertion_choice;

// Namespace player_insertion_choice
// Method(s) 6 Total 13
class cplayer_insertion_choice : cluielem {

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 0, eflags: 0x8
    // Checksum 0xa022df69, Offset: 0x1f0
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xea42bfb7, Offset: 0x440
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 2, eflags: 0x0
    // Checksum 0x692ed424, Offset: 0x260
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 1, eflags: 0x0
    // Checksum 0x232e70c1, Offset: 0x2a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 0, eflags: 0x0
    // Checksum 0x27d1b8f0, Offset: 0x210
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("player_insertion_choice");
        cluielem::add_clientfield("_state", 1, 2, "int");
    }

    // Namespace cplayer_insertion_choice/player_insertion_choice
    // Params 2, eflags: 0x0
    // Checksum 0xfe1ac78f, Offset: 0x2d8
    // Size: 0x15c
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 0);
        } else if (#"groundvehicle" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 1);
        } else if (#"halojump" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 2);
        } else if (#"heli" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 3);
        } else {
            /#
                /#
                    assertmsg("<unknown string>");
                #/
            #/
        }
    }

}

// Namespace player_insertion_choice/player_insertion_choice
// Params 0, eflags: 0x0
// Checksum 0x2192ee9c, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new cplayer_insertion_choice();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace player_insertion_choice/player_insertion_choice
// Params 2, eflags: 0x0
// Checksum 0x5a13ee4c, Offset: 0x1c0
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

