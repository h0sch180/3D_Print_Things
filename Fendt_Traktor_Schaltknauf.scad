difference() {
    union() {
        cylinder(25,30/2,30/2, $fn=100);
        translate([0,0,25]) cylinder(15,30/2,48/2, $fn=100);
        translate([0,0,52]) sphere(d=110/2, $fn=100);
    }
    cylinder(50,10.5/2,10.5/2, $fn=100);
}

