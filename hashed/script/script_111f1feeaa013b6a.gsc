// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace bountyhunterbuy;

// Namespace bountyhunterbuy
// Method(s) 6 Total 13
class cbountyhunterbuy : cluielem {

    // Namespace cbountyhunterbuy/bountyhunterbuy
    // Params 1, eflags: 0x0
    // Checksum 0x4b0e20f4, Offset: 0x398
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cbountyhunterbuy/bountyhunterbuy
    // Params 0, eflags: 0x0
    // Checksum 0xe0f80ea9, Offset: 0x340
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("BountyHunterBuy");
    }

    // Namespace cbountyhunterbuy/bountyhunterbuy
    // Params 0, eflags: 0x0
    // Checksum 0x64e42663, Offset: 0x318
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("BountyHunterBuy");
    }

    // Namespace cbountyhunterbuy/bountyhunterbuy
    // Params 1, eflags: 0x0
    // Checksum 0xa42db578, Offset: 0x368
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 0, eflags: 0x0
// Checksum 0x4991c046, Offset: 0xc8
// Size: 0x16e
function register() {
    elem = new cbountyhunterbuy();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"bountyhunterbuy"])) {
        level.var_ae746e8f[#"bountyhunterbuy"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"bountyhunterbuy"])) {
        level.var_ae746e8f[#"bountyhunterbuy"] = [];
    } else if (!isarray(level.var_ae746e8f[#"bountyhunterbuy"])) {
        level.var_ae746e8f[#"bountyhunterbuy"] = array(level.var_ae746e8f[#"bountyhunterbuy"]);
    }
    level.var_ae746e8f[#"bountyhunterbuy"][level.var_ae746e8f[#"bountyhunterbuy"].size] = elem;
}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 0, eflags: 0x0
// Checksum 0x26bec83b, Offset: 0x240
// Size: 0x34
function register_clientside() {
    elem = new cbountyhunterbuy();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 1, eflags: 0x0
// Checksum 0xb727132c, Offset: 0x280
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 1, eflags: 0x0
// Checksum 0x145e7a8e, Offset: 0x2a8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace bountyhunterbuy/bountyhunterbuy
// Params 1, eflags: 0x0
// Checksum 0xc3c0519b, Offset: 0x2d0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

