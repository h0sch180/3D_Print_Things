rundung=100;

difference(){
    union(){
        difference() {
            cylinder(3,80/2,80/2,$fn=rundung);
            translate([0,25,2]) rotate([180,0,180]) linear_extrude(2) {
                text("created by", size=5,
                    halign = "center", valign="center",
                    font = "Liberation Sans:style=Bold Italic");
                }
            translate([0,16,2]) rotate([180,0,180]) linear_extrude(2) {
                text("h0sch180", size=5,
                    halign = "center", valign="center",
                    font = "Liberation Sans:style=Bold Italic");
                }
            translate([0,-20,2]) rotate([180,0,180]) linear_extrude(2) {
                text("Spool-Adapter V2", size=5,
                    halign = "center", valign="center",
                    font = "Liberation Sans:style=Bold Italic");
                }
        }
        difference() {
            translate([0,0,3]) cylinder(70,72/2,72/2,$fn=rundung);
            translate([0,0,3]) cylinder(70,69/2,67/2,$fn=rundung);
        }
        translate([0,0,3]) cylinder(70,20/2,20/2,$fn=rundung);
        translate([0,0,38]) cube([2,71,70], center=true);
        rotate([0,0,45]) translate([0,0,38]) cube([2,71,70], center=true);
        rotate([0,0,90]) translate([0,0,38]) cube([2,71,70], center=true);
        rotate([0,0,135]) translate([0,0,38]) cube([2,71,70], center=true);
    }
    cylinder(73,16.5/2,16.5/2,$fn=rundung);
}