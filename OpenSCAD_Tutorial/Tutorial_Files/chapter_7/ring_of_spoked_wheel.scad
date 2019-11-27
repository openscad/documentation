module spoked_wheel(radius=12, width=5, thickness=5, number_of_spokes=7, spoke_radius=1.5) {
        
    // Ring
    inner_radius = radius - thickness/2;
    difference() {
        cylinder(h=width,r=radius,center=true);
        cylinder(h=width + 1,r=inner_radius,center=true);
    }
}
$fa = 1;
$fs = 0.4;
spoked_wheel();