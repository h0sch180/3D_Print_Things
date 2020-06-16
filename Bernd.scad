$fn=50;
difference() {
    union() {
        cube([95,63,3.5]);
        translate([95,24,0]) cube([11,15,2]);
        translate([106,31.5,0]) cylinder(2,15/2,15/2);
        translate([-5,8,3.5]) cube([8,8,3]);
        translate([-5,47,3.5]) cube([8,8,3]);
        translate([107,31.5,2]) cylinder(2,11/2,11/2);
    }
    translate([107,31.5,3]) cylinder(2,3/2,3/2);
    translate([107,31.5,0]) cylinder(3,5/2,3/2);
    cube([5,5,3.5]);
    translate([90,0,0])cube([5,5,3.5]);
    translate([0,58,0])cube([5,5,3.5]);
    translate([90,58,0])cube([5,5,3.5]);
}
translate([5,5,0])cylinder(3.5,10/2,10/2);
translate([90,5,0])cylinder(3.5,10/2,10/2);
translate([5,58,0])cylinder(3.5,10/2,10/2);
translate([90,58,0])cylinder(3.5,10/2,10/2);
