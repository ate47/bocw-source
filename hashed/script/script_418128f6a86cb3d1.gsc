// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_1ff088cf;

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 0, eflags: 0x5
// Checksum 0xae72f2f7, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7322de50865bfb97", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 0, eflags: 0x6 linked
// Checksum 0x55dc8f90, Offset: 0xf8
// Size: 0xac
function private function_70a657d8() {
    level.var_1ff088cf = {#layers:[]};
    function_f75dd8e0("low", 6000, #"hash_3cb3a6fc9eb00337");
    callback::add_callback(#"freefall", &function_c9a18304);
    callback::add_callback(#"hash_171443902e2a22ee", &function_f99c2453);
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 1, eflags: 0x6 linked
// Checksum 0x2a4f2b3, Offset: 0x1b0
// Size: 0x74
function private function_c9a18304(eventstruct) {
    if (!(isplayer(self) || self isplayercorpse())) {
        return;
    }
    if (self function_21c0fa55()) {
        self start(eventstruct.localclientnum);
    }
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 1, eflags: 0x6 linked
// Checksum 0xff5eefa6, Offset: 0x230
// Size: 0x5c
function private function_f99c2453(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    if (self function_21c0fa55()) {
        self cleanup(eventstruct.localclientnum);
    }
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 3, eflags: 0x2 linked
// Checksum 0x72a20993, Offset: 0x298
// Size: 0x9c
function function_f75dd8e0(name, min_height, fx) {
    /#
        assert(!isdefined(level.var_1ff088cf.layers[name]));
    #/
    level.var_1ff088cf.layers[name] = {#fx:fx, #min_height:min_height, #name:name};
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 0, eflags: 0x6 linked
// Checksum 0xabc91936, Offset: 0x340
// Size: 0x32
function private function_59a04cbf() {
    if (isdefined(level.var_427d6976.altimeterseaheight)) {
        return level.var_427d6976.altimeterseaheight;
    }
    return 0;
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 1, eflags: 0x2 linked
// Checksum 0xbe2689a5, Offset: 0x380
// Size: 0x14c
function start(localclientnum) {
    if (!isdefined(self.var_1ff088cf)) {
        self.var_1ff088cf = [];
    }
    height = self.origin[2];
    var_3c752058 = function_59a04cbf();
    foreach (layer in level.var_1ff088cf.layers) {
        if (layer.min_height > height - var_3c752058) {
            continue;
        }
        if (isdefined(self.var_1ff088cf[layer.name])) {
            continue;
        }
        self.var_1ff088cf[layer.name] = util::playfxontag(localclientnum, layer.fx, self, "tag_origin");
    }
    self thread update(localclientnum);
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 1, eflags: 0x2 linked
// Checksum 0xa3541e0a, Offset: 0x4d8
// Size: 0x134
function update(localclientnum) {
    self endon(#"death", #"hash_44d009a3793f7389");
    var_3c752058 = function_59a04cbf();
    while (true) {
        foreach (name, fx in self.var_1ff088cf) {
            if (self.origin[2] < level.var_1ff088cf.layers[name].min_height - var_3c752058) {
                self function_2baaca3c(localclientnum, name);
            }
        }
        if (self.var_1ff088cf.size == 0) {
            return;
        }
        wait(1);
    }
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 1, eflags: 0x2 linked
// Checksum 0xa648881f, Offset: 0x618
// Size: 0xd2
function cleanup(localclientnum) {
    self notify(#"hash_44d009a3793f7389");
    if (!isdefined(self.var_1ff088cf)) {
        self.var_1ff088cf = [];
    }
    foreach (name, fx in self.var_1ff088cf) {
        stopfx(localclientnum, self.var_1ff088cf[name]);
    }
    self.var_1ff088cf = [];
}

// Namespace namespace_1ff088cf/namespace_1ff088cf
// Params 2, eflags: 0x2 linked
// Checksum 0x878cc5a9, Offset: 0x6f8
// Size: 0x5c
function function_2baaca3c(localclientnum, name) {
    if (isdefined(self.var_1ff088cf[name])) {
        stopfx(localclientnum, self.var_1ff088cf[name]);
        self.var_1ff088cf[name] = undefined;
    }
}

