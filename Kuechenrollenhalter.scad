$fn=100;
difference(){
    cylinder(35,14/2,13/2);
    translate([0,0,21]) cylinder(14,11.6/2,11.6/2);
    translate([-3,-8,1])cube([6,18,15]);
    translate([-3,-7,0])cube([3,14,2]);
}