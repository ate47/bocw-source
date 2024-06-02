// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace clientfield;

// Namespace clientfield/clientfield_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x3511f407, Offset: 0xe0
// Size: 0x4c
function register(str_pool_name, str_name, n_version, n_bits, str_type) {
    registerclientfield(str_pool_name, str_name, n_version, n_bits, str_type);
}

// Namespace clientfield/clientfield_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x22a9ddf5, Offset: 0x138
// Size: 0x44
function function_5b7d846d(str_name, n_version, n_bits, str_type) {
    registerclientfield("worlduimodel", str_name, n_version, n_bits, str_type);
}

// Namespace clientfield/clientfield_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x7d8cd162, Offset: 0x188
// Size: 0x4c
function register_clientuimodel(str_name, n_version, n_bits, str_type, var_59f69872) {
    registerclientfield("clientuimodel", str_name, n_version, n_bits, str_type, var_59f69872);
}

// Namespace clientfield/clientfield_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xf8214521, Offset: 0x1e0
// Size: 0x9c
function register_luielem(menu_name, var_483e93f7, field_name, n_version, n_bits, str_type, var_59f69872) {
    registerclientfield("clientuimodel", "luielement." + menu_name + "." + (isdefined(var_483e93f7) ? "" + var_483e93f7 : "") + field_name, n_version, n_bits, str_type, var_59f69872);
}

// Namespace clientfield/clientfield_shared
// Params 4, eflags: 0x0
// Checksum 0x4f492a30, Offset: 0x288
// Size: 0x44
function register_bgcache(poolname, var_b693fec6, uniqueid, version) {
    function_3ff577e6(poolname, var_b693fec6, uniqueid, version);
}

// Namespace clientfield/clientfield_shared
// Params 3, eflags: 0x0
// Checksum 0xcbe11130, Offset: 0x2d8
// Size: 0x3c
function function_d89771ec(var_b693fec6, uniqueid, version) {
    function_3ff577e6("worlduimodel", var_b693fec6, uniqueid, version);
}

// Namespace clientfield/clientfield_shared
// Params 4, eflags: 0x0
// Checksum 0x36793bc1, Offset: 0x320
// Size: 0x44
function function_91cd7763(var_b693fec6, uniqueid, version, var_59f69872) {
    function_3ff577e6("clientuimodel", var_b693fec6, uniqueid, version, var_59f69872);
}

