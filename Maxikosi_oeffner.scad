$fn=50;
difference(){
    union(){
        minkowski(){
            cube([74,52,24]);
            sphere(3);
        }
    }
    translate([1,25,-4]) cube([72,30,31]);
    translate([1,-4,0]) cube([72,30,27]);
    translate([-4,-4,12]) cube([84,30,27]);
    translate([-4,8,12]) cube([84,30,27]);
}
difference(){
    translate([20,17,-3]) cube([30,8,36]);
    translate([41,17,27]) cube([3,8,7]);
    translate([37.5,21,27]) cube([10,4,3]);
}

translate([-3,46,20]) rotate(90, [0,1,0]) cylinder(7,4/2,4/2);
translate([-2,46,20]) rotate(90, [0,1,0]) cylinder(4,12/2,12/2);

translate([70,46,20]) rotate(90, [0,1,0]) cylinder(7,4/2,4/2);
translate([72,46,20]) rotate(90, [0,1,0]) cylinder(4,12/2,12/2);