$fn=150;

minkowski() {
	union() {
		difference() {
			union() {
			cube([12,2,11]);
			translate([13,-1,0]) cube([24,2,15]);
				  translate([30,-48,0])cylinder(15,100/2,100/2);
				  translate([40,-1,0]) cube([8,2,15]);
			}
		rotate(90, v=[1,0,0]) translate([5,5,-7]) cylinder(11,6/2,6/2);
		translate([30,-48,0])cylinder(15,97/2,97/2);
		translate([-100,-500.5,0])cube([500,500,15]);
		}
	}
    sphere(1);
}


//		cube([15,4,11]);
//		translate([15,-1,0]) cube([38,4,16]);
//		translate([15,-1,0]) cube([38,4,16]);
