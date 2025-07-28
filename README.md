# Black Ops Cold War Source

Dump of some parts of BOCW using [Atian Call of Duty Tools](https://github.com/ate47/atian-cod-tools), please create an issue on the tools directory if you find a strange decompiled code.

## Names

All the dumped files are using the correct name, if a file name is unknown, the file is put in the `hashed/[pool]` directory. (where `[pool]` is the file origin)

## CSV extraction

- cells starting with a `#` are hashed. an empty cell with a `#` are empty hashed cells
- cells starting with a `?` are from unknown types.

## Pools

Pools dumped:
| name              | id  |        path              |
|-------------------|-----|--------------------------|
| rawfile           | 59  | `/`                      |
| rawfilepreproc    | 60  | `/`                      |
| rawtextfile       | 61  | `/`                      |
| stringtable       | 63  | `/`                      |
| ddl               | 66  | `/ddl/`                  |
| scriptparsetree   | 68  | `/`                      |
| script_using      | 70  | `/tables/usings/common/` |
| script_using_cp   | 71  | `/tables/usings/cp/`     |
| script_using_mp   | 72  | `/tables/usings/mp/`     |
| script_using_wz   | 73  | `/tables/usings/wz/`     |
| script_using_zm   | 74  | `/tables/usings/zm/`     |
| scriptbundle      | 87  | `/scriptbundle/`         |
| bgcache           | 109 | `/tables/bgcache/`       |
