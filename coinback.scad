import("coin_tray.stl");


module coin_hole(radius, height) {
angle1 = 20;
angle2 = 55;
              
multmatrix([
  [1, 0, 0, height+7],
  [0, sin(angle2), 0, 10],
  [0, sin(angle1), 1, -97],
  [0, 0, 0,  1]
]) {
  cylinder(radius, h=height);
}

}

coin_hole(r=26/2, 90);


//difference() {
    //cube([25, 156, 90], center = true);
//}

