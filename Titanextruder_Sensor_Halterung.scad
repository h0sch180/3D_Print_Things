$fn=50;

difference() {
    cube([40,40,3]);
    cube([25,25,3]);
    translate([7,33,0]) cylinder(3,4.2/2,4.2/2);
    translate([32.5,7,0]) cylinder(3,3.2/2,3.2/2);
}