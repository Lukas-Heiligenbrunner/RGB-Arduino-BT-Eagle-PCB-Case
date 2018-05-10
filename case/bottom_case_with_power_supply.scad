createBottom();
createPowerSupplyBox();

module createBottom(){
difference(){
  bottomBox();
  translate([12,-2.5,8.5]) cube([22,2.5,6.7]);
  translate([12,80.6,8.5]) cube([11,2.5,6.7]);
    
  translate([-1,-1,28.5]) cube([1,82.6,2]);
  translate([64.8,-1,28.5]) cube([1,82.6,2]);
  translate([0,-1,28.5]) cube([64.8,1,2]);
  translate([0,80.6,28.5]) cube([64.8,1,2]);
    
}
}

module bottomBox()
{
    //Grundplatte
cube([64.8,80.6,2.5]);

//Stützquader
translate([0,0,2.5]) cube([6,6,5]);
translate([58.8,0,2.5]) cube([6,6,5]);
translate([58.8,74.6,2.5]) cube([6,6,5]);
translate([0,74.6,2.5]) cube([6,6,5]);

translate([0,37,2.5]) cube([6,6,5]);
translate([58.8,37,2.5]) cube([6,6,5]);
translate([35,0,2.5]) cube([6,6,5]);

translate([29,43.2,2.5]) cube([6,6,5]);

//Rahmen
translate([-2.5,-2.5,0]) cube([69.8,2.5,30.5]);
translate([-2.5,80.6,0]) cube([69.8,2.5,30.5]);
translate([-2.5,0,0]) cube([2.5,80.6,30.5]);
translate([64.8,0,0]) cube([2.5,80.6,30.5]);
}

module createPowerSupplyBox()
{
  translate([-2.5,-2.5,-33.5]) cube([69.8,2.5,33.5]);
  translate([-2.5,0,-33.5]) cube([2.5,83.1,33.5]);
  translate([61.2,0,-33.5]) cube([6.1,83.1,33.5]);
  translate([59.25,0,-33.5]) cube([2.5,83.1,33.5]);
  
  translate([0,0,-33.5]) cube([64.8,83.1,2.5]);
}