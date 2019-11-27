$fa = 1;
$fs = 0.4;
intersection() {
    sphere(r=10);
    translate([12,0,0])
        sphere(r=10);
    translate([0,-12,0])
        sphere(r=10);
}