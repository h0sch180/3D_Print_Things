$fn=60;
difference() {
    union() {
        import("C:/GIT/3D_Print_Things/3-4Zoll_Mutter.stl");
        translate([0,0,-18]) cylinder(20,20/2,20/2);
        translate([0,0,-15]) cylinder(2,21/2,21/2);
        translate([0,0,-5]) cylinder(2,21/2,21/2);
    }
    translate([0,0,-18]) cylinder(20,16/2,16/2);
}