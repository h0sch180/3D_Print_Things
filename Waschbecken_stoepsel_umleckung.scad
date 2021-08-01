$fn=50;
difference() {
    cube([15,26,11]);
    translate([0,20,5.5])rotate(90, v=[0,1,0]) cylinder(15,6.5/2,6.5/2);
    translate([7.5,8,0]) cylinder(15,6.5/2,6.5/2);
    translate([3.5,2,2]) cube([8,4,9]);
    translate([7.5,5,6])rotate(90, v=[0,1,0])rotate(90, v=[1,0,0]) cylinder(15,5/2,5/2);
}