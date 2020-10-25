$fn=50;
//for 92x92x25mm FAN
rundung=2;
luefterlaenge=92.5;
luefterdicke=25.5;

difference() {
    union() {
        minkowski() {
            cube([luefterlaenge+20,luefterdicke+15,luefterdicke*1.5]);
            sphere(rundung);   
        }
        minkowski() {
            translate([0,-luefterdicke*1.5,0])cube([luefterlaenge+20,luefterdicke+15,luefterdicke*0.3]);
            sphere(rundung);   
        }
    }
    translate([10,15,luefterdicke*0.3]) rotate(20, v=[1,0,0]) cube([luefterlaenge,luefterdicke,40]);
    translate([15,-rundung,luefterdicke*0.6]) cube([luefterlaenge-10,luefterdicke,40]);
    translate([15,luefterdicke,luefterdicke*0.9]) cube([luefterlaenge-10,luefterdicke,40]);
    // Down/Up Stepper 22x17x4mm (+2mm insulation)
    translate([(luefterlaenge+20-24)/2,(-luefterdicke*1.2),(luefterdicke*0.3)-2])cube([24,19,4]);
    //cable guide
    translate([(luefterlaenge+20)/2,(-luefterdicke*1.2)+8.5,(luefterdicke*0.3)-2])cube([40,3,4]);
    translate([(luefterlaenge+20-82)/2,(-luefterdicke*1.2)+8.5,(luefterdicke*0.3)-2])cube([40,3,4]);
    translate([(luefterlaenge+20-82)/2,(-luefterdicke*1.2)+8.5-40,(luefterdicke*0.3)-2])cube([3,40,4]);
    
    translate([(luefterlaenge+20+76.5)/2,(-luefterdicke*1.2)+8.5,(luefterdicke*0.3)-2])cube([3,25,15]);
}
