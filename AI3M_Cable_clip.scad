$fn=50;
difference(){
    cylinder(4,14/2,14/2);
    cylinder(4,11/2,11/2);
    //translate([0,7,0]) cylinder(4,11/2,11/2);
    translate([-4,3,0]) cube([8,6,4]);
}
difference(){
    translate([0,-10,0]) cylinder(4,7/2,7/2);
    translate([0,-10,0]) cylinder(4,4.5/2,4.5/2);
    //translate([0,-13,0]) cylinder(4,5/2,5/2);
    translate([-1.7,-16,0]) cube([3.4,7,4]);
}
translate([-2.5,-7.6,0]) cube([5,1.5,4]);