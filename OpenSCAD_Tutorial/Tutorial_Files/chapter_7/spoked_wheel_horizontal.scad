module spoked_wheel(radius=12, width=5, thickness=5, number_of_spokes=7, spoke_radius=1.5) {
    
    // Ring  
    inner_radius = radius - thickness/2;
    difference() {
        cylinder(h=width,r=radius,center=true);
        cylinder(h=width + 1,r=inner_radius,center=true);
    }
    
    // Spokes
    spoke_length = radius - thickness/4;
    step = 360/number_of_spokes;
    for (i=[0:step:359]) {
        angle = i;
        rotate([0,90,angle])
            cylinder(h=spoke_length,r=spoke_radius);
    }
}
$fa = 1;
$fs = 0.4;
spoked_wheel();