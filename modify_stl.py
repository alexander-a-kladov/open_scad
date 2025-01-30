#!/usr/bin/python3
# coding: utf8

from pymadcad import *
part = read("wg_pinion.stl")
part.mergeclose()
transformed = difference(part, icosphere(vec3(0,0,0), 3.))
write(transformed, 'wg_pinion_hole.stl')
