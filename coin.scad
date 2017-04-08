import("coin_tray.stl");

module coin_hole(radius, height, x_position, y_position) {
$fn = 100;

angle1 = 20;
angle2 = 55;
height_offset = height + 7;
              
multmatrix([
  [1, 0, 0,  x_position],
  [0, sin(angle2), 0, y_position],
  [0, sin(angle1), 1, height_offset * -1],
  [0, 0, 0,  1]
]) {
    echo( radius, height);
    cylinder(r = radius, h = height);
   }
}

penny_diameter = 19.05;
dime_diameter = 17.91;
nickel_diameter = 21.21;
quarter_diameter = 24.26;
spacer = 2;

coin_hole((penny_diameter + spacer) / 2, 90, 15.5, 7);
coin_hole((nickel_diameter + spacer) / 2, 90, 42.5, 8);
coin_hole((dime_diameter + spacer) / 2, 90, 69, 6.5);
coin_hole((quarter_diameter + spacer) / 2, 90, 97, 9);
//difference() {
    //cube([25, 156, 90], center = true);
//}
