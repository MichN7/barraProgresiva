color from = color(187, 114, 253);
color to = color(9, 226, 241);

int j = 1;
boolean inc=false,dec=false;
PFont f;

void setup(){
  size(800,200);
   f = createFont("Arial",16,true); 
}

void draw(){
  background(51);
  noStroke();
  textFont(f,16);                  
  fill(0);
  if(j== 1){
    fill(210, 250, 250);
    text("0%",380,100);
  }else{
    fill(250, 250, 250);
    text(j*2+"%",380,100); 
    for(int i=1;i<j;i++){
      color interA = lerpColor(from,to,(float(i)/j));
      fill(interA);
      rect(i*15+15, 120 ,10,70);
    }
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT && j < 50){
      j++;
    }else if(keyCode == LEFT && j>0){
      j--;
    }
  }
}