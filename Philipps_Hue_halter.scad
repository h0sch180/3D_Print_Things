$fn=50;
minkowski() {
    difference(){
        union() {
            cube([140,50,2]);
            cube([140,8,18]);
            translate([0,20,30]) rotate(135, v=[1,0,0]) cube([140,2,20]);
        }
        translate([10,16,26]) rotate(135, v=[1,0,0]) cube([20,15,6]);
        translate([110,16,26]) rotate(135, v=[1,0,0]) cube([20,15,6]);
        translate([20,30,0]) cylinder(5,8/2,8/2);
        translate([120,30,0]) cylinder(5,8/2,8/2);
    }
    sphere(1);
}