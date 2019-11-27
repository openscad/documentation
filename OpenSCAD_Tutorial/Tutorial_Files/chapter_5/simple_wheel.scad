$fa = 1;
$fs = 0.4;
module simple_wheel(wheel_radius=10, wheel_width=6) {
    rotate([90,0,0])
        cylinder(h=wheel_width,r=wheel_radius,center=true);
}
simple_wheel();