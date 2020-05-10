$fn=50;
//boden
difference() {
    union() {
        difference(){
            cube([150,150,50]);
            translate([2,2,2]) cube([146,146,48]);
            translate([60,5,25]) rotate(90, v=[1,0,0]) cylinder(5,10/2,10/2);
            translate([90,5,25]) rotate(90, v=[1,0,0]) cylinder(5,18/2,18/2);
        }
        translate([2,2,0]) cube([10,10,40]);
        translate([138,138,0]) cube([10,10,40]);
        translate([2,138,0]) cube([10,10,40]);
        translate([138,2,0]) cube([10,10,40]);
    }
    translate([7,7,2]) cylinder(50,2/2,2/2);
    translate([7,143,2]) cylinder(50,2/2,2/2);
    translate([143,143,2]) cylinder(50,2/2,2/2);
    translate([143,7,2]) cylinder(50,2/2,2/2);
}