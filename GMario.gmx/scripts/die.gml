///Actually this is not death, this is the hit code
//Actual death is in instadie()
if (invinc > 0) exit;
if (state <= 0) {instadie(); exit;}
else {if (state == 1) state = 0; else state = 1; invinc = 60; play_audio(snd_pipe,1,false);}
