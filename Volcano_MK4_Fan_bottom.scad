$fn=50;

difference() {
    union() {
        cube([17,9,4]);
        cube([8,9,8]);
    }
    translate([4,4.5,0]) cylinder(8,4/2,4/2);
    translate([13,4.5,0]) cylinder(4,4/2,4/2);
}