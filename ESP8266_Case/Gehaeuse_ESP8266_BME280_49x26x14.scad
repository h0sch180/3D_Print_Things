$fn=50;

// ESP8266   49mm x 26mm x 14mm

difference() {
	union() {
		difference(){
			//Korpus
			cube([67,31,30]);
			translate([2,2,2]) cube([63,27,28]);
			translate([0,9.5,2]) cube([2,12,7]);
		}

		//Trenner ESP / BME
		translate([52,0,0]) cube([2,23,25]);

		//Platinen Abstandhalter
		translate([2,2,2]) cube([5,5,4]);
		translate([2,24,2]) cube([5,5,4]);
		translate([47,2,2]) cube([5,5,4]);
		translate([47,24,2]) cube([5,5,4]);
		translate([60,13.5,2]) cube([5,5,4]);
	}

	//Schraubenlöcher
	translate([4.5,4.5,0]) cylinder(6,2/2,2/2);
	translate([4.5,26.5,0]) cylinder(6,2/2,2/2);
	translate([49.5,4.5,0]) cylinder(6,2/2,2/2);
	translate([49.5,26.5,0]) cylinder(6,2/2,2/2);
	translate([62.5,16,0]) cylinder(6,2/2,2/2);

	//Lüftung ESP8266
	translate([30,10.5,0]) cube([2,10,2]);
	translate([34,10.5,0]) cube([2,10,2]);
	translate([38,10.5,0]) cube([2,10,2]);
	translate([42,10.5,0]) cube([2,10,2]);
}

//Halterung
difference() {
	union() {
		translate([22.5,-10,0]) cube([20,10,2]);
		translate([22.5,31,0]) cube([20,10,2]);
	}
	translate([28,-5,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
	translate([37,-5,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
	translate([28,36,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
	translate([37,36,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
}
