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
track = 35; 
body_roll = 0; 
wheels_turn = 0;
base_length = 100;
top_length = 75;
top_offset = 5;
front_axle_offset = 30;
rear_axle_1_offset = 10;
rear_axle_2_offset = 35;
wheel_radius = 12;

// Body
rotate([body_roll,0,0]) {
    body(base_length=base_length, top_length=top_length, top_offset=top_offset);
}
// Front left wheel 
translate([-front_axle_offset,-track/2,0])
    rotate([0,0,wheels_turn])
    wheel(wheel_radius=wheel_radius);
 // Front right wheel 
translate([-front_axle_offset,track/2,0])
    rotate([0,0,wheels_turn])
    wheel(wheel_radius=wheel_radius);
// Rear left wheel 1
translate([rear_axle_1_offset,-track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=wheel_radius);
// Rear right wheel 1
translate([rear_axle_1_offset,track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=wheel_radius);
// Rear left wheel 2
translate([rear_axle_2_offset,-track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=wheel_radius);
// Rear right wheel 2
translate([rear_axle_2_offset,track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=wheel_radius);
// Front axle 
translate([-front_axle_offset,0,0])
    axle(); 
// Rear axle 1
translate([rear_axle_1_offset,0,0])
    axle();
// Rear axle 2
translate([rear_axle_2_offset,0,0])
    axle();