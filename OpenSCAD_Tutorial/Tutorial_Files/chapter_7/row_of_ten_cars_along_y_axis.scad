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

car();
translate([0,50,0])
    car();
translate([0,100,0])
    car();
translate([0,150,0])
    car();
translate([0,200,0])
    car();
translate([0,250,0])
    car();
translate([0,300,0])
    car();
translate([0,350,0])
    car();
translate([0,400,0])
    car();
translate([0,450,0])
    car();