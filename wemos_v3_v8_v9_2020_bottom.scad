/*
Bottomcase for: Wemos Powerbank V3, V8 and V9 Design: 2020

==================================================================================
==================================================================================
Copyright (c) Manuel Strauch (hoschi@anukis.de)
The Regents of the University of California. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, 
are permitted provided that the following conditions are met:
Redistributions of source code must retain the above copyright notice, 
this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation 
and/orother materials provided with the distribution.
All advertising materials mentioning features or use of this software 
must display the following acknowledgement: "This product includes 
software developed by the University of California, Berkeley and its contributors."
Neither the name of the University nor the names of its contributors may be used 
to endorse or promote products derived from this software without 
specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE FOR 
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND 
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

================================================================================
================================================================================
*/
// Which one , would you build: v3, v8 or v9
type="v8";

/*
================================================================================
================================================================================
*/


if (type=="v3"){
  //V3
  bottomcase(length=100,width=30,holelength=2,holewidth=2.5);
}

if (type=="v8"){
  //V8
  bottomcase(length=100,width=49,holelength=3,holewidth=8);
}

if (type=="v9"){
  //V9
  bottomcase(length=100,width=97,holelength=3,holewidth=8);
}


module bottomcase(length,width,holelength,holewidth){
    $fn=50;
    difference() {
        union() {
            difference() {
                translate([-2,-2,-2]) cube([length+4,width+4,9]);
                cube([length,width,10]);
                //V3
                if(width == 30) {
                  //LEDs
                  translate([18,5,-2])cube([20,2,3]);
                }
                //V8
                if (width == 49) {
                  //LEDs
                  translate([18,7,-2])cube([20,2,3]);
                }
                //V9
                if (width == 97) {
                  //LEDs
                  translate([22,30,-2])cube([20,2,3]);
                }
                //USB-Ports
                if(width == 30) {
                  // V3
                  translate([length-28.5,-2,2])cube([10,5,4]);
                  translate([length-14,width-2,2])cube([8,4,4]);
                }
                if(width == 49) {
                  // V8
                  translate([71,-2,2])cube([10,5,4]);
                  translate([84.5,width-2,2])cube([8,4,4]);
                }
                if (width == 97) {
                 // V9
                  translate([length-2,22,2])cube([5,10,4]);
                  translate([length-2,65.5,2])cube([4,8,4]);  
                }
            }
            //Schraubenhalterung
            if(width != 30) {
              // V8 + V9
              translate([0,5,0]) cube([6.5,6.5,5]);
              translate([0,width-6.5-5,0]) cube([6.5,6.5,5]);
              translate([length-6.5,5,0]) cube([6.5,6.5,5]);
              translate([length-6.5,width-6.5-5,0]) cube([6.5,6.5,5]);
            } else {
              // V3
              cube([6.5,6.5,5]);
              translate([0,width-6.5,0]) cube([6.5,6.5,5]);
              translate([length-5.5,0,0]) cube([6.5,6.5,5]);
              translate([length-5.5,width-6.5,0]) cube([6.5,6.5,5]);
            }
        }
        //Schraubenlöcher
        translate([holelength,holewidth,0]) cylinder(6,4/2,4/2);
        translate([holelength,width-holewidth,0]) cylinder(6,4/2,4/2);
        
        translate([length-holelength,holewidth,0]) cylinder(6,4/2,4/2);
        translate([length-holelength,width-holewidth,0]) cylinder(6,4/2,4/2);
        //Mutterneinsatz
        translate([holelength,holewidth,-2]) cylinder(3,7/2,7/2,$fn=6);
        translate([holelength,width-holewidth,-2]) cylinder(3,7/2,7/2,$fn=6);
        
        translate([length-holelength,holewidth,-2]) cylinder(3,7/2,7/2,$fn=6);
        translate([length-holelength,width-holewidth,-2]) cylinder(3,7/2,7/2,$fn=6);
    }
}