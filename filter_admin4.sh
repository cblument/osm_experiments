#!/usr/bin/env bash
../osmosis-latest/bin/osmosis \
        --read-xml file=osm_files/us-140226.osm \
        --tag-filter accept-ways admin_level=4 \
        --tag-filter reject-ways boundary=maritime \
        --tag-filter reject-ways boundary=national_park \
        --tag-filter reject-ways leisure=park \
        --used-node \
        --write-xml file=osm_files/admin4-140226.osm
