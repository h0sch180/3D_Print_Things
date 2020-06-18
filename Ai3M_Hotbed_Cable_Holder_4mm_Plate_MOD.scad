$fn=50;

difference() {
    import("C:/GIT/3D_Print_Things/Anycubic_i3_Mega_Hotbed_Cable_Holder_4mm_Plate.stl");
    rotate(180,v=[1,0,1]) translate([8,12,-5]) cylinder(10,12/2,12/2);
}