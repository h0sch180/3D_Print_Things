$fn=100;

difference(){
    union(){
        difference(){
            cylinder(14,112/2,112/2);
            translate([0,0,3])cylinder(11,102/2,102/2);
        }
        translate([40,0,3])cylinder(11,13/2,13/2);
        translate([-40,0,3])cylinder(11,13/2,13/2);
        translate([40,-6.5,3])cube([12,13,11]);
        translate([-52,-6.5,3])cube([12,13,11]);
    }
    translate([40,0,3])cylinder(11,9/2,9/2);
    translate([-40,0,3])cylinder(11,9/2,9/2);
    translate([-50,-60,3])rotate([0,0,45])cube([150,20,11]);
    translate([-50,60,3])rotate([0,0,-55])cube([150,20,11]);
}