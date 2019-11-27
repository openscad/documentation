module simple_wheel(wheel_radius=10, wheel_width=6) {
    rotate([90,0,0])
        cylinder(h=wheel_width,r=wheel_radius,center=true);
}

module complex_wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2) { 
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

module rounded_simple_wheel(wheel_radius=12, wheel_width=4, tyre_diameter=6) {
    rotate([90,0,0]) {
        rotate_extrude(angle=360) {
            translate([wheel_radius-tyre_diameter/2,0])
                circle(d=tyre_diameter);
        }
        cylinder(h=wheel_width, r=wheel_radius - tyre_diameter/2, center=true);
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