$fn=50;
knuffelhoehe=3;
difference(){
    union() {
        difference(){
            union(){
                cylinder(knuffelhoehe,13/2,13/2);
                translate([0,6,0]) cylinder(knuffelhoehe,3/2,3/2);
                translate([0,-6,0]) cylinder(knuffelhoehe,3/2,3/2);
            }
            translate([-8.5,-6,0]) cube([3,15,knuffelhoehe]);
            translate([5.5,-6,0]) cube([3,15,knuffelhoehe]);
        }
        translate([4,-0.5,0]) cube([2,1,knuffelhoehe]);
        translate([-6,-0.5,0]) cube([2,1,knuffelhoehe]);

        minkowski() {
            difference(){
                translate([-5,-15,knuffelhoehe+1]) cube([10,30,17]);
//                //rotate(35, v=[1,0,0]) translate([-5,-15,knuffelhoehe+6]) cube([10,30,25]);
                //translate([-5,-15,knuffelhoehe+12]) cube([10,20,15]);
            }
            sphere(2);
        }
    }
    translate([0,0,knuffelhoehe+2]) cylinder(20,6/2,6/2);
    cylinder(knuffelhoehe+2,3/2,3/2);
    translate([-2.5,-3.5,0]) cube([5,7,knuffelhoehe]);
}