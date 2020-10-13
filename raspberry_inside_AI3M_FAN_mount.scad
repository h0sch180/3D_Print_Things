$fn=50;

difference(){
union() {
    // Grundplatte
    minkowski() {
        union (){
            difference(){
                union(){
                    cube([179,56,2]);
                    translate([0,56,0]) cube([20,4,2]);
                }
                //Aussparung Kabel HotBed
                translate([155,50,0]) cube([30,25,3]);
                //Aussparung Gehäuse Links
                //translate([-5,45,0]) cube([25,30,3]);
                //translate([-5,39,0]) cube([13,10,3]);
            }
        }
        cylinder(r=2,h=1);
    }
    //Pi FAN Halterung
    translate([70,36,0])cube([5,15,15]);
    
    //Pi Halterung Links
    translate([80,5,0])cylinder(10,6/2,6/2);
    translate([80,54,0])cylinder(10,6/2,6/2);
    //Pi Halterung Rechts
    translate([138,5,0])cylinder(10,6/2,6/2);
    translate([138,54,0])cylinder(10,6/2,6/2);
    
    //Spannungswandler Halterung
    translate([12,2,0])cylinder(10,8/2,8/2);
    translate([12,57,0])cylinder(10,8/2,8/2);
}
    //Pi FAN Halterung Löcher
    translate([72.5,43.5,5])cylinder(15,2.8/2,2.8/2);

    //Pi Halterung Links Löcher
    translate([80,5,3])cylinder(10,3/2,3/2);
    translate([80,54,3])cylinder(10,3/2,3/2);
    //Pi Halterung Rechts Löcher
    translate([138,5,3])cylinder(10,3/2,3/2);
    translate([138,54,3])cylinder(10,3/2,3/2);

    //Spannungswandler Halterung Löcher
    translate([12,2,3])cylinder(10,3/2,3/2);
    translate([12,57,3])cylinder(10,3/2,3/2);

    minkowski() {
        union(){
        //Aussparung unter dem PI
        translate([85,3,0]) cube([48,50,3]); 
        translate([80,10,0]) cube([2,39,3]);
        translate([130,10,0]) cube([10,39,3]);
        //Druckbereich verkleinern Rechts
        translate([155,5,0]) cube([20,30,3]);
        //Spannungswandler verkleinern Links
        translate([3,8,0]) cube([16,40,3]); 
        }
        cylinder(r=2,h=1);
    }
    //Bohrlöcher Halterung Gehäuse Rechts
    translate([172,45,0])cylinder(5,3.2/2,3.2/2);
    translate([164,45,0])cylinder(5,3.2/2,3.2/2);
    
    minkowski() {
        //Motor aussparen
        translate([27,5,0]) cube([41,46,3]);
        cylinder(r=2,h=1);
    }
}
