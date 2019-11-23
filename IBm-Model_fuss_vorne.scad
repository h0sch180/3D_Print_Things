$fn=200;

translate([0,0,0.5])cylinder(1,r=10/2);
translate([0,0,0]) cylinder(0.5,9/2,9/2);
translate([0,0,0.5]) rotate_extrude() translate([9/2,0,0]) circle(0.5);

translate([0,0,1.5])cylinder(2,5/2,5/2);
translate([0,0,3])cylinder(1.5,6.5/2,4/2);
