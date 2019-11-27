use <vehicle_parts.scad>

$fa = 1;
$fs = 0.4;

front_track = 24;
rear_track = 34;
wheelbase = 60;

front_wheels_radius = 10;
front_wheels_width = 4;
front_wheels_thickness = 3;
front_spoke_radius = 1;

front_axle_radius = 1.5;

// Round car body
resize([90,20,12])
    sphere(r=10);
translate([10,0,5])
    resize([50,15,15])
    sphere(r=10);

// Wheels
translate([-wheelbase/2,-front_track/2,0])
    spoked_wheel(radius=front_wheels_radius, width=front_wheels_width, thickness=front_wheels_thickness, spoke_radius=front_spoke_radius);
translate([-wheelbase/2,front_track/2,0])
    spoked_wheel(radius=front_wheels_radius, width=front_wheels_width, thickness=front_wheels_thickness, spoke_radius=front_spoke_radius);
translate([wheelbase/2,-rear_track/2,0])
    spoked_wheel();
translate([wheelbase/2,rear_track/2,0])
    spoked_wheel();

// Axles
translate([-wheelbase/2,0,0])
    axle(track=front_track, radius=front_axle_radius);
translate([wheelbase/2,0,0])
    axle(track=rear_track);