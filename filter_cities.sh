#!/usr/bin/env bash
../osmosis-latest/bin/osmosis \
        --read-xml file=osm_files/us-140226.osm \
        --tag-filter accept-nodes place=city,town \
        --write-xml file=osm_files/cities-140226.osm
