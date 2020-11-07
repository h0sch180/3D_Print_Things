$fn=50;

difference() {
    union(){
        minkowski() {
            cube([50,30,3]);
            sphere(2);
        }
        minkowski() {
            cube([3,30,40]);
            sphere(2);
        }
        minkowski() {
            translate([25,15,32])cylinder(8,50/2,50/2);
            sphere(2);
        }
    }
    translate([-5,15,12])rotate(90, v=[0,1,0])cylinder(15,13/2,13/2);
    translate([12,15,30])cylinder(15,13/2,13/2);
    
    translate([12,-5,34])cube([22,8.1,8.5]);
    translate([34,-0.95,34])cylinder(8.5,8.1/2,8.1/2);
    
    translate([8,-3,37])cube([20,3.5,5.5]);
    
    translate([8,0,37])cube([4.5,10,5.5]);
}