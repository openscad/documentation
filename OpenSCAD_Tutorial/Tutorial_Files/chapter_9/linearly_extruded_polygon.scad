h1 = 23;
h2 = 10;
h3 = 8;
d1 = 25;
d2 = 12;
d3 = 15;
// Points
p0 = [0, 0];
p1 = [0, h1 + h2];
p2 = [d3, h1];
p3 = [d1 + d2, h1 + h2];
p4 = [d1 + d2, h3];
p5 = [d1, 0];
points = [p0, p1, p2, p3, p4, p5];
// Polygon
linear_extrude(height=100)
    polygon(points);