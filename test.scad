include <cyl_head_bolt.scad>;
include <materials.scad>;
$fn=60;
translate([0,50, 0]) stainless() screw("M20x100", thread="modeled");
translate([0,50,-120]) stainless() nut("M20", thread="modeled");

translate([30,50,0]) screw("M12x60");
translate([30,50,-80]) nut("M12");

translate([50,50,0]) screw("M5x20");
translate([50,50,-30]) nut("M5");