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

// right side points
p0 = [0, w1/2];
p1 = [d1, w1/2];
p2 = [d1 + d2, w2/2];
p3 = [d1 + d2 + d3, w2/2];
p4 = [d1 + d2 + d3 + d4, w3/2];
p5 = [d1 + d2 + d3 + d4 + d5, w3/2];

// left side points
p6 = [d1 + d2 + d3 + d4 + d5, -w3/2];
p7 = [d1 + d2 + d3 + d4, -w3/2];
p8 = [d1 + d2 + d3, -w2/2];
p9 = [d1 + d2, -w2/2];
p10 = [d1, -w1/2];
p11 = [0, -w1/2];

// all points
points = [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11];

// extruded body profile
linear_extrude(height=h)
    polygon(points);