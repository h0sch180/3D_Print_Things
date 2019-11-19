difference(){
  cylinder(2,124.4/2,124.4/2, $fn=1000);
  cylinder(2,6/2,6/2, $fn=200);
  translate([0,54.2,0]) cylinder(2,6/2,6/2, $fn=200);
  translate([0,-54.2,0]) cylinder(2,6/2,6/2, $fn=200);
  translate([54.2,0,0]) cylinder(2,6/2,6/2, $fn=200);
  translate([-54.2,0,0]) cylinder(2,6/2,6/2, $fn=200);
    
  rotate([0,0,45])translate([0,54.2,0]) cylinder(2,6/2,6/2, $fn=200); 
  rotate([0,0,45])translate([0,-54.2,0]) cylinder(2,6/2,6/2, $fn=200);
  rotate([0,0,45])translate([54.2,0,0]) cylinder(2,6/2,6/2, $fn=200);
  rotate([0,0,45])translate([-54.2,0,0]) cylinder(2,6/2,6/2, $fn=200);

};