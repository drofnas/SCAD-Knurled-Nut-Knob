Available on Thingiverse: [http://www.thingiverse.com/thing:439239](http://www.thingiverse.com/thing:439239)

##Description
						
I really liked the [1in Diameter Knurled Knob](http://www.thingiverse.com/thing:177400), but wanted something that could be customized on a per project basis.

So I grabbed the [Knurled surface finishing library](http://www.thingiverse.com/thing:9095) and sprinkled in a little bit of my newbie OpenSCAD skills to create this simple parametric knurled knob.

The first use I had for this part was to add a knob to the outside hex nut on the [Low friction spool holder](http://thingiverse.com/thing:235925). Since I wanted a way to quickly tighten down the nut if it ever came loose. 

This is my first OpenSCAD model, so if you have any tips on making this thing better please leave them in the Comments section.

##Files

* **knurled_hex_cap.gcode**: The gcode I used to print a copy of this on my Ultimaker 2. This may, or may not, work on your printer as well. You can use Cura to load the settings from this file is you want to test them on your printer using your prefered slicing application. 
* **knurled_nut_knob.scad**: This is the file that can be opened and customized using OpenSCAD. Just follow the Instructions below on what needs to be done.
* **knurled_nut_knob.stl**: This is a STL file exported from the SCAD file provided using the default settings.
* **knurledFinishLib.scad**: The Knurled Finish Library I used in making the outisde knurled texture on this design. The latest *.scad* file for this library can be found on Thingiverse ([http://www.thingiverse.com/thing:9095](http://www.thingiverse.com/thing:9095))

##Instructions

* Download OpenSCAD (*[http://www.openscad.org](http://www.openscad.org)*)
* Download the latest [knurledFinishLib.scad](http://www.thingiverse.com/thing:9095) as well as the **knurled_nut_knob.scad** file provided and place them in the same directory.
* Now open the **knurled_nut_knob.scad** file in OpenSCAD   
* Customize the values in the **Parameters** section  
* Choose *Design -> Compile and Render* 
* Choose *File -> Export ->  Export as STL*

Now you have a STL file you can use with your particular setup.