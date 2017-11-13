class Asteroid extends Floater{
  protected int rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    xCorners[1] = -8;
    xCorners[2] = 7;
    xCorners[3] = -8;
    xCorners[4] = 13;
    xCorners[5] = 0;
    yCorners[0] = 6;
    yCorners[1] = 10;
    yCorners[2] = -11;
    yCorners[3] = 8;
    yCorners[4] = -5;
    yCorners[5] = 0;
    rotSpeed = 4;
     myColor = 200;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myDirectionX = (int)(Math.random() * 4) - 2;
    myDirectionY = (int)(Math.random() * 4) - 2;
    myPointDirection = 180;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
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
  public void setrotSpeed(int degrees){rotSpeed = degrees;}
  public double getrotSpeed(){return rotSpeed;}
  }