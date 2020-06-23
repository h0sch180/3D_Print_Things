$fn=50;
difference() {
    union() {
        import("C:/GIT/3D_Print_Things/gardena_fitting_1Zoll.stl");
        cylinder(2,46/2,46/2, $fn=6);
    }
    translate([0,0,-25])cylinder(40,16/2,16/2);

}