float z = 0;
boolean fired;
boolean noshot;
int score = 0;
int highscore = 0;
PFont myFont;

Character_Movement playerPosition;

void setup() {
  size(750,750);
  background(100);
  playerPosition = new Character_Movement();
  score = 0;
  highscore = 0;
  myFont = createFont("Arial", 18);
  textFont(myFont);
  textAlign(CENTER, CENTER);
}

void draw() 
{
  background(255);
  text("HIGHSCORE:  " + highscore,625, 25);
  text("SCORE:  " + score, 625,50);
  noFill();
  rect(10,10,198,80); // Guage bar
  fill(255, 0, 0);
  rect(10,10,z,80); // fill up guage bar
  fill(255,0,0);
  rect(741,100,8,150); // backboard
  rect(630,240,120,10); // rim
  playerPosition.draw();
  
  
}

void keyPressed() 
{
  if(!noshot)
  {
  if (key == ' ') 
  {
   z += 9;
  }
  }
  if (z >=198)
  {
    z = 0;
  }
}

void keyReleased() 
{
  if(!noshot)
  {
  if (key == ' ') 
  {
    fired = true;
    noshot = true;
  }
  }
}
