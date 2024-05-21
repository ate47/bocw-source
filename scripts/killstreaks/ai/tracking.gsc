// Atian COD Tools GSC CW decompiler test
#namespace tracking;

// Namespace tracking/tracking
// Params 0, eflags: 0x4
// Checksum 0xf7db9dd, Offset: 0x80
// Size: 0x26
function private function_605bb988() {
    if (!isalive(self)) {
        return false;
    }
    return true;
}

// Namespace tracking/tracking
// Params 0, eflags: 0x4
// Checksum 0x56866218, Offset: 0xb0
// Size: 0xdc
function private function_8240e8b4() {
    if (function_605bb988()) {
        if (level.time >= self.tracking.breadcrumbs[self.tracking.current_crumb].time + self.tracking.time_step) {
            return;
        }
        self.tracking.current_crumb = (self.tracking.current_crumb + 1) % 20;
        self.tracking.breadcrumbs[self.tracking.current_crumb] = {#point:self.origin, #time:level.time};
    }
}

// Namespace tracking/tracking
// Params 1, eflags: 0x0
// Checksum 0x906da067, Offset: 0x198
// Size: 0x190
function init_tracking(window) {
    self.tracking = {#breadcrumbs:[], #current_crumb:0, #var_712fc53e:0, #velocity:(0, 0, 0), #speed:0, #window:window, #time_step:int(window * 1000) / 20};
    crumb = {#point:self.origin, #time:level.time};
    if (!isdefined(self.tracking.breadcrumbs)) {
        self.tracking.breadcrumbs = [];
    } else if (!isarray(self.tracking.breadcrumbs)) {
        self.tracking.breadcrumbs = array(self.tracking.breadcrumbs);
    }
    self.tracking.breadcrumbs[self.tracking.breadcrumbs.size] = crumb;
}

// Namespace tracking/tracking
// Params 0, eflags: 0x4
// Checksum 0x3d506718, Offset: 0x330
// Size: 0x3e
function private track_points() {
    self endon(#"disconnect");
    while (true) {
        self function_8240e8b4();
        waitframe(1);
    }
}

// Namespace tracking/tracking
// Params 1, eflags: 0x0
// Checksum 0xb418fdce, Offset: 0x378
// Size: 0x4c
function track(window) {
    if (isdefined(self.tracking)) {
        return;
    }
    self init_tracking(window);
    self thread track_points();
}

// Namespace tracking/tracking
// Params 0, eflags: 0x0
// Checksum 0x76d066e5, Offset: 0x3d0
// Size: 0x21e
function get_velocity() {
    if (level.time == self.tracking.var_712fc53e) {
        return self.tracking.velocity;
    }
    crumb_index = self.tracking.current_crumb % 20;
    crumb = self.tracking.breadcrumbs[crumb_index];
    last_point = crumb.point;
    last_time = crumb.time;
    travel = (0, 0, 0);
    total_time = 0;
    breadcrumb_count = self.tracking.breadcrumbs.size;
    for (index = breadcrumb_count - 2; index >= 0; index--) {
        crumb_index--;
        if (crumb_index < 0) {
            crumb_index += breadcrumb_count;
        }
        crumb = self.tracking.breadcrumbs[crumb_index];
        travel += last_point - crumb.point;
        total_time += last_time - crumb.time;
        last_point = crumb.point;
        last_time = crumb.time;
    }
    if (total_time > 0) {
        self.tracking.velocity = travel / float(total_time) / 1000;
        self.tracking.speed = length(travel) / float(total_time) / 1000;
    }
    self.tracking.var_712fc53e = level.time;
    return self.tracking.velocity;
}

/#

    // Namespace tracking/tracking
    // Params 0, eflags: 0x0
    // Checksum 0x6342cb4b, Offset: 0x5f8
    // Size: 0x8e
    function debug_tracking() {
        self endon(#"disconnect");
        while (true) {
            if (function_605bb988()) {
                velocity = self get_velocity();
                sphere(self.origin + velocity, 10, (1, 0, 0), 1, 0);
            }
            waitframe(1);
        }
    }

#/
