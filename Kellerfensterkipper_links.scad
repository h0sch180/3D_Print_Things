$fn=50;

difference() {
    union () {
        cube([230,41,5]);
        translate([197,32,-19]) cylinder(19,10/2,10/2);
    }
    cube([21,11,5]);
    translate([74,-1.5,0]) rotate(8, [0,0,1]) cube([10,12,5]);
    translate([140,-3,0]) rotate(15, [0,0,1]) cube([10,12,5]);
    translate([216,12,0]) cube([14,29,5]);
    translate([226,0,0]) cube([5,12,5]);
    translate([0,36,0]) cube([5,5,5]);
    translate([23,25,0]) cube([150,9,5]);
    translate([23,29.5,0]) cylinder(5,9/2,9/2);
    translate([173,31,0]) cylinder(5,12/2,12/2);
    translate([93,31,0]) cylinder(5,12/2,12/2);
    translate([169,32,0]) cylinder(5,6/2,6/2);
    translate([211,36,0]) cube([5,5,5]);
    translate([216,16,0]) cylinder(5,8/2,8/2);
    translate([218,19,0]) cylinder(5,6/2,6/2);
    translate([197,32,-17]) cylinder(20,7/2,7/2);
    translate([197,32,2]) cylinder(3,7/2,10/2);
}
translate([224,6,0]) cylinder(5,12/2,12/2);
translate([5,36,0]) cylinder(5,10/2,10/2);
translate([211,36,0]) cylinder(5,10/2,10/2);