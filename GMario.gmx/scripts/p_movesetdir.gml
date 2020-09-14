//Robust direction check with Left+Right protection
dir = right - left;
//If you are moving, face the direction.
if (dir != 0) facing = dir;
//Don't register moving presses while crouching on the ground
if (crouching and place_meeting(x,y+1,obj_solid)) dir = 0;
//Collision mask: State 0 and below and crouching is small hitbox, else it's big.
if (state <= 0 or crouching) mask_index = spr_pmasksmall; else mask_index = spr_pmaskbig;
