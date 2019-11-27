module body(base_height=10, top_height=14, base_length=60, top_length=30, width=20, top_offset=5, top) {
    // Car body base 
    cube([base_length,width,base_height],center=true); 
    // Car body top
    if (top) {
        translate([top_offset,0,base_height/2+top_height/2])
            cube([top_length,width,top_height],center=true);
    }
    // Front bumper
    color("blue") {
        translate([-base_length/2,0,0])rotate([90,0,0]) {
            cylinder(h=width - base_height,r=base_height/2,center=true);
            translate([0,0,(width - base_height)/2])
                sphere(r=base_height/2);
            translate([0,0,-(width - base_height)/2])
                sphere(r=base_height/2);
        }
    }
    // Rear bumper
    color("blue") {
        translate([base_length/2,0,0])rotate([90,0,0]) {
            cylinder(h=width - base_height,r=base_height/2,center=true);
            translate([0,0,(width - base_height)/2])
                sphere(r=base_height/2);
            translate([0,0,-(width - base_height)/2])
                sphere(r=base_height/2);
        }
    }
}
$fa = 1;
$fs = 0.4;
body(top=true);