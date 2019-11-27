use <vehicle_parts.scad>

$fa = 1;
$fs = 0.4;

// model parameters
d1=30;
d2=20;
d3=20;
d4=10;
d5=20;

w1=15;
w2=45;
w3=25;

h=14;
track=40;

// distances to lengths
l1 = d1;
l2 = d1 + d2;
l3 = d1 + d2 + d3;
l4 = d1 + d2 + d3 + d4;
l5 = d1 + d2 + d3 + d4 + d5;

// right side points
p0 = [0, w1/2];
p1 = [l1, w1/2];
p2 = [l2, w2/2];
p3 = [l3, w2/2];
p4 = [l4, w3/2];
p5 = [l5, w3/2];

// left side points
p6 = [l5, -w3/2];
p7 = [l4, -w3/2];
p8 = [l3, -w2/2];
p9 = [l2, -w2/2];
p10 = [l1, -w1/2];
p11 = [0, -w1/2];

// all points
points = [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11];

// extruded body profile
linear_extrude(height=h)
    polygon(points);

// canopy
translate([d1+d2+d3/2,0,h])
    resize([d2+d3+d4,w2/2,w2/2])
    sphere(d=w2/2);

// axles
l_front_axle = d1/2;
l_rear_axle = d1 + d2 + d3 + d4 + d5/2;
half_track = track/2;

translate([l_front_axle,0,h/2])
    axle(track=track);
translate([l_rear_axle,0,h/2])
    axle(track=track);

// wheels
translate([l_front_axle,half_track,h/2])
    simple_wheel(wheel_width=10);
translate([l_front_axle,-half_track,h/2])
    simple_wheel(wheel_width=10);

translate([l_rear_axle,half_track,h/2])
    simple_wheel(wheel_width=10);
translate([l_rear_axle,-half_track,h/2])
    simple_wheel(wheel_width=10);