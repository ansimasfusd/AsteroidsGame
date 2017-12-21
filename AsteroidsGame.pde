//your variable declarations here
  Stars[] sue = new Stars[200];
  Spaceship bob = new Spaceship();
  ArrayList <Asteroid> yev = new ArrayList <Asteroid>();
  ArrayList <Bullet> yev2 = new ArrayList <Bullet>();
public void setup() 
{
  size(500,500);
  background(0);
  
  for (int i = 0; i < sue.length; i++){
   sue[i] = new Stars(); 
  }
  for (int i = 0; i < 30; i++){
   yev.add(new Asteroid()); 
  }

  for (int i = 0; i < yev2.size(); i++){
    yev2. add(new Bullet(bob));
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < sue.length; i++){
   sue[i].show();
  }
  for (int i = 0; i < yev.size(); i++){
   yev.get(i).show();
   yev.get(i).move();
   yev.get(i).setrotSpeed((int)(Math.random() * 3));
   if(dist((float)(yev.get(i).getX()),
   (float)(yev.get(i).getY()),
   (float)(bob.getX()),
   (float)(bob.getY())) < 20){
     yev.remove(i);
   }
  }
  for (int i = 0; i < yev2.size(); i++){
    yev2.get(i).show();
    yev2.get(i).move();
  }

for(int i = 0; i < yev2.size(); i++){
  for( int j = 0; j < yev.size(); j++){
  if(dist((float)(yev.get(j).getX()),
   (float)(yev.get(j).getY()),
   (float)(yev2.get(i).getX()),
   (float)(yev2.get(i).getY())) < 20){
     yev.remove(j);
    yev2.remove(i);
    break;
   }
  }
  }
}

public void keyTyped(){
  if (key == '0'){
   bob.setDirectionX(0);
   bob.setDirectionY(0);
   bob.setX((int)(Math.random() * 500));
   bob.setY((int)(Math.random() * 500));
   bob.setPointDirection((int)(Math.random() * 360));
   background(0);
  }
  if (key == '1'){
     bob.turn(7); 
  }
  if (key == '2'){
   bob.accelerate(1);
  }

  if (key == '3'){
    if(yev2.size() < 300){
    yev2. add(new Bullet(bob));
    }
  }
}