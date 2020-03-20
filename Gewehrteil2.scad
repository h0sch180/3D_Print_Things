$fn=50;
difference(){
    union() {
        // Grundfläche
        cube([199,50,11]);
	 translate([0,0,-8]) cube([199,50,8]);
    }
    union() {
        // Cylinder oben
        translate([-1,25,32]) rotate([0,90,0]) cylinder(h = 251, r1 = 30, r2 = 30, center = false);
    
        // Abschrägung an Kanten unten
        translate([-1,-9,-5.3]) rotate([-45,0,0]) cube([251,20,8]);
        translate([-1,48,-16.2]) rotate([45,0,0]) cube([251,20,8]);
    
        // Abschrägung an Kanten außen
        translate([-1,-17,-3]) rotate([-19,0,0]) cube([251,15,20]);
        translate([-1,51,-3]) rotate([19,0,0]) cube([251,15,20]);
    
        // Öffnung hinten Mitte
        translate([172,14.75,-15])cube([30,20.5,20]);
    
        // Kreisaussparung hinten mitte
        translate([172,25,-15]) cylinder(20,10.25,10.25,false);//sphere(r = 10.6); 
    
        // Absenkung hinten
        translate([173,0,5])cube([26.1,50,6]);  
    
        // runde Schraubenlöcher
        translate([56.5,25,-8]) cylinder(8,5.5,5.5,false);
        translate([56.5,25,0]) cylinder(1.5,5,2.5,false);
        translate([56.5,25,0]) cylinder(4,2.5,2.5,false);
        translate([139,25,-8]) cylinder(8,5.5,5.5,false);
        translate([139,25,0]) cylinder(1.5,5,2.5,false);
        translate([139,25,0]) cylinder(4,2.5,2.5,false);
    
        // Aussparung rechts oben
        translate([24,0,6]) cube([18,16,5]);
        translate([107,0,6]) cube([18,16,5]);
    
        // runde, längliche Schrauenlöcher
        translate([+2.5+10,25,-15]) hull() {translate([15,0,0]) cylinder(20,5,5);cylinder(20,5,5);}
        translate([+2.5+92,25,-15]) hull() {translate([15,0,0]) cylinder(20,5,5);cylinder(20,5,5);}

        // Kante absägen vorne
        translate ([199,-33,-10]) rotate(45) cube([30,30,19]);
        translate ([199,41,-10]) rotate(45) cube([30,30,19]);
	
        rotate([90,0,0]) translate([174,17,-55]) cylinder(60,12,12);
    };
};
