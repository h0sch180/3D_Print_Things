$fn=50;
difference(){
    union() {
        cube([30,8,6]);
        translate([15,4,6]) cylinder(15,8/2,10/2);
    }
    translate([2,2.1,0])cube([25.5,3.8,4]);
    translate([15,4,7])cylinder(14,6.3/2,6.3/2);
}