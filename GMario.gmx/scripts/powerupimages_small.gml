switch (sprite_index) {
case spr_player:
sprite_index = spr_player_small;
break;
case spr_player_walk:
sprite_index = spr_player_walk_small;
break;
case spr_player_run:
sprite_index = spr_player_run_small;
break;
case spr_player_jump:
sprite_index = spr_player_jump_small;
break;
case spr_player_fall:
sprite_index = spr_player_fall_small;
break;
case spr_player_runjump:
sprite_index = spr_player_runjump_small;
break;
case spr_player_skid:
sprite_index = spr_player_skid_small;
break;
case spr_player_crouch:
sprite_index = spr_player_crouch_small;
break;
case spr_player_lookup:
sprite_index = spr_player_lookup_small;
break;
default:
sprite_index = spr_player_small;
break;
}
