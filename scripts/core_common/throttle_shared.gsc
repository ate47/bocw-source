// Atian COD Tools GSC CW decompiler test
#namespace throttle;

// Namespace throttle
// Method(s) 9 Total 9
class throttle {

    var processed_;
    var processlimit_;
    var queue_;
    var updaterate_;
    var var_3cd6b18f;

    // Namespace throttle/throttle_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0x106aa11d, Offset: 0xd0
    // Size: 0x42
    constructor() {
        queue_ = [];
        processed_ = 0;
        processlimit_ = 1;
        var_3cd6b18f = [];
        updaterate_ = 0.05;
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7b06d5c2, Offset: 0x428
    // Size: 0x22
    function wm_ht_posidlestart(entity) {
        return isinarray(queue_, entity);
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
        processlimit_ = processlimit;
        updaterate_ = updaterate;
        self thread _updatethrottlethread(self);
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x786be36b, Offset: 0x458
    // Size: 0x24
    function leavequeue(entity) {
        arrayremovevalue(queue_, entity);
    }

    // Namespace throttle/throttle_shared
    // Params 0, eflags: 0x6 linked
    // Checksum 0x5c9fecc9, Offset: 0x130
    // Size: 0x146
    function private _updatethrottle() {
        processed_ = 0;
        currentqueue = queue_;
        queue_ = [];
        foreach (item in currentqueue) {
            if (!isdefined(item)) {
                continue;
            }
            foreach (var_fe3b6341 in var_3cd6b18f) {
                if (item === var_fe3b6341) {
                    queue_[queue_.size] = item;
                    break;
                }
            }
        }
        var_3cd6b18f = [];
    }

    // Namespace throttle/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x52000ad, Offset: 0x2d0
    // Size: 0x150
    function waitinqueue(entity = randomint(2147483647)) {
        if (processed_ >= processlimit_) {
            nextqueueindex = queue_.size < 0 ? 0 : getlastarraykey(queue_) + 1;
            queue_[nextqueueindex] = entity;
            firstinqueue = 0;
            while (!firstinqueue) {
                if (!isdefined(entity)) {
                    return;
                }
                firstqueueindex = getfirstarraykey(queue_);
                if (processed_ < processlimit_ && queue_[firstqueueindex] === entity) {
                    firstinqueue = 1;
                    queue_[firstqueueindex] = undefined;
                    continue;
                }
                var_3cd6b18f[var_3cd6b18f.size] = entity;
                wait(updaterate_);
            }
        }
        processed_++;
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

    var processlimit_;
    var queue_;
    var queuelimit_;
    var updaterate_;
    var var_53070152;

    // Namespace class_c6c0e94/throttle_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0xcd738550, Offset: 0x6a0
    // Size: 0x2a
    constructor() {
        queue_ = [];
        processlimit_ = 1;
        updaterate_ = 0.05;
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x60fed7f5, Offset: 0x950
    // Size: 0x22
    function wm_ht_posidlestart(entity) {
        return isinarray(queue_, entity);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 4, eflags: 0x2 linked
    // Checksum 0xaeb03c93, Offset: 0x7d8
    // Size: 0x7c
    function initialize(name, processlimit, updaterate, queuelimit) {
        processlimit_ = processlimit;
        updaterate_ = updaterate;
        var_53070152 = name + "_wake_up";
        queuelimit_ = queuelimit;
        self thread throttle::function_f629508d(self);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7ac420ca, Offset: 0x980
    // Size: 0x24
    function leavequeue(entity) {
        arrayremovevalue(queue_, entity);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xeb4c8e3e, Offset: 0x860
    // Size: 0xe4
    function waitinqueue(entity) {
        while (isdefined(queuelimit_) && queue_.size > queuelimit_) {
            function_eba90b67();
        }
        if (!isdefined(entity)) {
            return;
        }
        if (!isentity(entity) && !isstruct(entity)) {
            return;
        }
        if (!isinarray(queue_, entity)) {
            queue_[queue_.size] = entity;
        }
        entity endon(#"death", #"delete");
        entity waittill(var_53070152);
    }

    // Namespace namespace_c6c0e94/throttle_shared
    // Params 0, eflags: 0x6 linked
    // Checksum 0x23966eef, Offset: 0x6e8
    // Size: 0xe8
    function private function_eba90b67() {
        arrayremovevalue(queue_, undefined);
        processed = 0;
        foreach (item in queue_) {
            if (!isdefined(item)) {
                continue;
            }
            arrayremovevalue(queue_, item);
            item notify(var_53070152);
            processed++;
            if (processed >= processlimit_) {
                break;
            }
        }
    }

}

