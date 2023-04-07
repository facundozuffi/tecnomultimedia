//Facundo Martinez Zuffi
//tp0 comision 1

size (800, 400);

background (200); 
PImage fondo;
fondo =loadImage ("fondo.jpg");
image (fondo, 0, 0, 400, 400);
noStroke ();
fill (234,174,62);
rect (400, 300 , 400, 100);
fill (247,195,97);
rect (400, 200 , 400, 100);
fill (160,121,61);
triangle (800, 200, 800,100, 470 ,50);
fill (147, 88, 0);
triangle (400,200, 400,50, 475,100);
triangle (400,200, 500,200, 475,100);
quad (575,50, 475, 50, 400,200, 800,200);
