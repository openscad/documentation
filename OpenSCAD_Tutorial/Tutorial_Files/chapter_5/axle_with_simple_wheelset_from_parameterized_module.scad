use <vehicle_parts.scad>
$fa = 1;
$fs = 0.4;
module axle_wheelset(track=35, radius=2) {
    translate([0,track/2,0])
        children(0);
    axle(track=track, radius=radius);
    translate([0,-track/2,0])
        children(0);
}
axle_wheelset() {
    simple_wheel();
}