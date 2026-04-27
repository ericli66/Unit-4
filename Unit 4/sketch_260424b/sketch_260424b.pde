void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  // --- Draw the Sunset Sky ---
  fill(255, 185, 44);
  rect(0, 0, 800, 400);

  // --- Draw the Sun ---
  fill(255, 200, 50);
  ellipse(400, 290, 100, 100); 

  // --- Draw the Ocean (Height shortened to 80px) ---
  fill(25, 25, 112); 
  float oceanTop = 300;
  float oceanHeight = 80;
  rect(0, oceanTop, width, oceanHeight);
  
  // Sun Reflection
  fill(255, 140, 0, 40);
  rect(360, oceanTop, 80, oceanHeight);

  // --- Draw the Swimming Fish ---
// --- Simple Swimming Fish ---
  for (int i = 0; i < 5; i++) {
    // 1. Horizontal movement: frameCount moves them right. 
    // 2. The modulo (%) resets them to the left side when they go off-screen.
    float x = (frameCount + (i * 150)) % width; 
    
    // Static Y position based on their index
    float y = 320 + (i * 15); 
    
    drawFish(x, y);
  }

  //Draw the Sand 
  fill(139, 115, 85); 
  rect(0, oceanTop + oceanHeight, width, height - (oceanTop + oceanHeight));

  // --- Draw the Wine Bottle ---
  drawWineBottle(200, 480);
}

void drawFish(float x, float y) {
  fill(0, 0, 50); // Silhouette
  ellipse(x, y, 15, 8);
  triangle(x - 7, y, x - 12, y - 5, x - 12, y + 5); // Flipped tail so they swim right
}

void drawWineBottle(float x, float y) {
  fill(20, 60, 20, 230); 
  rect(x, y, 40, 90, 5);  
  rect(x + 12, y - 40, 16, 45); 
  fill(200, 190, 160);
  rect(x + 2, y + 25, 36, 40);
  fill(255, 200, 100, 80);
  rect(x + 8, y - 35, 4, 120);
}
