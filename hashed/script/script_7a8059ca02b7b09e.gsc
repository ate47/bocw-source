// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace telemetry;

// Namespace telemetry/namespace_f4a96b08
// Params 2, eflags: 0x2 linked
// Checksum 0x4549a9cc, Offset: 0x90
// Size: 0x2c
function add_callback(callback_id, var_f71e2d8f) {
    callback::add_callback(callback_id, var_f71e2d8f);
}

// Namespace telemetry/namespace_f4a96b08
// Params 2, eflags: 0x2 linked
// Checksum 0xa32be86a, Offset: 0xc8
// Size: 0x7a
function function_98df8818(callback, func) {
    if (!isdefined(level.var_1bebdc8e)) {
        level.var_1bebdc8e = [];
    }
    if (!isdefined(level.var_1bebdc8e[callback])) {
        level.var_1bebdc8e[callback] = [];
    }
    level.var_1bebdc8e[callback][level.var_1bebdc8e[callback].size] = func;
}

// Namespace telemetry/namespace_f4a96b08
// Params 2, eflags: 0x2 linked
// Checksum 0x7221740b, Offset: 0x150
// Size: 0xc8
function function_18135b72(callback, data) {
    if (!isdefined(level.var_1bebdc8e)) {
        return;
    }
    if (!isdefined(level.var_1bebdc8e[callback])) {
        return;
    }
    if (isdefined(data)) {
        for (i = 0; i < level.var_1bebdc8e[callback].size; i++) {
            thread [[ level.var_1bebdc8e[callback][i] ]](data);
        }
        return;
    }
    for (i = 0; i < level.var_1bebdc8e[callback].size; i++) {
        thread [[ level.var_1bebdc8e[callback][i] ]]();
    }
}

// Namespace telemetry/namespace_f4a96b08
// Params 0, eflags: 0x2 linked
// Checksum 0xe602d453, Offset: 0x220
// Size: 0x2c
function function_f397069a() {
    while (level.var_d3427749 === gettime()) {
        waitframe(1);
    }
    level.var_d3427749 = gettime();
}

