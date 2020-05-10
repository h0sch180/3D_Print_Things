$fn=50;
//boden
difference() {
    union(){
        difference(){
            cube([150,150,30]);
            translate([2,2,2]) cube([146,146,48]);
            
            translate([100,20,0]) cylinder(5,13/2,13/2);
            translate([100,46,0]) cylinder(5,13/2,13/2);
            translate([100,76,0]) cylinder(5,13/2,13/2);
            translate([100,105,0]) cylinder(5,13/2,13/2);
            translate([100,130,0]) cylinder(5,13/2,13/2);
            
            translate([50,20,0]) cylinder(5,13/2,13/2);
            translate([50,46,0]) cylinder(5,13/2,13/2);
            translate([50,76,0]) cylinder(5,13/2,13/2);
            translate([50,105,0]) cylinder(5,13/2,13/2);
            translate([50,130,0]) cylinder(5,13/2,13/2);
        }
        translate([2,2,0]) cube([10,10,40]);
        translate([138,138,0]) cube([10,10,40]);
        translate([2,138,0]) cube([10,10,40]);
        translate([138,2,0]) cube([10,10,40]);
    }
    translate([7,7,0]) cylinder(40,4/2,4/2);
    translate([7,143,0]) cylinder(40,4/2,4/2);
    translate([143,143,0]) cylinder(40,4/2,4/2);
    translate([143,7,0]) cylinder(40,4/2,4/2);
    
    translate([7,7,0]) cylinder(3,9/2,4/2);
    translate([7,143,0]) cylinder(3,9/2,4/2);
    translate([143,143,0]) cylinder(3,9/2,4/2);
    translate([143,7,0]) cylinder(3,9/2,4/2);
}