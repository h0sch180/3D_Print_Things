//measures are in millimeters
//(feel free to cocnvert them to attoparsecs)
AY=132.5;
AX=19.0;
BY=127.5;
BLX=14.5;
EZ=11.0;
FLZ=14.0;
H=12.75;
SHAFT_OFF_Y=AY/2;
SHAFT_OFF_X=8.0; //???
CLIP_X=2;
CLIP_Y=0.75;
CLIP_H=3*CLIP_Y;
CORNER_RADIUS=2;
SHAFT_X=8.0;
SHAFT_Y=6.0;
SHAFT_LENGTH=9.0;
SHAFT_THICKNESS=1.0;
SHAFT_CLIP_WIDTH=3.0;
SHAFT_CLIP_THICKNESS=0.75;
SHAFT_CLIP_HEIGHT=2.0;
SHAFT_CLIP_SLOPE_DEPTH=1.0;
SHAFT_CLIP_ANGLE=45;
SHAFT_END_CUTOUT_HEIGHT=1.5;
SHAFT_LARGE_SLOT_TO_BASE=1.5;
SHAFT_SMALL_SLOT_LENGTH=7.25;
SHAFT_SMALL_SLOT_WIDTH=2.5;
SHAFT_SPRING_HOLDER_WIDTH=3.0;
SHAFT_SPRING_HOLDER_TO_BASE=4.0;
SHAFT_SPRING_GUIDE_WIDTH=1.0;
SHAFT_SPRING_GUIDE_SIDES_HEIGHT=3.5;
STRUT_THICKNESS=1;
STRUT_HEIGHT=3;
STRUT_SPACING=1;
SHAFT_SPRING_HOLDER_NIPPLE_HEIGHT=1;
SHAFT_SPRING_HOLDER_NIPPLE_RADIUS=0.75;

WIRE_HOLDER_HEIGHT=4.0;
WIRE_HOLDER_WIDTH=4.5;
WIRE_DIAMETER=2.0;
WIRE_HOLE_OFF_Z=0.5;

MYSTERIOUS_TAB_WIDTH=6.5;
MYSTERIOUS_TAB_HEIGHT=5.5;

SHAFT_SMALL_SLOT_BEVEL=0.5;

WallThickness=2.0;
ClipWidth=2.2;
ClipDepth=0.75;

//ascfront=FLZ/sqrt(pow(FLZ,2)-pow(H,2));
//asctop=(H-EZ)/sqrt(pow(BLX,2)-pow((H-EZ),2));

alpha=asin((H-EZ)/BLX);
beta=asin(H/FLZ);
gamma=90-asin((0.5*(AY-BY))/EZ);


module keycap(){
	scale([AX/(AX+2*CORNER_RADIUS),AY/(AY+2*CORNER_RADIUS),1])
	translate([CORNER_RADIUS,CORNER_RADIUS,0.01])
	minkowski(){
		difference(){
			cube([AX,AY,H]);
			rotate(a=gamma,v=[1,0,0]) cube([200,200,200]);
			translate([0,AY,0]) rotate(a=90-gamma,v=[1,0,0]) cube([200,200,200]);
			translate([0,0,EZ]) rotate(a=-alpha,v=[0,1,0]) translate([-100,0,0]) cube([200,200,200]);
			translate([AX,0,0]) rotate(a=beta-90,v=[0,1,0]) cube([200,200,200]);
		}
		cylinder(h=0.01,r=CORNER_RADIUS,$fs=0.6);
		//rotate(a=90,v=[1,0,0]) cylinder(h=0.01,r=1,$fs=0.3);
	}
}

