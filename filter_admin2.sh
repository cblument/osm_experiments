#!/usr/bin/env bash
../osmosis-latest/bin/osmosis \
        --read-xml file=osm_files/us-140226.osm \
        --tag-filter accept-ways admin_level=2 \
        --tag-filter reject-ways boundary=maritime \
        --tag-filter reject-ways maritime=yes \
        --tag-filter reject-ways boundary=national_park \
        --tag-filter reject-ways name="Pawnee Nation" \
        --tag-filter reject-ways designation="Neighborhood Group" \
        --tag-filter reject-ways designation="incorporated private school" \
        --tag-filter reject-ways name="Heer Park" \
        --used-node \
        --write-xml file=osm_files/admin2-140226.osm
