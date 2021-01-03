union(){
    cylinder(2,10/2,10/2,$fn=500);
    difference() {    
        translate([0,0,2])cylinder(3,5.5/2,5.2/2,$fn=500);
        translate([0,0,4.5])cube ([6.5,3,3], center=true);
    }
    difference() {
        translate([0,0,5])cylinder(1,6.5/2,6.5/2,$fn=500);
        translate([0,0,4.5])cube ([6.5,3,4], center=true);
    }
    
}
