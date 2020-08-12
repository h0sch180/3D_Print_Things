$fn=50;

difference(){
    cube([42,17,15]);
    translate([2,2,2])cube([34,15,5]);
    translate([36,2,2])cube([2,15,13]);
}
translate([42,5,5]) rotate(90, v=[0,1,0]) cylinder(7,7/2,7/2);