$fn=50;

difference(){
	union() {
		difference(){
			cube([15,25,3]);
			translate([7.5,10,0])cylinder(3,4/2,4/2);
			translate([7.5,10,2])cylinder(1,4/2,8/2);
			translate([7.5,20,0])cylinder(3,4/2,4/2);
			translate([7.5,20,2])cylinder(1,4/2,8/2);
		}
		cube([15,3,14.8]);
		translate([0,10,15]) rotate(90,[0,1,0]) cylinder(15,20/2,20/2);
	}
	translate([0,10,15]) rotate(90,[0,1,0]) cylinder(15,15/2,15/2);
	translate([0,6,4]) cube([15,30,25]);
}
