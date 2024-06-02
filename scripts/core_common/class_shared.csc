// Atian COD Tools GSC CW decompiler test
#namespace class_shared;

// Namespace class_shared
// Method(s) 6 Total 6
class class_d0a0a887 {

    var _avail;
    var var_4198461b;

    // Namespace class_d0a0a887/class_shared
    // Params 0, eflags: 0x8
    // Checksum 0xdc520e06, Offset: 0x80
    // Size: 0x1a
    constructor() {
        _avail = [];
        var_4198461b = [];
    }

    // Namespace namespace_d0a0a887/class_shared
    // Params 1, eflags: 0x0
    // Checksum 0xb94e95d1, Offset: 0x268
    // Size: 0x74
    function function_271aec18(index) {
        assert(isdefined(var_4198461b[index]));
        var_4198461b[index] = undefined;
        assert(!isdefined(_avail[index]));
        _avail[index] = index;
    }

    // Namespace namespace_d0a0a887/class_shared
    // Params 1, eflags: 0x0
    // Checksum 0x97f42026, Offset: 0x138
    // Size: 0x128
    function function_65cdd2df(owner) {
        index = undefined;
        foreach (key, value in _avail) {
            index = key;
            break;
        }
        if (isdefined(index)) {
            assert(!isdefined(var_4198461b[index]));
            if (isdefined(owner)) {
                var_4198461b[index] = owner;
            } else {
                var_4198461b[index] = index;
            }
            assert(isdefined(_avail[index]));
            _avail[index] = undefined;
        }
        return index;
    }

    // Namespace namespace_d0a0a887/class_shared
    // Params 0, eflags: 0x0
    // Checksum 0x8524366a, Offset: 0x2e8
    // Size: 0xa
    function function_85a5add5() {
        return var_4198461b;
    }

    // Namespace namespace_d0a0a887/class_shared
    // Params 1, eflags: 0x0
    // Checksum 0xa7bbeb5b, Offset: 0xa8
    // Size: 0x88
    function init(count) {
        assert(_avail.size == 0);
        assert(var_4198461b.size == 0);
        for (i = 0; i < count; i++) {
            _avail[i] = i;
        }
    }

}

