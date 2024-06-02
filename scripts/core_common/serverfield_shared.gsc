// Atian COD Tools GSC CW decompiler test
#namespace serverfield;

// Namespace serverfield/serverfield_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xb48953cc, Offset: 0x80
// Size: 0x4c
function register(str_name, n_version, n_bits, str_type, func_callback) {
    serverfieldregister(str_name, n_version, n_bits, str_type, func_callback);
}

// Namespace serverfield/serverfield_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4e930374, Offset: 0xd8
// Size: 0x22
function get(field_name) {
    return serverfieldgetvalue(self, field_name);
}

