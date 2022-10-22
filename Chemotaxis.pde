Fly[] bob;
poop bill = new poop();
void setup(){
  size(500, 500);
  bob = new Fly[8];
  for(int i=0; i<bob.length; i++){
    bob[i] = new Fly(200,200);
  }
  
}
void draw(){
  background(255);
   bill.show();
  for(int i=0; i< bob.length; i++)
  {
    bob[i].move();
    bob[i].show(); 
  }  
}

void keyPressed(){
    redraw();
}

class Fly{
  //member variables
  int myX, myY;
  boolean alive = true;
  void move(){
    if (dist(myX, myY, bill.myX, bill.myY)<10){
      alive = false;
    }
    if(mouseX > myX){
     myX = myX + (int)(Math.random()*8)-2;
   }
   else{
    myX = myX - (int)(Math.random()*8)-2;    
  }
   if (mouseY < myY){
    myY = myY -(int)(Math.random()*8)-2;    
  }
   else{
    myY = myY +(int)(Math.random()*8)-2;   
  }
   
 }
  
  void show(){
   
    if (alive == true){
    stroke(1);
    fill(210, 210, 210);
    ellipse(myX - 60, myY - 20, 30, 50);
    ellipse(myX - 80, myY - 20, 30, 50);
    fill(0);
    ellipse(myX - 20, myY + 5, 10, 10);
    rect(myX - 40, myY, 20, 10);
    ellipse(myX - 65, myY, 60, 40);
    fill(255, 255, 255);
    ellipse(myX - 30, myY - 10, 30, 30);
    ellipse(myX - 50, myY - 10, 30, 30);
    fill(255, 0, 0);
    ellipse(myX - 50, myY - 10, 5, 5);
    ellipse(myX - 30, myY - 10, 5, 5);
    }
  }
  Fly(int x, int y){ //2 argument constructor
    myX = x;
    myY = y;
  }
}

class poop{
  //member variables
  int myX, myY;
  
  void show(){
    noStroke();
   fill(150, 75, 0);
    ellipse(myX, myY, 100,50);
    ellipse(myX, myY - 25, 75,50);
    ellipse(myX, myY - 50, 30,25);
    }
  poop(){ //2 argument constructor
    myX = (int)(Math.random()*450)+10;  
    myY = (int)(Math.random()*450)+10;  
  }
}
