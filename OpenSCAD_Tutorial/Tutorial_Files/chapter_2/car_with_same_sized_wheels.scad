$fa = 1;
$fs = 0.4;
wheel_radius = 6;
// Car body base
cube([60,20,10],center=true);
// Car body top
translate([5,0,10 - 0.001])
    cube([30,20,10],center=true);
// Front left wheel
translate([-20,-15,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
// Front right wheel
translate([-20,15,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
wheel_radius = 12;
// Rear left wheel
translate([20,-15,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
// Rear right wheel
translate([20,15,0])
    rotate([90,0,0])
    cylinder(h=3,r=wheel_radius,center=true);
// Front axle
translate([-20,0,0])
    rotate([90,0,0])
    cylinder(h=30,r=2,center=true);
// Rear axle
translate([20,0,0])
    rotate([90,0,0])
    cylinder(h=30,r=2,center=true);