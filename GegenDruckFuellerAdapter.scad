// Andre Betz
// github@AndreBetz.de
// Halterung fuer Gegendruckfueller an einem Bohrmaschinenstaender
// Zwieselbrau.de

BohrHalterungD      = 43;
BohrHalterungH      = 23;
BohrHalterungRandD  = 5;
BohrHalterungRandH  = 5;
GegendruckFuellerD  = 10;
GrundplatteAbstand  = 45;
SchraubeD           = 5;
StopfenD            = 20;
StopfenH            = 15;

$fn=100;

difference()
{
    union()
    {
        cylinder(h=BohrHalterungRandH,r=(BohrHalterungRandD+BohrHalterungD)/2,center=false);
        translate([0,0,BohrHalterungRandH])
            cylinder(h=BohrHalterungH,r=BohrHalterungD/2,center=false);
        translate([-(BohrHalterungD+BohrHalterungRandD)/2,0,0])
            cube([BohrHalterungD+BohrHalterungRandD,GrundplatteAbstand,BohrHalterungRandH]);
        
        translate([-(BohrHalterungD+BohrHalterungRandD),GrundplatteAbstand,0])
            cube([(BohrHalterungD+BohrHalterungRandD)*2,BohrHalterungRandH,BohrHalterungH+BohrHalterungRandH]);
        
    }
    translate([0,0,-1])
        cylinder(h=BohrHalterungH+BohrHalterungH+2,r=GegendruckFuellerD/2,center=false);
    translate([0,0,-1])
        cylinder(h=BohrHalterungRandH+2,r=SchraubeD/2,center=false);
    translate([(BohrHalterungD+BohrHalterungRandD)*2/3,GrundplatteAbstand-1,(BohrHalterungH+BohrHalterungRandH)/2])
        rotate([-90,0,0])
            cylinder(h=BohrHalterungRandH+2,r=SchraubeD/2,center=false);
    translate([-(BohrHalterungD+BohrHalterungRandD)*2/3,GrundplatteAbstand-1,(BohrHalterungH+BohrHalterungRandH)/2])
        rotate([-90,0,0])
            cylinder(h=BohrHalterungRandH+2,r=SchraubeD/2,center=false);
    // damit wird der Hub verringert.
    // ich hab einen Hub von 55mm
    translate([0,0,-1])
        cylinder(h=StopfenH+2,r=StopfenD/2,center=false);
}
