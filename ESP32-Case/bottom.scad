//translate([28.5, -3, 0]) %import("D:/work/projects/esp8266-case/files/NodeMCU-bottom.stl");
use <round_cube.scad>

/* case outer lenght */
length = 52.5+6.5;

/* case outer width */ 
width  = 31.5+2.6;

difference() {
    union() {
        /* bottom part of the case */
        roundCornersCube(length, width, 2.0, 3);

        /* mid part */
        translate([0, 0, 2]) difference() {
            roundCornersCube(length, width, 7.0, 3);
            translate([1.75+1.65, 0.8+1.65, -0.1]) roundCornersCube(length-1.65*2-1.75*2, width-1.65*2-0.8*2, 7.2, 1.65);
//            translate([length-1.65*2-0.2, (width-5)/2, 0]) cube([3.7, 5, 3.9]);
        }

        /* pin holders */
        translate([1.75+1.65, 0.8+1.65, 2])           cube([length-1.65*2-1.75*2, 3.5, 7]);
        translate([1.75+1.65, width-1.65-0.8-3.5, 2]) cube([length-1.65*2-1.75*2, 3.5, 7]);
        
        /* corner enforcers */
        translate([1.75+1.65, 0.8+1.65+3.5, 2]) difference() {
            cube([2.5, 2.5, 7]);
            translate([2.5, 2.5, 0]) cylinder(d=5, h=7.1, $fn=60);  
        }
        translate([1.75+1.65, width-0.8-1.65-3.5-2.5, 2]) difference() {
            cube([2.5, 2.5, 7]);
            translate([2.5, 0, 0]) cylinder(d=5, h=7.1, $fn=60);  
        }
        translate([length-1.75-1.65-2.5, 0.8+1.65+3.5, 2]) difference() {
            cube([2.5, 2.5, 7]);
            translate([0, 2.5, 0]) cylinder(d=5, h=7.1, $fn=60); 
        }
        translate([length-1.75-1.65-2.5, width-0.8-1.65-3.5-2.5, 2]) difference() {
            cube([2.5, 2.5, 7]);
            translate([0, 0, 0]) cylinder(d=5, h=7.1, $fn=60);   
        }

        /* rim */
        translate([1.65, 1.65, 9]) difference() {
            roundCornersCube(length-1.65*2, width-1.65*2, 4.0, 1.65);
            translate([1.75, 0.8, -0.1]) roundCornersCube(length-1.65*2-1.75*2, width-1.65*2-0.8*2, 4.2, 1);
            translate([0, 5, 2]) sphere(r = 1, $fn=60);
            translate([0, width-1.65*2-5, 2]) sphere(r = 1, $fn=60);
            translate([length-1.65*2, 5, 2]) sphere(r = 1, $fn=60);
            translate([length-1.65*2, width-1.65*2-5, 2]) sphere(r = 1, $fn=60);
            translate([-0.1, width/2-12/2-1.65, 0]) cube([1.95, 12, 4.1]);
        }

    }
    
    /* pin holes */
/*    for (i=[0:2.54:2.54*18]) {
        translate([8.2+i, 3.5, -0.1]) cube([1, 1, 8.2]);
        translate([8.5+i, 3.5, 2]) cube([0.4, 3, 5.1]);
    }
    
    for (i=[0:2.54:2.54*18]) {
        //translate([8.2+i, width-3.5-1, -0.1]) cube([1, 1, 8.2]);
        translate([8.5+i, width-3.5-3, 2]) cube([0.4, 3, 5.1]);
    }
*/
    translate([8.2, width-3.5-2.5, -0.1]) cube([42,3.6,10.2]);
    translate([8.2, 2.4, -0.1]) cube([42,3.6,10.2]);
}


