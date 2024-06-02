// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreak_detect.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using script_4daa124bc391e7ed;

#namespace killstreak_bundles;

// Namespace killstreak_bundles/killstreak_bundles
// Params 2, eflags: 0x2 linked
// Checksum 0x60abfce3, Offset: 0x98
// Size: 0xf4
function spawned(local_client_num, bundle) {
    self.var_22a05c26 = bundle;
    if (isdefined(bundle.var_7249d50f) && bundle.var_7249d50f > 0) {
        self enablevisioncircle(local_client_num, bundle.var_7249d50f);
    }
    if (bundle.var_101cf227 === 1) {
        self enableonradar();
    }
    if (bundle.var_101cf227 === 1) {
        self enableonradar();
    }
    if (bundle.var_bea37bdc === 1) {
        self namespace_9bcd7d72::function_bdda909b();
    }
    killstreak_detect::function_8ac48939(bundle);
}

// Namespace killstreak_bundles/killstreak_bundles
// Params 0, eflags: 0x2 linked
// Checksum 0xd3be5641, Offset: 0x198
// Size: 0xa
function function_48e9536e() {
    return self.var_22a05c26;
}

