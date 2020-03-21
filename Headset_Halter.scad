$fn=50;

difference(){
	union() {
		difference(){
			cube([15,40,3]);
			translate([7.5,35,0])cylinder(3,4/2,4/2);
			translate([7.5,35,2])cylinder(1,4/2,8/2);
			translate([7.5,25,0])cylinder(3,4/2,4/2);
			translate([7.5,25,2])cylinder(1,4/2,8/2);
		}
		cube([15,3,14.8]);
		translate([0,10,15]) rotate(90,[0,1,0]) cylinder(15,20/2,20/2);
	}
	translate([0,10,15]) rotate(90,[0,1,0]) cylinder(15,15/2,15/2);
	translate([0,3,4]) cube([15,18,13]);
}
