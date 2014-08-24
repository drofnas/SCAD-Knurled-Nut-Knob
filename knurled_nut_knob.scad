/*********************************************\
 Parametric Knurled Nut Knob

 Author: John Sanford
 Updated: 8/23/2014

 http://www.thingiverse.com/thing:439239
 https://github.com/drofnas/SCAD-Knurled-Nut-Knob

 This script is licensed under the Public Domain license.
-----------------------------------------------

 Description:
	Liked the looked of the inspiration widget,
	but wanted something that was parametric so 
	it could tweaked it based on the project.

 Using:
 	You will need to download the 
	"knurledFinishLib.scad" file from the 
	library section below. Place the files in 
	the same directory as this SCAD file.

	Sometimes OpenSCAD doesn't respect some values
	so you will need to do a "Compile and Render" from
	the Design menu to see the actual results of the 
	settings

 Inspiration: 
	http://www.thingiverse.com/thing:177400

 Libraries Used:
	Knurled surface finishing library
		http://www.thingiverse.com/thing:9095

\*********************************************/


/*********************************************\
 Parameters
\*********************************************/

/* [Knob Size] */
//Outside diameter of the knob
knob_dia = 28;

//Knob height
knob_height = 20;

/* [Hole Size] */
//Hold diameter, for threaded bar
hole_dia = 8;

/* [Cutback Around Nut] */
//Diameter of cut out around the hex nut
cutback_dia = 20;

//Height of the cutout (0 = disabled)
cutback_depth = 1.3;		

/* [Metric ISO Nut Sizing] */
//ISO Nut Size
nut_radius = 8;

//Depth of the nut cavity
nut_depth = 6;

/* [Knurly Params] */
//Where to cut off the knurled section (top and bottom)
knurl_cutoff = knob_height-2;

//Width of each knurled grips
knurl_width = 7;

//Height of each knurled grips
knurl_height = 5;

//Depth of each knurled grips
knurl_depth = 2;

//Smoothing amount
knurl_smooth_amount = 20;


/* [Hidden] */
//Bottom knob radius
knob_diaB = knob_dia;

//Top knob radius
knob_diaT = knob_dia;


/*********************************************\
 Libraries
\*********************************************/

include <knurledFinishLib.scad>



/*********************************************\
 The Magic
\*********************************************/

translate([0,0,knob_height])  {
	rotate([0,180,0]) {
		difference() {
			difference() {
				knob_cut_hole();
				cylinder(r=nut_radius,h=nut_depth,$fn=6);
			}
			cutback_circle();
		}
	}
}



/*********************************************\
 Modules
\*********************************************/

module knob_cut_hole() {
	difference() {
		knurled_cyl(knob_height, 
					knob_dia, 
					knurl_width, 
					knurl_height, 
					knurl_depth, 
					knurl_cutoff, 
					knurl_smooth_amount);
 		knob_hole();
	}
}

module knob_hole() {
	$fn=100;
	translate([0,0,-4])
		cylinder(knob_height+8,hole_dia/2+0.25,hole_dia/2+0.25);
}

module cutback_circle() {
	difference() {
		cylinder(cutback_depth, knob_dia/2+knurl_depth, knob_dia/2+knurl_depth);	
		translate([0,0,0]) {
			cylinder(cutback_depth+2, cutback_dia/2, cutback_dia/2);	
		}
	}
}


