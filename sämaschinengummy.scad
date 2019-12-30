rundung=100;

difference () {
    union() {
        cylinder(22,44/2,42/2, $fn=rundung);
        translate([0,0,22]) cylinder(17,40/2,40/2, $fn=rundung);
    }
    cylinder(20,37/2,35/2, $fn=rundung);
    cylinder(39,30/2,30/2, $fn=rundung);
    translate([0,0,22]) cylinder(12,34/2,34/2, $fn=rundung);

}