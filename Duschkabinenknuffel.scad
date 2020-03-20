$fn=50;
difference(){
    union(){
        cylinder(7,8/2,8/2);
        minkowski(){
            // oben + unten
            cylinder(0.7,13/2,13/2);
            //mitte
            //cylinder(3,13/2,13/2);
            sphere(0.5);
        }
    }
    translate([0,0,1.5]) cylinder(7,6/2,6/2);
}