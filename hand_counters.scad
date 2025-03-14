difference() {
difference() {
rotate(90,[0,1,0])
cylinder(h=116,d=25,center=true);
translate([-58,0,20])
rotate(45,[0,1,0])
cube(size=[25,25,25],center=true);
translate([0,0,-15])
cube(size=[118,18,10],center=true);
}
difference() {
translate([0,0,0])
rotate(90,[0,1,0])
cylinder(h=110,d=20,center=true);
translate([-58,0,12])
rotate(45,[0,1,0])
cube(size=[20,20,20],center=true);
translate([0,0,-12])
cube(size=[118,15,8],center=true);
}
}

difference() {
union() {
translate([-60,0,-4])
cube(size=[12,18,12],center=true);
translate([-65,0,-4])
rotate(90,[1,0,0])
cylinder(h=18,d=12,center=true);
}
translate([-65,0,-4]) {
rotate(90,[1,0,0])
cylinder(h=19,d=5.3,center=true);
cube(size=[15,8.2,13],center=true);
}
}
