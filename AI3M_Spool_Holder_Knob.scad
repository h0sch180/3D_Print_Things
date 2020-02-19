$fn=50;
difference(){
    union(){
        cylinder(1,19/2,20/2);
        translate([0,0,1]) cylinder(32,20/2,20/2);
    }
    translate([0,0,3]) cylinder(32,15/2,15/2);
}
translate([0,0,3]) cylinder(12,13.9/2,13.9/2);