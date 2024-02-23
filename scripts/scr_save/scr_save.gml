// Checks is a save exists
function save_exists()
{
	returnval = false;
	ini_open(userdata_save_location);
	
	if (ini_section_exists("SAVES"))
	{
		returnval = true;
	}
	
	ini_close();
	return returnval;
}