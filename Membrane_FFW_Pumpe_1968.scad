difference(){
  cylinder(3,124.4/2,124.4/2, $fn=1000);
  cylinder(3,6/2,6/2, $fn=200);
  translate([0,54.2,0]) cylinder(3,6/2,6/2, $fn=200);
  translate([0,-54.2,0]) cylinder(3,6/2,6/2, $fn=200);
  translate([54.2,0,0]) cylinder(3,6/2,6/2, $fn=200);
  translate([-54.2,0,0]) cylinder(3,6/2,6/2, $fn=200);
//  translate([-37,38,0]) cylinder(3,6/2,6/2, $fn=200);  
};