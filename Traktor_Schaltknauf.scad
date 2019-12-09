difference(){
    union(){
        cylinder(37,30/2,30/2, $fn=100);
        translate([0,0,15]) cylinder(19,30/2,50/2, $fn=100);
        translate([0,0,32]) cylinder(5,7/2,7/2, $fn=100);
        translate([0,0,34]) cylinder(3,50/2,50/2, $fn=100);
        difference(){
            translate([0,0,11]) sphere(r = 72/2, $fn=100);
            cube(size = 74 , center = true);
        }
    }
    cylinder(27,14.3/2,14.3/2, $fn=6);
    translate([0,0,27]) cylinder(5,7/2,7/2, $fn=100);
}