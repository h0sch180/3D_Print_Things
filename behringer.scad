$fn=50;
difference(){
	cube([63,44,6]);
	translate([6.5,6,0])cylinder(7,6.5/2,6.5/2);
	translate([56.5,6,0])cylinder(7,6.5/2,6.5/2);
	
	translate([53,37,0])cylinder(7,7/2,7/2);
	translate([9,37,0])cylinder(7,7/2,7/2);
	
	translate([31.5,-15,0])cylinder(7,50/2,50/2);
	translate([31.5,60,0])cylinder(7,50/2,50/2);
	
	translate([0,15,0])cube([15,15,7]);
	translate([15,22.5,0])cylinder(7,15/2,15/2);

	translate([48,15,0])cube([15,15,7]);
	translate([48,22.5,0])cylinder(7,15/2,15/2);

	translate([51.5,30,0])cube([3,5,7]);
	translate([7.5,30,0])cube([3,5,7]);
}