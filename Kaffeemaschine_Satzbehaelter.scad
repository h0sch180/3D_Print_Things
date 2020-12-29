$fn=50;

difference() {
    union() {
        cube([130,79,25]);
        translate([130,0,0])cube([105,79,151]);
        translate([150,76,0])cube([77,60,151]);
    }
    translate([3,3,3])cube([127,73,25]);
    translate([133,3,3])cube([99,73,148]);
    translate([153,76,3])cube([71,57,148]);
}