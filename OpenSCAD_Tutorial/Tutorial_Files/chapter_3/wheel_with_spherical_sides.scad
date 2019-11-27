$fa = 1;
$fs = 0.4;
wheel_radius=10;
side_spheres_radius=50;
hub_thickness=4;
difference() {
    sphere(r=wheel_radius);
    translate([0,side_spheres_radius + hub_thickness/2,0])
        sphere(r=side_spheres_radius);
    translate([0,- (side_spheres_radius + hub_thickness/2),0])
        sphere(r=side_spheres_radius);
}