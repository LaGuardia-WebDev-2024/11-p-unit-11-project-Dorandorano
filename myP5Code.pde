var xPositions = [100, 300];
var yPositions = [200, 100];
var Pronouns = loadImage("https://cdn.glitch.global/b1454bcd-dc61-4f73-854b-4a8f6361e46f/IMG_8970.jpeg?v=1743176548837");
var heart = loadImage("https://cdn.glitch.global/b1454bcd-dc61-4f73-854b-4a8f6361e46f/Heart_Red_Border_PNG_Transparent_Clipart.png?v=1743522180397");
var DingleberryX = 0;
setup = function() {
  size(400, 400); 
  image(heart, 100, 100, 150, 130);
  
  
};

draw = function(){
frameRate(200);
 
 background(0, 0, 0, 0);
  image(heart, 4, 130, 200, 280);
  drawRain ();
  drawDingleberry();
   drawEmoji();
    drawEmoji1();
    drawEmoji2();
 
  em=-10 ;
  for ( var  em = 18; em < 400 ; em+=20 ) {
   text('😏', 10, em);}
   
   em=-10 ;
  for ( var  em = 18; em < 400 ; em+=20 ) {
   text('🛎', em, 15);
}
  
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

var drawDingleberry = function(){

        DingleberryX = 0;
        while(DingleberryX < 400){    
        text("🎀", DingleberryX,0, 100, 100); 
        DingleberryX= DingleberryX+50; 
        } 
};

var drawEmoji = function(){
 var Num = 0;
    var textY = 30;
    var pArray = [ "💋 ", "✨", "♥ "];
   
    
    for(var Num = 0; Num < pArray.length; Num++){
  text(pArray [Num], 100, textY);
   textY += 30;}
 };
 
 var drawEmoji1 = function(){
 var Num = 0;
    var textY = 30;
    var pArray = [ "🏹 ", "📍", "♥ "];
   
    
    for(var Num = 0; Num < pArray.length; Num++){
  text(pArray [Num], 200, textY);
   textY += 30;}
 };
 
  var drawEmoji2 = function(){
 var Num = 0;
    var textY = 30;
    var pArray = [ "hee hee ", "haha", "hoho"];
   
    
    for(var Num = 0; Num < pArray.length; Num++){
  text(pArray [Num], 300, textY);
   textY += 30;}
 };