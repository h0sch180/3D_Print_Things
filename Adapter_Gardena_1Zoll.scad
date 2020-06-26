$fn=50;
difference() {
    union() {
        cylinder(40,31/2,31/2);
        translate([0,0,40]) cylinder(3,31/2,35/2);
        translate([0,0,43]) cylinder(10,35/2,35/2);
        translate([0,0,53]) cylinder(10,35/2,20/2);
translate([0,0,63]) import("C:/GIT/3D_Print_Things/Gardena_Schlauchanschluss.stl");
//        translate([0,0,63]) cylinder(20,12.5/2,12.5/2);
    }
    cylinder(100,10/2,10/2);
    cylinder(30,20/2,20/2);
    translate([0,0,30]) cylinder(20,20/2,8/2);
}