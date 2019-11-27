$fa = 1;
$fs = 0.4;
wheel_radius = 8;
base_height = 8;
top_height = 10;
track = 28;
wheel_width = 4;
body_roll = 0;
wheels_turn = -20;
rotate([body_roll,0,0]) {
    // Car body base
    resize([90,20,12])
        sphere(r=10);
    // Car body top
    translate([10,0,5])
        resize([50,15,15])
        sphere(r=10);
}
// Front left wheel
translate([-20,-track/2,0])
    rotate([0,0,wheels_turn])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    sphere(r=wheel_radius);
// Front right wheel
translate([-20,track/2,0])
    rotate([0,0,wheels_turn])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    sphere(r=wheel_radius);
// Rear left wheel
translate([20,-track/2,0])
    rotate([0,0,0])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    sphere(r=wheel_radius);
// Rear right wheel
translate([20,track/2,0])
    rotate([0,0,0])
    resize([2*wheel_radius,wheel_width,2*wheel_radius])
    sphere(r=wheel_radius);
// Front axle
translate([-20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);
// Rear axle
translate([20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);