createTop();

module createTop()
{
  difference(){
    topBox();
    translate([64.8-29.5,80.6-17-3.4,0]) cube([6,17,2]);
    
    translate([15,15,0]) cylinder(2,5,5,$fn=6);
    translate([15,25,0]) cylinder(2,5,5,$fn=6);
    translate([15,35,0]) cylinder(2,5,5,$fn=6);
    translate([15,45,0]) cylinder(2,5,5,$fn=6);
    
    translate([24,10,0]) cylinder(2,5,5,$fn=6);
    translate([24,20,0]) cylinder(2,5,5,$fn=6);
    translate([24,30,0]) cylinder(2,5,5,$fn=6);
    translate([24,40,0]) cylinder(2,5,5,$fn=6);
    translate([24,50,0]) cylinder(2,5,5,$fn=6);
    
    translate([33,15,0]) cylinder(2,5,5,$fn=6);
    translate([33,25,0]) cylinder(2,5,5,$fn=6);
    translate([33,35,0]) cylinder(2,5,5,$fn=6);
    translate([33,45,0]) cylinder(2,5,5,$fn=6);
    
    translate([42,10,0]) cylinder(2,5,5,$fn=6);
    translate([42,20,0]) cylinder(2,5,5,$fn=6);
    translate([42,30,0]) cylinder(2,5,5,$fn=6);
    translate([42,40,0]) cylinder(2,5,5,$fn=6);
    translate([42,50,0]) cylinder(2,5,5,$fn=6);
    
    translate([51,15,0]) cylinder(2,5,5,$fn=6);
    translate([51,25,0]) cylinder(2,5,5,$fn=6);
    translate([51,35,0]) cylinder(2,5,5,$fn=6);
    translate([51,45,0]) cylinder(2,5,5,$fn=6);
  }
}

module topBox()
{
  //grundplatte
  cube([64.8,80.6,2]);
  
  //4 Seitenerweiterungen
  translate([-1,0,0]) cube([1,80.6,2]);
  translate([64.8,0,0]) cube([1,80.6,2]);
  translate([-1,-1,0]) cube([66.8,1,2]);
  translate([-1,80.6,0]) cube([66.8,1,2]);
  
  //4 halterungswürfel
  translate([0,0,2]) cube([6,6,6]);
  translate([6,0,2]) cube([6,6,6]);
  translate([0,6,2]) cube([6,6,6]);
  
  translate([58.8,0,2]) cube([6,6,6]);
  translate([55.8,0,2]) cube([3,6,6]);
  translate([58.8,6,2]) cube([6,6,6]);
  
  translate([0,74.6,2]) cube([6,6,6]);
  translate([6,74.6,2]) cube([6,6,6]);
  translate([0,68.6,2]) cube([6,6,6]);
  
  translate([58.8,74.6,2]) cube([6,6,6]);
  translate([55.8,74.6,2]) cube([3,6,6]);
  translate([58.8,68.6,2]) cube([6,6,6]);
}