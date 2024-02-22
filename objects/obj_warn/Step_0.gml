if (state == 0)
{
	output_text = "This game contains intense flashing lights and shaking windows.\nIf you are sensitive to these, we recommend closing the game.\nPressing ENTER will disable some flashing lights and window shaking\nif you feel like proceeding. Pressing ESCAPE will keep them on.\nIf you feel uncomfortable at any point during gameplay,\nclose the game immediately and seek medical attention if needed.\nThese preferences can be changed in the OPTIONS menu.\nText-to-speech can also be disabled there.";
}
else
{
	room_goto(rm_startup);
}