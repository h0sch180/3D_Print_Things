$fn=50;
difference() {
    union() {
        cylinder(40,31/2,31/2);
        translate([0,0,40]) cylinder(3,31/2,35/2);
        translate([0,0,43]) cylinder(10,35/2,35/2);
        translate([0,0,53]) cylinder(10,35/2,12/2);
        translate([0,0,63]) cylinder(20,12/2,12/2);
    }
    cylinder(83,8/2,8/2);
    cylinder(30,20/2,20/2);
    translate([0,0,30]) cylinder(20,20/2,8/2);
}