function naca_half_thickness(x,t) = 5*t*(0.2969*sqrt(x) - 0.1260*x - 0.3516*pow(x,2) + 0.2843*pow(x,3) - 0.1015*pow(x,4));
function naca_top_coordinates(t,n) = [ for (x=[0:1/(n-1):1]) [x, naca_half_thickness(x,t)]];
function naca_bottom_coordinates(t,n) = [ for (x=[1:-1/(n-1):0]) [x, - naca_half_thickness(x,t)]];
function naca_coordinates(t,n) = concat(naca_top_coordinates(t,n), naca_bottom_coordinates(t,n));
module naca_airfoil(chord,t,n) {
    points = naca_coordinates(t,n);
    scale([chord,chord,1])polygon(points);
}
module naca_wing(span,chord,t,n,center=false) {
    linear_extrude(height=span,center=center) {
        naca_airfoil(chord,t,n);
    }
}

rotate([90,0,0])naca_wing(span=50,chord=20,t=0.12,n=500,center=true);