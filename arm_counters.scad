difference() {
union() {
cube(size=[194,18,12], center=true);
    translate([97,0,0])
rotate(90,[1,0,0])
cylinder(h=18,d=12,center=true);
}
union() {
    translate([-40,0,0])
cube(size=[62,10,13], center=true);
    translate([40,0,0])
cube(size=[62,10,13], center=true);
    translate([97,0,0])
    cube(size=[20,8.2,13],center=true);
    translate([97,0,0])
    rotate(90,[1,0,0])
    cylinder(h=19,d=5.4,center=true);
}
}
translate([-86,0,0])
difference() {
union() {
translate([0,0,8])
cube(size=[12,8,8],center=true);
translate([0,0,12])
rotate(90,[1,0,0])
cylinder(h=8,d=12,center=true);
}
translate([0,0,12])
rotate(90,[1,0,0])
cylinder(h=10,d=5.4,center=true);
}

if (0) {
rotate(90,[1,0,0]) {
translate([0,-25,0]) {
cube(size=[39,9,4]);
translate([0,0,-16]) {
cube(size=[4,9,16]);
cube(size=[6,9,3]);
}
}
translate([37,-25,0]) {
rotate(30,[0,1,0])
cube(size=[25,9,4]);
translate([20,0,-27]) {
cube(size=[4,9,18]);
translate([-2,0,0])
cube(size=[5,9,3]);
}
}
}
}