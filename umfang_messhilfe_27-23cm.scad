$fn=100;

/*
27cm Umfang = 86mm Druchmesser
26cm Umfang = 83mm Druchmesser
25cm Umfang = 80mm Druchmesser
24cm Umfang = 77mm Druchmesser
23cm Umfang = 74mm Druchmesser
*/

/*
difference(){
    cylinder(2,89/2,89/2);
    cylinder(2,79/2,79/2);
}
// 27cm
difference(){
  translate([0,0,2])cylinder(30,86/2,86/2);
  translate([0,0,2])cylinder(30,82/2,82/2);
}
// 26cm
difference(){
  translate([0,0,29])cylinder(33,83/2,83/2);
  translate([0,0,29])cylinder(33,82/2,78/2);
}
// 25cm
difference(){
  translate([0,0,59])cylinder(33,80/2,80/2);
  translate([0,0,59])cylinder(33,78/2,75/2);
}
// 24cm
difference(){
  translate([0,0,89])cylinder(33,77/2,77/2);
  translate([0,0,89])cylinder(33,76/2,73/2);
}
// 23cm
difference(){
  translate([0,0,119])cylinder(33,74/2,74/2);
  translate([0,0,119])cylinder(33,73/2,70/2);
}
*/
difference(){
    union(){
        cylinder(2,89/2,89/2);
        translate([0,0,2])cylinder(30,86/2,86/2);
        translate([0,0,32])cylinder(30,83/2,83/2);
        translate([0,0,62])cylinder(30,80/2,80/2);
        translate([0,0,92])cylinder(30,77/2,77/2);
        translate([0,0,122])cylinder(30,74/2,74/2);
    }
    cylinder(152,79/2,68/2);
}