# Black Ops Cold War Source

Dump of some parts of BOCW using [Atian Call of Duty Tools](https://github.com/ate47/atian-cod-tools), please create an issue on the tools directory if you find a strange decompiled code.

Unlike with the BO4 dump, not all the available scripts were dumped, I might add them later. I went to few maps to have a minimum script dataset.

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
| scriptparsetree   | 68  | `/`                      |
| scriptbundle      | 87  | `/scriptbundle/`         |