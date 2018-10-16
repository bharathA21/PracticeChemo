Dots dots;
int x;
int y;
int sz = 60;
int sz1 = 60;
double r = 1.0;
Dots f = new Dots(5,5);
void setup() 
{
  size(640, 640); 
  noStroke(); 
  
}

void draw() { 
  background(0);
  
 int targetX = mouseX;
  int dx = targetX - x;
  x += dx * r;
  
  int targetY = mouseY;
  int dy = targetY - y;
  y += dy * r;
  
  
  ellipse(x, y,sz, sz1);
  
  
  
  for(int i =0; i<sz; i++){
    for(int j = 0; j<sz1;j++){
    f= new Dots(i,j);
    
  }}
  
  

}

void mousePressed()
{
  sz+=5;
  sz1+=5;
}

class Dots{
 int dt;
 int dt1;
 
 
  Dots(int dt, int dt1){
   this.dt=dt;
   this.dt1=dt1;
    
  }
  
  void show(int dots){
    dt=(int) (Math.random()*630)+1;
    dt1=(int)(Math.random()*630)+1;
    color(255);
    ellipse(dt,dt1,30,30);
    
