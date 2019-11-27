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

n_cars = 6;
y_spacing = 50;
n_rows = 5;
x_spacing = 70;
for (dx=[0:x_spacing:n_rows*x_spacing-1]) {
    for (dy=[0:y_spacing:n_cars*y_spacing-1]) {
        translate([dx,dy,0])
            car();
    }
}