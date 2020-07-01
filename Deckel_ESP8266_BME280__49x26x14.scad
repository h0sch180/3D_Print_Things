$fn=50;

// ESP8266   49mm x 26mm x 14mm

difference() {
	union() {
		//Korpus
		cube([69,31,2]);
		translate([2,2,2]) cube([65,27,3]);
	}
	translate([63,7,0]) cube([2,17,5]);
	translate([59,7,0]) cube([2,17,5]);
	translate([55,7,0]) cube([2,17,5]);

}
	