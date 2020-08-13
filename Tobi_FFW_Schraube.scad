$fn=60;
// mit 85% drucken
include <cyl_head_bolt.scad>;
include <materials.scad>;

difference() {
	screw("M16x25", thread="modeled");
	translate([0,0,5]) cylinder(15,25/2,25/2);
}
minkowski() {
	translate([-12,-18,1])cube([24,36,3]);
	sphere(1);
}
//cylinder(5,30/2,30/2);
