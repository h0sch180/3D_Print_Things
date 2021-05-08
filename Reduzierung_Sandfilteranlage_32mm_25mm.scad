$fn=50;

difference(){
    union(){
        cylinder(30,32/2,32/2);
        translate([0,0,30])cylinder(13,32/2,27.5/2);
        //translate([0,0,33])cylinder(8,25/2,25/2);
        //translate([0,0,41])cylinder(2,23/2,23/2);
        translate([0,0,43])cylinder(25,27.5/2,27.5/2);
    }
    cylinder(68,23.5/2,23.5/2);
    cylinder(30,28/2,28/2);
    translate([0,0,30])cylinder(8,28/2,23.5/2);
}