//vazquez leandro
//tp0 comision 1
size(800,400);
PImage paisaje;

paisaje = loadImage("Great_Grand_Canyon.jpg");

//fondo
background(173,111,17);
noStroke();
image(paisaje,0,0,400,400);

//cielo
fill(118,71,102);
rect(400,0,650,50);
noFill();
//cielo2
fill(118,71,102);
rect(400,60,550,50);
noFill();
//sol
fill(250,196,45);
ellipse(500,55,50,50);
fill(255,255,255);
ellipse(500,55,30,30);
noFill();

//montaña
fill(111,66,18);
quad(800,200,550,250,400,120,800,50);
fill(111,66,18);
rect(400,100,100,500);
noFill();
fill(219,139,18);
rect(400,300,150, 150,10,10,40,40);
noFill();
//agua
fill(250,196,45);
triangle(800,800,800,500,495,200);
noFill();
//montaña
fill(193,130,27);
rect(650,55,350,400);
