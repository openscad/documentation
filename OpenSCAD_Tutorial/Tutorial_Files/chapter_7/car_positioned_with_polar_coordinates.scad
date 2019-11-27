use <vehicle_parts.scad>
$fa=1;
$fs=0.4;

module car(track=30, wheelbase=40) {
    // Body
    body();
    // Front left wheel 
    translate([-wheelbase/2,-track/2,0])
        rotate([0,0,0])
        simple_wheel();
    // Front right wheel 
    translate([-wheelbase/2,track/2,0])
        rotate([0,0,0])
        simple_wheel();
    // Rear left wheel 
    translate([wheelbase/2,-track/2,0])
        rotate([0,0,0])
        simple_wheel();
    // Rear right wheel 
    translate([wheelbase/2,track/2,0])
        rotate([0,0,0])
        simple_wheel();
    // Front axle 
    translate([-wheelbase/2,0,0])
        axle(track=track); 
    // Rear axle 
    translate([wheelbase/2,0,0])
        axle(track=track);
}

radius = 100;
angle = 30; // degrees
dx = radius*cos(angle);
dy = radius*sin(angle);
translate([dx,dy,0])
    car();