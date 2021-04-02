$fn=50;

lang=50;
breit=50;
hoch=50;
wand=1.2;

difference(){
    cube([lang,breit,hoch]);
    translate([wand,wand,wand]) cube([lang-wand-wand,breit-wand-wand,hoch]);
}
