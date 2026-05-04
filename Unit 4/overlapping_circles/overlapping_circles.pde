size(800, 600);
background(255);
int offset = 0;

for (int y = 0; y <= height + 80; y += 80) {
  for (int x = 80; x <= width +80; x +=160) {
    fill(255);
    strokeWeight(8);
    stroke(0);
    ellipse(x-offset, y, 130, 130);
    ellipse(x-offset, y, 100, 100);
    ellipse(x-offset, y, 70, 70);
    ellipse(x-offset, y, 40, 40);
    ellipse(x-offset, y, 20, 20);
  }
  if (offset == 0) offset = 80;
  else offset = 0;
}
