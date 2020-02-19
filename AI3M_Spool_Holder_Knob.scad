$fn=50;
difference(){
    union(){
        cylinder(1,19/2,20/2);
        translate([0,0,1]) cylinder(32,20/2,20/2);
    }
    translate([0,0,3]) cylinder(32,16.5/2,16.5/2);
}
translate([0,0,3]) cylinder(12,14.8/2,14.8/2);