// Andre Betz
// github@AndreBetz.de
// Halterung fuer Gegendruckfueller an einem Bohrmaschinenstaender
// Zwieselbrau.de

BohrHalterungD      = 42;
BohrHalterungH      = 23;
BohrHalterungRandD  = 5;
BohrHalterungRandH  = 5;
GegendruckFuellerD  = 10;

$fn=100;

difference()
{
    union()
    {
        cylinder(h=BohrHalterungRandH,r=(BohrHalterungRandD+BohrHalterungD)/2,center=false);
        translate([0,0,BohrHalterungRandH])
            cylinder(h=BohrHalterungH,r=BohrHalterungD/2,center=false);
    }
    translate([0,0,-1])
        cylinder(h=BohrHalterungH+BohrHalterungH+2,r=GegendruckFuellerD/2,center=false);
}