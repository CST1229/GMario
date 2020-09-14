//Vertical Collisions
if place_meeting(x, y+1, obj_solid) airborne = false; else airborne = true; //Set airborne status
if place_meeting(x, y+yspeed, obj_solid){
    while !place_meeting (x, y+sign(yspeed), obj_solid) { //If your next postiion would be in a wall...
    y+=sign(yspeed); //Do the collision duh
 }
 if (yspeed >= 0 or place_meeting(x,y+bumpspeed,obj_solid)) 
 {yspeed = 0; global.pcombo = 0;} else 
 {yspeed = bumpspeed*bumper; play_audio(snd_bump,0,false)} //Bumping and speed reset
}

var isstick = false; //Is Mario stuck in a wall or not?
if (place_meeting(x,y,obj_solid) and place_meeting(x,y-1,obj_solid) and !place_meeting(x,y+22,obj_solid)) {
    isstick = true;
}

while (place_meeting(x,y,obj_solid) and !place_meeting(x,y-8,obj_solid)) {
    y -= 1; //Stepup
}

//Probably the buggiest part of GMario ever, the "keep crouching while in a 1 block space" and unstick code
//I'm not even gonna comment this, it's too messy
var stuck = false;
if (mask_index == spr_pmaskbig and !isstick) {
    var bigcollide = false;
    var smallnocollide = false;
    var ogmask = mask_index;

    if (place_meeting(x,y,obj_solid) and place_meeting(x,y+14,obj_solid)) bigcollide = true;
    mask_index = spr_pmasksmall;
    if (!place_meeting(x,y,obj_solid)) smallnocollide = true;
    mask_index = spr_pmaskbig;
    if (bigcollide and smallnocollide and !isstick) {crouching = true; mask_index = spr_pmasksmall; stuck = true;}
}
else if (state <= 0){
    //Insstantly die if stuck in a wall completely
    if (place_meeting(x,y,obj_solid) and place_meeting(x,y+16,obj_solid) and place_meeting(x,y-16,obj_solid)) instadie();
}
if (place_meeting(x,y,obj_solid) and !place_meeting(x,y+22,obj_solid)) {
    while (place_meeting(x,y,obj_solid) and place_meeting(x,y-1,obj_solid) == true and stuck == false) {
        y += 1; //Try to prevent sticking into ceilings
    }
}

