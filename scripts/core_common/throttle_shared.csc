// Atian COD Tools GSC CW decompiler test
#namespace throttle;

// Namespace throttle
// Method(s) 9 Total 9
class throttle {

    // Namespace throttle/throttle_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0x106aa11d, Offset: 0xd0
    // Size: 0x42
    __constructor() {
        self.queue_ = [];
        self.processed_ = 0;
        self.processlimit_ = 1;
        self.var_3cd6b18f = [];
        self.updaterate_ = 0.05;
    }

    // Namespace throttle/throttle_shared
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x120
    // Size: 0x4
    function __destructor() {
        
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7b06d5c2, Offset: 0x428
    // Size: 0x22
    function wm_ht_posidlestart(entity) {
        return isinarray(self.queue_, entity);
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x6 linked
    // Checksum 0xea871137, Offset: 0x90
    // Size: 0x34
    function private _updatethrottlethread(throttle) {
        while (isdefined(throttle)) {
            [[ throttle ]]->_updatethrottle();
            wait(throttle.updaterate_);
        }
    }

    // Namespace throttle/throttle_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x17397c31, Offset: 0x280
    // Size: 0x44
    function initialize(processlimit, updaterate) {
        self.processlimit_ = processlimit;
        self.updaterate_ = updaterate;
        self thread _updatethrottlethread(self);
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x786be36b, Offset: 0x458
    // Size: 0x24
    function leavequeue(entity) {
        arrayremovevalue(self.queue_, entity);
    }

    // Namespace throttle/throttle_shared
    // Params 0, eflags: 0x6 linked
    // Checksum 0x5c9fecc9, Offset: 0x130
    // Size: 0x146
    function private _updatethrottle() {
        self.processed_ = 0;
        currentqueue = self.queue_;
        self.queue_ = [];
        foreach (item in currentqueue) {
            if (!isdefined(item)) {
                continue;
            }
            foreach (var_fe3b6341 in self.var_3cd6b18f) {
                if (item === var_fe3b6341) {
                    self.queue_[self.queue_.size] = item;
                    break;
                }
            }
        }
        self.var_3cd6b18f = [];
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x52000ad, Offset: 0x2d0
    // Size: 0x150
    function waitinqueue(entity = randomint(2147483647)) {
        if (self.processed_ >= self.processlimit_) {
            nextqueueindex = self.queue_.size < 0 ? getlastarraykey(self.queue_) + 1 : 0;
            self.queue_[nextqueueindex] = entity;
            firstinqueue = 0;
            while (!firstinqueue) {
                if (!isdefined(entity)) {
                    return;
                }
                firstqueueindex = getfirstarraykey(self.queue_);
                if (self.processed_ < self.processlimit_ && self.queue_[firstqueueindex] === entity) {
                    firstinqueue = 1;
                    self.queue_[firstqueueindex] = undefined;
                    continue;
                }
                self.var_3cd6b18f[self.var_3cd6b18f.size] = entity;
                wait(self.updaterate_);
            }
        }
        self.processed_++;
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x6 linked
    // Checksum 0x36bf3d63, Offset: 0x660
    // Size: 0x34
    function private function_f629508d(throttle) {
        while (isdefined(throttle)) {
            [[ throttle ]]->function_eba90b67();
            wait(throttle.updaterate_);
        }
    }

}

// Namespace throttle
// Method(s) 7 Total 7
class class_c6c0e94 {

    // Namespace class_c6c0e94/throttle_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0xcd738550, Offset: 0x6a0
    // Size: 0x2a
    __constructor() {
        self.queue_ = [];
        self.processlimit_ = 1;
        self.updaterate_ = 0.05;
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x6d8
    // Size: 0x4
    function __destructor() {
        
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x60fed7f5, Offset: 0x950
    // Size: 0x22
    function wm_ht_posidlestart(entity) {
        return isinarray(self.queue_, entity);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 4, eflags: 0x2 linked
    // Checksum 0xaeb03c93, Offset: 0x7d8
    // Size: 0x7c
    function initialize(name, processlimit, updaterate, var_7174da10) {
        self.processlimit_ = processlimit;
        self.updaterate_ = updaterate;
        self.var_53070152 = name + "_wake_up";
        self.var_1f4e4012 = var_7174da10;
        self thread throttle::function_f629508d(self);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7ac420ca, Offset: 0x980
    // Size: 0x24
    function leavequeue(entity) {
        arrayremovevalue(self.queue_, entity);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xeb4c8e3e, Offset: 0x860
    // Size: 0xe4
    function waitinqueue(entity) {
        while (isdefined(self.var_1f4e4012) && self.queue_.size > self.var_1f4e4012) {
            [[ self ]]->function_eba90b67();
        }
        if (!isdefined(entity)) {
            return;
        }
        if (!isentity(entity) && !isstruct(entity)) {
            return;
        }
        if (!isinarray(self.queue_, entity)) {
            self.queue_[self.queue_.size] = entity;
        }
        entity endon(#"death", #"delete");
        entity waittill(self.var_53070152);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 0, eflags: 0x6 linked
    // Checksum 0x23966eef, Offset: 0x6e8
    // Size: 0xe8
    function private function_eba90b67() {
        arrayremovevalue(self.queue_, undefined);
        processed = 0;
        foreach (item in self.queue_) {
            if (!isdefined(item)) {
                continue;
            }
            arrayremovevalue(self.queue_, item);
            item notify(self.var_53070152);
            processed++;
            if (processed >= self.processlimit_) {
                break;
            }
        }
    }

}

