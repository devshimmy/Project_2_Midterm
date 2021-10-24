class Character_Movement
{
  PVector playerPosition;
  PVector playerSpeed;
  PVector playerAcceleration;
  int diameter = 50;
  boolean basket;
  
  
  Character_Movement()
  {
    playerPosition = new PVector(25, height - diameter/2);
    playerSpeed = new PVector(0,0);
    playerAcceleration = new PVector(0,0);
    
    
  }
  void draw()
  {
  fill(249, 69, 0);
  circle(playerPosition.x, playerPosition.y, diameter);
  playerPosition.y = constrain(playerPosition.y,0, height - diameter/2);
  playerPosition.x = constrain(playerPosition.x,0, width - diameter/2);
  
  playerPosition.x += playerSpeed.x;
  playerPosition.y += playerSpeed.y;
  
  playerSpeed.x += playerAcceleration.x;
  playerSpeed.y += playerAcceleration.y;
  
  if (fired) 
    {
     fired = false;
     playerSpeed.x = z*0.039;
     playerAcceleration.x = -0.01;
     playerSpeed.y = z*-0.069;
     playerAcceleration.y = 0.121;
     println(z);
     z = 0;
    } /*if (playerPosition.y < 0)
       {
          playerPosition.y = 0;
       }
    }
       if (playerSpeed.x == 0) 
       {
          playerAcceleration.x = 0;
       }*/
       if (playerPosition.x >= 725)
       {
         playerSpeed.x = playerSpeed.x * -0.5; 
         playerAcceleration.x = playerAcceleration.x * -1;
       }
       if (playerPosition.x >= 650 && playerPosition.y >= 260 && playerAcceleration.y > 0 && playerPosition.x < 750 && playerPosition.y < 270)
       {
         playerPosition = new PVector(25,725);
         playerSpeed.x = 0;
         playerSpeed.y = 0;
         playerAcceleration.x = 0;
         playerAcceleration.y = 0;
         noshot = false;
         score = score + 1;
       }
       if (playerPosition.y >= 740)
       {
         playerPosition = new PVector(25,725);
         playerSpeed.x = 0;
         playerSpeed.y = 0;
         playerAcceleration.x = 0;
         playerAcceleration.y = 0;
         noshot = false;
         score = 0;
       }
       if (score > highscore)
       {
         highscore = score;
       }
       if (highscore >= 1)
       {
         text("WOW!" , width/2, height/2);
       }
  }
}
