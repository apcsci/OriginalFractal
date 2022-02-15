public void setup(){
  size(500,500);
  rectMode(CENTER);
  noLoop();
}
public void draw(){
  myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz){
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse(x,y,siz,siz);
  if(siz > 10){ //siz <= 10 base case, no recursion
    myFractal(x+siz/2,y-siz/2,siz/2);
    myFractal(x-siz/2,y+siz/2,siz/2);
    myFractal(x-siz/2,y-siz/2,siz/2);
    myFractal(x+siz/2,y+siz/2,siz/2);
  }
}
