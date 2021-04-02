$fn=50;

minkowski() {
    union () {
        cube([57.5,163.5,1]);
        translate([2,2.5,1.75])cube([53.5,158.5,3]);
    }
    sphere(0.75);
}