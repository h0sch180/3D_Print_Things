$fn=50;
difference() {
    union() {
        cylinder(5,68/2,68/2);
        translate([0,0,5]) cylinder(25,62/2,58/2);
    }
    cylinder(30,24/2,24/2);
}