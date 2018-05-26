int position = 500;
int weight = 5;
int jump = 100;
int move = 1000;
int side = 0;
int pace = 5;
int squareHeight = 300;
int score = 0;

void setup(){
  size(1000, 800);
  background(0);
}

void draw(){
 if(position < height){ 
   position += weight;
 }
 
 if(move == 0){
   move = width;
   if(side == 0){
     side = height - squareHeight;
   }else if(side != 0){
     side = 0;
   }
   score++;
   println(score);
 }
 
 if((position >= 0 && position <= squareHeight && move == 200 && side == 0)
   || (position >= height- squareHeight && position <= height && move == 200 && side != 0 )){
   println("hit");
   score -= 2;
 }
 background(0);
 ellipse(200, position, 100, 100);
 rect(move, side, 100, squareHeight);
 move -= pace;
}
void mousePressed(){
   position -= jump;
 }
