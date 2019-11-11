difference(){
    cube([24,44,5], center=true);
    translate([0,20,-2.5]) cylinder(5,11/2,11/2, $fn=200);
    translate([0,-6,0]) cube([13,18,5], center=true);
}    
difference(){
    translate([0,20,-2.5]) cylinder(5,24/2,24/2, $fn=200);
    translate([0,20,-2.5]) cylinder(5,11/2,11/2, $fn=200);
}
