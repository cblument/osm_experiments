#!/usr/bin/env bash
../osmosis-latest/bin/osmosis \
        --read-xml file=osm_files/planet-140226.osm \
        --bounding-box \
        top=49.384444 \
        left=-124.733056 \
        bottom=24.520833 \
        right=-66.949722 \
        --tag-filter reject-relations \
        --write-xml file=osm_files/us-140226.osm
