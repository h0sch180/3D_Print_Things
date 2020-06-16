$fn=60;
include <cyl_head_bolt.scad>;
include <materials.scad>;

difference() {
    union() {
        difference() {
            union() {
                cube([45,29.5,26]);
                translate([10,0,0]) cube([20,29.5,33]);
                rotate(90,v=[1,0,0]) translate([35,25,-29.5]) cylinder(29.5,20/2,20/2);
            }
            cube([10,29.5,30]);
        }
        rotate(90,v=[1,0,0]) translate([13,13,-29.5]) cylinder(29.5,26/2,26/2);   
    }    
    translate([32,0,0]) cube([8,29.5,27]);
    translate([0,5,0]) cube([25.5,19,31]);
    rotate(70,v=[0,1,0]) translate([-40.5,0,-9]) cube([20,40,55]);
    rotate(90,v=[1,0,0]) translate([13,13,-5]) cylinder(7,9/2,9/2);
    rotate(90,v=[1,0,0]) translate([13,13,-29.5]) cylinder(7,17/2,17/2, $fn=6);
    rotate(90,v=[1,0,0]) rotate(90,v=[0,1,0]) translate([14.25,12,25]) cylinder(7,9/2,9/2);
    rotate(90,v=[1,0,0]) rotate(90,v=[0,1,0]) translate([14.25,12,46]) screw("M16x6", thread="modeled");
}



