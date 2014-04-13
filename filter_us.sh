#!/usr/bin/env bash
../osmosis-latest/bin/osmosis \
        --read-xml file=osm_files/us-140226.osm \
        --tag-filter accept-ways highway=motorway,trunk,primary,seconday \
        --tag-filter accept-ways admin_level=2,4 \
        --tag-filter reject-ways boundary=maritime \
        --tag-filter accept-nodes place=city,town \
        --used-node \
        --write-xml file=osm_files/filtered-140226.osm



#        --node-key-value keyValueList="place.city,place.town"
