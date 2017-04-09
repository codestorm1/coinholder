//import("coin_tray.stl");
module triangle_prism(a, b, ht, sc)
{
    linear_extrude(height=ht, scale=sc) {
      polygon(points = [[0, 0], [a, 0], [a, b]]);
    }
}


cube_l = 115;
cube_w = 24;
cube_h = 120;

module coin_hole(radius, height, x_position, y_position, z_position) {
$fn = 100;

angle_ends = 20;
angle_ellipse = 55;

multmatrix([
  [1, 0, 0,  x_position],
  [0, sin(angle_ellipse), 0, y_position],
  [0, sin(angle_ends), 1, z_position],
  [0, 0, 0,  1]
]) {
    cylinder(r = radius, h = height);
   }
}

penny_diameter = 19.05;
dime_diameter = 17.91;
nickel_diameter = 21.21;
quarter_diameter = 24.26;
spacer = 2;

module top_triangle(width, height) {
  translate([cube_l, 0, height - 8]) {
    rotate([90, -90, -90]) {
    triangle_prism(8, width, 115, 1);
    }
  }
}

difference() {
  render(convexity = 2);
    cube([cube_l, cube_w, cube_h]);
    /*cube([cube_l, cube_w, cube_h]);*/
    top_triangle(cube_w, cube_h);
    //translate([0, 0, 70]) cube([115, 24, 20]);
    coin_hole((penny_diameter + spacer) / 2, cube_h, 15.5, 7, 4);
    coin_hole((nickel_diameter + spacer) / 2, cube_h, 42.5, 8, 4.25);
    coin_hole((dime_diameter + spacer) / 2, cube_h, 69, 6.5, 3.75);
    coin_hole((quarter_diameter + spacer) / 2, cube_h, 97, 9, 4.75);
}
