cylinder_dia = 14.0;
cylinder_height = 12;

//hexagone_size = 9.5; // for a 8mm M5 nut
hexagone_size = 11.5; // for a 10mm M6 nut
hexagone_depth = 4.7;

hole_size = 0;

handle_dia = 34;
handle_height = 12;

translate([0,0,cylinder_height+handle_height]) rotate([0,180,45])

difference() {

	union() {
		
		difference() {
			cylinder(r=cylinder_dia/2, h=cylinder_height, $fn=64);
			union() {
				translate([cylinder_dia/2+1,-cylinder_dia/2,0]) rotate([0,-10,0]) cube([cylinder_dia, cylinder_dia, cylinder_dia]);
				translate([-cylinder_dia-8,-cylinder_dia/2,1]) rotate([0,10,0]) cube([cylinder_dia, cylinder_dia, cylinder_dia]);
			}
		}
		translate([0,0,cylinder_height]) {
					difference() {
						intersection() {
							cylinder(r=handle_dia/2, h=handle_height, $fn=64);
							translate([0,0,handle_height/2]) sphere(r = handle_dia/2, $fn=64);
							translate([0,0,handle_height/2]) scale([1, 2.5, 1.6]) sphere(r = handle_dia/4.7, $fn=64);
						}
				
					//translate([handle_dia/1.6, 0 ,handle_height]) scale([1, 1, 1]) sphere(r = handle_dia/2, $fn=64);
					//translate([-handle_dia/1.6, 0 ,handle_height]) scale([1, 1, 1]) sphere(r = handle_dia/2, $fn=64);
				}
			}
	}

	union() {
		cylinder(r=hexagone_size/2, h=hexagone_depth, $fn=6);
		cylinder(r=hole_size/2, h=cylinder_height+8, $fn=64);
	}
}
