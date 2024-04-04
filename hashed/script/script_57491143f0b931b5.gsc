// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace seeker_mine_prompt;

// Namespace seeker_mine_prompt
// Method(s) 7 Total 14
class cseeker_mine_prompt : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xd118d251, Offset: 0x2c8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 1, eflags: 0x0
    // Checksum 0x87639077, Offset: 0x310
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 0, eflags: 0x0
    // Checksum 0xf08385bb, Offset: 0x250
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("seeker_mine_prompt");
        cluielem::add_clientfield("progress", 1, 5, "float");
        cluielem::add_clientfield("promptState", 1, 2, "int");
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 2, eflags: 0x0
    // Checksum 0xe511e991, Offset: 0x340
    // Size: 0x44
    function set_progress(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "progress", value);
    }

    // Namespace cseeker_mine_prompt/seeker_mine_prompt
    // Params 2, eflags: 0x0
    // Checksum 0x21d324ac, Offset: 0x390
    // Size: 0x44
    function set_promptstate(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "promptState", value);
    }

}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 0, eflags: 0x0
// Checksum 0x81cb9cb0, Offset: 0x100
// Size: 0x34
function register() {
    elem = new cseeker_mine_prompt();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x140
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x180
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x1a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 2, eflags: 0x0
// Checksum 0xe7d8672b, Offset: 0x1d0
// Size: 0x28
function set_progress(player, value) {
    [[ self ]]->set_progress(player, value);
}

// Namespace seeker_mine_prompt/seeker_mine_prompt
// Params 2, eflags: 0x0
// Checksum 0xab9f95ea, Offset: 0x200
// Size: 0x28
function set_promptstate(player, value) {
    [[ self ]]->set_promptstate(player, value);
}

