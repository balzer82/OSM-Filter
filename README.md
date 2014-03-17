# OSM Filter

## Wofür?

Filtert aus [Openstreetmaps .osm.pbf](http://download.geofabrik.de/europe/germany.html) bestimmte Tags heraus.

## Wie benutzt man es?

1. gewünschte Karte im .osm.pbf Format [downloaden](http://download.geofabrik.de/europe/germany.html)
2. im Terminal `./osm-edit.sh mymap.osm.pbf` eingeben

## Was tut es?

1. konvertiert die .osm.pbf in .o5m
2. filtert alles heraus, was nicht `highway= and maxspeed=` Tag hat
3. speichert `out.osm` mit enthaltenden Daten

## Dependencies

3. [osmconvert](http://wiki.openstreetmap.org/wiki/Osmconvert)
4. [osmfilter](http://wiki.openstreetmap.org/wiki/DE:Osmfilter)

