size(800, 600);
background(160, 50, 0);
int offset = 0;

for (int y = -60; y <= height; y += 80) {
  for (int x = 0; x <= width; x +=160) {
    noFill();
    stroke(250, 194, 0);
    square(x-offset, y, 100);
    square( x +40 - offset, y+40, 20);
    line(x-30, 0, x-30, 800);
    line(x-110, 0, x-110, 800);
    line(0, y-30, 800, y-30);
  }
  if (offset == 0) offset = 80;
  else offset = 0;
}
