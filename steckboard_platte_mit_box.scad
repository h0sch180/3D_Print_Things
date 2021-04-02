$fn=50;

minkowski() {
    union () {
        cube([57,163,1]);
        difference() {
            translate([57,0,0])cube([57,163,30]);
            translate([57.3,0.3,0.3])cube([56.4,162.4,30]);
        }
    }
    sphere(0.75);
}