float waveOffset = 0;
float bottleY;
int numFish = 8;
float[] fishX = new float[numFish];
float[] fishY = new float[numFish];
float[] fishSpeed = new float[numFish];

void setup() {
  size(800, 600);
  
  // Initialize fish positions and speeds
  for (int i = 0; i < numFish; i++) {
    fishX[i] = random(width);
    fishY[i] = random(400, 580);
    fishSpeed[i] = random(1, 3);
  }
}

void draw() {
  // 1. Draw the Sky and Ocean
  background(135, 206, 235); // Sky blue
  noStroke();
  fill(0, 105, 148); // Deep ocean blue
  rect(0, 300, width, 300);

  // 2. Animate the Fish (Behind the bottle)
  for (int i = 0; i < numFish; i++) {
    drawFish(fishX[i], fishY[i]);
    fishX[i] -= fishSpeed[i];
    if (fishX[i] < -50) fishX[i] = width + 50; // Loop fish
  }

  // 3. Draw the Floating Bottle
  // Use sin() to create a bobbing motion
  float bobbing = sin(waveOffset) * 15; 
  drawBottle(width/2, 300 + bobbing);
  
  waveOffset += 0.05;
}

void drawBottle(float x, float y) {
  pushMatrix();
  translate(x, y);
  rotate(radians(15)); // Give it a slight tilt
  
  // Bottle Body
  fill(34, 139, 34, 200); // Transparent green glass
  stroke(20, 80, 20);
  strokeWeight(2);
  rect(-25, 0, 50, 100, 10); // Main body
  
  // Bottle Neck
  rect(-10, -40, 20, 45); 
  
  // Label
  fill(245, 245, 220);
  noStroke();
  rect(-20, 30, 40, 30);
  
  // Cork
  fill(139, 69, 19);
  rect(-10, -45, 20, 10);
  
  popMatrix();
}

void drawFish(float x, float y) {
  fill(255, 150, 0); // Orange fish
  noStroke();
  // Body
  ellipse(x, y, 40, 20);
  // Tail
  triangle(x + 20, y, x + 35, y - 10, x + 35, y + 10);
  // Eye
  fill(255);
  ellipse(x - 10, y - 2, 5, 5);
}
