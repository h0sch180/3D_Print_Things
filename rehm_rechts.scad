$fn=50;

difference() {
	minkowski() {
		union() {
			cube([12,2,11]);
			translate([13,1,0]) cube([36,2,15]);
		}
		sphere(1);
	}
	rotate(90, v=[1,0,0]) translate([5,5,-7]) cylinder(11,6/2,6/2);
}



//		cube([15,4,11]);
//		translate([15,-1,0]) cube([38,4,16]);
//		translate([15,-1,0]) cube([38,4,16]);
