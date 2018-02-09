class Bullet extends Floater{

  public Bullet(Spaceship bob){
  	myColor = color(0,0,255); 
  	myCenterX = bob.getX();
  	myCenterY = bob.getY();
  	myPointDirection = bob.getPointDirection();
  	double dRadians =myPointDirection*(Math.PI/180);
  	myDirectionX = 5 * Math.cos(dRadians) + bob.getDirectionX();
  	myDirectionY = 5 * Math.sin(dRadians) + bob.getDirectionY();
  }

   public void move (){      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
	}

  public void show(){
  	fill(myColor);   
    stroke(myColor);    
    ellipse((float)(myCenterX),(float)(myCenterY),10,10);
  }

  public void setX(int x) {myCenterX = x;}
  public int getX(){return (int)(myCenterX);}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)(myCenterY);}   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
}