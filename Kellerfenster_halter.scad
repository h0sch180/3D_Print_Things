$fn=50;


difference() {
  union(){
    //Grundplatte
    cube([35,25,5]);
    //Zylinderausgleich links + rechts
    translate([10,8,5])cube([15,5.5,8]);
    rotate(90,[0,1,0]) translate([-5.6,0,10])rotate(20,[0,0,1])cylinder(15,5/2,5/2, $fn=3);
    //Zylinder      
    rotate(90,[0,1,0]) translate([-13,4,10])cylinder(15,19/2,19/2);
    
  }
  //Zylinderbohrung
  rotate(90,[0,1,0]) translate([-13,4,10])cylinder(15,13/2,13/2);
  //Befestigung (Mutter + Bohrung)
  translate([5,15,0]) cylinder(5,4/2,4/2);
  translate([30,15,0]) cylinder(5,4/2,4/2);
  translate([5,15,2]) rotate(90) cylinder(3,8/2,8/2, $fn=6);
  translate([30,15,2]) rotate(90) cylinder(3,8/2,8/2, $fn=6);
}
