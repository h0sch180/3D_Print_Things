$fn=50;
difference() {
    union(){
        rotate ([180]) translate([0,0,8])import("C:/GIT/3D_Print_Things/2020_IBC_viko_v2.stl");
        translate([0,0,-26])cylinder(26,40/2,40/2);
    }
    translate([0,0,-26])cylinder(50,8/2,8/2);
    translate([0,0,-26])cylinder(20,34/2,34/2);
    translate([0,0,-26])cylinder(2,90/2,90/2);
}
import("C:/GIT/3D_Print_Things/Gardena_Schlauchanschluss.stl");