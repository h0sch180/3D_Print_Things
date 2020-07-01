$fn=50;

// ESP8266   49mm x 26mm x 14mm

difference() {
	union() {
		difference(){
			//Korpus
			cube([69,31,20]);
			translate([2,2,2]) cube([65,27,18]);
			translate([0,11.5,3]) cube([2,8,6]);
		}

		//Trenner ESP / BME
		translate([54,0,0]) cube([2,27,16]);

		//Platinen Abstandhalter
		translate([2,2,2]) cube([4,4,2]);
		translate([2,25,2]) cube([4,4,2]);
		translate([50,2,2]) cube([4,4,2]);
		translate([50,25,2]) cube([4,4,2]);
		translate([63,13.5,2]) cube([4,4,2]);
	}

	//Schraubenlöcher
	translate([4,4,0]) cylinder(4,1/2,1/2);
	translate([4,27,0]) cylinder(4,1/2,1/2);
	translate([52,4,0]) cylinder(4,1/2,1/2);
	translate([52,27,0]) cylinder(4,1/2,1/2);
	translate([65,15.5,0]) cylinder(4,1/2,1/2);

	//Lüftung ESP8266
	translate([8,10.5,0]) cube([2,10,2]);
	translate([12,10.5,0]) cube([2,10,2]);
	translate([16,10.5,0]) cube([2,10,2]);
	translate([20,10.5,0]) cube([2,10,2]);
}
/*
//Halterung
difference() {
	union() {
		translate([22.5,-10,0]) cube([20,10,2]);
		translate([22.5,37,0]) cube([20,10,2]);
	}
	translate([28,-5,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
	translate([37,-5,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
	translate([28,42,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
	translate([37,42,0]) rotate(90,v=[0,0,1]) cylinder(2,4/2,4/2);
}
*/