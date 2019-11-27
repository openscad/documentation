use <vehicle_parts.scad>
$fa = 1;
$fs = 0.4;

wheelbase = 40;
track = 35; 

// Body
body();
// Front left wheel 
translate([-wheelbase/2,-track/2,0])
    simple_wheel();
 // Front right wheel 
translate([-wheelbase/2,track/2,0])
    simple_wheel();
// Rear left wheel 
translate([wheelbase/2,-track/2,0])
    simple_wheel();
// Rear right wheel 
translate([wheelbase/2,track/2,0])
    simple_wheel();
// Front axle 
translate([-wheelbase/2,0,0])
    axle(track=track); 
// Rear axle 
translate([wheelbase/2,0,0])
    axle(track=track);