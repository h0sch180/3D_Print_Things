$fn=50;
difference() {
    rotate(180, v=[1,0,0]) translate([30,0,0]) import("C:/GIT/3D_Print_Things/Stutzen_32mm_auf_075_zoll_gewinde_v1.stl");
    translate([0,0,-62])cylinder(40,40/2,40/2);
}