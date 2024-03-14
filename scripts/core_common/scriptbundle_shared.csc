// Atian COD Tools GSC CW decompiler test
#namespace scriptbundle;

// Namespace scriptbundle
// Method(s) 6 Total 6
class cscriptbundleobjectbase {

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0x80f724d1, Offset: 0x88
    // Size: 0x4
    __constructor() {
        
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x98
    // Size: 0x4
    function __destructor() {
        
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc96ddd77, Offset: 0x250
    // Size: 0x128
    function error(condition, str_msg) {
        if (condition) {
            if ([[ self._o_scene ]]->is_testing()) {
                scriptbundle::error_on_screen(str_msg);
            } else {
                /#
                    /#
                        assertmsg([[ self._o_scene ]]->get_type() + "<unknown string>" + function_9e72a96(self._o_scene._str_name) + "<unknown string>" + (isdefined("<unknown string>") ? "<unknown string>" + "<unknown string>" : isdefined(self._s.name) ? "<unknown string>" + self._s.name : "<unknown string>") + "<unknown string>" + str_msg);
                    #/
                #/
            }
            thread [[ self._o_scene ]]->on_error();
            return true;
        }
        return false;
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9a546d8, Offset: 0x380
    // Size: 0x18
    function get_ent(localclientnum) {
        return self._e_array[localclientnum];
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 4, eflags: 0x2 linked
    // Checksum 0x8a1749df, Offset: 0xa8
    // Size: 0xc6
    function init(s_objdef, o_bundle, e_ent, localclientnum) {
        self._s = s_objdef;
        self._o_scene = o_bundle;
        if (isdefined(e_ent)) {
            /#
                assert(!isdefined(localclientnum) || e_ent.localclientnum == localclientnum, "<unknown string>");
            #/
            self._n_clientnum = e_ent.localclientnum;
            self._e_array[self._n_clientnum] = e_ent;
            return;
        }
        self._e_array = [];
        if (isdefined(localclientnum)) {
            self._n_clientnum = localclientnum;
        }
    }

    // Namespace cscriptbundleobjectbase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x47e854c, Offset: 0x178
    // Size: 0xcc
    function log(str_msg) {
        /#
            println([[ self._o_scene ]]->get_type() + "<unknown string>" + function_9e72a96(self._o_scene._str_name) + "<unknown string>" + (isdefined("<unknown string>") ? "<unknown string>" + "<unknown string>" : isdefined(self._s.name) ? "<unknown string>" + self._s.name : "<unknown string>") + "<unknown string>" + str_msg);
        #/
    }

}

// Namespace scriptbundle
// Method(s) 12 Total 12
class cscriptbundlebase {

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0xf81512be, Offset: 0x500
    // Size: 0x1a
    __constructor() {
        self._a_objects = [];
        self._testing = 0;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x528
    // Size: 0x4
    function __destructor() {
        
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x191d43e8, Offset: 0x710
    // Size: 0x9c
    function error(condition, str_msg) {
        if (condition) {
            if (self._testing) {
            } else {
                /#
                    /#
                        assertmsg(self._s.type + "<unknown string>" + function_9e72a96(self._str_name) + "<unknown string>" + str_msg);
                    #/
                #/
            }
            thread [[ self ]]->on_error();
            return true;
        }
        return false;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6b888734, Offset: 0x5a8
    // Size: 0x12
    function get_vm() {
        return self._s.vmtype;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb115ac4a, Offset: 0x588
    // Size: 0x12
    function get_type() {
        return self._s.type;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x42f3d1ec, Offset: 0x600
    // Size: 0x74
    function add_object(o_object) {
        if (!isdefined(self._a_objects)) {
            self._a_objects = [];
        } else if (!isarray(self._a_objects)) {
            self._a_objects = array(self._a_objects);
        }
        self._a_objects[self._a_objects.size] = o_object;
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
        return self._testing;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x3cad2336, Offset: 0x680
    // Size: 0x24
    function remove_object(o_object) {
        arrayremovevalue(self._a_objects, o_object);
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0x33164ab6, Offset: 0x538
    // Size: 0x42
    function init(str_name, s, b_testing) {
        self._s = s;
        self._str_name = str_name;
        self._testing = b_testing;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x3ee54e, Offset: 0x5c8
    // Size: 0x12
    function get_objects() {
        return self._s.objects;
    }

    // Namespace cscriptbundlebase/scriptbundle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2fc74125, Offset: 0x6b0
    // Size: 0x54
    function log(str_msg) {
        /#
            println(self._s.type + "<unknown string>" + self._str_name + "<unknown string>" + str_msg);
        #/
    }

}

// Namespace scriptbundle/scriptbundle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xbd733275, Offset: 0xa20
// Size: 0x34
function error_on_screen(str_msg) {
    if (str_msg != "") {
        /#
            errormsg(str_msg);
        #/
    }
}

