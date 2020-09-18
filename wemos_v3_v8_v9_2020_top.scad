/*
Topcase for: Wemos Powerbank V3, V8 and V9 Design: 2020

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
type="v3";

/*
================================================================================
================================================================================
*/


if (type=="v3"){
  //V3
  topcase(length=100,width=30,holelength=3,holewidth=2.5);
}

if (type=="v8"){
  //V8
  topcase(length=100,width=49,holelength=3,holewidth=8.5);
}

if (type=="v9"){
  //V9
  topcase(length=100,width=97,holelength=3,holewidth=8.5);
}


module topcase(length,width,holelength,holewidth){
    $fn=50;
    difference() {
        translate([-2,-2,-2]) cube([length+4,width+4,23]);
        translate([5.5,2,0])cube([length-10.5,width-4,26]);

        //V3
        if(width == 30) {
          // USB-Port
          translate([-2,7,13])cube([10,15,8]);
        }
        //V8
        if(width == 49) {
          // USB-Port
          translate([-2,16,13])cube([10,15,8]);
        }
        //V9
        if(width == 97) {
          // USB-Port
          translate([-2,41,13])cube([10,15,8]);
        }
        //Power Button
        translate([7.5,width-2,15.5])cube([8.5,5,5.5]);        
        
        if(width != 30) {
          // V8 + V9
          //Schraubenlöcher
          translate([holelength,holewidth-1.5,-2])cylinder(3,6.5/2,6.5/2);
          translate([holelength,width-holewidth,-2])cylinder(3,6.5/2,6.5/2);
          translate([length-holelength+0.5,holewidth-1.5,-2])cylinder(3,6.5/2,6.5/2);
          translate([length-holelength+0.5,width-holewidth,-2])cylinder(3,6.5/2,6.5/2);
          translate([holelength,holewidth-1.5,-2])cylinder(26,4/2,4/2);
          translate([holelength,width-holewidth,-2])cylinder(26,4/2,4/2);
          translate([length-holelength+0.5,holewidth-1.5,-2])cylinder(26,4/2,4/2);
          translate([length-holelength+0.5,width-holewidth,-2])cylinder(26,4/2,4/2);
        } else {
          // V3
          //Schraubenlöcher
          translate([holelength,holewidth,-2])cylinder(3,6.5/2,6.5/2);
          translate([holelength,width-holewidth,-2])cylinder(3,6.5/2,6.5/2);
          translate([length-holelength,holewidth,-2])cylinder(3,6.5/2,6.5/2);
          translate([length-holelength,width-holewidth,-2])cylinder(3,6.5/2,6.5/2);
          translate([holelength,holewidth,-2])cylinder(26,4/2,4/2);
          translate([holelength,width-holewidth,-2])cylinder(26,4/2,4/2);
          translate([length-holelength,holewidth,-2])cylinder(26,4/2,4/2);
          translate([length-holelength,width-holewidth,-2])cylinder(26,4/2,4/2);
        }
    }
}