//Skidding tempvar
var v = dir*accel;
//Detect skidding and adjust variable
if (dir == 1 and hspeed < 0 or dir == -1 and hspeed > 0 and !airborne) if (abs(hspeed) >= 2) v = v*0.02; 
//Add variable
hspeed+=v;
