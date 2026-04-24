size(800, 600);
background(255);
rectMode(CENTER);

for(int i = 0; i < 1800; i += 40){
  noFill();
  rect(800/2, 600/2, i, i);
}
