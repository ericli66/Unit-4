size(800, 600);
background(255);
int offset = 0;
for (int x = 0; x <= width +80; x +=80) {
  for (int y = 0; y <= height + 80; y += 160) {

    fill(255);
    strokeWeight(8);
    stroke(0);
    ellipse(x, y-offset, 140, 140);
    ellipse(x, y-offset, 110, 110);
    ellipse(x, y-offset, 80, 80);
    ellipse(x, y-offset, 50, 50);
    ellipse(x, y-offset, 20, 20);
  }
  if (offset == 0) offset = 80;
  else offset = 0;
}
