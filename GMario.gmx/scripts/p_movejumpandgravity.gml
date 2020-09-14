//Set Jump
jumped=jump * -jumpspeed;
//Variable Jump
if (yspeed < 0 and !jumphold) /*yspeed += grav;*/ yspeed = max(yspeed,-jumpminus * jumpmul);
//Gravity
yspeed+=grav;
jumpmul = clamp(abs(hspeed) / 4,1,1.13);
