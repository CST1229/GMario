switch (sprite_index) {
case spr_player:
sprite_index = spr_player_fire;
break;
case spr_player_walk:
sprite_index = spr_player_walk_fire;
break;
case spr_player_run:
sprite_index = spr_player_run_fire;
break;
case spr_player_jump:
sprite_index = spr_player_jump_fire;
break;
case spr_player_fall:
sprite_index = spr_player_fall_fire;
break;
case spr_player_runjump:
sprite_index = spr_player_runjump_fire;
break;
case spr_player_skid:
sprite_index = spr_player_skid_fire;
break;
case spr_player_crouch:
sprite_index = spr_player_crouch_fire;
break;
case spr_player_lookup:
sprite_index = spr_player_lookup_fire;
break;
default:
sprite_index = spr_player_fire;
break;
}
