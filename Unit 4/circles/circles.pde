size(800, 600);
background(255);
int offset = 0;

for(int y = 0; y <= height + 80; y += 70) {
  for(int x = 80; x <= width +80; x +=140) {
    noFill();
    ellipse(x - offset, y, 160, 160);
  }
  if (offset == 0) offset = 88;
  else offset = 0;
}
