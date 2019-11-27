use <vehicle_parts.scad>
$fa = 1;
$fs = 0.4;
module axle_wheelset_complex(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2, track=35, radius=2) {
    translate([0,track/2,0])
        complex_wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2);
    axle(track=track, radius=radius);
    translate([0,-track/2,0])
        complex_wheel(wheel_radius=10, side_spheres_radius=50, hub_thickness=4, cylinder_radius=2);
}
axle_wheelset_complex();