module shaft(){
	spring_guide_length = SHAFT_X-SHAFT_THICKNESS-SHAFT_SPRING_HOLDER_WIDTH;
	spring_guide_height = SHAFT_SPRING_HOLDER_TO_BASE-SHAFT_LARGE_SLOT_TO_BASE;
	translate([0,0,-SHAFT_LENGTH]) difference(){
		union(){
			difference(){
				union(){
					difference(){
						intersection(){
							cylinder(h=200,r=SHAFT_X/2,$fs=0.3);
							translate([-SHAFT_X/2,-SHAFT_Y/2,0]) cube([SHAFT_X,SHAFT_Y,200]);
						}
						intersection(){
							cylinder(h=200,r=SHAFT_X/2-SHAFT_THICKNESS,$fs=0.3);
							translate([-SHAFT_X/2+SHAFT_THICKNESS,-SHAFT_Y/2+SHAFT_THICKNESS,0]) cube([SHAFT_X-2*SHAFT_THICKNESS,SHAFT_Y-2*SHAFT_THICKNESS,200]);
						}
					}
					translate([-SHAFT_CLIP_WIDTH/2, -SHAFT_CLIP_THICKNESS-SHAFT_Y/2,0]) cube([SHAFT_CLIP_WIDTH/2, SHAFT_CLIP_THICKNESS,SHAFT_CLIP_HEIGHT]);
					translate([-SHAFT_CLIP_WIDTH/2, SHAFT_Y/2,0]) cube([SHAFT_CLIP_WIDTH/2, SHAFT_CLIP_THICKNESS,SHAFT_CLIP_HEIGHT]);
				}
				translate([-SHAFT_CLIP_WIDTH/2, -SHAFT_CLIP_THICKNESS-SHAFT_Y/2+SHAFT_CLIP_SLOPE_DEPTH,0]) rotate(a=90+SHAFT_CLIP_ANGLE,v=[1,0,0]) cube([SHAFT_CLIP_WIDTH/2,200,200]);
				translate([-SHAFT_CLIP_WIDTH/2, SHAFT_Y/2+SHAFT_CLIP_THICKNESS-SHAFT_CLIP_SLOPE_DEPTH,0]) mirror([0,1,0]) rotate(a=90+SHAFT_CLIP_ANGLE,v=[1,0,0]) cube([SHAFT_CLIP_WIDTH/2,200,200]);
				translate([0,-100,0]) cube([200,200,SHAFT_END_CUTOUT_HEIGHT]);
				translate([0,-SHAFT_Y/2+SHAFT_THICKNESS,0]) cube([200,SHAFT_Y-SHAFT_THICKNESS*2,SHAFT_LENGTH+SHAFT_LARGE_SLOT_TO_BASE]);
				//small slot cutout
				translate([0,-SHAFT_SMALL_SLOT_WIDTH/2,0]){
					mirror([1,0,0]) cube([200,SHAFT_SMALL_SLOT_WIDTH,SHAFT_SMALL_SLOT_LENGTH-0.5*SHAFT_SMALL_SLOT_WIDTH]);
				}
				//small slot cutout
				translate([0,0,SHAFT_SMALL_SLOT_LENGTH-0.5*SHAFT_SMALL_SLOT_WIDTH]) rotate(a=-90,v=[0,1,0]) cylinder(r=SHAFT_SMALL_SLOT_WIDTH/2,h=SHAFT_X/2,$fs=0.3);
			}
			//spring holder
			translate([-SHAFT_X/2+SHAFT_SPRING_HOLDER_WIDTH/2+SHAFT_THICKNESS,0,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE]) cylinder(r=SHAFT_SPRING_HOLDER_WIDTH/2,h=200,$fs=0.3);
			intersection(){
				translate([-SHAFT_X/2+SHAFT_SPRING_HOLDER_WIDTH/2+SHAFT_THICKNESS,0,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE-SHAFT_SPRING_HOLDER_NIPPLE_HEIGHT]) cylinder(r=SHAFT_SPRING_HOLDER_NIPPLE_RADIUS,h=200,$fs=0.3);
				translate([0,0,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE-SHAFT_SPRING_HOLDER_NIPPLE_HEIGHT*1.5]) rotate(a=atan(SHAFT_SPRING_HOLDER_NIPPLE_HEIGHT/(SHAFT_SPRING_HOLDER_NIPPLE_RADIUS*2)), v=[0,1,0]) translate([-100,-100,0]) cube([200,200,200]);
			}
			intersection(){
				difference(){
					translate([SHAFT_X/2-SHAFT_THICKNESS,-0.5*SHAFT_SPRING_GUIDE_WIDTH,SHAFT_LENGTH+SHAFT_LARGE_SLOT_TO_BASE]) mirror([1,0,0]) cube([200,SHAFT_SPRING_GUIDE_WIDTH,200]);
					translate([-SHAFT_X/2+SHAFT_SPRING_HOLDER_WIDTH+SHAFT_THICKNESS,-0.5*SHAFT_SPRING_GUIDE_WIDTH,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE])
					mirror([1,0,0]) rotate(a=90-asin(spring_guide_height/spring_guide_length),v=[0,1,0]) mirror([0,0,1]) translate([0,0,-100]) cube([200,SHAFT_SPRING_GUIDE_WIDTH,200]);
				}
				cube([SHAFT_X-SHAFT_THICKNESS,SHAFT_Y,200],center=true);
			}
			//side spring guides
			difference(){
				translate([-SHAFT_X/2+SHAFT_THICKNESS+(SHAFT_SPRING_HOLDER_WIDTH-SHAFT_SPRING_GUIDE_WIDTH)/2,-SHAFT_Y/2+SHAFT_THICKNESS,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE-SHAFT_SPRING_GUIDE_SIDES_HEIGHT]) cube([SHAFT_SPRING_GUIDE_WIDTH,SHAFT_Y-2*SHAFT_THICKNESS,EZ-SHAFT_SPRING_HOLDER_TO_BASE+SHAFT_SPRING_GUIDE_SIDES_HEIGHT]);
				translate([-SHAFT_X/2+SHAFT_THICKNESS+(SHAFT_SPRING_HOLDER_WIDTH-SHAFT_SPRING_GUIDE_WIDTH)/2,-SHAFT_SPRING_HOLDER_WIDTH/2,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE]) rotate(a=-asin(((SHAFT_Y-SHAFT_SPRING_HOLDER_WIDTH)/2-SHAFT_THICKNESS)/SHAFT_SPRING_GUIDE_SIDES_HEIGHT),v=[1,0,0]) translate([0,0,-100]) cube([SHAFT_SPRING_GUIDE_WIDTH,200,200]);
			}
			difference(){
				translate([-SHAFT_X/2+SHAFT_THICKNESS+(SHAFT_SPRING_HOLDER_WIDTH-SHAFT_SPRING_GUIDE_WIDTH)/2,-SHAFT_Y/2+SHAFT_THICKNESS,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE-SHAFT_SPRING_GUIDE_SIDES_HEIGHT]) cube([SHAFT_SPRING_GUIDE_WIDTH,SHAFT_Y-2*SHAFT_THICKNESS,EZ-SHAFT_SPRING_HOLDER_TO_BASE+SHAFT_SPRING_GUIDE_SIDES_HEIGHT]);
				mirror([0,1,0]) translate([-SHAFT_X/2+SHAFT_THICKNESS+(SHAFT_SPRING_HOLDER_WIDTH-SHAFT_SPRING_GUIDE_WIDTH)/2,-SHAFT_SPRING_HOLDER_WIDTH/2,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE]) rotate(a=-asin(((SHAFT_Y-SHAFT_SPRING_HOLDER_WIDTH)/2-SHAFT_THICKNESS)/SHAFT_SPRING_GUIDE_SIDES_HEIGHT),v=[1,0,0]) translate([0,0,-100]) cube([SHAFT_SPRING_GUIDE_WIDTH,200,200]);
			}
		}
		translate([-SHAFT_X/2+SHAFT_SPRING_HOLDER_WIDTH+SHAFT_THICKNESS,-SHAFT_Y/2+SHAFT_THICKNESS,SHAFT_LENGTH+SHAFT_SPRING_HOLDER_TO_BASE]) mirror([1,0,0]) rotate(a=90-asin(spring_guide_height/spring_guide_length),v=[0,1,0]) mirror([0,0,1]) cube([SHAFT_THICKNESS,SHAFT_Y-2*SHAFT_THICKNESS,200]);
	}
}

