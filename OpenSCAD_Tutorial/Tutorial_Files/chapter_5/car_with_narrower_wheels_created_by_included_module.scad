include <simple_wheel.scad>
$fa = 1;
$fs = 0.4;
wheel_radius = 8;
wheel_width = 4;
base_height = 10; 
top_height = 10; 
track = 30; 
// Car body base 
cube([60,20,base_height],center=true); 
// Car body top 
translate([5,0,base_height/2+top_height/2 - 0.001])
    cube([30,20,top_height],center=true); 
// Front left wheel 
translate([-20,-track/2,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width); 
// Front right wheel 
translate([-20,track/2,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width);  
// Rear left wheel 
translate([20,-track/2,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width); 
// Rear right wheel 
translate([20,track/2,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width); 
// Front axle 
translate([-20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true); 
// Rear axle 
translate([20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);