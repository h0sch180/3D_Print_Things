$fn=50;
difference() {
    union() {
        cylinder(4,24/2,24/2);
        translate([0,-12,0])cube([34,24,4]);
        translate([34,0,0])cylinder(4,24/2,24/2);
        translate([18,12,0])cylinder(4,12/2,12/2);
    }
    translate([0,0,2])cylinder(2,20/2,20/2);
    translate([0,-10,2])cube([34,20,2]);
    translate([34,0,2])cylinder(2,20/2,20/2);
    translate([18,13.5,0])cylinder(4,3/2,3/2);
}