#!/usr/bin/env bash
../osmosis-latest/bin/osmosis \
        --read-xml file=osm_files/us-140226.osm \
        --tag-filter accept-ways highway=motorway,trunk,primary,secondary \
        --tag-filter reject-nodes highway=motorway_junction \
        --used-node \
        --write-xml file=osm_files/highways-140226.osm
