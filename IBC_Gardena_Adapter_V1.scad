$fn=50;
difference(){
    union(){
        difference(){
            union(){
                import("C:/GIT/3D_Print_Things/Gardena_Schlauchanschluss.stl");
                translate([0,0,-20]) cylinder(20,49/2,49/2);
                translate([0,0,-23]) cylinder(3,54/2,54/2);
            }
            translate([0,0,-23]) cylinder(20,43/2,43/2);
        }
        translate([0,0,-23]) cylinder(20,25/2,25/2);
    }
    translate([0,0,-23]) cylinder(20,19/2,19/2);
    translate([0,0,-23]) cylinder(23,8/2,8/2);
}
