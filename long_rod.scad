atom_len = 200;

long_rod_v = 1;
rod_atom_v = 0;
rod_hook_v = 0;
end_hook_v = 0;

module rod_atom(rod_len) {
difference () {
union() {
rotate(90,[0,1,0]) 
cylinder(h=rod_len,d=8,center=true);
translate([0,0,-3])
cube([rod_len,4,2],center=true);
}
translate([-rod_len/2+4,0,0])
rotate(90,[0,1,0])
cylinder(h=8.4,d=5,center=true);
}
translate([rod_len/2+4,0,0])
rotate(90,[0,1,0])
cylinder(h=8,d=4.8,center=true);
}

module rod_hook() {
rotate(-90,[0,1,0])
difference() {
union() {
translate([0,-9,0])
cube([4,18,30]);
translate([10,0,8])
cube([15,6,15],center=true);
}

translate([2,0,22])
rotate(90,[0,1,0])
cylinder(h=5,d=3.8,center=true);
translate([4,0,22])
rotate(90,[0,1,0])
cylinder(h=2,d=7,center=true);
translate([11,0,8]) {
rotate(90,[1,0,0]) {
translate([0,-3.2,0])
cube([4.2,2.2,20],center=true);
cylinder(h=10,d=8.4,center=true);
}
}
}
}

module end_hook(left) {
    translate([-8.5,0,11])
    rotate(90,[0,0,1])
    rotate(-90,[1,0,0])
    if (left) {
    mirror([1,0,0])
    rod_atom(30);
    } else {
    rod_atom(30);
    }
    translate([-7,0,10])
    cube([13,6,12],center=true);
    rod_hook();
}

module long_rod() {
rotate(180,[0,0,1])
rotate(180,[1,0,0]) {
for (x = [-atom_len:atom_len:atom_len]) {
    translate([x,0,0])
    rod_atom(atom_len);
}

translate([-314,8,-11])
rotate(90,[0,0,1])
rotate(90,[0,1,0])
translate([-2.5,1.0,-19])
color("red")
end_hook(1);
translate([300,8,-11])
rotate(90,[0,0,1])
rotate(90,[0,1,0])
translate([-2.5,-15.0,-19])
color("red")
end_hook(1);
color("green")
rotate(90,[0,0,1])
rotate(90,[0,1,0])
translate([8,0,-10])
rod_hook();
}
}

if (long_rod_v) {
long_rod();
}

if (rod_hook_v) {
rod_hook();
}

if (end_hook_v) {
end_hook(1);
}

if (rod_atom_v) {
 rotate(-90,[0,0,1])
 rod_atom(atom_len);
}