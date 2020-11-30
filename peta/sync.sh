#!/bin/bash

# Go to the main OSM directory where the OSM itself and all its tools are located.
cd ~

# Delete old temp files if they are present.
rm sync_osm_databases/main-db-changes.xml
rm sync_osm_databases/expired-tiles.list

# Get the current and the 1 hour ago dates.
# They will be needed to export main database changes for the last hour.
NOW=$(date -u +"%Y-%m-%d_%H:%M:%S")
HOUR_AGO=$(date -u -d '1 hour ago' +"%Y-%m-%d_%H:%M:%S")

# Write all main database changes for the last hour to xml.
~/osmosis/bin/osmosis --read-apidb-change host="localhost" database="openstreetmap" user="ubuntu" password="ubuntu" intervalBegin=$HOUR_AGO intervalEnd=$NOW validateSchemaVersion="no" --write-xml-change file="sync_osm_databases/main-db-changes.xml"

# Load the changes to the rendering database.
osm2pgsql -d gis --append --slim  -G --hstore --tag-transform-script ~/src/openstreetmap-carto/openstreetmap-carto.lua -C 2500 --number-processes 1 -S ~/src/openstreetmap-carto/openstreetmap-carto.style sync_osm_databases/main-db-changes.xml

# Update & index Nominatim database.
#Nominatim/build/utils/update.php --import-diff sync_osm_databases/main-db-changes.xml
#Nominatim/build/utils/update.php --index

# Create a list of tiles that needed to be re-rendered.
osm2pgsql -H localhost -d gis -U ubuntu -W -S ~/src/openstreetmap-carto/openstreetmap-carto.style -s -C 2500 -a --number-processes 1 sync_osm_databases/main-db-changes.xml -e16 -o sync_osm_databases/expired-tiles.list

# Expire these tiles, so they will be re-rendered.
cat sync_osm_databases/expired-tiles.list | ~/src/mod_tile/render_expired --map=ajt --min-zoom=10 --max-zoom=20 --delete-from=10 >/dev/null
