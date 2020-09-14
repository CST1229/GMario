///Horizontal Colllisions
if place_meeting(x+hspeed, y, obj_solid) {
 while !place_meeting (x+sign(hspeed), y, obj_solid) { //If your next position would be in a wall...
  x+=sign(hspeed); //Do the collision duh
 }
 //Set the Y or speed depending on if you stepup or not
 if (!place_meeting(x+hspeed,y-2,obj_solid)) while (place_meeting(x+hspeed,y,obj_solid)) y -= 1; else hspeed = 0;

}
