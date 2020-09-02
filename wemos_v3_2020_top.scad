$fn=50;
difference() {
    minkowski() {
        cube([100,30,21]);
        sphere(2);
    }
    translate([6,2,0])cube([88,26,26]);
    translate([-2,7,13])cube([10,15,8]);
    translate([8,-2,15.5])cube([8,5,5.5]);
    
    //Schraubenlöcher
    translate([2,3,-2])cylinder(22,5.5/2,5.5/2);
    translate([2,27,-2])cylinder(22,5.5/2,5.5/2);
    translate([98,3,-2])cylinder(22,5.5/2,5.5/2);
    translate([98,27,-2])cylinder(22,5.5/2,5.5/2);

    translate([2,3,-2])cylinder(26,3/2,3/2);
    translate([2,27,-2])cylinder(26,3/2,3/2);
    translate([98,3,-2])cylinder(26,3/2,3/2);
    translate([98,27,-2])cylinder(26,3/2,3/2);

    //Oben saubere Kante
    translate([-2,-2,21])cube([110,40,2]);
}
//Sehr sehr dreckig, aber notwendig für Cura 0.3=Schichthöhe
translate([-1,0,20])cube([5,5,0.3]);
translate([-1,25,20])cube([5,5,0.3]);
translate([96,0,20])cube([5,5,0.3]);
translate([96,25,20])cube([5,5,0.3]);
