icon="freebsd";
size=12;
backtext="anukis.de";
backtextsize=3;
font="font awesome 5 brands";


module coin(label="", dia=23, height=2.4, siz=10, fnt = "Liberation Sans") {
    $fn=50;
    difference(){
        union(){
                difference(){
                    cylinder(r=dia/2, h=height);
                    translate([0,0,1.6]) cylinder(r=10, h=0.8);
                }
                translate([0,0,1.6,]) linear_extrude(0.8) {
                    text(label, size=siz,
                        halign = "center", valign="center",
                        font = fnt);
                }

        }
        translate([0,0,0.8]) rotate([180,0,180]) linear_extrude(0.8) {
            text(backtext, size=backtextsize,
                halign = "center", valign="center",
                font = "Liberation Sans:style=Bold Italic");
        }
    }
}

coin(label=icon, siz=size, fnt=font);

//coin(label="eLAB", siz=5, fnt = "Liberation Sans:style=Bold Italic");
//coin(label="", siz=16, fnt = "font awesome 5 free"); // smile
//coin(label="", siz=12, fnt = "font awesome 5 brands"); // bitcoin
//coin(label="", siz=16, fnt = "font awesome 5 brands"); // ubuntu
//coin(label="", siz=12, fnt = "font awesome 5 brands"); // apple
//coin(label="", siz=12, fnt = "font awesome 5 brands"); // android
//coin(label="", siz=12, fnt = "font awesome 5 brands"); // linux
//coin(label="", siz=16, fnt = "font awesome 5 brands"); // github
//coin(label="", siz=12, fnt = "font awesome 5 brands"); // html5
//coin(label="", siz=12, fnt = "font awesome 5 brands"); // raspberry pi
//coin(label="", siz=16, fnt = "font awesome 5 brands"); // creative commons
//coin(label="", siz=12, fnt = "font awesome 5 brands"); // amazon
//coin(label="", siz=16, fnt = "font awesome 5 free:style=Solid"); // peace
//coin(label="", siz=16, fnt = "font awesome 5 free:style=Solid"); // yingyang
//coin(label="", siz=12, fnt = "font awesome 5 free:style=Solid"); // podcast
//coin(label="", siz=12, fnt = "font awesome 5 free:style=Solid"); // euro
//coin(label="", siz=12, fnt = "font awesome 5 free:style=Solid"); // recycle
//coin(label="", siz=10, fnt = "font awesome 5 free:style=Solid"); // robot
//coin(label="", siz=10, fnt = "font awesome 5 free:style=Solid"); // skull
//!coin(label="", siz=10, fnt = "font awesome 5 free:style=Solid"); // toxic
