#!/usr/bin/python3
# coding: utf8

from madcad import *
part = read("wg_pinion.stl")
part.mergeclose()
transformed = difference(part, cylinder(vec3(69,0,65),vec3(69,0,70), 4.2))
write(transformed, 'wg_pinion_hole.stl')
