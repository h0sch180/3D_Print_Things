module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}

difference() {
    union() {   
        prism(33, 61, 16);
        translate([0,61,8]) rotate([0,90,0]) cylinder(33,16/2,16/2, $fn=6);
        rotate([15,0,0]) translate([15.5,39,-2]) prism(2,23,13);
    }
    translate([0,61,8]) rotate([0,90,0]) cylinder(33,12/2,12/2, $fn=6);
    cube([33,6,6]);
    translate([0,54,26]) cube([33,5,5]);
}
translate([0,6,0.8]) rotate([0,90,0]) cylinder(33,1.6/2,1.6/2, $fn=40);
//translate([15.5,49.96,23.9]) rotate([0,90,0]) cylinder(2,1.14/2,1.14/2, $fn=40);
translate([15.5,56.77,25.6]) rotate([0,90,0]) cylinder(2,1.14/2,1.14/2, $fn=40);