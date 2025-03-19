difference() {
difference() {
rotate(90,[0,1,0])
cylinder(h=116,d=26,center=true);
translate([-55,0,20])
rotate(58,[0,1,0])
cube(size=[25,25,25],center=true);
translate([0,0,-15])
cube(size=[118,18,10],center=true);
}
difference() {
translate([2,0,0])
rotate(90,[0,1,0])
cylinder(h=108,d=22,center=true);
translate([-56,0,12])
rotate(45,[0,1,0])
cube(size=[22,22,22],center=true);
translate([0,0,-12])
cube(size=[118,15,8],center=true);
}
}

difference() {
union() {
translate([-64,0,-4])
cube(size=[14,18,12],center=true);
translate([-70,0,-4])
rotate(90,[1,0,0])
cylinder(h=18,d=12,center=true);
}
translate([-70,0,-4]) {
rotate(90,[1,0,0])
cylinder(h=19,d=5.3,center=true);
cube(size=[13,8.2,13],center=true);
}
}
