module wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2) {
    cylinder_height=2*wheel_radius;
    difference() {
        // Wheel sphere
        sphere(r=wheel_radius);
        // Side sphere 1
        translate([0,side_spheres_radius + hub_thickness/2,0])
            sphere(r=side_spheres_radius);
        // Side sphere 2
        translate([0,- (side_spheres_radius + hub_thickness/2),0])
            sphere(r=side_spheres_radius);
        // Cylinder 1
        translate([wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        // Cylinder 2
        translate([0,0,wheel_radius/2])
            rotate([90,0,0])
            cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        // Cylinder 3
        translate([-wheel_radius/2,0,0])
            rotate([90,0,0])
            cylinder(h=cylinder_height,r=cylinder_radius,center=true);
        // Cylinder 4
        translate([0,0,-wheel_radius/2])
            rotate([90,0,0])
            cylinder(h=cylinder_height,r=cylinder_radius,center=true);
    }
}

module body(base_height=10, top_height=14, base_length=60, top_length=30, width=20, top_offset=5) {
    // Car body base
    cube([base_length,width,base_height],center=true);
    // Car body top
    translate([top_offset,0,base_height/2+top_height/2 - 0.001])
        cube([top_length,width,top_height],center=true);
}

module axle(track=35, radius=2) {
    rotate([90,0,0])
        cylinder(h=track,r=2,center=true);
}

$fa = 1;
$fs = 0.4;
wheelbase = 40;
track = 35; 
body_roll = 0; 
wheels_turn = 0; 
wheel_radius_rear=12;

// Body
rotate([body_roll,0,0]) {
    body();
}
// Front left wheel 
translate([-wheelbase/2,-track/2,0])
    rotate([0,0,wheels_turn])
    wheel();
 // Front right wheel 
translate([-wheelbase/2,track/2,0])
    rotate([0,0,wheels_turn])
    wheel();
// Rear left wheel 
translate([wheelbase/2,-track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=wheel_radius_rear);
// Rear right wheel 
translate([wheelbase/2,track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=wheel_radius_rear);
// Front axle 
translate([-wheelbase/2,0,0])axle(); 
// Rear axle 
translate([wheelbase/2,0,0])axle();