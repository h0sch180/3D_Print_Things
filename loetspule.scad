$fn=50;
difference() {
    union() {
        cylinder(3,30/2,30/2);
        cylinder(30,10/2,10/2);
        translate([0,0,27])cylinder(3,30/2,30/2);
        
    }
    translate([0,5.5,0])cylinder(3,1/2,1/2);
}