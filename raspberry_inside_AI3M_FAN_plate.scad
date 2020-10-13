$fn=50;

difference(){
    union() {
        cube([20,15,3]);
        translate([20,-25,0]) cube([7,40,3]);  
    }
    translate([2.5,7.5,0])cylinder(10,3.5/2,3.5/2);
    
    translate([23,11,0])cylinder(10,4/2,4/2);
    translate([23,-21,0])cylinder(10,4/2,4/2);
}