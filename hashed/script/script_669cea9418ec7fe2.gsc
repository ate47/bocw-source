// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_corrupted_health_bar;

// Namespace zm_corrupted_health_bar
// Method(s) 9 Total 16
class class_c982469d : cluielem {

    // Namespace namespace_c982469d/zm_corrupted_health_bar
    // Params 1, eflags: 0x0
    // Checksum 0x44299abf, Offset: 0x570
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_c982469d/zm_corrupted_health_bar
    // Params 0, eflags: 0x0
    // Checksum 0x4eeb1b5d, Offset: 0x4b8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_corrupted_health_bar");
    }

    // Namespace namespace_c982469d/zm_corrupted_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0xa8cd27ea, Offset: 0x610
    // Size: 0x30
    function function_74adcd8a(localclientnum, value) {
        set_data(localclientnum, "armor_vis", value);
    }

    // Namespace namespace_c982469d/zm_corrupted_health_bar
    // Params 3, eflags: 0x0
    // Checksum 0x7270b8ec, Offset: 0x400
    // Size: 0xac
    function setup_clientfields(healthcallback, var_4ec2b207, var_ed81ff07) {
        cluielem::setup_clientfields("zm_corrupted_health_bar");
        cluielem::add_clientfield("health", 4000, 7, "float", healthcallback);
        cluielem::add_clientfield("armor", 4000, 7, "float", var_4ec2b207);
        cluielem::add_clientfield("armor_vis", 4000, 1, "int", var_ed81ff07);
    }

    // Namespace namespace_c982469d/zm_corrupted_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0xb569f4a0, Offset: 0x5d8
    // Size: 0x30
    function set_armor(localclientnum, value) {
        set_data(localclientnum, "armor", value);
    }

    // Namespace namespace_c982469d/zm_corrupted_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0x52782d7f, Offset: 0x5a0
    // Size: 0x30
    function set_health(localclientnum, value) {
        set_data(localclientnum, "health", value);
    }

    // Namespace namespace_c982469d/zm_corrupted_health_bar
    // Params 1, eflags: 0x0
    // Checksum 0x13abe95b, Offset: 0x4e0
    // Size: 0x88
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "health", 0);
        set_data(localclientnum, "armor", 0);
        set_data(localclientnum, "armor_vis", 0);
    }

}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 3, eflags: 0x0
// Checksum 0xa0d5b6f8, Offset: 0x100
// Size: 0x18e
function register(healthcallback, var_4ec2b207, var_ed81ff07) {
    elem = new class_c982469d();
    [[ elem ]]->setup_clientfields(healthcallback, var_4ec2b207, var_ed81ff07);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_corrupted_health_bar"])) {
        level.var_ae746e8f[#"zm_corrupted_health_bar"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_corrupted_health_bar"])) {
        level.var_ae746e8f[#"zm_corrupted_health_bar"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_corrupted_health_bar"])) {
        level.var_ae746e8f[#"zm_corrupted_health_bar"] = array(level.var_ae746e8f[#"zm_corrupted_health_bar"]);
    }
    level.var_ae746e8f[#"zm_corrupted_health_bar"][level.var_ae746e8f[#"zm_corrupted_health_bar"].size] = elem;
}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 0, eflags: 0x0
// Checksum 0x6fe368b5, Offset: 0x298
// Size: 0x34
function register_clientside() {
    elem = new class_c982469d();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 1, eflags: 0x0
// Checksum 0x81fae813, Offset: 0x2d8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 1, eflags: 0x0
// Checksum 0x7382a142, Offset: 0x300
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 1, eflags: 0x0
// Checksum 0xf859143f, Offset: 0x328
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 2, eflags: 0x0
// Checksum 0x4a40a87e, Offset: 0x350
// Size: 0x28
function set_health(localclientnum, value) {
    [[ self ]]->set_health(localclientnum, value);
}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 2, eflags: 0x0
// Checksum 0x13351e94, Offset: 0x380
// Size: 0x28
function set_armor(localclientnum, value) {
    [[ self ]]->set_armor(localclientnum, value);
}

// Namespace zm_corrupted_health_bar/zm_corrupted_health_bar
// Params 2, eflags: 0x0
// Checksum 0xf04c075d, Offset: 0x3b0
// Size: 0x28
function function_74adcd8a(localclientnum, value) {
    [[ self ]]->function_74adcd8a(localclientnum, value);
}

