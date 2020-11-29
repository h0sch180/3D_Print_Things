// "Monsieur Plus" Silvercrest kitchen Robot ;
// Intermediate piece between the motor shaft
// and the mixer propeller of the 
// Piece intermédiaire entre l'axe du moteur
// et l'hélice du mixeur

// Part 1 (Top) dimensions
diam1e = 29; // Diametres
diam1i1 = 24; 
diam1i2 = 20;
h1 = 8; // Hauteur
diamre = 20; // rainure
hr= 3;

//Part 2 (Bottom) dimensions
diam2e = 26.5;
diamhole = 8+0.5; // diamètre axe moteur +
yhole =6+0.5; //largeur méplat +
h2 = 14; // hauteur méplat

// Jupe dimensions
de = 57;
di = 55;
hcenter = 30;
hcut = 17;
hcut2 = hcenter - hcut -(2*hcenter - de)/2;

// Part 1 Design
module part1(){
   difference() {cylinder (h1, r=diam1e/2, $fn100);
                 cylinder (h1, r=diam1i2/2, $fn100);
                 dents();}
   }
//part1();
    
// Dents Design
   module dents(){
   union(){
  cylinder (h1+hr, r=diam1i2/2, $fn100);                   
   for (i =[0:30:360]){
          rotate(i) {
          translate([diam1i2/2,0,h1/2+hr/2]) cube ([5,3.5,h1+hr],center=true);} 
        };
    }
   }
//dents();
   
//Jupe Design
  module jupe(){
    translate ([0,0,hcenter])
    difference(){ sphere(d=de);
                  sphere(d=di);
                  translate([0,0,hcut2])cube([de,de,de],true);
                  cylinder (de,r=diam1i1/2+1,center=true,$fn100);
        }
    }
 //jupe();
    
 // Part 2 Design
     module part2(){
         difference(){
         cylinder(h2,r=diam2e/2,$fn100);    
         intersection(){
         cylinder (h2,r=diamhole/2,$fn100);
         translate([0,0,h2/2])cube([diamhole+2,yhole,h2],center=true);
         }
       }
     }
//part2();

// Construction 
  union(){
          difference(){union(){part1();translate([0,0,h1]) part2();};
                       dents();
                      }
          jupe();}
  
                 
// jean-Nicolas Maisonnier - 18 nov 2018