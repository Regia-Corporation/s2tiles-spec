# S2Tiles Specification

S2Tiles is a derivative of the [MBTiles spec](https://github.com/mapbox/mbtiles-spec)

S2Tiles is a specification for storing arbitrary tiled map data in
[SQLite](http://sqlite.org/) databases for immediate usage and for efficient transfer.
S2Tiles files, known as **tilesets**, must implement the specification below
to ensure compatibility with devices.

# Versions

* [1.0](https://github.com/regiacorp/s2tiles-spec/blob/master/1.0/spec.md)

# Concept

S2Tiles is a compact, restrictive specification. It supports only
tiled data, including vector or image tiles and interactivity grid tiles. Only the
S2 projection is supported for presentation (tile display),
and only U-V coordinates are supported for metadata such
as bounds and centers.

It is a minimum specification, only specifying the ways in which data
must be retrievable. Thus S2Tiles files can internally compress and optimize
data, and construct views that adhere to the S2Tiles specification.

Unlike [Spatialite](http://www.gaia-gis.it/spatialite/), GeoJSON,
and Rasterlite, S2Tiles is not raw data storage. It is storage
for tiled data, like rendered map tiles.

One S2Tiles file represents a single tileset, optionally including grids
of interactivity data. Multiple tilesets (layers, or maps in other
terms) can be represented by multiple S2Tiles files.

# License

The text of this specification is licensed under a
[Creative Commons Attribution 3.0 United States License](http://creativecommons.org/licenses/by/3.0/us/).
However, the use of this spec in products and code is entirely free:
there are no royalties, restrictions, or requirements.

# Authors

The original MBTiles authors can be seen [here](https://github.com/mapbox/mbtiles-spec#authors)

* Craig O'Connor (CraigglesO)
