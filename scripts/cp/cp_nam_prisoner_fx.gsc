#using script_671f58f0b7aa833d;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace cp_nam_prisoner_fx;

// Namespace cp_nam_prisoner_fx/cp_nam_prisoner_fx
// Params 1, eflags: 0x0
// Checksum 0xbc9e35a4, Offset: 0x438
// Size: 0x29a
function function_e5b8c5f(var_e5c02698) {
    level.var_731c10af.paths[var_e5c02698].var_97ee53a9 = [];
    array = level.var_731c10af.paths[var_e5c02698].var_97ee53a9;
    switch (var_e5c02698) {
    case #"intro":
        break;
    case #"rice_paddies":
        array[array.size] = "AmbFx_Rice_Paddies";
        array[array.size] = "AmbFx_Rice_Paddies_Fire";
        array[array.size] = "AmbFx_Mountain_Vista_West";
        array[array.size] = "AmbFx_Rice_Paddies_Heli_Fire";
        break;
    case #"jungle_path":
        array[array.size] = "AmbFx_Jungle_Path";
        break;
    case #"waterfall_path":
        array[array.size] = "AmbFx_Waterfall_Path";
        break;
    case #"hash_37049c08cb142cc7":
        array[array.size] = "AmbFx_Creek_Path";
        array[array.size] = "AmbFx_Creek_Path_Waterfall";
        break;
    case #"hash_5a141a81a5112819":
        array[array.size] = "AmbFx_River_Path";
        break;
    case #"hash_40947083f371555e":
        break;
    case #"sniper_overlook":
        array[array.size] = "AmbFx_Sniper_Overlook";
        array[array.size] = "AmbFx_Mountain_Vista_West";
        break;
    case #"village":
        array[array.size] = "AmbFx_Village";
        array[array.size] = "AmbFx_Village_Night";
        break;
    case #"caves":
        array[array.size] = "AmbFx_Caves";
        array[array.size] = "AmbFx_Caves_Dust";
        break;
    case #"rat_tunnels":
        array[array.size] = "AmbFx_Tunnels";
        break;
    default:
        break;
    }
}

// Namespace cp_nam_prisoner_fx/cp_nam_prisoner_fx
// Params 1, eflags: 0x0
// Checksum 0x410478a6, Offset: 0x6e0
// Size: 0x250
function function_158c95d7(var_e5c02698) {
    while (true) {
        if (!level flag::get("flag_fx_exploder_start_" + var_e5c02698)) {
            level flag::wait_till("flag_fx_exploder_start_" + var_e5c02698);
            level flag::clear("flag_fx_exploder_end_" + var_e5c02698);
            foreach (exploder_string in level.var_731c10af.paths[var_e5c02698].var_97ee53a9) {
                exploder::exploder(exploder_string);
                waitframe(1);
            }
        }
        waitframe(1);
        if (!level flag::get("flag_fx_exploder_end_" + var_e5c02698)) {
            level flag::wait_till("flag_fx_exploder_end_" + var_e5c02698);
            level flag::clear("flag_fx_exploder_start_" + var_e5c02698);
            foreach (exploder_string in level.var_731c10af.paths[var_e5c02698].var_97ee53a9) {
                exploder::stop_exploder(exploder_string);
                waitframe(1);
            }
        }
        waitframe(1);
    }
}

// Namespace cp_nam_prisoner_fx/cp_nam_prisoner_fx
// Params 2, eflags: 0x0
// Checksum 0xb0f6eaec, Offset: 0x938
// Size: 0xc2
function function_65ad625d(exploder, state) {
    switch (state) {
    case 0:
        exploder::exploder(exploder);
        break;
    case 1:
        exploder::kill_exploder(exploder);
        wait 0.25;
        exploder::exploder(exploder);
        break;
    case 2:
        exploder::kill_exploder(exploder);
        break;
    }
}

// Namespace cp_nam_prisoner_fx/cp_nam_prisoner_fx
// Params 0, eflags: 0x0
// Checksum 0xc7dac9e4, Offset: 0xa08
// Size: 0xcc
function function_20aac67e() {
    level.var_ebdc56a7 = [];
    level.var_ebdc56a7[level.var_ebdc56a7.size] = "maps/cp_prisoner/fx9_prisoner_ambwar_gren_water_01";
    namespace_9fe28d6e::create("ambwar_grp_rpad_water", level.var_ebdc56a7, 1, 2.5, 600, 2000);
    namespace_9fe28d6e::start("ambwar_grp_rpad_water");
    level flag::wait_till_any(array("rice_paddies_enemies_dead", "rice_paddies_final_retreat", "flag_jungle_path"));
    namespace_9fe28d6e::stop("ambwar_grp_rpad_water");
}

// Namespace cp_nam_prisoner_fx/cp_nam_prisoner_fx
// Params 0, eflags: 0x0
// Checksum 0xd1a20c87, Offset: 0xae0
// Size: 0x25c
function function_f5f449bd() {
    level.var_eff9e015 = [];
    level.var_eff9e015[level.var_eff9e015.size] = "maps/cp_prisoner/fx9_prisoner_ambwar_gren_wood_01";
    level.var_42d51557 = [];
    level.var_42d51557[level.var_42d51557.size] = "maps/cp_prisoner/fx9_prisoner_ambwar_gren_mud_01";
    level.var_42d51557[level.var_42d51557.size] = "maps/cp_prisoner/fx9_prisoner_ambwar_gren_dirt_01";
    namespace_9fe28d6e::create("ambwar_grp_vlg_int_stg1", level.var_eff9e015, 3, 4.5, 700, 1000);
    namespace_9fe28d6e::create("ambwar_grp_vlg_ext_stg1", level.var_42d51557, 2.5, 3.5, 700, 1000);
    namespace_9fe28d6e::create("ambwar_grp_vlg_int_stg2", level.var_eff9e015, 3, 4.5, 700, 1000);
    namespace_9fe28d6e::create("ambwar_grp_vlg_ext_stg2", level.var_42d51557, 2.5, 3.5, 700, 1000);
    namespace_9fe28d6e::start("ambwar_grp_vlg_int_stg1");
    namespace_9fe28d6e::start("ambwar_grp_vlg_ext_stg1");
    namespace_9fe28d6e::start("ambwar_grp_vlg_int_stg2");
    namespace_9fe28d6e::start("ambwar_grp_vlg_ext_stg2");
    level flag::wait_till_any(array("flag_village_start_wave_03"));
    namespace_9fe28d6e::stop("ambwar_grp_vlg_int_stg1");
    namespace_9fe28d6e::stop("ambwar_grp_vlg_ext_stg1");
    level flag::wait_till_any(array("village_heli_missile"));
    namespace_9fe28d6e::stop("ambwar_grp_vlg_int_stg2");
    namespace_9fe28d6e::stop("ambwar_grp_vlg_ext_stg2");
}

