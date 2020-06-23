$fn=50;
difference() {
    union(){
        rotate(180,v=[1,0,0]) import("C:/GIT/3D_Print_Things/Gardena_Schlauchanschluss.stl");
        import("C:/GIT/3D_Print_Things/gardena_fitting_1Zoll.stl");
        cylinder(2,46/2,46/2, $fn=6);
    }
    translate([0,0,-25])cylinder(40,10/2,10/2);
}