size(800, 600);
background(255);

for (int y = 50; y <= height + 80; y += 100) {
  for (int x = 50; x <= width +80; x +=100) {
    fill(0);
    triangle(x, y, x, y-50, x-50, y-50);
    triangle(x, y, x+50, y, x+50, y-50);
    triangle(x, y, x-50, y, x-50, y+50);
    triangle(x, y, x, y+50, x+50, y+50);
  }
}
