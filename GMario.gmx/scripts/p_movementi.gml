///Left, Right, Up, Down
left = keyboard_check(vk_left); //Left 
right = keyboard_check(vk_right); //Right
up = keyboard_check(vk_up); //Up
down = keyboard_check(vk_down); //Down
jump = keyboard_check_pressed(ord("S")); //S = Jump
jumphold = keyboard_check(ord("S")); //Used for holdjumping
run = keyboard_check(ord("A")) or keyboard_check(ord("Q")); //A/Q = Run, Q for AZERTY keyboards
runpressed = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("Q")); //Run is pressed
//Moved variable
moved = keyboard_check(vk_left) or keyboard_check(vk_right); //If Left/Right was pressed
//Crouching variable
if (down) crouching = true; else crouching = false;
