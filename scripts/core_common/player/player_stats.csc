// Atian COD Tools GSC CW decompiler test
#namespace stats;

/#

    // Namespace stats/player_stats
    // Params 2, eflags: 0x0
    // Checksum 0xfef96922, Offset: 0x80
    // Size: 0x104
    function function_d92cb558(result, vararg) {
        if (!isdefined(result)) {
            pathstr = ishash(vararg[0]) ? function_9e72a96(vararg[0]) : vararg[0];
            if (!isdefined(pathstr)) {
                return;
            }
            for (i = 1; i < vararg.size; i++) {
                pathstr = pathstr + "<unknown string>" + (ishash(vararg[i]) ? function_9e72a96(vararg[i]) : vararg[i]);
            }
            println("<unknown string>" + pathstr);
        }
    }

#/

// Namespace stats/player_stats
// Params 2, eflags: 0x42 linked
// Checksum 0x6550b0d, Offset: 0x190
// Size: 0x76
function get_stat(localclientnum, ...) {
    result = readstat(localclientnum, currentsessionmode(), vararg);
    /#
        function_d92cb558(result, vararg);
    #/
    if (!isdefined(result)) {
        result = 0;
    }
    return result;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x40
// Checksum 0xebe63d3c, Offset: 0x210
// Size: 0x60
function function_842e069e(localclientnum, sessionmode, ...) {
    result = readstat(localclientnum, sessionmode, vararg);
    /#
        function_d92cb558(result, vararg);
    #/
    return result;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x2b034a6d, Offset: 0x278
// Size: 0x42
function get_stat_global(localclientnum, statname) {
    return get_stat(localclientnum, #"playerstatslist", statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 3, eflags: 0x40
// Checksum 0x3718fcde, Offset: 0x2c8
// Size: 0x6e
function get_match_stat(localclientnum, var_648fa3eb, ...) {
    result = readmatchstat(localclientnum, var_648fa3eb, vararg);
    /#
        function_d92cb558(result, vararg);
    #/
    if (!isdefined(result)) {
        result = 0;
    }
    return result;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x42 linked
// Checksum 0x357b60ce, Offset: 0x340
// Size: 0x6e
function function_7f413ae3(localclientnum, sessionmode, ...) {
    result = function_fd428712(localclientnum, sessionmode, vararg);
    /#
        function_d92cb558(result, vararg);
    #/
    if (!isdefined(result)) {
        result = 0;
    }
    return result;
}

