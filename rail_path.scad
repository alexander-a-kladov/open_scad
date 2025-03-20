radius = 270;
wide = 30;
line = radius + wide;
line_short = radius;
module rail_arc(color_v, angle) {
color(color_v)
rotate(angle)
rotate_extrude(angle=45,convexity = 10,$fa=1)
    translate([radius, 0, 0])
        square(size=[wide,4]);
}

module rail_line(color_v, angle) {
color(color_v)
rotate(angle)
cube(size=[line,wide,4]);
}

module rail_short(color_v, angle) {
color(color_v)
rotate(angle)
difference() {
cube(size=[line_short,wide,4]);
translate([wide,wide/3,-1])
cube(size=[line_short-2*wide,wide/3,6]);
}
}

rail_arc("green", 180);
rail_arc("yellow", 135);
rail_arc("blue", 90);
rail_arc("red", 225);
translate([0,radius,0])
rail_line("red", 0);
translate([line,2*radius+wide,0]) {
rail_arc("yellow",radius);
rail_arc("green",315);
}
translate([line+2*radius+wide,2*radius+wide,0]) {
rail_arc("blue", 135);
rail_arc("red", 90);
rail_arc("green",45);
rail_arc("blue",0);
translate([radius,0,0]) {
rail_line("yellow",270);
translate([0,-line,0]) {
rail_short("red",270);
translate([-radius,-line_short,0]) {
rail_arc("blue",315);
rail_arc("yellow",radius);
}
}
}
}

translate([0,-radius-wide,0]) {
rail_line("green", 0);
translate([line,0,0]) {
    rail_line("blue", 0);
translate([line,0,0]) {
    rail_short("red",0);
}
}
}
