$fn=50;
height=6;
ftype="Liberation Sans:style=Bold";
//ftype="Arial:style=Bold";


module flat_heart() {
  square(20);
  translate([10, 20, 0]) circle(10);
  translate([20, 10, 0]) circle(10);
}



difference() {
    linear_extrude(height) flat_heart();
    translate([22,12,0]) cylinder(height,3/2,3/2);
    rotate(-45, [0,0,1]) translate([-8,23,height-3]) linear_extrude(3) {
        text("0179", size=5, halign = "center", valign="center", font = ftype); 
    }
    rotate(-45, [0,0,1]) translate([0,16,height-3]) linear_extrude(3) {
        text("2244085", size=5, halign = "center", valign="center", font = ftype); 
    }
    rotate(-45, [0,0,1]) translate([0,10,height-3]) linear_extrude(3) {
        text("Tammy", size=3.5, halign = "center", valign="center", font = ftype); 
    }
}