var xPositions = [100, 300];
var yPositions = [200, 100];
var Pronouns = loadImage("https://cdn.glitch.global/b1454bcd-dc61-4f73-854b-4a8f6361e46f/IMG_8970.jpeg?v=1743176548837");
var heart = loadImage("https://cdn.glitch.global/b1454bcd-dc61-4f73-854b-4a8f6361e46f/Heart_Red_Border_PNG_Transparent_Clipart.png?v=1743522180397");

setup = function() {
  size(400, 400); 
  image(heart, 100, 100, 150, 130);
};

draw = function(){
frameRate(200);
  background(0, 0, 0, 0);
  image(heart, 4, 130, 200, 280);
  drawRain ();
 
  
  
  if(mousePressed){
  
  xPositions.push(mouseX);
  yPositions.push(mouseY);
  
}

}

var drawRain = function() {

  if(mousePressed){

       textSize(random(10, 60));

  }
    for (var i = 0; i < yPositions.length; i++) {
        
        
        text("💧", xPositions[i], yPositions[i]);
        yPositions[i]++
    }
  

};
