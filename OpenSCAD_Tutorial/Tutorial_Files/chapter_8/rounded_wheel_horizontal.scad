$fa = 1;
$fs = 0.4;
wheel_radius = 12;
wheel_width = 4;
tyre_diameter = 6;
rotate_extrude(angle=360) {
    translate([wheel_radius-tyre_diameter/2,0])
        circle(d=tyre_diameter);
}
cylinder(h=wheel_width, r=wheel_radius - tyre_diameter/2, center=true);