void setup() {
  size(1000, 1000);  //feel free to change the size
  //noLoop();
}
void draw() {
 for(int y = 0; y < 21; y+=1){
  for(int x = 0; x < 21; x++){
      hexagon(50*x, 50*y, 50); 
  }
 }
} 

void hexagon(float x, float y, float radius) {
  float angle = radians(60);  //(360/6(sides))
  beginShape();
  fill(y/4, x/4, y/4);
  //draws the lines for the hexagon
  for (float a = 0; a < radians(360); a += angle) { //a = changing angle
    float Sx = x + cos(a) * radius;
    float Sy = y + sin(a) * radius;
    vertex(Sx, Sy);
  }
  endShape(); 
}
