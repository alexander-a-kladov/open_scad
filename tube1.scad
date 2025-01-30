$fa = 1;
$fs = 0.4;
wheel_radius = 500;
tyre_diameter = 30;
angle_step0 = 18;
diam0 = 10;
diam_step = 5;
clearence = 1.2;
ring = 1.0;
extension = ring + 0.2;

expanded = 0.0;
translate([-wheel_radius+tyre_diameter/2.0,0.0,tyre_diameter/2.0])
for (t_diam=[diam0:diam_step:tyre_diameter]) {
angle_step=angle_step0+(tyre_diameter-t_diam)*(extension/diam_step);
union() {
st = (tyre_diameter-t_diam)*((angle_step-1.0)/diam_step)*expanded;
difference() {
rotate_extrude(start=st,angle=angle_step) {
    translate([wheel_radius - tyre_diameter/2, 0])
        circle(d=t_diam, $fn=8);
}
rotate_extrude(start=st,angle=angle_step) {
    translate([wheel_radius - tyre_diameter/2, 0])
        circle(d=t_diam-diam_step+clearence, $fn=8);
}
}
// Ring at bottom
difference() {
rotate_extrude(start=st,angle=ring) {
    translate([wheel_radius - tyre_diameter/2, 0])
        circle(d=t_diam+0.5, $fn=8);
}
rotate_extrude(start=st,angle=ring) {
    translate([wheel_radius - tyre_diameter/2, 0])
        circle(d=t_diam, $fn=8);
}
}
// Ring at top
difference() {
st=st+angle_step-ring;
rotate_extrude(start=st,angle=ring) {
    translate([wheel_radius - tyre_diameter/2, 0])
        circle(d=t_diam+0.5, $fn=8);
}
rotate_extrude(start=st,angle=ring) {
    translate([wheel_radius - tyre_diameter/2, 0])
        circle(d=t_diam-diam_step+0.5, $fn=8);
}
}
}
}
