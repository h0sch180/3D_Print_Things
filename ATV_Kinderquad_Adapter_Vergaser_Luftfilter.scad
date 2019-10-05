// Adapter Vergaser --> Luftfilter
// ATV Kinderquad 49cc

difference() {
    cylinder(8,59/2,59/2, $fn=500);
    translate([0,-2,0]) cylinder(8,28/2,28/2, $fn=500);
    translate([0,8,0]) cylinder(8,18/2,18/2, $fn=500);
    translate([20,0,0]) cylinder(8,4/2,4/2, $fn=500);
    translate([-20,0,0]) cylinder(8,4/2,4/2, $fn=500);
}
difference() {
    translate([0,0,8]) cylinder(20,42/2,42/2, $fn=500);
    translate([0,-2,8]) cylinder(20,28/2,28/2, $fn=500);
    translate([0,8,8]) cylinder(20,18/2,18/2, $fn=500);
    translate([20,0,8]) cylinder(20,6/2,6/2, $fn=500);
    translate([-20,0,8]) cylinder(20,6/2,6/2, $fn=500);
}
