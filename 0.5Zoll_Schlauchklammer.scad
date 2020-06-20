$fn=50;

difference(){
    union(){
        minkowski(){
            difference(){
                cube([30,30,7]);
                translate([8,0,0]) cube([14,30,7]);
            }
            sphere(1);
        }
        rotate(90,v=[1,0,0]) translate([15,8,-30]) cylinder(30,20/2,20/2);
    }
    translate([0,0,-11]) cube([30,30,10]);
    rotate(90,v=[1,0,0]) translate([15,8,-32]) cylinder(34,16/2,16/2);
    translate([2.5,15,-2]) cylinder(10,3/2,3/2);
    translate([27.5,15,-2]) cylinder(10,3/2,3/2);
    translate([7,-2,-2]) cube([16,34,10]);
}    