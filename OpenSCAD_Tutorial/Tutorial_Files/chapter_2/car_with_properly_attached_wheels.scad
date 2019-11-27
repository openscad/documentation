$fa = 1;
$fs = 0.4;
wheel_radius = 8;
base_height = 8;
top_height = 14;
track = 40;
// Car body base
cube([60,20,base_height],center=true);
// Car body top
translate([5,0,base_height/2+top_height/2 - 0.001])
    cube([30,20,top_height],center=true);
// Front left wheel
translate([-20,-track/2,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
// Front right wheel
translate([-20,track/2,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
// Rear left wheel
translate([20,-track/2,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
// Rear right wheel
translate([20,track/2,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
// Front axle
translate([-20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);
// Rear axle
translate([20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);