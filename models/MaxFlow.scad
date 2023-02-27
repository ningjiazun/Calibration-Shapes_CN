//-------------------------------------------------------------------------------------------
// Temp Tower PLA
//---------------------------
// Nozzle 0.4
//---------------------------
// MaxFlow Script
//---------------------------
// Layer = 0.2
// Start Value          : 100 %
// End Value            : 200 %
// Offset Layer         : 0
//---------------------------
// Original Design : https://www.printables.com/fr/model/342075-extrusion-test-structure
// Freely adapted by 5@xes  2023
//-------------------------------------------------------------------------------------------
// Modification : None
//-------------------------------------------------------------------------------------------

$fn=50;
font = "Arial:style=Bold";

Hc=0.2; // Layer Height
Line_Width = 0.4; // line Width

Height = 100*Hc;
letter_size = 0.30*Height;
letter_height = Line_Width;

Base();


module Base() {
  translate([-60, -40, 0]) difference() {  
    minkowski() {
        union() {
            translate([0, 0, 0]) cube([10,80,Height], center = false);
            translate([0, 0, 0]) cube([110,0.1,Height], center = false);
            translate([0, 40, 0]) cube([110,0.1,Height], center = false);
            translate([0, 80, 0]) cube([110,0.1,Height], center = false);
        }
      cylinder(r=10,h=1, center = false);
    }
    translate([20, 20, 0]) cylinder(h = Height*2, r1 = 10.05, r2 = 10.05, center = false);
    translate([20, 60, 0]) cylinder(h = Height*2, r1 = 10.05, r2 = 10.05, center = false);
    
    for (a =[2:20])
        translate([-10, -10, a]) rotate([-90,0,0]) cylinder(h = 150, r1 = 0.5, r2 = 0.5, center = false);
  }
}

module letter(Txt) {
  color("Yellow")
  linear_extrude(height = letter_height) {
    text(Txt, size = letter_size, font = font, halign = "center", valign = "center");
  }
}



