include <TextGenerator_after_2015.03.scad>;
difference() {
    cylinder(4,80/2,80/2,$fn=1000);
    cylinder(4,16.5/2,16.5/2,$fn=1000);
    rotate([180,0,180]) translate([-30,12,-4])scale([1,1,4]) drawtext("created by");
    rotate([180,0,180]) translate([-25,-20,-4])scale([1,1,4]) drawtext("h0sch180");
}
difference() {
    translate([0,0,4]) cylinder(60,72/2,72/2,$fn=1000);
    translate([0,0,4]) cylinder(64,16.5/2,16.5/2,$fn=1000);
}