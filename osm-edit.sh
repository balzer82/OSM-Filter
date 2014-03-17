#!/bin/bash
echo "Verarbeite $1"

echo "Konvertiere .pbf in .o5m"
./osmconvert $1 -o=out.o5m

echo "Filter the Map"
./osmfilter out.o5m --keep="highway= and maxspeed=" --drop-author -o=out-maxspeed.o5m

echo "Konvertiere .o5m in .pbf"
./osmconvert out-maxspeed.o5m -o=out-maxspeed.osm.pbf
./osmconvert out-maxspeed.o5m -o=out-maxspeed.osm

echo "Cleaning up"
rm out-maxspeed.o5m
rm out.o5m

echo "Done."