// Namespace clientfield/clientfield_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x7fb41075, Offset: 0x370
// Size: 0x94
function function_b63c5dfe(var_b693fec6, menu_name, var_483e93f7, field_name, version, var_59f69872) {
    function_3ff577e6("clientuimodel", var_b693fec6, "luielement." + menu_name + "." + (isdefined(var_483e93f7) ? "" + var_483e93f7 : "") + field_name, version, var_59f69872);
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc5b572df, Offset: 0x410
// Size: 0x2c
function set(str_field_name, n_value) {
    self thread _set(str_field_name, n_value);
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x38a4c50b, Offset: 0x448
// Size: 0x10c
function _set(str_field_name, n_value) {
    if (!isdefined(str_field_name)) {
        assertmsg("<unknown string>");
        return;
    }
    if (!level flag::get(#"hash_4f4b65226250fc99")) {
        var_17b7891d = "1be1d21ba1b21218" + str_field_name;
        self notify(var_17b7891d);
        self endon(var_17b7891d);
        self endon(#"death");
        level flag::wait_till(#"hash_4f4b65226250fc99");
    }
    if (self == level) {
        codesetworldclientfield(str_field_name, n_value);
        return;
    }
    codesetclientfield(self, str_field_name, n_value);
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe36477ab, Offset: 0x560
// Size: 0x7c
function is_registered(field_name) {
    if (self == level) {
        return function_6de43d39(field_name);
    }
    var_24d738a9 = function_cf197fb7(self);
    if (var_24d738a9 == -1) {
        return 0;
    }
    return function_bda9951d(var_24d738a9, field_name);
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xd27064bd, Offset: 0x5e8
// Size: 0x22
function can_set(*str_field_name, *n_value) {
    return function_26b3a620();
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x74e85e15, Offset: 0x618
// Size: 0x84
function set_to_player(str_field_name, n_value) {
    assert(isplayer(self), "<unknown string>");
    if (isplayer(self)) {
        codesetplayerstateclientfield(self, str_field_name, n_value);
    }
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x0
// Checksum 0x7ed87319, Offset: 0x6a8
// Size: 0x22
function function_ec6130f9(str_field_name) {
    return function_3424020a(str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xcbf32486, Offset: 0x6d8
// Size: 0x2c
function set_player_uimodel(str_field_name, n_value) {
    codesetuimodelclientfield(self, str_field_name, n_value);
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x0
// Checksum 0x24b2061a, Offset: 0x710
// Size: 0x22
function function_40aa8832(str_field_name) {
    return function_fcaed52(str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x2e728e56, Offset: 0x740
// Size: 0x74
function function_9bf78ef8(menu_name, var_483e93f7, str_field_name, n_value) {
    codesetuimodelclientfield(self, "luielement." + menu_name + "." + (isdefined(var_483e93f7) ? "" + var_483e93f7 : "") + str_field_name, n_value);
}

// Namespace clientfield/clientfield_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x42d0fdfd, Offset: 0x7c0
// Size: 0x6c
function function_bb878fc3(menu_name, var_483e93f7, str_field_name) {
    codeincrementuimodelclientfield(self, "luielement." + menu_name + "." + (isdefined(var_483e93f7) ? "" + var_483e93f7 : "") + str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcf32fd46, Offset: 0x838
// Size: 0x22
function get_player_uimodel(str_field_name) {
    return codegetuimodelclientfield(self, str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 3, eflags: 0x0
// Checksum 0x972c0198, Offset: 0x868
// Size: 0x6a
function function_f7ae6994(menu_name, var_483e93f7, str_field_name) {
    return codegetuimodelclientfield(self, "luielement." + menu_name + "." + (isdefined(var_483e93f7) ? "" + var_483e93f7 : "") + str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x19befd4a, Offset: 0x8e0
// Size: 0x2c
function set_world_uimodel(str_field_name, n_value) {
    codesetworlduimodelfield(str_field_name, n_value);
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x0
// Checksum 0x1e5c4ced, Offset: 0x918
// Size: 0x22
function function_1bea0e72(str_field_name) {
    return function_a02eca40(str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfd3261fd, Offset: 0x948
// Size: 0x22
function get_world_uimodel(str_field_name) {
    return codegetworlduimodelfield(str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x0
// Checksum 0x4ac3353b, Offset: 0x978
// Size: 0x22
function increment_world_uimodel(str_field_name) {
    return codeincrementworlduimodelfield(str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xaf9dd922, Offset: 0x9a8
// Size: 0x2c
function increment(str_field_name, n_increment_count) {
    self thread _increment(str_field_name, n_increment_count);
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xc6b4084b, Offset: 0x9e0
// Size: 0x144
function private _increment(str_field_name, n_increment_count = 1) {
    if (self != level) {
        self endon(#"death", #"disconnect");
        waittillframeend();
    }
    for (i = 0; i < n_increment_count; i++) {
        if (self == level) {
            codeincrementworldclientfield(str_field_name);
            continue;
        }
        assert(isdefined(level.var_58bc5d04));
        if (isdefined(self.birthtime) && self.birthtime >= level.var_58bc5d04) {
            util::wait_network_frame();
        }
        if (self.birthtime === gettime()) {
            util::wait_network_frame();
        }
        if (isdefined(self)) {
            if (self.birthtime === gettime()) {
                continue;
            }
            codeincrementclientfield(self, str_field_name);
        }
    }
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb0ec2a8d, Offset: 0xb30
// Size: 0x10c
function increment_uimodel(str_field_name, n_increment_count = 1) {
    if (self == level) {
        foreach (player in level.players) {
            for (i = 0; i < n_increment_count; i++) {
                codeincrementuimodelclientfield(player, str_field_name);
            }
        }
        return;
    }
    for (i = 0; i < n_increment_count; i++) {
        codeincrementuimodelclientfield(self, str_field_name);
    }
}

// Namespace clientfield/clientfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4418eb87, Offset: 0xc48
// Size: 0x5c
function increment_to_player(str_field_name, n_increment_count = 1) {
    for (i = 0; i < n_increment_count; i++) {
        codeincrementplayerstateclientfield(self, str_field_name);
    }
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf0bea7a8, Offset: 0xcb0
// Size: 0x44
function get(str_field_name) {
    if (self == level) {
        return codegetworldclientfield(str_field_name);
    }
    return codegetclientfield(self, str_field_name);
}

// Namespace clientfield/clientfield_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfb30eaa5, Offset: 0xd00
// Size: 0x22
function get_to_player(field_name) {
    return codegetplayerstateclientfield(self, field_name);
}

