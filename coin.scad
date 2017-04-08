
angle1 = 30;
angle2 = 45;
              
multmatrix([
  [1, 0, 0, 0],
  [0, sin(angle2), 0, 0],
  [0, sin(angle1), 1, 0],
  [0, 0, 0,  1]
]) {
  cylinder(r=24.26/2, h=90, center= true);
}

//difference() {
    //cube([25, 156, 90], center = true);
//}

