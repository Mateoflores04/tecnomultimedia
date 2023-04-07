  PImage camion;

void setup() {
  size(800,400);
  camion= loadImage("chevy.jpg");
}

void draw() {

fill(0,0,0);
  
background(90,45,7);
  
image( camion,0,0,400,400);

fill(120,120,120);

beginShape();
vertex(400,220);
vertex(400,400);
vertex(800,400);
vertex(800,220);
vertex(540,200);
endShape(CLOSE);

fill(0,0,0);

ellipse(450,280,25,40);

fill(232,106,2);

beginShape();
vertex(420,225);
vertex(630,180);
vertex(730,190);
vertex(730,195);
vertex(733,203);
vertex(733,240);
vertex(728,250);
vertex(550,310);
vertex(540,310);
vertex(417,285);
vertex(415,275);
vertex(415,240);

endShape(CLOSE);

line(415,240,540,260);
line(540,260,733,205);
line(420,225,540,243);
line(540,243,730,191);

beginShape();
vertex(510,206);
vertex(530,153);
vertex(540,145);
vertex(575,140);
vertex(655,147);
vertex(663,153);
vertex(675,207);
vertex(620,221);


endShape(CLOSE);

line(530,153,623,163);
line(623,163,663,154);
line(620,220,623,163);
line(540,145,626,154);
line(626,154,655,147);

fill(203,203,203);

beginShape();
vertex(415,240);
vertex(415,265);
vertex(540,289);
vertex(540,260);

endShape(CLOSE);

ellipse(435,256,15,20);
ellipse(520,272,15,20);


fill(0,0,0);
ellipse (590,295,35,50);
ellipse(695,260,30,45);

fill(203,203,203);

ellipse(590,295,25,40);
ellipse(695,260,20,35);

fill(0,0,0);

beginShape();

vertex(515,203);
vertex(533,158);
vertex(618,167);
vertex(614,215);

endShape(CLOSE);

beginShape();
vertex(627,167);
vertex(625,215);
vertex(670,204);
vertex(660,160);

endShape(CLOSE);


beginShape();
vertex(675,202);
vertex(710,193);
vertex(670,188);

endShape(CLOSE);


}
