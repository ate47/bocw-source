// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace clouds;

// Namespace clouds/clouds
// Params 0, eflags: 0x5
// Checksum 0xae72f2f7, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"clouds", &preinit, undefined, undefined, undefined);
}

// Namespace clouds/clouds
// Params 0, eflags: 0x6 linked
// Checksum 0x55dc8f90, Offset: 0xf8
// Size: 0xac
function private preinit() {
    level.clouds = {#layers:[]};
    function_f75dd8e0("low", 6000, #"hash_3cb3a6fc9eb00337");
    callback::add_callback(#"freefall", &function_c9a18304);
    callback::add_callback(#"hash_171443902e2a22ee", &function_f99c2453);
}

// Namespace clouds/clouds
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

// Namespace clouds/clouds
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

// Namespace clouds/clouds
// Params 3, eflags: 0x2 linked
// Checksum 0x72a20993, Offset: 0x298
// Size: 0x9c
function function_f75dd8e0(name, min_height, fx) {
    assert(!isdefined(level.clouds.layers[name]));
    level.clouds.layers[name] = {#name:name, #min_height:min_height, #fx:fx};
}

// Namespace clouds/clouds
// Params 0, eflags: 0x6 linked
// Checksum 0xabc91936, Offset: 0x340
// Size: 0x32
function private function_59a04cbf() {
    if (isdefined(level.var_427d6976.altimeterseaheight)) {
        return level.var_427d6976.altimeterseaheight;
    }
    return 0;
}

// Namespace clouds/clouds
// Params 1, eflags: 0x2 linked
// Checksum 0xbe2689a5, Offset: 0x380
// Size: 0x14c
function start(localclientnum) {
    if (!isdefined(self.clouds)) {
        self.clouds = [];
    }
    height = self.origin[2];
    var_3c752058 = function_59a04cbf();
    foreach (layer in level.clouds.layers) {
        if (layer.min_height > height - var_3c752058) {
            continue;
        }
        if (isdefined(self.clouds[layer.name])) {
            continue;
        }
        self.clouds[layer.name] = util::playfxontag(localclientnum, layer.fx, self, "tag_origin");
    }
    self thread update(localclientnum);
}

// Namespace clouds/clouds
// Params 1, eflags: 0x2 linked
// Checksum 0xa3541e0a, Offset: 0x4d8
// Size: 0x134
function update(localclientnum) {
    self endon(#"death", #"hash_44d009a3793f7389");
    var_3c752058 = function_59a04cbf();
    while (true) {
        foreach (name, fx in self.clouds) {
            if (self.origin[2] < level.clouds.layers[name].min_height - var_3c752058) {
                self function_2baaca3c(localclientnum, name);
            }
        }
        if (self.clouds.size == 0) {
            return;
        }
        wait(1);
    }
}

// Namespace clouds/clouds
// Params 1, eflags: 0x2 linked
// Checksum 0xa648881f, Offset: 0x618
// Size: 0xd2
function cleanup(localclientnum) {
    self notify(#"hash_44d009a3793f7389");
    if (!isdefined(self.clouds)) {
        self.clouds = [];
    }
    foreach (name, fx in self.clouds) {
        stopfx(localclientnum, self.clouds[name]);
    }
    self.clouds = [];
}

// Namespace clouds/clouds
// Params 2, eflags: 0x2 linked
// Checksum 0x878cc5a9, Offset: 0x6f8
// Size: 0x5c
function function_2baaca3c(localclientnum, name) {
    if (isdefined(self.clouds[name])) {
        stopfx(localclientnum, self.clouds[name]);
        self.clouds[name] = undefined;
    }
}

