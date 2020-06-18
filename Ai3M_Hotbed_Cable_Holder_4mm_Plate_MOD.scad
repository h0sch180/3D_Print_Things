$fn=50;

difference() {
    union() {
        import("C:/GIT/3D_Print_Things/Anycubic_i3_Mega_Hotbed_Cable_Holder_4mm_Plate.stl");
        translate([-3.9,-24,0]) cube([7.5,5,18.3]);
    }
    rotate(180,v=[1,0,1]) translate([8,12,-5]) cylinder(10,12/2,12/2);
    translate([-2.2,-24,1.4]) cube([4.1,5,17.3]);
}