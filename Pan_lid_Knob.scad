$fn=50;
difference() {
    union() {
        cylinder(10,30/2,30/2);
        translate([0,0,10]) cylinder(10,30/2,40/2);
        translate([0,0,20]) cylinder(7,40/2,40/2);
        translate([0,0,27]) cylinder(3,40/2,30/2);
    }
    cylinder(40,7/2,7/2);
    translate([0,0,10]) cylinder(30,9.1/2,9.1/2,$fn=6);
}