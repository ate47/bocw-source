// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace luielemcounter;

// Namespace luielemcounter
// Method(s) 15 Total 22
class class_1beae0 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x4f2ad109, Offset: 0x3c0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x90bf7dd6, Offset: 0x7d0
    // Size: 0x4c
    function set_horizontal_alignment(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 10, value, 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x5fcbb415, Offset: 0x688
    // Size: 0x6c
    function set_green(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 7, int(value * (16 - 1)), 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x9fa4f87e, Offset: 0x540
    // Size: 0x4c
    function set_fadeovertime(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 4, value, 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 1, eflags: 0x0
    // Checksum 0x2bbf1674, Offset: 0x408
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x4df31c81, Offset: 0x778
    // Size: 0x4c
    function function_5d4dff63(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 9, value, 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x1978449f, Offset: 0x4e8
    // Size: 0x4c
    function set_height(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 3, value, 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0xd6eef5fa, Offset: 0x700
    // Size: 0x6c
    function set_blue(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 8, int(value * (16 - 1)), 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 0, eflags: 0x0
    // Checksum 0x5de92221, Offset: 0x398
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("LUIelemCounter");
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0xfd556e69, Offset: 0x490
    // Size: 0x4c
    function set_y(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 2, value, 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x23b1adb9, Offset: 0x598
    // Size: 0x6c
    function set_alpha(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 5, int(value * (16 - 1)), 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x76b4b8e1, Offset: 0x438
    // Size: 0x4c
    function set_x(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 1, value, 0);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0xa8db298a, Offset: 0x610
    // Size: 0x6c
    function set_red(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 6, int(value * (16 - 1)), 0);
    }

}

// Namespace luielemcounter/luielemcounter
// Params 0, eflags: 0x0
// Checksum 0x1fc1ff07, Offset: 0xc8
// Size: 0x34
function register() {
    elem = new class_1beae0();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x108
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace luielemcounter/luielemcounter
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x148
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielemcounter/luielemcounter
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x170
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xd2194910, Offset: 0x198
// Size: 0x28
function set_x(player, value) {
    [[ self ]]->set_x(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x19ee99f, Offset: 0x1c8
// Size: 0x28
function set_y(player, value) {
    [[ self ]]->set_y(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xaf14a468, Offset: 0x1f8
// Size: 0x28
function set_height(player, value) {
    [[ self ]]->set_height(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x8fab7bc0, Offset: 0x228
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x1605e1a7, Offset: 0x258
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x90480c91, Offset: 0x288
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x356d6122, Offset: 0x2b8
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x93ef1dc8, Offset: 0x2e8
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x3632d910, Offset: 0x318
// Size: 0x28
function function_5d4dff63(player, value) {
    [[ self ]]->function_5d4dff63(player, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xfb18b532, Offset: 0x348
// Size: 0x28
function set_horizontal_alignment(player, value) {
    [[ self ]]->set_horizontal_alignment(player, value);
}

