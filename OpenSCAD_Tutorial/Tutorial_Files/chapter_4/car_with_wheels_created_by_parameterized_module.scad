module wheel(wheel_radius, side_spheres_radius, hub_thickness, cylinder_radius) {
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
$fa = 1;
$fs = 0.4;
base_height = 10; 
top_height = 14; 
track = 35; 
body_roll = 0; 
wheels_turn = 0; 
rotate([body_roll,0,0]) {
    // Car body base
    cube([60,20,base_height],center=true);
    // Car body top
    translate([5,0,base_height/2+top_height/2 - 0.001])
    cube([30,20,top_height],center=true); 
} 
// Front left wheel 
translate([-20,-track/2,0])
    rotate([0,0,wheels_turn])
    wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2);
 // Front right wheel 
translate([-20,track/2,0])
    rotate([0,0,wheels_turn])
    wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2);
// Rear left wheel 
translate([20,-track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2);
// Rear right wheel 
translate([20,track/2,0])
    rotate([0,0,0])
    wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2);
// Front axle 
translate([-20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true); 
// Rear axle 
translate([20,0,0])
    rotate([90,0,0])
    cylinder(h=track,r=2,center=true);