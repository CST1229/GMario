global.pcombo = clamp(global.pcombo,0,7) //Clamp point combo so it doesn't go too high
while (global.coins > 99) {global.coins -= 100; instance_create(x,y-16,obj_1upp);} //Extra lives
while (lives > 99) {score += 10000; lives -= 1;} //Add 10000 score if lives are more than 99
score = clamp(score,0,2147300000) //Clamp score so it doesn't overflow
