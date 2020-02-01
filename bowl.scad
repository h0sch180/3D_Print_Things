$fn=100;
    difference(){
        union(){
            cylinder(100,80/2,100/2);
            translate([0,0,100]) cylinder(1,r=100/2);
        }
        translate([0,0,3]) cylinder(98,76/2,96/2);
    }
translate([0,0,100]) rotate_extrude() translate([50,0,0]) circle(1);    
