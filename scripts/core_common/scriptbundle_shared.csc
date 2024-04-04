// Atian COD Tools GSC CW decompiler test
#namespace scriptbundle;

// Namespace scriptbundle
// Method(s) 6 Total 6
class cscriptbundleobjectbase {

    var _e_array;
    var _n_clientnum;
    var _o_scene;
    var _s;

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc96ddd77, Offset: 0x250
    // Size: 0x128
    function error(condition, str_msg) {
        if (condition) {
            if ([[ _o_scene ]]->is_testing()) {
                scriptbundle::error_on_screen(str_msg);
            } else {
                assertmsg([[ _o_scene ]]->get_type() + "<unknown string>" + function_9e72a96(_o_scene._str_name) + "<unknown string>" + (isdefined("<unknown string>") ? "<unknown string>" + "<unknown string>" : isdefined(_s.name) ? "<unknown string>" + _s.name : "<unknown string>") + "<unknown string>" + str_msg);
            }
            thread [[ _o_scene ]]->on_error();
            return true;
        }
        return false;
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9a546d8, Offset: 0x380
    // Size: 0x18
    function get_ent(localclientnum) {
        return _e_array[localclientnum];
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 4, eflags: 0x2 linked
    // Checksum 0x8a1749df, Offset: 0xa8
    // Size: 0xc6
    function init(s_objdef, o_bundle, e_ent, localclientnum) {
        _s = s_objdef;
        _o_scene = o_bundle;
        if (isdefined(e_ent)) {
            assert(!isdefined(localclientnum) || e_ent.localclientnum == localclientnum, "<unknown string>");
            _n_clientnum = e_ent.localclientnum;
            _e_array[_n_clientnum] = e_ent;
            return;
        }
        _e_array = [];
        if (isdefined(localclientnum)) {
            _n_clientnum = localclientnum;
        }
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x47e854c, Offset: 0x178
    // Size: 0xcc
    function log(str_msg) {
        println([[ _o_scene ]]->get_type() + "<unknown string>" + function_9e72a96(_o_scene._str_name) + "<unknown string>" + (isdefined("<unknown string>") ? "<unknown string>" + "<unknown string>" : isdefined(_s.name) ? "<unknown string>" + _s.name : "<unknown string>") + "<unknown string>" + str_msg);
    }

}

// Namespace scriptbundle
// Method(s) 12 Total 12
class cscriptbundlebase {

    var _a_objects;
    var _s;
    var _str_name;
    var _testing;

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0xf81512be, Offset: 0x500
    // Size: 0x1a
    constructor() {
        _a_objects = [];
        _testing = 0;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x191d43e8, Offset: 0x710
    // Size: 0x9c
    function error(condition, str_msg) {
        if (condition) {
            if (_testing) {
            } else {
                assertmsg(_s.type + "<unknown string>" + function_9e72a96(_str_name) + "<unknown string>" + str_msg);
            }
            thread on_error();
            return true;
        }
        return false;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6b888734, Offset: 0x5a8
    // Size: 0x12
    function get_vm() {
        return _s.vmtype;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb115ac4a, Offset: 0x588
    // Size: 0x12
    function get_type() {
        return _s.type;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x42f3d1ec, Offset: 0x600
    // Size: 0x74
    function add_object(o_object) {
        if (!isdefined(_a_objects)) {
            _a_objects = [];
        } else if (!isarray(_a_objects)) {
            _a_objects = array(_a_objects);
        }
        _a_objects[_a_objects.size] = o_object;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x215ab392, Offset: 0x4e8
    // Size: 0xc
    function on_error(*e) {
        
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7b5d6758, Offset: 0x5e8
    // Size: 0xa
    function is_testing() {
        return _testing;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x3cad2336, Offset: 0x680
    // Size: 0x24
    function remove_object(o_object) {
        arrayremovevalue(_a_objects, o_object);
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0x33164ab6, Offset: 0x538
    // Size: 0x42
    function init(str_name, s, b_testing) {
        _s = s;
        _str_name = str_name;
        _testing = b_testing;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x3ee54e, Offset: 0x5c8
    // Size: 0x12
    function get_objects() {
        return _s.objects;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2fc74125, Offset: 0x6b0
    // Size: 0x54
    function log(str_msg) {
        println(_s.type + "<unknown string>" + _str_name + "<unknown string>" + str_msg);
    }

}

// Namespace scriptbundle/scriptbundle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xbd733275, Offset: 0xa20
// Size: 0x34
function error_on_screen(str_msg) {
    if (str_msg != "") {
        errormsg(str_msg);
    }
}

