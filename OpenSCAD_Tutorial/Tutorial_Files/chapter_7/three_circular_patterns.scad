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

n = 12; // number of cars
step = 360/n;
for (r=[140:70:280]) {
    for (angle=[0:step:359]) {
        dx = r*cos(angle);
        dy = r*sin(angle);
        translate([dx,dy,0])
            rotate(angle)
            car();
    }
}