// Atian COD Tools GSC CW decompiler test
#namespace serverfield;

// Namespace serverfield/serverfield_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xd7137367, Offset: 0x80
// Size: 0x44
function register(str_name, n_version, n_bits, str_type) {
    serverfieldregister(str_name, n_version, n_bits, str_type);
}

// Namespace serverfield/serverfield_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x95117dd9, Offset: 0xd0
// Size: 0x2c
function set(str_field_name, n_value) {
    serverfieldsetval(self, str_field_name, n_value);
}

// Namespace serverfield/serverfield_shared
// Params 1, eflags: 0x0
// Checksum 0x4c1bd6ae, Offset: 0x108
// Size: 0x22
function get(field_name) {
    return serverfieldgetvalue(self, field_name);
}

