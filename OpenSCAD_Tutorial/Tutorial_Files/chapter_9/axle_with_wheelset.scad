use <vehicle_parts.scad>
$fa = 1;
$fs = 0.4;

wheelbase = 40;
track = 35;

translate([-wheelbase/2, track/2])
    simple_wheel();
translate([-wheelbase/2, -track/2])
    simple_wheel();
translate([-wheelbase/2, 0, 0])
    axle(track=track);