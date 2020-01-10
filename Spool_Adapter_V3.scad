rundung=100;
schriftart="Liberation Sans:style=Bold Italic";
schriftgroesse=5;
difference() {
    union(){
        difference() {
            union(){
                cylinder(3,80/2,80/2,$fn=rundung);
                translate([0,0,3]) cylinder(70,72/2,72/2,$fn=rundung);
            }         
            cylinder(73,16.5/2,16.5/2,$fn=rundung);
            translate([0,0,71]) cylinder(2,68/2,68/2,$fn=rundung);
            translate([0,25,69]) linear_extrude(2) {
                text("created by", size=schriftgroesse,
                halign = "center", valign="center",
                font = schriftart);
            }
            translate([0,16,69]) linear_extrude(2) {
                text("h0sch180", size=schriftgroesse,
                halign = "center", valign="center",
                font = schriftart);
            }
            translate([0,-15,69]) linear_extrude(2) {
                text("Spool-Adapter V3", size=schriftgroesse,
                halign = "center", valign="center",
                font = schriftart);
            }
        }
        translate([0,0,71]) cylinder(2,21.5/2,21.5/2,$fn=rundung);
    }
    translate([0,0,71]) cylinder(2,16.5/2,16.5/2,$fn=rundung);
}