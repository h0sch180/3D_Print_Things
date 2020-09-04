$fn=50;
difference() {
    union() {
        difference() {
            /*
            minkowski() {
                cube([100,30,7]);
                sphere(2);
            }*/
            translate([-2,-2,-2]) cube([104,34,9]);
            cube([100,30,10]);
            //Oben saubere Kante
            //translate([-2,-2,7])cube([110,40,2]);
            //USB-Ports
            translate([71.5,-2,2])cube([10,5,4]);
            translate([86,28,2])cube([8,4,4]);
            //LEDs
            translate([18,5,-2])cube([20,2,3]);
            
        }
        //Schraubenhalterung
        cube([5.5,6.5,5]);
        translate([0,23.5,0]) cube([5.5,6.5,5]);
        translate([94.5,0,0]) cube([5.5,6.5,5]);
        translate([94.5,23.5,0]) cube([5.5,6.5,5]);
    }
    //Schraubenlöcher
    translate([2,3,0]) cylinder(6,3.5/2,3.5/2);
    translate([2,28,0]) cylinder(6,3.5/2,3.5/2);
    
    translate([97,3,0]) cylinder(6,3.5/2,3.5/2);
    translate([97,28,0]) cylinder(6,3.5/2,3.5/2);
    //Mutterneinsatz
    translate([2,3,-2]) cylinder(3,7/2,7/2,$fn=6);
    translate([2,28,-2]) cylinder(3,7/2,7/2,$fn=6);
    
    translate([97,3,-2]) cylinder(3,7/2,7/2,$fn=6);
    translate([97,28,-2]) cylinder(3,7/2,7/2,$fn=6);
}
translate([92.5,0,0]) cube([2,30,2]);