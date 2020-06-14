$fn=50;
difference(){
    union(){
        difference(){
            union(){
                import("C:/GIT/3D_Print_Things/Gardena_Schlauchanschluss.stl");
                translate([0,0,-10]) cylinder(10,49/2,49/2);
                translate([0,0,-13]) cylinder(3,54/2,54/2);
            }
            translate([0,0,-13]) cylinder(10,43/2,43/2);
        }
        translate([0,0,-13]) cylinder(10,30/2,30/2);
    }
    translate([0,0,-13]) cylinder(10,24/2,8/2);
    translate([0,0,-13]) cylinder(23,8/2,8/2);
}