difference(){
union(){

difference(){
	keycap();
	difference(){
		translate([WallThickness, WallThickness, 0]) scale(v=[1-2*WallThickness/AX, 1-2*WallThickness/AY, 1-WallThickness/H]) keycap();
		translate([0,AY/3,0]) cube([200,STRUT_THICKNESS,200],center=true);
		translate([0,2*AY/3,0]) cube([200,STRUT_THICKNESS,200],center=true);
	}
}
intersection(){
	union(){
		translate([WallThickness, WallThickness, 0]) scale(v=[1-2*WallThickness/AX, 1-2*WallThickness/AY, 1-WallThickness/H]) keycap();
		translate([-200,-200,-399.9]) cube([400,400,400]);
	}
	union(){
		translate([SHAFT_OFF_X,SHAFT_OFF_Y]) shaft();
		translate([AX-WIRE_HOLDER_WIDTH-WallThickness, WallThickness, -WIRE_HOLDER_HEIGHT]) difference(){
			cube([WIRE_HOLDER_WIDTH,WallThickness,WIRE_HOLDER_HEIGHT+H]);
			translate([WIRE_HOLDER_WIDTH/2,WallThickness*1.5,WIRE_HOLDER_HEIGHT-WIRE_DIAMETER/2-WIRE_HOLE_OFF_Z]) rotate([90,0,0]) cylinder(r=WIRE_DIAMETER/2,h=WallThickness*2,$fs=0.3);
		}
		translate([AX-WIRE_HOLDER_WIDTH-WallThickness, AY-2*WallThickness, -WIRE_HOLDER_HEIGHT]) difference(){
			cube([WIRE_HOLDER_WIDTH,WallThickness,WIRE_HOLDER_HEIGHT+H]);
			translate([WIRE_HOLDER_WIDTH/2,WallThickness*1.5,WIRE_HOLDER_HEIGHT-WIRE_DIAMETER/2-WIRE_HOLE_OFF_Z]) rotate([90,0,0]) cylinder(r=WIRE_DIAMETER/2,h=WallThickness*2,$fs=0.3);
		}
		translate([WallThickness, AY-2*WallThickness, -WIRE_HOLDER_HEIGHT]) cube([MYSTERIOUS_TAB_WIDTH,WallThickness,H+MYSTERIOUS_TAB_HEIGHT]);
	}
}

}
translate([4.5,3,0]) cube ([7,1,8]);
}
