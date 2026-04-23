size(800, 600);
background(255);

for(int i = 0; i < 800; i += 30){
  line(i, 0, i, 600);
}

for(int i = 0; i <600; i += 30){
  line(0, i, 800, i);
}
