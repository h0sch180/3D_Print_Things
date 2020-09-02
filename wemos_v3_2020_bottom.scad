$fn=50;
difference() {
    union() {
        difference() {
            minkowski() {
                cube([100,30,7]);
                sphere(2);
            }
            cube([100,30,10]);
            //Oben saubere Kante
            translate([-2,-2,7])cube([110,40,2]);
            //USB-Ports
            translate([72,-2,2])cube([10,5,4]);
            translate([86,28,2])cube([8,4,4]);
            //LEDs
            translate([18,5,-2])cube([20,2,3]);
            
        }
        //Schraubenhalterung
        cube([4,6,5]);
        translate([0,24,0]) cube([4,6,5]);
        translate([96,0,0]) cube([4,6,5]);
        translate([96,24,0]) cube([4,6,5]);
    }
    //Schraubenlöcher
    translate([2,3,5]) cylinder(4,2/2,2/2);
    translate([2,27,5]) cylinder(4,2/2,2/2);
    
    translate([98,3,5]) cylinder(4,2/2,2/2);
    translate([98,27,5]) cylinder(4,2/2,2/2);
}