#using scripts\core_common\struct;
#using scripts\core_common\vehicle_shared;

#namespace siegebot;

// Namespace siegebot/siegebot
// Params 0, eflags: 0x1
// Checksum 0x9f60a833, Offset: 0xa0
// Size: 0x2c
function autoexec main() {
    vehicle::add_vehicletype_callback("siegebot", &_setup_);
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x0
// Checksum 0xe16a79a, Offset: 0xd8
// Size: 0x48
function _setup_(*localclientnum) {
    if (isdefined(self.scriptbundlesettings)) {
        settings = getscriptbundle(self.scriptbundlesettings);
    }
    if (!isdefined(settings)) {
        return;
    }
}

