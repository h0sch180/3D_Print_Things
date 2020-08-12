$fn=100;

difference() {
    union() {
        cube([120,3,14]);
        translate([60,1.5,14])rotate(45)cylinder(44,10/2,6/2, $fn=4);
        translate([58.5,0,58]) cube([3,3,50]);
        translate([57,0,108]) cube([6,3,4]);
    }
    translate([55,-3,0]) cube([10,3,58]);
    translate([55,3,0]) cube([10,3,58]);
    
    translate([53.8,-2,107.9]) rotate(45, v=[0,1,0]) cube([3,10,3]);
    translate([62,-2,107.9]) rotate(45, v=[0,1,0]) cube([3,10,3]);

    translate([53.8,-2,112.1]) rotate(45, v=[0,1,0]) cube([3,10,3]);
    translate([62,-2,112.1]) rotate(45, v=[0,1,0]) cube([3,10,3]);
}

