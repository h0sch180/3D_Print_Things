$fn=60;
// mit 85% drucken
include <cyl_head_bolt.scad>;
include <materials.scad>;

difference() {
	screw("M16x15", thread="modeled");
	translate([0,0,5]) cylinder(15,25/2,25/2);
}
cylinder(5,30/2,30/2);