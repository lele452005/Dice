Die sue, bob;
int sum = 0;
     void setup()
  {
    size(780, 700);  
    noLoop();
  }

  void draw()
  {
   sum = 0;
   background(#DBC7E8);
    for (int y=10; y<550; y+=45){
      for (int x=10; x<=760; x+=45){
        Die bob = new Die (x,y);
        bob.show(); 
      }
    }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
    int dot=(int)(Math.random()*6+1);    
    int myX, myY; //member variable declarations here
      Die(int x, int y) //constructor
      {
         myX=x;
         myY=y;
      }
      void roll()
      {

      }
      void show()
      {   
          fill(255);
          rect(myX, myY, 40, 40);
          fill(#FF9BF4);
          if (dot==1){
            ellipse( myX+20, myY+20, 10, 10);
            sum = sum+dot;
          }
           else if (dot ==2){
            ellipse (myX+29, myY+26, 10, 10);
            ellipse (myX+10, myY+12, 10, 10);
            sum = sum+dot;
          } else if (dot ==3){
            ellipse( myX+20, myY+20, 10, 10);
            ellipse (myX+30, myY+28, 10, 10);
            ellipse (myX+10, myY+12, 10, 10);
            sum = sum+dot;
          } else if (dot ==4){
            ellipse (myX+29, myY+30, 10, 10);
            ellipse (myX+10, myY+10, 10, 10);
            ellipse (myX+29, myY+10, 10, 10);
            ellipse (myX+10, myY+30, 10, 10);
            sum = sum+dot;
          } else if (dot ==5){
            ellipse (myX+29, myY+30, 10, 10);
            ellipse (myX+10, myY+10, 10, 10);
            ellipse (myX+29, myY+10, 10, 10);
            ellipse (myX+10, myY+30, 10, 10);
            ellipse (myX+20, myY+20, 10, 10);
            sum = sum+dot;
          } else if (dot ==6){
            ellipse (myX+29, myY+32, 10, 10);
            ellipse (myX+10, myY+8, 10, 10);
            ellipse (myX+29, myY+8, 10, 10);
            ellipse (myX+10, myY+32, 10, 10);
            ellipse (myX+29, myY+20, 10, 10);
            ellipse (myX+10, myY+20, 10, 10);
            sum = sum+dot;
          } 
          fill(255);
          rect(270, 550, 250, 90);
          fill(0);
          text("Sum of dices",320, 580);
          textSize(22);
         text(sum, 370, 600);
      }
}
