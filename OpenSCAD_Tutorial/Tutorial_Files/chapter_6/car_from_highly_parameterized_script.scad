use <vehicle_parts.scad>
$fa=1;
$fs=0.4;

// Variables
body_version = "l"; //s-short, n-normal, l-large, r-rectangular
wheels_version = "l"; //s-small, m-medium, l-large
top = true;
front_bumper = true;
rear_bumper = true;
track = 30;
wheelbase=40;

// Conditional assignments
// Body: base_length
base_length =
(body_version == "l") ? 80:
(body_version == "s") ? 60:
(body_version == "r") ? 65:70;

// Body: top_length
top_length =
(body_version == "l") ? 50:
(body_version == "s") ? 30:
(body_version == "r") ? 65:40;

// Body: top_offset
top_offset =
(body_version == "l") ? 10:
(body_version == "s") ? 5:
(body_version == "r") ? 0:7.5;

// Wheels: radius
wheel_radius =
(wheels_version == "l") ? 10:
(wheels_version == "m") ? 8:6;

// Wheels: width
wheel_width =
(wheels_version == "l") ? 8:
(wheels_version == "m") ? 6:4;

// Body
body(base_length=base_length, top_length=top_length, top_offset=top_offset, top=top, front_bumper=front_bumper, rear_bumper=rear_bumper);
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
    axle(); 
// Rear axle 
translate([wheelbase/2,0,0])
    axle();