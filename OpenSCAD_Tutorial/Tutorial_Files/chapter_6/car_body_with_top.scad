module body(base_height=10, top_height=14, base_length=60, top_length=30, width=20, top_offset=5, top) {
    // Car body base 
    cube([base_length,width,base_height],center=true); 
    // Car body top
    if (top) {
        translate([top_offset,0,base_height/2+top_height/2])
            cube([top_length,width,top_height],center=true);
    }
}
$fa = 1;
$fs = 0.4;
body(top=true);