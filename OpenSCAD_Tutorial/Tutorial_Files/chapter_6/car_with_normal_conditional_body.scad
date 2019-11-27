use <vehicle_parts.scad>
$fa=1;
$fs=0.4;

// Conditional assignment of body variables
long_body = false;
base_length = (long_body) ? 80:60;
top_length = (long_body) ? 50:30;
top_offset = (long_body) ? 10:5;
// Creation of body
body(base_length=base_length, top_length=top_length, top_offset=top_offset);

// Creation of wheels and axles
track = 30;
wheelbase = 40;
wheel_radius = 8;
wheel_width = 4;
// Front left wheel 
translate([-wheelbase/2,-track/2,0])
    rotate([0,0,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width);
 // Front right wheel 
translate([-wheelbase/2,track/2,0])
    rotate([0,0,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width);
// Rear left wheel 
translate([wheelbase/2,-track/2,0])
    rotate([0,0,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width);
// Rear right wheel 
translate([wheelbase/2,track/2,0])
    rotate([0,0,0])
    simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width);
// Front axle 
translate([-wheelbase/2,0,0])
    axle(track=track); 
// Rear axle 
translate([wheelbase/2,0,0])
    axle(track=track);