// Text config
draw_set_alpha(text_alpha);
draw_set_font(op_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

// Draws game's title
draw_text_transformed(room_width/2, room_height/3, "EXE", 2, 2, 0);

// Draw "Play" or "Continue" text depending if the save file exists
draw_text_transformed(room_width/2, text_pos+400, play_cont, 0.75, 0.5, 0);

// Draw "OPTIONS"
draw_text_transformed(room_width/2, text_pos+480, "OPTIONS", 0.75, 0.5, 0);

// Draw "CREDITS"
draw_text_transformed(room_width/2, text_pos+560, "CREDITS", 0.75, 0.5, 0);