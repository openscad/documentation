$fa = 1;
$fs = 0.4;
wheel_radius = 8;
base_height = 8;
top_height = 10;
track = 40;
body_roll = 0;
wheels_turn = 20;
rotate([body_roll,0,0]) {
    // Car body base
    cube([60,20,base_height],center=true);
    // Car body top
    translate([5,0,base_height/2+top_height/2 - 0.001])
        cube([30,20,top_height],center=true);
}
// Front left wheel
translate([-20,-track/2,0])
    rotate([0,0,wheels_turn])
    sphere(r=wheel_radius);
// Front right wheel
translate([-20,track/2,0])
    rotate([0,0,wheels_turn])
    sphere(r=wheel_radius);
// Rear left wheel
translate([20,-track/2,0])
    rotate([0,0,0])
    sphere(r=wheel_radius);
// Rear right wheel
translate([20,track/2,0])
    rotate([0,0,0])
    sphere(r=wheel_radius);
// Front axle
translate([-20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);
// Rear axle
translate([20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);