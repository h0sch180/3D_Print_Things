$fn=50;
difference(){	
	union(){
	translate([-18.5,0,0]) cube([37,30,52]);
	cylinder(52,37/2,37/2);
	
	}
	
	translate ([0,0,2])cylinder(52,33/2,34/2);
	
}