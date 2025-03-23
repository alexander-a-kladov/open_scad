include<hand_counters.scad>;



module arm() {
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
}

module bracket1() {
rotate(90,[1,0,0]) {
translate([0,-25,0]) {
cube(size=[33.5,9,4]);
translate([0,0,-16]) {
cube(size=[4,9,16]);
cube(size=[6,9,3]);
}
}
translate([31,-25,0.9]) {
difference() {
rotate(40,[0,1,0])
cube(size=[23,9,4]);
translate([18.5,-1,-28.3])
cube(size=[4,11,20]);
}
translate([14.5,0,-28.3]) {
cube(size=[4,9,18]);
translate([-2,0,0])
cube(size=[5,9,3]);
}
}
}
}

module bracket2() {
rotate(90,[1,0,0]) {
translate([13,-25,-3.5]) {
cube(size=[20,9,5]);
translate([0,0,-12]) {
rotate(70,[0,1,0])
translate([-16,0,-16])
cube(size=[5,9,22]);
rotate(70,[0,1,0])
translate([-16,0,-17])
cube(size=[12,9,4]);
}
}
translate([31,-25,0.9]) {
difference() {
translate([-1,0,-3.7])
rotate(30,[0,1,0])
cube(size=[21,9,5]);
translate([20,-1,-28.3])
cube(size=[3,20,20]);
}
translate([14.5,0,-28.3]) {
cube(size=[5,9,18.5]);
translate([-4,0,0])
cube(size=[8,9,4]);
}
}
}
}

module pin() {
translate([0,19,0])
rotate(90,[0,1,0]) {
cube(size=[6,12,12]);
translate([0,0,12])
cube(size=[6,4.1,12]);
translate([0,7.9,12])
cube(size=[6,4.1,12]);
}
}

module screws() {
translate([-131.6,14,303])
rotate(90,[1,0,0])
color("cyan")
import("M5_x25.stl");
    
translate([-80,14,127])
rotate(90,[1,0,0])
color("cyan")
import("M5_x25.stl");
    
translate([-6,14,-41])
rotate(90,[1,0,0])
color("cyan")
import("M5_x25.stl");
    
translate([177,14,-53])
rotate(90,[1,0,0])
color("cyan")
import("M5_x25.stl");
}

// whole construction
if (1) {
translate([-239,0,420.5])
rotate(-110,[0,1,0])
hand_counters();
arm();
translate([-119,0,103])
rotate(-110,[0,1,0])
mirror([1,0,0])
arm();
translate([-193,0,271])
rotate(-110,[0,1,0])
mirror([1,0,0])
mirror([0,0,1])
arm();
rotate(-90,[1,0,0])
mirror([1,0,0])
translate([136,-168,20])
rotate(-70,[0,0,1])
color("red")
bracket1();

translate([183,0,12])
mirror([0,0,1])
arm();
translate([116,20,18.2])
rotate(-90,[1,0,0])
mirror([1,0,0])
color("red")
bracket1();

rotate(-90,[1,0,0])
translate([-63,0,20])
rotate(70,[0,0,1])
mirror([1,0,0])
color("green")
bracket2();
color("blue")
    translate([200,-18,30])
    rotate(90,[0,1,0])
    pin();
    color("blue")
    translate([208,-18,30])
    rotate(90,[0,1,0])
    pin();

screws();
}
if (0) {
bracket2();
}
if (0) {
    pin();
}
