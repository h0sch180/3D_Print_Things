$fn=50;

// ESP8266   49mm x 26mm x 14mm

difference() {
	union() {
		//Korpus
		cube([67,31,2]);
		translate([2.25,2.25,2]) cube([62.5,26.5,3]);
	}
	translate([62,7,0]) cube([2,17,6]);
	translate([58,7,0]) cube([2,17,6]);
	translate([54,7,0]) cube([2,17,6]);

}
	