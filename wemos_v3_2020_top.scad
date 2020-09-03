$fn=50;
difference() {
    minkowski() {
        cube([100,30,21]);
        sphere(2);
    }
    translate([5.5,2,0])cube([89.5,26,26]);
    translate([-2,7,13])cube([10,15,8]);
    translate([8,28,15.5])cube([8,5,5.5]);
    
    //Schraubenlöcher
    translate([2,2.6,-2])cylinder(3,6.5/2,6.5/2);
    translate([2,27.4,-2])cylinder(3,6.5/2,6.5/2);
    translate([98,2.6,-2])cylinder(3,6.5/2,6.5/2);
    translate([98,27.4,-2])cylinder(3,6.5/2,6.5/2);

    translate([2,2.6,-2])cylinder(26,3.5/2,3.5/2);
    translate([2,27.4,-2])cylinder(26,3.5/2,3.5/2);
    translate([98,2.6,-2])cylinder(26,3.5/2,3.5/2);
    translate([98,27.4,-2])cylinder(26,3.5/2,3.5/2);

    //Oben saubere Kante
    translate([-2,-2,21])cube([110,40,2]);
}
//unschönes Loch entfernen
translate([93,0,0])cube([2,28,2]);