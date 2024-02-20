// Text config
draw_set_alpha(1);
draw_set_font(fnt_default);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

draw_sprite(sprite_to_draw, 0, 250, 850);

draw_text_transformed(room_width/2, room_height/3, text_to_draw, 1, 1, 0);