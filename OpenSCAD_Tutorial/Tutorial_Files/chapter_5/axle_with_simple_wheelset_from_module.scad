use <vehicle_parts.scad>
$fa = 1;
$fs = 0.4;
module axle_wheelset(wheel_radius=10, wheel_width=6, track=35, radius=2) {
    translate([0,track/2,0])
        simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width);
    axle(track=track, radius=radius);
    translate([0,-track/2,0])
        simple_wheel(wheel_radius=wheel_radius, wheel_width=wheel_width);
}
axle_wheelset();