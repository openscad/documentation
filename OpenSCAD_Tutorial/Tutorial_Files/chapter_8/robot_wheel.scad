module rounded_simple_wheel(wheel_radius=12, wheel_width=4, tyre_diameter=6, axle_diameter=3) {
    difference() {
        
        // wheel
        rotate([90,0,0]) {
            rotate_extrude(angle=360) {
                translate([wheel_radius-tyre_diameter/2,0])
                    circle(d=tyre_diameter);
                translate([0,-wheel_width/2])
                    square([wheel_radius-tyre_diameter/2,wheel_width]);
            }
        }
        
        // axle hole
        rotate([90,0,0])
            cylinder(h=wheel_width+1,r=axle_diameter/2,center=true);
    }
}

$fa = 1;
$fs = 0.4;
rounded_simple_wheel(wheel_radius=20, wheel_width=6, tyre_diameter=4, axle_diameter=5);