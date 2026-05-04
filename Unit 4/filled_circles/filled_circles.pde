size(800, 600);
background(255);

for (int y = 40; y <= height + 80; y += 80) {
  for (int x = 40; x <= width +80; x +=80) {
    fill(0);
    strokeWeight(2);
    stroke(255);
    ellipse(x, y, 80, 80);
    ellipse(x, y, 60, 60);
    ellipse(x, y, 40, 40);
    ellipse(x, y, 20, 20);
  }
}
