radius=331.7;
wide=20;
thick=1.4;
sleep_h=1.8;
sleep_w=3.5;
fix_w = 4;
fix_h = 1.4;
angle_l = 36.0;
module o_fix(offset) {
rotate(90,[0,0,1])
difference() {
cube(size=[10,fix_w,fix_h]);
translate([2.6,offset,-1])
cylinder(h=3.0,d=3.2);
}
}

module x_fix(offset) {
    rotate(90,[0,0,1])
    cube(size=[13,fix_w,sleep_h]);
    translate([-2+offset,10,0])
    color("red")
    cylinder(h=3,d=2.8);
}

module track_arc() {
rotate_extrude(angle=angle_l,convexity = 10,$fa=1)
    translate([radius-wide, 0, 0])
        square(size=[thick,4.5]);
rotate_extrude(angle=36,convexity = 10,$fa=1)
    translate([radius, 0, 0])
        square(size=[thick,4.5]);

for (i=[0:1.2:angle_l-1]) {
    rotate(i,[0,0,1])
    if (i>=2.4) {
    translate([radius-wide-3,0,0])
    cube(size=[28,sleep_w,sleep_h]);
    } else {
    translate([radius-wide,0,0])
    cube(size=[20,sleep_w,sleep_h]);
    }
}
translate([radius+5.2,0,sleep_h])
o_fix(2.2);
translate([radius-wide,0,sleep_h])
o_fix(1.6);
rotate(angle_l,[0,0,1])
translate([radius-wide+0.5,-sleep_w-3,0])
x_fix(0.5);
rotate(angle_l,[0,0,1])
translate([radius+5,-sleep_w-3.5,0])
x_fix(-0.5);
}


track_arc();