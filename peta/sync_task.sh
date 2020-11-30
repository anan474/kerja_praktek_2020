#!/usr/bin/expect -f
set timeout -1

# Launch the sync_osm_databases.sh script. Use the absolute path here.
spawn /home/ubuntu/sync_osm_databases/sync_osm_databases.sh

# Enter the database password when the spawned script asks it.
expect "Password:"
send -- "ubuntu\r"
expect eof