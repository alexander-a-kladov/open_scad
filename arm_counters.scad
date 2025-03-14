difference() {
union() {
cube(size=[200,18,12], center=true);
    translate([100,0,0])
rotate(90,[1,0,0])
cylinder(h=18,d=12,center=true);
}
union() {
    translate([-40,0,0])
cube(size=[60,10,13], center=true);
    translate([40,0,0])
cube(size=[60,10,13], center=true);
    translate([100,0,0])
    cube(size=[20,8.2,13],center=true);
    translate([99,0,0])
    rotate(90,[1,0,0])
    cylinder(h=19,d=5.3,center=true);
}
}
difference() {
union() {
translate([-94,0,8])
cube(size=[12,8,8],center=true);
translate([-94,0,12])
rotate(90,[1,0,0])
cylinder(h=8,d=12,center=true);
}
translate([-94,0,12])
rotate(90,[1,0,0])
cylinder(h=10,d=5.3,center=true);
}