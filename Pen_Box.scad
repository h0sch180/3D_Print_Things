include <TextGenerator_after_2015.03.scad>;
cube([150,100,3], center=true);
difference() {
    translate([53,-28,0]) cylinder(150,40/2,40/2,$fw=500);
    translate([53,-28,0]) cylinder(150,36/2,36/2,$fw=500);
}
difference() {
    translate([0,-28,0]) cylinder(100,40/2,40/2,$fw=500);
    translate([0,-28,0]) cylinder(100,36/2,36/2,$fw=500);
}
difference() {
    translate([-53,-28,0]) cylinder(75,40/2,40/2,$fw=500);
    translate([-53,-28,0]) cylinder(75,36/2,36/2,$fw=500);
}
difference() {
    difference() {
        translate([0,20,20]) cube([130,55,40], center=true);
        translate([0,20,20]) cube([126,51,40], center=true);
    }
    translate([57,45,24])
        rotate([90,0,180]) scale([1,1,4])drawtext("Manuel Strauch");
    translate([-5,45,6])
        rotate([90,0,180]) scale([0.5,0.5,4])drawtext("created by h0sch180");
}