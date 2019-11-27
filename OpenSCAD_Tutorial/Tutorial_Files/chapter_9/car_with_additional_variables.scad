use <vehicle_parts.scad>
$fa = 1;
$fs = 0.4;

wheelbase = 40;
track = 35;

half_wheelbase = wheelbase/2;
half_track = track/2;

// Body
body();
// Front left wheel 
translate([-half_wheelbase,-half_track,0])
    simple_wheel();
 // Front right wheel 
translate([-half_wheelbase,half_track,0])
    simple_wheel();
// Rear left wheel 
translate([half_wheelbase,-half_track,0])
    simple_wheel();
// Rear right wheel 
translate([half_wheelbase,half_track,0])
    simple_wheel();
// Front axle 
translate([-half_wheelbase,0,0])
    axle(track=track); 
// Rear axle 
translate([half_wheelbase,0,0])
    axle(track=track);