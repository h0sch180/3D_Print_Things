$fn=50;
difference() {
    union() {
        minkowski() {
            union() {
                difference(){
                  cube([31,8,29]);
                  translate([-8,0,32]) rotate(45, v=[0,1,0]) cube([10,20,20]);
                  translate([21,0,36]) rotate(45, v=[0,1,0]) cube([20,14,14]);

                  translate([-19,0,23]) rotate(80, v=[0,1,0]) cube([30,14,20]);
                  translate([26,0,0]) rotate(10, v=[0,1,0]) cube([30,14,30]);
                }
            }
            sphere(2);
        }
        translate([15.5,4,19])cylinder(12,12/2,24/2);
    }
    translate([15.5,4,29])cylinder(2,17/2,17/2);
    translate([15.5,4,19])rotate(23)cylinder(12,8/2,8/2, $fn=8);
}
