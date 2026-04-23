size(800, 600);
background(255);

for (int x = 0; x < 800; x+=30) { 
    for (int y = 0; y < 600; y+= 30) { 
      line(x, y, y, x);
    }
}
