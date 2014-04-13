#!/usr/bin/env python

import sys
from mapnik import *
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("stylefile", help="XML stylefile to use to make map")
args = parser.parse_args()
filename = args.stylefile.split("/")[-1]
basename = filename.split(".")[0]

map_output = "%s.png" % basename

#m = Map( 2560,1600)
m = Map( 800,600)
load_map(m, args.stylefile)
#bbox=(Envelope( 10.0,47.5,11.1,48.1 ))
bbox=(Envelope( -124.733,24.52,-66.949,49.384 ))

m.zoom_to_box(bbox)
print "Scale = " , m.scale()
render_to_file(m, map_output)
